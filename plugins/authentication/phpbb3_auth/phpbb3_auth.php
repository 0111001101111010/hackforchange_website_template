<?php
/**
 * @version		$Id: phpbb3.php 3086 2008-01-11 01:42:18Z jinx $ 
 * @package RokBridge - phpBB3 edition
 * @copyright Copyright (C) 2009 RocketTheme. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @author RocketTheme, LLC
 */

// No direct access
defined('_JEXEC') or die;

/**
 * phpBB3 Authenticate Plugin
 *
 * @author		Johan Janssens <johan@joomlatools.org>
 * @package		Rocketwerx
 * @subpackage	phpBB3Bridge
 */
class plgAuthenticationPHPBB3_Auth extends JPlugin
{
	/**
	 * Constructor
	 * @param object $subject The object to observe
	 * @param 	array  $config  An array that holds the plugin configuration
	 */
	function plgAuthenticationPHPBB3_Auth(& $subject, $config) {
		parent::__construct($subject, $config);
	}

	/**
	 * This method should handle any authentication and report back to the subject
	 *
	 * @access	public
	 * @param   array 	$credentials Array holding the user credentials
	 * @param 	array   $options     Array of extra options
	 * @param	object	$response	 Authentication response object
	 * @return	boolean
	 * @since 1.5
	 */
	function onUserAuthenticate($credentials, $options, &$response)
	{
		global $dbhost, $dbname, $dbuser, $dbpasswd, $table_prefix;
		
		$response->type = 'phpBB3';
		// Joomla does not like blank passwords
		if (empty($credentials['password'])) {
			$response->status = JAuthentication::STATUS_FAILURE;
			$response->error_message = JText::_('JGLOBAL_AUTH_EMPTY_PASS_NOT_ALLOWED');
			return false;
		}
			
		if(!defined('IN_PHPBB')) {
			define('IN_PHPBB', true); 
		}
		
		$table = JTable::getInstance('extension');
		$id = $table->find(array('element' => 'com_rokbridge'));
		$table->load($id);
		
		$params = new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/config.xml' );
		
		if (!file_exists(JPATH_ROOT.'/'.$params->get('bridge_path').'/configuration.php'))
			return;
		
		//Include the bridge configuration
		require_once(JPATH_ROOT.'/'.$params->get('bridge_path').'/configuration.php');
		if (!class_exists('JConfigForum')) return;
	 		
		//Create a bridge configration object
		$config = new JConfigForum();
		
		if (!file_exists(JPATH_ROOT.'/'.$config->phpbb_path.'/config.php'))
			return;
		
		//Include the PHPBB3 configuration
		require JPATH_ROOT.'/'.$config->phpbb_path.'/config.php';
		
		// Config is incomplete
		if (!isset($dbhost, $dbuser, $dbpasswd, $dbname, $table_prefix))
			return;
			
		//Include the PHPBB3 helper functions
		if(!defined('LOGIN_PHPBB')) 
		{
			//Include the bridge configuration
			$path = JPATH_ROOT.'/'.$params->get('bridge_path');
			require_once($path.'/includes/helper.php');
			
			JForumHelper::loadPHPBB3($path);
		}
			
		// Get a database object
		$options = array ( 'driver' => $dbms, 'host' => $dbhost, 'user' => $dbuser, 'password' => $dbpasswd, 'database' => $dbname, 'prefix' =>  $table_prefix );
		
		$db = JDatabase::getInstance($options);
		
		/*
	     * Check if the login_name field exists if so use it to get the user data
	     * Note : this fields is getting added by the SMF to phpBB3 convertor.
	     */
		$fields = $db->getTableColumns('#__users');
		
		if(isset($fields['#__users']['login_name']))
		{
			$query = "SELECT user_id, username, user_email, user_type, user_password, login_name, user_type"
			."\n FROM #__users"
			."\n WHERE login_name = ". $db->Quote(utf8_clean_string($credentials['username']));
		}
		else
		{
			$query = "SELECT user_id, username, user_email, user_type, user_password, user_type"
			."\n FROM #__users"
			."\n WHERE username_clean = ". $db->Quote(utf8_clean_string($credentials['username']));
		}
		
		$db->setQuery( $query );
		$result = $db->loadObject();
		
		if($result && phpbb_check_hash($credentials['password'], $result->user_password)) 
		{
			$response->status = JAuthentication::STATUS_SUCCESS;
			$response->error_message = '';
			$response->email         = $result->user_email;
			$response->fullname      = $result->username;
		}
		else
		{
			$response->status = JAuthentication::STATUS_FAILURE;
			$response->error_message = JText::_('JGLOBAL_AUTH_NO_USER');
		}
	}
}
?>