<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access
defined('_JEXEC') or die;

// import Joomla view library
jimport('joomla.application.component.view');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

/**
 * RokBridge View
 */
class RokBridgeViewAbout extends RokBridgeLegacyJView
{

	/**
	 * display method of About view
	 * @return void
	 */
	public function display($tpl = null)
	{
        $css = 'body,
                html {
                    overflow: hidden;
                }';
        $doc = JFactory::getDocument();
        $doc->addStyleDeclaration($css);
        parent::display($tpl);
	}
}
