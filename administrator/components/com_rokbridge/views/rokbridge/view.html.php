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
class RokBridgeViewRokBridge extends RokBridgeLegacyJView
{
	protected $form;
    protected $bits;

	/**
	 * display method of RokBridge view
	 * @return void
	 */
	public function display($tpl = null)
	{
		$bits = $this->get('Bits');
		
		foreach ($bits as $key => $value)
		{
			$this->assign($key, $value);
		}
		
		$this->assign('patch_class', $bits->patch_installed ? "installed":"notinstalled");
		$this->assign('userplg_class', $bits->joomla_userplg_installed ? "installed":"notinstalled");
		$this->assign('authplg_class', $bits->joomla_authplg_installed ? "installed":"notinstalled");
		$this->assign('phpbb3plg_class', $bits->phpbb3plg_installed ? "installed":"notinstalled");
		$this->assign('indexes_class', $bits->indexes_installed ? "installed":"notinstalled");
		$this->assign('phpbb3_class', $bits->phpbb3_installed ? "installed":"notinstalled");
		$this->assign('bridge_class', $bits->bridge_installed ? "installed":"notinstalled");
		$this->assign('phpbb3_version', $bits->phpbb3_version);
		
		$this->assign('userplg_status', $bits->joomla_userplg_installed ? JText::_('INSTALLED_ENABLED') : JText::_('INSTALLED_NOT_ENABLED'));
		$this->assign('userplg_note', $bits->joomla_userplg_installed ? "" : JText::_('INSTALLED_NOT_ENABLED_NOTE'));
		$this->assign('authplg_status', $bits->joomla_authplg_installed ? JText::_('INSTALLED_ENABLED') : JText::_('INSTALLED_NOT_ENABLED'));
		$this->assign('authplg_note', $bits->joomla_authplg_installed ? "" : JText::_('INSTALLED_NOT_ENABLED_NOTE'));
		$this->assign('patch_status', !$bits->patch_installed ? JText::_('NOT_INSTALLED') : JText::_('INSTALLED'));
		$this->assign('phpbb3_note', !$bits->phpbb3_installed ? JText::_('PHPBB3_INSTALL_NOT_FOUND') : "phpBB3 Version: <b>" . $bits->phpbb3_version . "</b>");
		$this->assign('phpbb3_status', !$bits->phpbb3_installed ? JText::_('NOT_INSTALLED') : JText::_('INSTALLED'));
		$this->assign('phpbb3plg_status', !$bits->phpbb3plg_installed ? JText::_('NOT_INSTALLED') : JText::_('INSTALLED'));		
		$this->assign('indexes_status', !$bits->indexes_installed ? JText::_('NOT_INSTALLED') : JText::_('INSTALLED'));
		$this->assign('bridge_status', !$bits->bridge_installed ? JText::_('NOT_INSTALLED') : JText::_('INSTALLED'));

		$this->form		= $this->get('Form');

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		// Set the toolbar
		$this->addToolbar();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 */
	protected function addToolBar() 
	{
		$user		= JFactory::getUser();
		$canDo		= RokbridgeHelper::getActions();

        JToolBarHelper::title(JText::_('COM_ROKBRIDGE_TITLE_CONFIGURATION').": ".ROKBRIDGE_VERSION,'rokbridge', 'configuration.png');

		// If not checked out, can save the item.
		if ($canDo->get('core.edit')||($canDo->get('core.create')))
		{
            JToolBarHelper::save('save', 'COM_ROKBRIDGE_SAVE_CONFIG');
            JToolBarHelper::divider();
            JToolBarHelper::cancel('cancel', 'Reset');
            JToolBarHelper::divider();
            JToolBarHelper::preferences('com_rokbridge');
            //JToolBarHelper::help('JHELP_COMPONENTS_ROKBRIDGE_CONFIGURATION');
            $toolbar    = JToolBar::getInstance('toolbar');
            $toolbar->appendButton('Popup', 'about', JText::_('COM_ROKBRIDGE_ABOUT'), 'index.php?option=com_rokbridge&amp;view=about&amp;layout=model&amp;tmpl=component', '500', '275', 0, 0, '');
		}

	}
}
