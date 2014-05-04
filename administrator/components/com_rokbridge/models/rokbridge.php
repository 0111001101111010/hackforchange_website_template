<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');
jimport( 'joomla.filesystem.folder' );
jimport( 'joomla.filesystem.file' );
/**
 * RokBridge configuration model.
 */
class RokBridgeModelRokBridge extends JModelAdmin
{
	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_ROKBRIDGE';
	
	function __construct($config = array())
	{
		//remove old bridge
		$old_bridge = JRequest::getString('current_bridge_path','','post');
		$posted_params = JRequest::getVar('params','','post');
		
		if (is_array($posted_params))
		{
			$new_bridge = $posted_params['bridge_path'];

			if (trim($old_bridge) != trim($new_bridge)) {
				// new location, so delete old
				$this->removebridge($old_bridge,false);
			}
		}
		
		if ($this->_isForumInstalled() && $this->_isBridgeInstalled()) 
		{
			$current_auth = $this->_getAuthMethod();	
		
			// if plugin installed, and not set to joomla...
			if (JFile::exists ( JPATH_SITE.'/'.$this->getForumPath()."/includes/auth/auth_joomla.php")) {
				if ($current_auth != "joomla") $this->_setAuthMethod("joomla");
			} else {
				if ($current_auth == "joomla") $this->_setAuthMethod("db");
			}
		}
		
		parent::__construct($config);
	}
	
