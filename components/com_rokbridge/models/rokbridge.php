<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die;

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

jimport('joomla.application.component.model');

class RokBridgeModelRokBridge extends RokBridgeLegacyJModel
{
	function getParams()
	{
			$table = JTable::getInstance('extension');
			$id = $table->find(array('element' => 'com_rokbridge'));
			$table->load($id);
					
		return new JRegistry( $table->params, JPATH_ADMINISTRATOR.'/components/com_rokbridge/models/forms/rokbridge.xml' );
	}
}