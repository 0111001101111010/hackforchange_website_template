<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// Check to ensure this file is within the rest of the framework
defined('JPATH_BASE') or die();

class rokuser extends user
{
	/**
	* Extract current session page
	*
	* @param string $root_path current root path (phpbb_root_path)
	*/
	function extract_current_page($root_path)
	{
		$page = parent::extract_current_page($root_path);
		$view = JRequest::getVar('rb_v');
		
		$page['page'] = str_replace($page['page'], 'index.php', $view.'.php');
		
		return $page;
	}
}