<?php 
/**
 * @version		$Id: phpbb3.php 3087 2008-01-11 01:45:02Z jinx $ 
 * @package RokBridge - phpBB3 edition
 * @copyright Copyright (C) 2009 RocketTheme. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @author RocketTheme, LLC
 */


jimport('joomla.plugin.plugin');

/**
 * phpBB3 User plugin
 *
 * @author		Johan Janssens <johan@joomlatools.org>
 * @package		Rocketwerx
 * @subpackage	phpBB3Bridge
 */
class plgUserPHPBB3_User extends JPlugin
{
	/**
	 * Constructor
	 * @param 	object $subject The object to observe
	 * @param 	array  $config  An array that holds the plugin configuration
	 */
	function plgUserPHPBB3_User(& $subject, $config) {
		parent::__construct($subject, $config);
	}
	
	/**
	 * Sync the user data with phpBB
	 *
	 * Method is called before user data is stored in the database
	 *
	 * @param 	array		holds the new user data
	 * @param 	boolean		true if a new user is stored
	 */
	function onUserBeforeSave($user_data, $isnew)
	{
		//Store the user information before it is changed in a global
		$GLOBALS['TEMP_USER'] = $user_data;
		return true;
	}

	/**
	 * Sync the user data with phpBB
	 *
	 * Method is called after user data is stored in the database
	 *
	 * @param 	array	  	holds the old user data
	 * @param 	boolean		true if a new user is stored
	 * @param	boolean		true if user was succesfully stored in the database
	 * @param	string		message
	 */
	function onUserAfterSave($user_data, $isnew, $succes, $msg)
	{
		global $phpbb_root_path, $phpEx;
		global $auth, $user, $template, $cache, $db, $config;
		
		//Don't continue if the user wasn't stored succesfully
		if(!$succes) {
			return false;
		}
		
		
		$table = JTable::getInstance('extension');
		$option = $table->find(array('type'=>'component','element' => 'com_rokbridge'));
		$table->load($option);
		
		$params = new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/models/forms/rokbridge.xml' );
		
		$path = JPATH_ROOT.'/'.$params->get('bridge_path');
		
		if (!file_exists($path.'/includes/helper.php'))
			return;
		
		if ($params->get('create_user_asynchroneously')){
		//Don't handle new users, syncing happens assynchronously
		if($isnew) {
			return true;
		}
		}

		//Include the bridge configuration
		require_once($path.'/includes/helper.php');
			
		if(!defined('IN_PHPBB')) {
			JForumHelper::loadPHPBB3($path);
		}
		
		require_once($phpbb_root_path.'/includes/functions_user.php');
		
		
		//Experimental user creation
		if ($params->get('create_user_immediately'))
		{ 
		if ($isnew)
		{
			// Check for existing username in the forum, so the user was registered first in the forum (not in Joomla)
			if ($db)
			{
				$sql = 'SELECT username FROM '.USERS_TABLE.' WHERE LOWER(username) = LOWER(\''.$db->sql_escape($user_data['username']).'\')';
				$result = $db->sql_query($sql);
				$row = $db->sql_fetchrow($result);
				$db->sql_freeresult($result);
				// The user already present in the forum, no needs to do anything more
				if ($row) {
					return true;
				}
			}
			
			// Validate username for allowed characters and names (dissallow "faked" usernames!)
			if (!function_exists('utf8_strtolower')) {
				jimport('phputf8.utf8');
			}
			if ($errorMsg = validate_username($user_data['username'], ''))
			{
				if ($user_data['id'])
				{
					$juser = JFactory::getUser($user_data['id']);
					$juser->delete();
				}
				switch ($errorMsg)
				{
					case 'INVALID_CHARS':
						$errorMsg = 'INVALID_CHARS';
						break;
						
					case 'USERNAME_TAKEN':
						$errorMsg = 'WARNREG_INUSE';
						break;
						
					case 'USERNAME_DISALLOWED':
						$errorMsg = 'USERNAME_DISALLOWED';
						break;
				}
				jimport('joomla.error.error');
				JError::raiseWarning(1, JText::_($errorMsg));
				
				return false;
			}
			
		
		// Create user in the forum immediately along Joomla (if option enabled)
				$user_row = array(
					'username'		=> $user_data['username'],
					'group_id'		=> (int)$params->get('group_id', 2),
					'user_email'	=> $user_data['email'],
					'user_type'		=> ($params->get('user_inactive') ? ($user_data['block'] ? USER_INACTIVE : USER_NORMAL) : USER_NORMAL),	
					// WARNING!!!: Joomla! components must trigger user plugin functions
					'user_new'		=> (int)$params->get('user_new', 0),
				);
				user_add($user_row);
			}
			unset($GLOBALS['TEMP_USER']);
			return true;
		}
		
		
		$username = $GLOBALS['TEMP_USER']['username'];
		$fullname = $this->_fullNameSupport();
		$userid   = $this->_getUserId($username, $fullname); 
		
		// Don't try to store a user which doesn't exist yet in phpBB
		if(intval($userid) == 0) {
			return true;
		}
				
		//Activate/Deactivate the user
		$mode = $user_data['block'] ? 'deactivate' : 'activate';
		user_active_flip($mode, $userid['user_id']);
		
		if(!empty($fullname)) 
		{
			//Update the username if it was changed
			if($user_data['name'] != $GLOBALS['TEMP_USER']['name']) {
				user_update_name($GLOBALS['TEMP_USER']['name'], $user_data['name']);
			}
		
			//Store the user information
			$sql_ary = array(
				'login_name'		=> $user_data['username'],
				'username'			=> $user_data['name'],
				'username_clean'	=> utf8_clean_string($user_data['name']),
				'user_email'		=> $user_data['email'],
				'user_email_hash'	=> crc32($user_data['email']) . strlen($user_data['email']),
			);
		}
		else
		{
			//Update the username if it was changed
			if($user_data['username'] != $GLOBALS['TEMP_USER']['username']) {
				user_update_name($GLOBALS['TEMP_USER']['username'], $user_data['username']);
			}
		
			//Store the user information
			$sql_ary = array(
				'username'			=> $user_data['username'],
				'username_clean'	=> utf8_clean_string($user_data['username']),
				'user_email'		=> $user_data['email'],
				'user_email_hash'	=> crc32($user_data['email']) . strlen($user_data['email']),
			);
		}
			
		$sql = 'UPDATE ' . USERS_TABLE . '
			SET ' . $db->sql_build_array('UPDATE', $sql_ary) . '
			WHERE user_id = ' . $userid['user_id'];
		$db->sql_query($sql);
		
		//Unset the temp user global
		unset($GLOBALS['TEMP_USER']);
	}

