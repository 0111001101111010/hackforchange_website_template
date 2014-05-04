<?php


// no direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.model');

include_once(JPATH_COMPONENT_ADMINISTRATOR.'/helpers/legacy_class.php');

/**
 *
 */
class RokBridgeModelAbout extends RokBridgeLegacyJModel
{

    /**
     * @param array $config
     */
    public function __construct($config = array())
	{
		parent::__construct($config);
	}
}
