<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

/**
 * Joomla! 2.5 auth plug-in for phpBB3
 */

/**
 * Login function
 */
function login_joomla(&$username, &$user_data)
{
    global $phpbb_root_path, $db, $user, $config, $cache, $phpEx;

    define('LOGIN_PHPBB', true); //set define to allow to check for recursivity

    $password = is_array($user_data) ? $user_data['password'] : $user_data;
    $status = null;
    $juser = null;
    $result = false;

    // do not allow empty password
    if (!$password) {
        return array(
            'status' => LOGIN_ERROR_PASSWORD,
            'error_msg' => 'NO_PASSWORD_SUPPLIED',
            'user_row' => array('user_id' => ANONYMOUS),
        );
    }

    if (!$username) {
        return array(
            'status' => LOGIN_ERROR_USERNAME,
            'error_msg' => 'LOGIN_ERROR_USERNAME',
            'user_row' => array('user_id' => ANONYMOUS),
        );
    }

    /*
      * Check if the login_name field exists if so use it to get the user data
      * Note : this fields is getting added by the SMF to phpBB3 convertor.
      */
    $sql = 'DESCRIBE ' . USERS_TABLE . ' login_name';
    $result = $db->sql_query($sql);
    $has_login_name = $db->sql_fetchrow();
    $db->sql_freeresult($result);

    if (!empty($has_login_name)) {
        $sql = 'SELECT user_id, username, user_password, user_passchg, user_email, user_type, login_name
			FROM ' . USERS_TABLE . "
			WHERE login_name = '" . $db->sql_escape($username) . "'";
    } else {
        $username_clean = utf8_clean_string($username);
        $sql = 'SELECT user_id, username, user_password, user_passchg, user_pass_convert, user_email, user_type, user_login_attempts
			FROM ' . USERS_TABLE . "
		WHERE username_clean = '" . $db->sql_escape($username_clean) . "'";
    }

    $result = $db->sql_query($sql);
    $row = $db->sql_fetchrow($result);
    $db->sql_freeresult($result);

    if ($row) {
        // User inactive...
        if ($row['user_type'] == USER_INACTIVE || $row['user_type'] == USER_IGNORE) {

            return array(
                'status' => LOGIN_ERROR_ACTIVE,
                'error_msg' => 'ACTIVE_ERROR',
                'user_row' => $row,
            );
        }
        $status = LOGIN_SUCCESS;
    }
    ;


    //load the Joomla! 2.5 site application
    if (!defined('_JEXEC') || defined('PHPBB_EMBEDDED')) {
        loadJoomla25();

        $app = JFactory::getApplication('site');

        if (!defined('PHPBB_EMBEDDED')) {
            $app = JFactory::getApplication('site');
            $GLOBALS['app'] = $app;
        }

        // Authorise the user based on the group information
        if (!isset($options['group'])) {
            $options['group'] = 'USERS';
        }

        // perform login
        $credentials = array('username' => $username, 'password' => $password);
        $options = array('entry_url' => JURI::root() . 'index.php?option=com_users&task=user.login');

        if (class_exists('JConfigForum')) {
            //Include the PHPBB3 configuration
            $jconfig = new JConfigForum();
            if ($jconfig->remember_login) $options['remember'] = true; // force remember me for joomla login
        }

        // Set the access control action to check
        $options['action'] = 'core.login.site';

        // Create authentication response
        if (defined('PHPBB_EMBEDDED')) {
            $response->type = 'phpBB3';
        }

        $result = $app->login($credentials, $options);

        //TODO fix this up in terms of login errors
        // check to see if the user is blocked and if joomla pass is wrong
        foreach ($app->getMessageQueue() as $message) {
            if (in_array('E_NOLOGIN_BLOCKED', $message)) {
                // clear remember me cookie
                $conf = JFactory::getConfig();
                $cookie_domain = $conf->get('config.cookie_domain', '');
                $cookie_path = $conf->get('config.cookie_path', '/');
                setcookie(JApplication::getHash('JLOGIN_REMEMBER'), '', time() - 86400, $cookie_path, $cookie_domain);
                return array(
                    'status' => LOGIN_ERROR_ACTIVE,
                    'error_msg' => 'ACTIVE_ERROR',
                    'user_row' => $row,
                );
            }
            if (in_array('JGLOBAL_AUTH_EMPTY_PASS_NOT_ALLOWED', $message)) {
                // clear remember me cookie
                $conf = JFactory::getConfig();
                $cookie_domain = $conf->get('config.cookie_domain', '');
                $cookie_path = $conf->get('config.cookie_path', '/');
                setcookie(JApplication::getHash('JLOGIN_REMEMBER'), '', time() - 86400, $cookie_path, $cookie_domain);
                return array(
                    'status' => LOGIN_ERROR_PASSWORD,
                    'error_msg' => 'LOGIN_ERROR_PASSWORD',
                    'user_row' => array('user_id' => ANONYMOUS),
                );
            }
            if (in_array('JGLOBAL_AUTH_NO_USER', $message)) {
                // clear remember me cookie
                $conf = JFactory::getConfig();
                $cookie_domain = $conf->get('config.cookie_domain', '');
                $cookie_path = $conf->get('config.cookie_path', '/');
                setcookie(JApplication::getHash('JLOGIN_REMEMBER'), '', time() - 86400, $cookie_path, $cookie_domain);
                return array(
                    'status' => LOGIN_ERROR_PASSWORD,
                    'error_msg' => 'LOGIN_ERROR_PASSWORD',
                    'user_row' => array('user_id' => ANONYMOUS),
                );
            }
        }

        $session = JFactory::getSession();
        $session->close();

        if ((JError::isError($result)) || (!$result)) {
            return array(
                'status' => LOGIN_ERROR_PASSWORD,
                'error_msg' => 'LOGIN_ERROR_PASSWORD',
                'user_row' => array('user_id' => ANONYMOUS),
            );
        }
    }

    // user not in phpbb3 db, but is in joomla
    if (!$row && $result) {
        //get the joomla user
        $juser = JFactory::getUser();

        // retrieve default group id for phpBB3
        $sql = 'SELECT group_id
				FROM ' . GROUPS_TABLE . "
				WHERE group_name = '" . $db->sql_escape('REGISTERED') . "'
				AND group_type = " . GROUP_SPECIAL;
        $result = $db->sql_query($sql);
        $group = $db->sql_fetchrow($result);
        $db->sql_freeresult($result);

        if (!$group) {
            trigger_error('NO_GROUP');
        }

        // generate user account data
        $row = array(
            'username' => $username,
            //'user_password'	=> phpbb_hash($password),
            'user_email' => $juser->email,
            'group_id' => $group['group_id'],
            'user_type' => (string)USER_NORMAL,
            'user_ip' => $user->ip,
        );

        if (!empty($has_login_name)) {
            $row['username'] = $juser->name;
            $row['login_name'] = $username;
        }

        $status = LOGIN_SUCCESS_CREATE_PROFILE;
    }

    // Successful login... set user_login_attempts to zero...
    return array(
        'status' => $status,
        'error_msg' => false,
        'user_row' => $row,
    );
}

