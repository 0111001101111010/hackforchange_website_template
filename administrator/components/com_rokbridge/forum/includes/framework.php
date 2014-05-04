<?php
/**
* @version   $Id$
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// No direct access.
defined('_JEXEC') or die;

//
// Joomla system checks.
//

@ini_set('magic_quotes_runtime', 0);
@ini_set('zend.ze1_compatibility_mode', '0');

//
// Installation check, and check on removal of the install directory.
//

if (!file_exists(JPATH_CONFIGURATION . '/configuration.php') || (filesize(JPATH_CONFIGURATION . '/configuration.php') < 10) || file_exists(JPATH_INSTALLATION.'/index.php')) {

	if (file_exists(JPATH_INSTALLATION.'/index.php')) {
		header('Location: '.substr($_SERVER['REQUEST_URI'], 0, strpos($_SERVER['REQUEST_URI'], 'index.php')).'installation/index.php');
		exit();
	} else {
		echo 'No configuration file found and no installation code available. Exiting...';
		exit();
	}
}

//
// Joomla system startup.
//
// System includes.
if(file_exists(JPATH_LIBRARIES.'/import.legacy.php')){
    require_once JPATH_LIBRARIES.'/import.legacy.php';
} else {
    require_once JPATH_LIBRARIES.'/import.php';
}

// Force library to be in JError legacy mode
JError::$legacy = true;
JError::setErrorHandling(E_NOTICE, 'message');
JError::setErrorHandling(E_WARNING, 'message');
JError::setErrorHandling(E_ERROR, 'message', array('JError', 'customErrorPage'));

// Bootstrap the CMS libraries.
require_once JPATH_LIBRARIES.'/cms.php';

// Pre-Load configuration.
ob_start();
require_once JPATH_CONFIGURATION.'/configuration.php';
ob_end_clean();

// System configuration.
$config = new JConfig();

// Set the error_reporting
switch ($config->error_reporting)
{
	case 'default':
	case '-1':
		break;

	case 'none':
	case '0':
		error_reporting(0);
		break;

	case 'simple':
		error_reporting(E_ERROR | E_WARNING | E_PARSE);
		ini_set('display_errors', 1);
		break;

	case 'maximum':
		error_reporting(E_ALL);
		ini_set('display_errors', 1);
		break;

	case 'development':
		error_reporting(-1);
		ini_set('display_errors', 1);
		break;

	default:
		error_reporting($config->error_reporting);
		ini_set('display_errors', 1);
		break;
}

define('JDEBUG', $config->debug);

unset($config);

//
// Joomla framework loading.
//

// System profiler.
if (JDEBUG) {
	jimport('joomla.error.profiler');
	$_PROFILER = JProfiler::getInstance('Application');
}

//Set the application information
jimport( 'joomla.application.helper' );

$obj = new stdClass();
$obj->id	= 4;
$obj->name	= 'forum';
$obj->path	= JPATH_FORUM;
$info[4]    	= $obj;
$info = JApplicationHelper::addClientInfo($obj);
unset($obj);
//
// Joomla library imports.
//

jimport( 'joomla.environment.uri' );
//Load html libraries, these are necessary for J! debugging purposes
jimport( 'joomla.html.html' );
jimport( 'joomla.utilities.utility' );
jimport( 'joomla.user.user' );
jimport( 'joomla.event.event' );
jimport( 'joomla.event.dispatcher' );
jimport( 'joomla.utilities.arrayhelper');
jimport( 'joomla.language.helper');
jimport( 'joomla.application.component.helper' );

//Register class that don't follow one file per class naming conventions
JLoader::register('JText',	JPATH_PLATFORM . '/joomla/methods.php');
?>