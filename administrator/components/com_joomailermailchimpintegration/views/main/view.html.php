<?php
/**
 * Copyright (C) 2011  freakedout (www.freakedout.de)
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
**/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted Access' );

jimport( 'joomla.application.component.view');

class joomailermailchimpintegrationsViewMain extends JView
{

    function display($tpl = null)
    {
	JToolBarHelper::title( JText::_( 'JM_NEWSLETTER' ), 'MC_logo_48.png' );

	$bar=& JToolBar::getInstance( 'toolbar' );

	$params =& JComponentHelper::getParams( 'com_joomailermailchimpintegration' );
	$paramsPrefix = (version_compare(JVERSION,'1.6.0','ge')) ? 'params.' : '';
	$MCapi  = $params->get( $paramsPrefix.'MCapi' );
	$MCauth = new MCauth();

	JToolBarHelper::custom( 'extensions', 'extensions', 'extensions', 'JM_EXTENSIONS', false, false );
	JToolBarHelper::spacer();

	if( $MCapi && $MCauth->MCauth() ) {
	    $subdomain = explode('-', $MCapi);
	    $url = 'https://'.$subdomain[1].'.admin.mailchimp.com';
	    if ( JOOMLAMAILER_CREATE_DRAFTS || JOOMLAMAILER_MANAGE_CAMPAIGNS ){
		JToolBarHelper::custom( 'templates', 'templates', 'templates', 'JM_EMAIL_TEMPLATES', false, false );
		JToolBarHelper::spacer();
	    }
	    $bar->appendButton( 'Popup', 'account-settings', 'JM_ACCOUNT_SETTINGS', $url, 990, 550 );
	    JToolBarHelper::spacer();
	} else {
	    $url = 'https://login.mailchimp.com/';
	    $bar->appendButton( 'Popup', 'account-settings', 'JM_ACCOUNT_SETTINGS', $url, 990, 550 );
	    JToolBarHelper::spacer();
	}

	$user =& JFactory::getUser();
	if ( (version_compare(JVERSION,'1.6.0','ge') && $user->authorise('core.admin', 'com_joomailermailchimpintegration'))
	    || !version_compare(JVERSION,'1.6.0','ge') ) {
	    JToolBarHelper::preferences('com_joomailermailchimpintegration', '450');
	    JToolBarHelper::spacer();
	}


	if( $MCapi && $MCauth->MCauth() ) {
	    $details =& $this->get('ClientDetails');
	    $this->assignRef('details', $details);

	    $drafts =& $this->get('Drafts');
	    $this->assignRef('drafts', $drafts);

	    $campaigns =& $this->get('Campaigns');
	    $this->assignRef('campaigns', $campaigns);

	    $chimpChatter =& $this->get('ChimpChatter');
	    $this->assignRef('chimpChatter', $chimpChatter);
	}

	parent::display($tpl);
	require_once( JPATH_COMPONENT.DS.'helpers'.DS.'footer.php' );
    }
}