function logout_joomla(&$data)
{
    define('LOGOUT_PHPBB', true); //set define to allow to check for recursivity

    //load the Joomla! 2.5 site application
    if (!defined('_JEXEC') || defined('PHPBB_EMBEDDED')) {
        //load the Joomla! 2.5 site application
        loadJoomla25();

        $app = JFactory::getApplication('site');

        if (!defined('PHPBB_EMBEDDED')) {
            $GLOBALS['app'] = $app;
        }

        // perform login
        error_reporting(E_ERROR); //ingore vanished session notice
        $result = $app->logout();

        $session = JFactory::getSession();
        $session->close();
    }
}

function loadJoomla25()
{
    global $phpbb_root_path;

    if (!defined('_JEXEC')) define('_JEXEC', true);
    if (!defined('JPATH_BASE'))  define('JPATH_BASE', $phpbb_root_path . '/..');
    if (!defined('DS')) define('DS', DIRECTORY_SEPARATOR);
    if (!defined('UTF8_CORE')) define('UTF8_CORE', TRUE);

    @ini_set('magic_quotes_runtime', 0);
    @ini_set('zend.ze1_compatibility_mode', '0');

    // System includes
    require_once(JPATH_BASE . '/includes/defines.php');

    if (!defined('PHPBB_EMBEDDED')) {
        require_once(JPATH_LIBRARIES . '/import.php');
    } else {
        require_once(JPATH_LIBRARIES . '/loader.php');
    }

    //Base classes
    jimport('joomla.base.object');
    jimport('joomla.environment.request');
    jimport('joomla.factory');
    jimport('joomla.error.error');
    jimport('joomla.error.exception');
    jimport('joomla.utilities.arrayhelper');
    jimport('joomla.environment.uri');
    jimport('joomla.user.user');
    jimport('joomla.utilities.utility');
    jimport('joomla.event.event');
    jimport('joomla.event.dispatcher');
    jimport('joomla.plugin.helper');
    jimport('joomla.filter.filterinput');
    jimport('joomla.filter.filteroutput');
    jimport('joomla.language.helper');
    jimport('joomla.user.authentication');
    jimport('joomla.application.application');

    //Register class that don't follow one file per class naming conventions
    JLoader::register('JText', JPATH_PLATFORM . '/joomla/methods.php');

}

?>