	/**
	 * Remove all sessions for the user name
	 *
	 * Method is called after user data is deleted from the database
	 *
	 * @param 	array	  	holds the user data
	 * @param	boolean		true if user was succesfully stored in the database
	 * @param	string		message
	 */
	function onUserAfterDelete($user_data, $succes, $msg)
	{
		global $phpbb_root_path, $phpEx;
		global $auth, $user, $template, $cache, $db, $config;
		
		
		//Don't continue if the user wasn't deleted succesfully
		if(!$succes) {
			return false;
		}
		
		$table = JTable::getInstance('extension');
		$option = $table->find(array('type'=>'component','element' => 'com_rokbridge'));
        	$table->load($option);
		
		$params = new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/models/forms/rokbridge.xml' );
		
		$path = JPATH_ROOT.'/'.$params->get('bridge_path');
		
		if (!file_exists($path.'/includes/helper.php'))
			return;
				
		//Include the bridge configuration
		require_once($path.'/includes/helper.php');
			
		JForumHelper::loadPHPBB3($path);
		
		require_once($phpbb_root_path.'/includes/functions_user.php');
		
		$username = $user_data['username'];
		$fullname = $this->_fullNameSupport();
		$userid   = $this->_getUserId($username, $fullname);
		
		// Don't try to delete a user which doesn't exist yet in phpBB
		if(empty($userid)) {
			return true;
		}
		
		//option to choose the user delete mode and post delete mode
		$user_delete_mode = ($params->get('user_delete_mode', 'retain') != 'remove' ? 'retain' : 'remove');
		if ($params->get('save_poster_username', 1)) {
			$post_username = $username;
		} else {
			$post_username = false;
		}
		user_delete($user_delete_mode, $userid['user_id'], $post_username);
		
		return true;
	}