	function getBits()
	{
		$app = JFactory::getApplication();
		
		$phpbb3_path = $this->getForumPath();
		$bridge_path = $this->getBridgePath();
		
		$bits = new stdClass();
		$bits->bridge_url = JURI::root().$bridge_path;
		$bits->patch_installed = false;
		$bits->patch_note = null;
		$bits->joomla_authplg_installed = JPluginHelper::isEnabled('authentication','phpbb3_auth');
		$bits->joomla_userplg_installed = JPluginHelper::isEnabled('user','phpbb3_user');
		$bits->phpbb3plg_installed = false;
		$bits->phpbb3plg_note = null;
		$bits->phpbb3_installed = false;
		$bits->bridge_installed = false;
		$bits->bridge_note = null;
		$bits->current_bridge_path = $bridge_path;
		$bits->bridge_install_enable = true;;
		$bits->phpbb3_version = null;
		$bits->patch_full = JRequest::getInt("patchfull",0);
		$bits->indexes_installed = false;
		$bits->indexes_note = null;
		
		//check to see if the phpBB3 path exists and is valid
		if( !JFolder::exists( JPATH_SITE.'/'.$phpbb3_path ) ) {
			$app->enqueueMessage(JText::_('PHPBB3_PATH_NOT_FOUND'),"error");
		} elseif (!JFile::exists( JPATH_SITE.'/'.$phpbb3_path."/config.php")) {
			$app->enqueueMessage(JText::_('PHPBB3_FOUND_NOT_INSTALLED'),"error");
		} else {
			require JPATH_SITE.'/'.$phpbb3_path."/config.php";
		
			if (isset($dbhost, $dbuser, $dbpasswd, $dbname, $table_prefix)) {
				$bits->phpbb3_installed = true;
				if (!defined('IN_PHPBB')) define('IN_PHPBB',true);
				require_once JPATH_SITE.'/'.$phpbb3_path."/includes/constants.php";
				$bits->phpbb3_version = PHPBB_VERSION;
			}
			else {
				$app->enqueueMessage(JText::_('PHPBB3_FOUND_NOT_INSTALLED'),"error");
			}
		}
		
		$bits->bridge_note = JText::_('BRIDGE_NOTE');
		
		//check to see if the forum is installed 
		if (JFolder::exists( JPATH_SITE.'/'.$bridge_path )) {
			//folder exists, is it the bridge?
			if ( JFile::exists( JPATH_SITE.'/'.$bridge_path."/includes/hooks.php")) {
				$bits->bridge_installed = true;
				$bits->bridge_note = JText::_('BRIDGE_INSTALLED_AT');

			} else {
			
				// check if folder is empty
				$handler = opendir(JPATH_SITE.'/'.$bridge_path);
				
				$empty = true;
				
				while ($file = readdir($handler)) {
					// if file isn't this directory or its parent, add it to the results
					if ($file != "." && $file != "..") {
						$empty = false;
						break;
					}
				}
				
				closedir($handler);
				
				// if not empty, complain about invalid bridge path
				if (!$empty)
				{
					$app->enqueueMessage(JText::_('BRIDGE_EXISTS_NOT_INSTALLED'),"error");
					$bits->bridge_note = JText::_('CHOOSE_VALID_BRIDGE_PATH');
					$bits->bridge_install_enable = false;
				}
			}
			if ($bits->bridge_installed) {
				//bridge installed, is it configured?
				if ( !JFile::exists( JPATH_SITE.'/'.$bridge_path."/configuration.php")) {
					$app->enqueueMessage(JText::_('SAVE_CONFIGURATION'),"error");
				}
			}
		}

		//check for auth plugin
		if ($bits->phpbb3_installed) {
			if ( JFile::exists ( JPATH_SITE.'/'.$phpbb3_path."/includes/auth/auth_joomla.php")) {
				$bits->phpbb3plg_installed = true;
				$bits->phpbb3plg_note = JText::_('PHPBB3_AUTHPLG_INSTALLED');
			} else {
				$bits->phpbb3plg_note = JText::_('PHPBB3_AUTHPLG_READY');
			}
		} else {
			$bits->phpbb3plg_note = JText::_('PHPBB3_INSTALL_NOT_FOUND');
		}

		//check for indexes
		if ($bits->phpbb3_installed and $bits->bridge_installed) {
			if ($this->_checkForRokBridgeIndexes() ) {
				$bits->indexes_installed = true;
				$bits->indexes_note = JText::_('PHPBB3_INDEXES_INSTALLED');
			} else {
				$bits->indexes_note = JText::_('PHPBB3_INDEXES_READY');
			}
		} else {
			$bits->indexes_note = JText::_('PHPBB3_INSTALL_NOT_FOUND');
		}

		//check for phpbb3 patches
		if ($bits->phpbb3_installed) {
			if (version_compare(PATCH_VERSION, $bits->phpbb3_version)) {
				//small patch check
				$advsrch_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/search_body.html";

				$new = "<form method=\"post\"";
				$advsrch_data = JFile::read($advsrch_file);
				if (strpos($advsrch_data, $new)) {
					$bits->patch_installed = true;
				}
				$bits->patch_note = JText::_('PATCH_NOTE');
				$bits->patch_full = false;
			} else {
				//full patch check
			$functions_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/overall_header.html";

			$new = "<form action=\"{U_SEARCH}\" method=\"post\" id=\"search\">";
			$functions_data = JFile::read($functions_file);
			if (strpos($functions_data,$new)) {
				$bits->patch_installed = true;
			}
			$bits->patch_note = JText::_('PATCH_NOTE');
			$bits->patch_full = true;
			}
		} else {
			$bits->patch_note =  JText::_('PHPBB3_INSTALL_NOT_FOUND');
		}
		
		return $bits;
	}
	
