<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access
defined('_JEXEC') or die;
// import Joomla controller library
jimport('joomla.application.component.controller');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

/**
 * RokBridge master display controller.
 *
 * @package		RokBridge
 * @subpackage	com_rokbridge
 * @since		1.6
 */
class RokBridgeController extends RokBridgeLegacyJController
{
	function __construct($config = array())
	{
		parent::__construct($config);

		// Register Extra tasks
		$this->registerTask( 'save',  'process' );
		$this->registerTask( 'addindexes',	'process' );
		$this->registerTask( 'dropindexes',	'process' );
		$this->registerTask( 'applypatch',	'process' );
		$this->registerTask( 'removepatch',	'process' );
		$this->registerTask( 'movebridge',	'process' );
		$this->registerTask( 'removebridge',	'process' );
		$this->registerTask( 'installplugin',	'process' );
		$this->registerTask( 'removeplugin',	'process' );
	}
	
	/**
	 * Method to display a view.
	 *
	 * @param	boolean			$cachable	If true, the view output will be cached
	 * @param	array			$urlparams	An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController		This object to support chaining.
	 * @since	1.5
	 */
	public function display($cachable = false, $urlparams = false)
	{
		require_once JPATH_COMPONENT.'/helpers/rokbridge.php';

		$view		= JRequest::getCmd('view', 'rokbridge');
        	JRequest::setVar('view', $view);

		parent::display();

		return $this;
	}
	
	function process()
	{
		$model = $this->getModel();
	
		switch(strtolower($this->getTask()))
		{
			case 'save':
				$model->saveConfiguration();
			break;
			case 'addindexes':
				$model->addIndexes();
			break;
			case 'dropindexes':
				$model->dropIndexes();
			break;
			case 'applypatch':
				$model->patchForum(false, JRequest::getInt("patchfull",0));
			break;
			case 'removepatch':
				$model->patchForum(true, JRequest::getInt("patchfull",0));
			break;
			case 'movebridge':
				$model->moveBridge();
			break;
			case 'removebridge':
				$model->removeBridge();
			break;
			case 'installplugin':
				$model->installForumPlugin();
			break;
			case 'removeplugin':
				$model->removeForumPlugin();
			break;
		}

		$this->setRedirect( 'index.php?option=com_rokbridge');		
	}
}