	/**
	 * This method should handle any login logic and report back to the subject
	 *
	 * @param	array	$user_data		Holds the user data
	 * @param	array	$options	Array holding options (remember, autoregister, group)
	 *
	 * @return	boolean	True on success
	 * @since	1.5
	 */
	public function onUserLogin($user_data, $options = array())
	{
		global $path, $phpbb_root_path, $phpEx;
		global $auth, $user, $template, $cache, $db, $config, $app;
		
		if(!defined('PHPBB_EMBEDDED')) {
		$app = JFactory::getApplication('site');
		}

		//belts and suspenders to set flag to reset acl cache
		if (!defined('RESET_PHPBB_CACHE'))	define('RESET_PHPBB_CACHE',1);
		if (!isset($_SESSION['RESET_PHPBB_CACHE'])) $_SESSION['RESET_PHPBB_CACHE'] = 1;
		
		// don't perform phpbb3 login for joomla admin logins
		if( $app->isAdmin() ) return true;  

		jimport( 'joomla.user.helper' );
		$name = JUserHelper::getUserId($user_data['username']);
		$instance = JFactory::getUser($name);
		
		// If _getUser returned an error, then pass it back.
		if ($instance instanceof Exception) {
			return false;
		}

		// If the user exists and is blocked, redirect with an error
		if (isset($instance) && $instance) {
    		if ($instance->get('block') == 1) {
		JError::raiseWarning('SOME_ERROR_CODE', JText::_('JERROR_NOLOGIN_BLOCKED'));
		// clear remember me cookie
		$conf = JFactory::getConfig();
		$cookie_domain 	= $conf->get('config.cookie_domain', '');
		$cookie_path 	= $conf->get('config.cookie_path', '/');
		setcookie(JApplication::getHash('JLOGIN_REMEMBER'), '', time() - 86400, $cookie_path, $cookie_domain);
				
			return true;
    		}
		
		}
		
		/*
		// Authorise the user based on the group information
		if (!isset($options['group'])) {
		$options['group'] = 'USERS';
		}
		
		// Check if the user can login.
		$options['action'] = 'core.login.site';
		
		// Check if the user can login.
		$result	= $instance->authorise($options['action']);
		
		if (!$result) {
			JError::raiseWarning(401, JText::_('JERROR_LOGIN_DENIED'));
			return false;
		}
		*/

		if(defined('LOGIN_PHPBB')) {
			return true;
		}
		
		$table = JTable::getInstance('extension');
		$option = $table->find(array('element' => 'com_rokbridge'));
        	$table->load($option);
		
		$params = new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/config.xml' );
		
		$path = JPATH_ROOT.'/'.$params->get('bridge_path');
		
		if (!file_exists($path.'/includes/helper.php'))
			return;
				
		//Include the bridge configuration
		require_once($path.'/includes/helper.php');
			
		JForumHelper::loadPHPBB3($path);
		
		// Start session management
		$user->session_begin();
		$auth->acl($user->data);
		
		// Try to log the user in into phpBB3
		
		$result = $auth->login($instance->username, $user_data, 1);
			
		if($result['status'] == LOGIN_SUCCESS) {
			return true;
		}
		
		return false;
		
	}