	function saveConfiguration($verbose=true)
	{
		$app = JFactory::getApplication();
		
		$table = JTable::getInstance('extension');
        	$id = $table->find(array('element' => 'com_rokbridge'));
        
		if (!$table->load($id)) {
			JError::raiseWarning( 500, 'Not a valid component' );
			return false;
		}
		
		$post = JRequest::get( 'post' );
		
		// strip leading / if provided
		if (isset($post['params']['bridge_path'])) $post['params']['bridge_path'] = trim($post['params']['bridge_path'],"/");
		if (isset($post['params']['phpbb3_path'])) $post['params']['phpbb3_path'] = trim($post['params']['phpbb3_path'],"/");
		
		$component = JRequest::getCmd('component');
		$post['option'] = $component;
		$table->bind( $post );

		if (!$table->check() || !$table->store()) {
			JError::raiseWarning( 500, $table->getError() );
			return false;
		}

		//save out bridge configuration file to 'source' and bridge_path if possible
		$params = $this->getParams(true);
		$bridge_path = $this->getBridgePath();
		$phpbb3_path = $this->getForumPath();

		$installed_config_file = JPATH_SITE.'/'.$bridge_path."/configuration.php";
		$installed_htaccess_file = JPATH_SITE.'/'.$bridge_path."/.htaccess";
		$src_config_file = JPATH_ADMINISTRATOR."/components/com_rokbridge/forum/configuration.php";
		$src_htaccess_file = JPATH_ADMINISTRATOR."/components/com_rokbridge/forum/.htaccess";

		$remember_login = $params->get('force_remember')==0?'false':'true';
		
		$registry = JFactory::getConfig();
		$full_live_site = $live_site = $registry->get('live_site');
		if ($live_site != '') {
			$full_live_site = $live_site . "/".$bridge_path;
		}
		
		$bridge_config = "<?php 
class JConfigForum 
{
	var \$phpbb_path = '".$phpbb3_path."';
	var \$sef = '".$params->get('sef_enable')."';
	var \$sef_rewrite = '".$params->get('sef_rewrite')."';
	var \$remember_login = ".$remember_login.";
	var \$live_site = '" .$full_live_site ."';
}
?>
";

		$htaccess = "RewriteEngine on
RewriteBase ".str_replace('\\','/',JURI::Root(true).'/'.$bridge_path.'/')."

# Standard phpBB3 files matching
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} \.php$
RewriteRule (.+)\.php$ index.php?rb_v=$1&%{QUERY_STRING} [L]";
		
