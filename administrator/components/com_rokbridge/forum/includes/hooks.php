<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */


// no direct access
defined('_JEXEC') or die;

function phpbb_hook_register(&$hook)
{	
	global $phpbb_root_path, $phpEx, $db, $app, $config, $user;
	
	$app = JFactory::getApplication();
	//Set configration
	//$config['ranks_path'] = JURI::root(true).'/'.$config['ranks_path'];
	
	//Set extended user object
	require_once( JPATH_BASE .'/includes/user.php' );
	$user                 = new rokuser();
	
	//Register the hooks
	foreach($hook->hooks as $definition => $hooks)
	{
		foreach($hooks as $function => $data)
		{
			$callback = $definition == '__global' ? $function : $definition.'_'.$function; 
			$hook->register(array($definition, $function), array('JForumHook', $callback));
		}
	}
}

function msg_handler_hook_register($errno, $msg_text, $errfile, $errline) {
	JForumHook::msg_handler($errno, $msg_text, $errfile, $errline);		
}

class JForumHook
{
	static function append_sid($hook, $url, $params = false, $is_amp = true, $session_id = false)
	{
		global $_SID, $_EXTRA_URL;
		
		$arrParams = array();
		$arrExtra  = array();
		$anchor    = '';
		
		JForumHook::fixPage();

		$config = JFactory::getConfig();

		if ($url == '.php') {
			$url = '/'.$config->get('phpbb_path').'/index.php';
		}

		// Assign sid if session id is not specified
		if ($session_id === false) {
			$session_id = $_SID;
		}
	
		//Clean the url and the params first
		if($is_amp) 
		{
			$url  = str_replace( '&amp;', '&', $url );
			if(!is_array($params)) {
				$params = str_replace( '&amp;', '&', $params );
			}
		}
	
		$amp_delim = ($is_amp) ? '&amp;' : '&';
		$url_delim = (strpos($url, '?') === false) ? '?' : $amp_delim;

		// Process the parameters array
		if (is_array($params))
		{
			foreach ($params as $key => $item)
			{

				if ($item === NULL)
				{
					continue;
				}

				if ($key == '#')
				{
					$anchor = '#' . $item;
					continue;
				}

				$arrParams[$key] = $item;
			}
		} 
		else
		{	
			if(strpos($params, '#') !== false) 
			{
				list($params, $anchor) = explode('#', $params, 2);
				$anchor = '#' . $anchor;
			}
		
			parse_str($params, $arrParams); 
		}
	
		//Process the extra array
		if(!empty($_EXTRA_URL)) 
		{
			$extra = implode('&', $_EXTRA_URL);
			parse_str($extra, $arrExtra); 
		}

		//Create the URL
		$uri = new JURI($url);
	
		$query = $uri->getQuery(true);	
		$query = $query + $arrParams + $arrExtra;
		
		$uri->setQuery($query);
	
		//Set session id variable		
		if(!empty($session_id)) {
			$uri->setVar('sid', $session_id);
		}
		
		//Set fragment
		if($anchor) {
			$uri->setFragment($anchor);
		}
		
		$view = basename($uri->getPath(), '.php');
			
		if(!$uri->getVar('rb_v') && $view != "style") 
		{	
			
			
			if(JRequest::getVar('rb_v') == 'adm') 
			{
				if(strpos($url, $config->get('phpbb_path')) === false) {
					$view = 'adm';
				}
			}
	
			if (stripos($url, ($config->get('phpbb_path').'/adm')) !== false) {
				$view = 'adm';
			}
			
			if($view != 'index') {
				//TODO fix undefined rb_v
				$uri->setVar('rb_v', $view);				
			}
		}
		
		if ($view != 'style') { 
			$url = 'index.php'. $uri->toString(array('query', 'fragment'));
			// {} getting lost in encoding
			$url = str_replace( array('%7B', '%7D'), array('{', '}'), $url);
			return urldecode(JURI::base().JRoute::_($url, $is_amp));
		}	
		else {
			$url = 'style.php'. $uri->toString(array('query', 'fragment'));
			$url = str_replace( array('%7B', '%7D'), array('{', '}'), $url);
			return urldecode(JPATH_ROOT.'/'.$config->get('phpbb_path').'/'.$url);
		}
	}
	
	static function fixPage() {
		global $user, $phpEx;
		
		$uri = new JURI($user->page['page_name'] . '.' . $phpEx . '?' . $user->page['query_string']);
		$user->page['page'] = $uri->toString();
	}
	
	static  function exit_handler($hook)
	{
		$app = JFactory::getApplication();
		
		global $app, $_PROFILER;
	
		$data = $app->_dispatchEnd();
	
		$app->render($data);
	
		if(JDEBUG) 
		{
			$_PROFILER->mark( 'afterRender' );
			JResponse::appendBody(implode( '', $_PROFILER->getBuffer()));
		}
	
		echo JResponse::toString($app->getCfg('gzip'));
		$app->close();
	}

	static function phpbb_user_session_handler($hook)
	{
		global $phpbb_root_path, $phpbb_admin_path, $phpEx;
		global $user, $auth, $template, $cache, $db, $config;
		global $action, $module, $mode, $starttime;
	
		//Force the page_name
		$user->page['page_name'] = JRequest::getVar('rb_v');
		
		//Simple post dispatch filtering
		switch(JRequest::getVar('mode'))
		{
			case 'overview'    :
			case 'reg_details' :
			{
				//Don't allow password changes through the user control panel
				unset($_POST['new_password']);
				unset($_POST['password_confirm']);
				unset($_REQUEST['new_password']);
				unset($_REQUEST['password_confirm']);
			}
		}
	}
	
	static function template_display($hook, $handle, $include_once = true)
	{
		
	}
	
	static function msg_handler($errno, $msg_text, $errfile, $errline) {
		msg_handler($errno, $msg_text, $errfile, $errline);		
	}
}
?>