	/**
	 * This method should handle any logout logic and report back to the subject
	 *
	 * @param	array	$user_data	Holds the user data.
	 * @param	array	$options	Array holding options (client, ...).
	 *
	 * @return	object	True on success
	 * @since	1.5
	 */
	public function onUserLogout($user_data, $options = array())
	{
		global $phpbb_root_path, $phpEx;
		global $auth, $user, $template, $cache, $db, $config, $app; 
		
		$app = JFactory::getApplication(); 
		
		// don't perform phpbb3 login for joomla admin logins  
		     
		$me = JFactory::getUser();  

		// don't log yourself out when you logout of the joomla admin
		if( $app->isAdmin() && !$me->username ) return true;
		
		
		if(defined('LOGOUT_PHPBB')) {
			return true;
		}	
		
		$table = JTable::getInstance('extension');
		$option = $table->find(array('element' => 'com_rokbridge'));
        	$table->load($option);
		
		$params = new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/config.xml' );
		
		$path = JPATH_ROOT.'/'.$params->get('bridge_path');
		
		if (!file_exists($path.'/includes/helper.php')){
			return;
		}
		//Include the bridge configuration
		require_once($path.'/includes/helper.php');
			
		JForumHelper::loadPHPBB3($path);
		
		require_once($phpbb_root_path.'/includes/functions_user.php');
		
		$username = $user_data['username'];
		$fullname = $this->_fullNameSupport();
		$userid   = $this->_getUserId($username, $fullname);

		// clear remember me cookie
		$conf = JFactory::getConfig();
		$cookie_domain 	= $conf->get('config.cookie_domain', '');
		$cookie_path 	= $conf->get('config.cookie_path', '/');
		setcookie(JApplication::getHash('JLOGIN_REMEMBER'), '', time() - 86400, $cookie_path, $cookie_domain);

		// Don't try to logout a user which doesn't exist yet in phpBB
		if(empty($userid)) {
			return true;
		}
		
		// Hit the user last visit field
		$sql = 'UPDATE ' . USERS_TABLE . '
				SET user_lastvisit = ' . (int) time() . '
				WHERE user_id = ' . (int) $userid['user_id'];
		$db->sql_query($sql);
		
		//Remove the session from the database
		$sql = 'DELETE FROM ' . SESSIONS_TABLE . "
			WHERE session_user_id = " . (int) $userid['user_id'];
		$db->sql_query($sql);
		
		//Remove the session keys from the database
		$sql = 'DELETE FROM ' . SESSIONS_KEYS_TABLE . "
			WHERE user_id = " . (int) $userid['user_id'];
		$db->sql_query($sql);
			
		// Start session management
		$user->session_begin();
		$auth->acl($user->data);
		
		if ($user->data['user_id'] == $userid['user_id'])
		{
			// Destroy the php session for this user
			$user->session_kill();
			$user->session_begin();
			return true;
		}
			
		return false;
	}
	
	// Trigger onUserLoginFailure Event.
	function onUserLoginFailure($response) 
	{
		$app = JFactory::getApplication();
		$app->logout();
		//TODO: is there a need to raise a warning here? joomla already takes care of that?
		JError::raiseWarning('SOME_ERROR_CODE', JText::_('JERROR_NOLOGIN_BLOCKED'));
	}

	/*
 	 * Check if the login_name field exists if so use it to get the user data
 	 * Note : this fields is getting added by the SMF to phpBB3 convertor.
 	 */
	
	function _fullNameSupport() 
	{
		global $db;

		$sql = 'DESCRIBE '.USERS_TABLE.' login_name';
		$result = $db->sql_query($sql);
		$row = $db->sql_fetchrow($result);
		$db->sql_freeresult($result);
		
		return $row;
	}
	
	/*
	 * function to get username based on fullname support
	 */
	function _getUserId($username, $fullname) 
	{
		global $db;
		
		// if login_name exists use it
		if (!empty($fullname)) {
			$where = "login_name='" . $username . "'";
		} else {
			$where = "username_clean='" . utf8_clean_string($username) . "'";
		}
		

		// Get the user_id of the phpbb user
		$sql = "SELECT user_id FROM ".USERS_TABLE." WHERE " . $where;
		
		$result = $db->sql_query($sql);
		$userid = $db->sql_fetchrow($result);
		$db->sql_freeresult($result);
		
		return $userid;
	}
	

}
?>