		if ($params->get('sef_rewrite',0) == 1) {
			$htaccess .= "
# RokBridge SEF rewrite
RewriteCond %{REQUEST_FILENAME}                 !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.+) index.php?$1&%{QUERY_STRING} [L]";
		}

		//if bridge installed and config file exists
		if (JFolder::exists(JPATH_SITE.'/'.$bridge_path)) {
			JFile::write($installed_config_file, $bridge_config);
		}
		if (JFolder::exists(JPATH_SITE.'/'.$bridge_path)) {
			JFile::write($installed_htaccess_file, $htaccess);
		}
		
		//update src anyway
		if (!JFile::write($src_config_file, $bridge_config)) {
			$app->enqueueMessage(JText::_('CONFIGURATION_WRITE_FAIL'),"error"); 
		}
		if (!JFile::write($src_htaccess_file, $htaccess)) {
			$app->enqueueMessage(JText::_('HTACCESS_WRITE_FAIL'),"error"); 
		}

		//$this->setRedirect( 'index.php?option=com_config', $msg );
		if ($verbose) $app->enqueueMessage(JText::_('CONFIGURATION_WRITE_SUCCESS'));
	}
	
	function patchForum($undo=false, $patch_full)
	{
		$app = JFactory::getApplication();
		$patch_status = "";
		$success = true;
		
		$phpbb3_path = $this->getForumPath();

		$advsrch_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/search_body.html";
		$advsrch_data = JFile::read($advsrch_file);
			
		$old_advsrch = "<form method=\"get\"";
		$new_advsrch = "<form method=\"post\"";

		if ($undo) {
		$advsrch_data = str_replace($new_advsrch,$old_advsrch,$advsrch_data);
		$patch_status = "PATCH_UNINSTALLED";
		} else {
		$advsrch_data = str_replace($old_advsrch,$new_advsrch,$advsrch_data);
			$patch_status = "PATCH_INSTALLED";
		}

		if (!Jfile::write($advsrch_file,$advsrch_data)) {
			$app->enqueueMessage(sprintf(JText::_('CANNOT_WRITE'),$advsrch_file),"error"); 
				$success = false;   
			} else {
				$success = true;
		}

		if ($patch_full == 1) {
			$header_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/overall_header.html";
			$header_data = JFile::read($header_file);
			
			$viewtopic_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/viewtopic_body.html";
			$viewtopic_data = JFile::read($viewtopic_file);
			
			$viewforum_file = JPATH_SITE.'/'.$phpbb3_path."/styles/prosilver/template/viewforum_body.html";
			$viewforum_data = JFile::read($viewforum_file);
			
			$old_headersearch = "<form action=\"{U_SEARCH}\" method=\"get\" id=\"search\">";
			$new_headersearch = "<form action=\"{U_SEARCH}\" method=\"post\" id=\"search\">";
			
			$old_forumsearch = "<form method=\"get\" id=\"forum-search\" action=\"{S_SEARCHBOX_ACTION}\">";
			$new_forumsearch = "<form method=\"post\" id=\"forum-search\" action=\"{S_SEARCHBOX_ACTION}\">";
			
			$old_topicsearch = "<form method=\"get\" id=\"topic-search\" action=\"{S_SEARCHBOX_ACTION}\">";
			$new_topicsearch = "<form method=\"post\" id=\"topic-search\" action=\"{S_SEARCHBOX_ACTION}\">";
			
			if ($undo) {
				$header_data = str_replace($new_headersearch,$old_headersearch,$header_data);
				$viewforum_data = str_replace($new_forumsearch,$old_forumsearch,$viewforum_data);
				$viewtopic_data = str_replace($new_topicsearch,$old_topicsearch,$viewtopic_data);
				$patch_status = "PATCH_UNINSTALLED";
			} else {
				$header_data = str_replace($old_headersearch,$new_headersearch,$header_data);
				$viewforum_data = str_replace($old_forumsearch,$new_forumsearch,$viewforum_data);
				$viewtopic_data = str_replace($old_topicsearch,$new_topicsearch,$viewtopic_data);
				$patch_status = "PATCH_INSTALLED";
			}
			
			if (!Jfile::write($header_file,$header_data)) {
				$app->enqueueMessage(sprintf(JText::_('CANNOT_WRITE'),$header_file),"error"); 
				$success = false;  
			} else {
				$success = true;
			}
			if (!Jfile::write($viewtopic_file,$viewtopic_data)) {
				$app->enqueueMessage(sprintf(JText::_('CANNOT_WRITE'),$header_file),"error"); 
				$success = false;  
			} else {
				$success = true;
			}
			if (!Jfile::write($viewforum_file,$viewforum_data)) {
				$app->enqueueMessage(sprintf(JText::_('CANNOT_WRITE'),$header_file),"error"); 
				$success = false;  
			} else {
				$success = true;
			}
			

		}
		
		if ($success) $app->enqueueMessage(JText::_($patch_status));
	}
	
	function addIndexes()
	{
		$app = JFactory::getApplication();
		
		if (!$this->_checkForRokBridgeIndexes()) {

			$post_time_index_name = "rokbridge_post_time_r"; 

			if (!($forum_db = $this->_getHelper()->getDb())){
				$app->enqueueMessage(JText::_('PHPBB3_ADDED_ROKBRIDGE_INDEXES_ERROR')); 
			}

			$sql = "ALTER TABLE `#__posts` ADD INDEX `".$post_time_index_name."` (`post_time` DESC)";
			$forum_db->setQuery($sql);
			
			if (!$forum_db->query($sql)){
				$app->enqueueMessage(JText::_('PHPBB3_ADDED_ROKBRIDGE_INDEXES_ERROR')); 
			}
		}
		$app->enqueueMessage(JText::_('PHPBB3_ADDED_ROKBRIDGE_INDEXES_SUCCESS')); 
	}

	function dropIndexes()
	{
		$app = JFactory::getApplication();
		
		if ($this->_checkForRokBridgeIndexes()) {
		
			$post_time_index_name = "rokbridge_post_time_r"; 

			if (!($forum_db = $this->_getHelper()->getDb())){
				$app->enqueueMessage(JText::_('PHPBB3_DROP_ROKBRIDGE_INDEXES_ERROR')); 
			}

			$sql = "ALTER TABLE ".$forum_db->nameQuote('#__posts')." DROP INDEX  ".$forum_db->nameQuote($post_time_index_name);
			$forum_db->setQuery($sql);

			if (!$forum_db->query($sql)){
				$app->enqueueMessage(JText::_('PHPBB3_DROP_ROKBRIDGE_INDEXES_ERROR')); 
			}
		}
		$app->enqueueMessage(JText::_('PHPBB3_DROP_ROKBRIDGE_INDEXES_SUCCESS')); 
	}
	
	function removeBridge($bridge_path=null,$verbose=true)
	{
		$app = JFactory::getApplication();
		
		if (!$bridge_path) $bridge_path = $this->getBridgePath();
		$folder = JPATH_SITE.'/'.$bridge_path ;
		$file   = JPATH_SITE.'/'.$bridge_path."/includes/hooks.php";
		
		if (JFile::exists($file)) {
			if (!JFolder::delete($folder)) {
			   if ($verbose) {
				  $app->enqueueMessage(JText::_('BRIDGE_REMOVE_ERROR'),"error"); 
			   } else {
				  $errors = $app->_messageQueue;
				  $errors[1] = array();
			   }
			   return;
			}
		
			if ($verbose) $app->enqueueMessage(JText::_('BRIDGE_REMOVE_SUCCESS'));
		} else {
			if ($verbose) $app->enqueueMessage(sprintf(JText::_('BRIDGE_NOT_VALID'),$folder),"error");
		}
	}
	
	function moveBridge()
	{
		$app = JFactory::getApplication();

		$bridge_path = $this->getBridgePath();
		
		if (JFolder::exists( JPATH_SITE.'/'.$bridge_path )) {
			//folder exists, is it the bridge?
			if ( JFile::exists( JPATH_SITE.'/'.$bridge_path."/includes/hooks.php")) {
				$app->enqueueMessage(JText::_('BRIDGE_ALREADY_INSTALLED'),"error");
				return;
			} 
		}
				
		$src = JPATH_ADMINISTRATOR."/components/com_rokbridge/forum";
		$dest = JPATH_SITE.'/'.$bridge_path;
		
		if (!JFolder::exists($dest)) {
			if (!JFolder::create($dest)) {
				$app->enqueueMessage(JText::_('ERROR_CREATING_DIR').": ".$dest,"error"); 
				return;
			}        
		}

		if (!JFolder::copy($src,$dest,null,true)) {
			$app->enqueueMessage(JText::_('BRIDGE_INSTALL_ERROR'),"error"); 
			return;
		}
		
		$app->enqueueMessage(JText::_('BRIDGE_INSTALL_SUCCESS')); 
	}
	
	function installForumPlugin()
	{
		$app = JFactory::getApplication();
		$phpbb3_path = $this->getForumPath();
		
		$src    = JPATH_ADMINISTRATOR."/components/com_rokbridge/phpbb/includes/auth/auth_joomla.php";
		$dest   = JPATH_SITE.'/'.$phpbb3_path."/includes/auth";    

		if (!JFile::copy($src,$dest."/auth_joomla.php")) {
		   $app->enqueueMessage(sprintf(JText::_('CANNOT_WRITE'),$dest),"error"); 
		   return;
		}
		
		$app->enqueueMessage(JText::_('PHPBB3_AUTHPLG_INSTALL_SUCCESS')); 
	}

	function removeForumPlugin()
	{
		$app = JFactory::getApplication();
		$phpbb3_path = $this->getForumPath();

		$file   = JPATH_SITE.'/'.$phpbb3_path."/includes/auth/auth_joomla.php";

		if (!JFile::delete($file)) {
		   $app->enqueueMessage(JText::_('PHPBB3_AUTHPLG_REMOVE_ERROR'),"error"); 
		   return;
		}
		
		$app->enqueueMessage(JText::_('PHPBB3_AUTHPLG_REMOVE_SUCCESS')); 
	}
	
	function getForumPath()
	{
		$params = $this->getParams();
		return $params->get('phpbb3_path');
	}
	
	function getBridgePath()
	{
		$params = $this->getParams();
		return $params->get('bridge_path');
	}
	
	function getParams($refresh = false) 
	{
		return $this->_getHelper()->getParams($refresh);
	}
	
	function _isForumInstalled()
	{
		$return = JFolder::exists( JPATH_SITE.'/'.$this->getForumPath() ) && JFile::exists( JPATH_SITE.'/'.$this->getForumPath()."/config.php");
		
		if (!$return)
			return false;
			
		require JPATH_SITE.'/'.$this->getForumPath()."/config.php";
		
		if (!isset($dbhost, $dbuser, $dbpasswd, $dbname, $table_prefix))
			return false;

		return true;
	}
	
	function _isBridgeInstalled()
	{
		return JFolder::exists( JPATH_SITE.'/'.$this->getBridgePath() ) && JFile::exists( JPATH_SITE.'/'.$this->getBridgePath()."/includes/hooks.php");
	}
	
	function _getHelper()
	{
		require_once(JPATH_ADMINISTRATOR.'/components/com_rokbridge/helpers/rokbridge.php' );
		return new RokBridgeHelper();
	}
	
	function _checkForRokBridgeIndexes()
	{
		$post_time_index_name = "rokbridge_post_time_r"; 
		$post_time_index_exists = false;
		
		if (!($forum_db = $this->_getHelper()->getDb()))
			return false;

		$sql = "SHOW INDEXES from #__posts";
		$forum_db->setQuery($sql);
		$post_indexs = $forum_db->loadObjectList();
		if ($post_indexs != null) { 
			foreach ($post_indexs as $index) {
				if ($index->Key_name == $post_time_index_name){
					$post_time_index_exists = true;
				}
			}
		}
		return $post_time_index_exists;
	}
	
	function _getAuthMethod()
	{
		if (!($forum_db = $this->_getHelper()->getDb()))
			return false;

		$sql = "SELECT * from #__config where config_name='auth_method'";

		$forum_db->setQuery($sql);

		$auth_method = $forum_db->loadObject();
		
		return $auth_method->config_value;	
	}
	
	function _setAuthMethod($newauth)
	{		
		if (!($forum_db = $this->_getHelper()->getDb()))
			return false;

		$sql = "SELECT * from #__config where config_name='auth_method'";

		$forum_db->setQuery($sql);

		$auth_method = $forum_db->loadObject();
			
		$auth_method->config_value = $newauth;

		if (!$forum_db->updateObject( '#__config', $auth_method, 'config_name' )) {
			echo $forum_db->stderr();
			return false;
		}
		return $newauth;
	}
	
	/**
	 * Method to get the record form.
	 *
	 * @param	array	$data		Data for the form.
	 * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return	JForm	A JForm object on success, false on failure
	 * @since	1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Initialise variables.
		$app	= JFactory::getApplication();
		$params = JComponentHelper::getParams('com_rokbridge');

		// Get the form.
		$form = $this->loadForm('com_rokbridge.rokbridge',
			'rokbridge',
			array('control' => 'params', 'load_data' => $loadData)
			);
		if (empty($form)) {
			return false;
		}
		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	1.6
	 */
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_rokbridge.edit.rokbridge.data', array());

		if (empty($data)) {
			$data = $this->getParams();
		}
		return $data;
	}
}