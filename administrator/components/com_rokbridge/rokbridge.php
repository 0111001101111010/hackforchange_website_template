<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
 
// No direct access
defined('_JEXEC') or die;

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_rokbridge')) 
{
	return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}
 
define('ROKBRIDGE_VERSION','3.2');
define('PATCH_VERSION','3.0.11');
// Require the base controller
require_once( JPATH_COMPONENT.'/controller.php' );

// require helper file
JLoader::register('RokBridgeHelper', dirname(__FILE__) . '/helpers/rokbridge.php');

// import joomla controller library
jimport('joomla.application.component.controller');
 
// Get an instance of the controller prefixed by RokBridge
$controller = RokBridgeLegacyJController::getInstance('RokBridge');
 
// Perform the Request task
$controller->execute(JRequest::getCmd('task'));
 
// Redirect if set by the controller
$controller->redirect();
