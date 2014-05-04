<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access
defined('_JEXEC') or die;

/**
 * Rokbridge helper.
 */
//Get the phpbb3 path from rokbridge configuration
define('PHPBB_AVATAR_UPLOAD', 1);
define('PHPBB_AVATAR_REMOTE', 2);
define('PHPBB_AVATAR_GALLERY', 3);
jimport('joomla.filesystem.folder');

class RokBridgeHelper {
    
    var $bridge_params;
    var $bridge_path;
    var $phpbb_path;
    var $phpbb_db;
    var $link_format;
    
    //constructor
    function __construct()
	{
		$params = $this->getParams();

		// bridge/phpbb path can be not set or doesn't exist, this would cause errors including configuration files
		if (!$params->get('bridge_path') || !JFolder::exists( JPATH_SITE.'/'.$params->get('bridge_path') ) || !$params->get('phpbb3_path') || !JFolder::exists( JPATH_SITE.'/'.$params->get('phpbb3_path') ))
			return;
        $this->bridge_params = $params;
		$this->phpbb_path = $this->bridge_params->get('phpbb3_path');
		$this->bridge_path = $this->bridge_params->get('bridge_path');
		$this->link_format = $this->bridge_params->get('link_format','bridged');
		
		if (!JFile::exists(JPATH_ROOT.'/'.$this->phpbb_path.'/config.php'))
			return;
		
		//Include the phpBB3 configuration
		require JPATH_ROOT.'/'.$this->phpbb_path.'/config.php';
		
		// Config is incomplete
		if (!isset($dbms, $dbhost, $dbuser, $dbpasswd, $dbname, $table_prefix))
			return;
			
		$options = array('driver' => $dbms, 'host' => $dbhost, 'user' => $dbuser, 'password' => $dbpasswd, 'database' => $dbname, 'prefix' => $table_prefix);
		
		$this->phpbb_db   = JDatabase::getInstance($options);

        if (JFile::exists(JPATH_ROOT.'/'.$this->bridge_path.'/configuration.php') && (strtolower($this->bridge_path) != strtolower($this->phpbb_path))) {
            //Include the bridge configuration
            require_once(JPATH_ROOT.'/'.$this->bridge_path.'/includes/helper.php');
            //load phpBB3 elements
            JForumHelper::loadPHPBB3(JPATH_ROOT.'/'.$this->bridge_path);
        }
    }
    
    function getWhereClause($username) 
	{
        $phpbb_db = $this->getDb();
        $fields = $phpbb_db->getTableFields('#__users');
        
        $where_clause = "";
		
		if (isset($username)) {
		    if(isset($fields['#__users']['login_name'])) {
    		    $where_clause = "login_name = '" . $username . "'";
    		} else {
    		    $where_clause = "username_clean = ". $phpbb_db->Quote(utf8_clean_string($username));
    		}
        }
		
        return $where_clause;
    }
    
    function getAvatar(&$user, $avatar_size, $extra_info="",$default="")
	{
		if (isset($user) and ($user->user_avatar or (!$user->user_avatar and $default)))
		{
		    if ($user->user_avatar_width < $avatar_size && $user->user_avatar_height < $avatar_size)
		    {
		        $width = $user->user_avatar_width;
		        $height = $user->user_avatar_height;
		    }
		    else 
		    {
		        $width = ($user->user_avatar_width > $user->user_avatar_height) ? $avatar_size : ($avatar_size / $user->user_avatar_height) * $user->user_avatar_width;
		        $height = ($user->user_avatar_height > $user->user_avatar_width) ? $avatar_size : ($avatar_size / $user->user_avatar_width) * $user->user_avatar_height;
		    }
		
			$avatar_img = '';

			switch ($user->user_avatar_type)
			{
				case PHPBB_AVATAR_REMOTE:
				    $avatar_img = $user->user_avatar;
				break;
				
				case PHPBB_AVATAR_UPLOAD:
					$avatar_img = $this->phpbb_path . "/download/file.php?avatar=" . $user->user_avatar;
				break;

				case PHPBB_AVATAR_GALLERY:
					$avatar_img = $this->phpbb_path . "/images/avatars/gallery/" . $user->user_avatar;
				break;
			}

            if ($user->user_avatar == '') {
                $avatar_img = $default;
                $width = $avatar_size;
                $height = $avatar_size;
            } 

			return '<img src="' . $avatar_img . '" style="width:'.$width.'px;height:'.$height.'px;vertical-align:middle;" alt="'.$user->username.$extra_info.'" title="'.$user->username.$extra_info.'" />';		
		}
		
		return '';
	}
    
    function getDb()
	{
		return $this->phpbb_db;
	}
	
	function getParams($refresh = false)
	{
		static $instance;
		
		if ($instance == null || $refresh)
		{
			$component='com_rokbridge';
			$table = JTable::getInstance('extension');
			$option = $table->find(array('type'=>'component','element' => $component));
			$table->load($option);
			
			// work out file path
			//$option	= preg_replace( '#\W#', '', $table->option );
			$path	= JPATH_ADMINISTRATOR.'/components/'. $component .'/models/forms/rokbridge.xml';
			jimport( 'joomla.filesystem.file' );
			if (JFile::exists( $path )) {
				$instance = new JRegistry( $table->params, $path );
			} else {
				$instance = new JRegistry( $table->params );
			}
		}
		
		return $instance;	
	}


	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getActions($messageId = 0)
	{
		$user	= JFactory::getUser();
		$result	= new JObject;

		$assetName = 'com_rokbridge';
		
		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.delete'
		);
 
		foreach ($actions as $action) {
			$result->set($action,	$user->authorise($action, $assetName));
		}

		return $result;
	}
}
