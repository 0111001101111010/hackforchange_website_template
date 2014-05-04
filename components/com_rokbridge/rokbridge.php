<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

define('ROKBRIDGE_VERSION','3.2');
// import joomla controller library
jimport('joomla.application.component.controller');

// Get an instance of the controller
$controller	= RokBridgeLegacyJController::getInstance('RokBridge');

// Perform the Request task
$controller->execute(JRequest::getCmd('task'));
// Redirect if set by the controller
$controller->redirect();