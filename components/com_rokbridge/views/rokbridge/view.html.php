<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access to this file
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

class RokbridgeViewRokbridge extends RokBridgeLegacyJView
{
	function display($tpl = null)
	{
		$app		= JFactory::getApplication();
		$user		= JFactory::getUser();
	}
}
?>
