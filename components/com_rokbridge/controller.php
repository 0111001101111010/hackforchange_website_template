<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
 
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controller');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

class RokBridgeController extends RokBridgeLegacyJController
{
	/**
	 * Method to display a view.
	 *
	 * @param	boolean			If true, the view output will be cached
	 * @param	array			An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController		This object to support chaining.
	 * @since	1.5
	 */
	public function display($cachable = false, $urlparams = false)
	{
		$cachable = false;
		$model = $this->getModel();
		$params = $model->getParams();

		$bridge_path = $params->get('bridge_path');
		$phpbb3_path = $params->get('phpbb3_path');
		$link_format = $params->get('link_format','bridged');

		if ($link_format == 'bridged') 
			$this->setRedirect(JURI::base().$bridge_path);
		else 
			$this->setRedirect(JURI::base().$phpbb3_path);
	}
}
