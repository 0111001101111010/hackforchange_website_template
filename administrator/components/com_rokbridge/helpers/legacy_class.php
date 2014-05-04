<?php
/**
 * @version   $Id: legacy_class.php 5112 2012-11-08 23:59:29Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
defined('_JEXEC') or die('Restricted access');

if (method_exists('JSession','checkToken')) {
	function rokbridge_checktoken($method = 'post')
	{
		if ($method == 'default')
		{
			$method = 'request';
		}
		return JSession::checkToken($method);
	}
} else {
	function rokbridge_checktoken($method = 'post')
	{
		return JRequest::checkToken($method);
	}
}

if (!class_exists('RokBridgeLegacyJView', false)) {
  $jversion = new JVersion();
  if (version_compare($jversion->getShortVersion(), '2.5.5', '>')) {
    class RokBridgeLegacyJView extends JViewLegacy
    {
    }

    class RokBridgeLegacyJController extends JControllerLegacy
    {
    }

    class RokBridgeLegacyJModel extends JModelLegacy
    {
    }
  } else {
    jimport('joomla.application.component.view');
    jimport('joomla.application.component.controller');
    jimport('joomla.application.component.model');
    class RokBridgeLegacyJView extends JView
    {
    }

    class RokBridgeLegacyJController extends JController
    {
    }

    class RokBridgeLegacyJModel extends JModel
    {
    }
  }
}
