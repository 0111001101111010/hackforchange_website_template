<?php
/**
* @version   $Id$
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// Set flag that this is a parent file.
define('_JEXEC', 1);
define('JPATH_BASE', dirname(__FILE__) );
define('DS', DIRECTORY_SEPARATOR);

if (file_exists(dirname(__FILE__) . '/defines.php')) {
	include_once dirname(__FILE__) . '/defines.php';
}
if (!defined('_JDEFINES')) {
    require_once( JPATH_BASE .'/includes/defines.php' );
}
require_once( JPATH_BASE .'/includes/framework.php' );
require_once( JPATH_BASE .'/includes/hooks.php' );

// Mark afterLoad in the profiler.
JDEBUG ? $_PROFILER->mark( 'afterLoad' ) : null;

// Instantiate the application.
$app = JFactory::getApplication('forum', array('session_name' => 'site'));

//$app->scope = 'forum';
//$component = 'forum';
// Initialise the application.
//$app->initialise(array('language' => $app->getUserState( "application.lang", 'lang' )));


//JPluginHelper::importPlugin('system');

// Mark afterIntialise in the profiler.
JDEBUG ? $_PROFILER->mark('afterInitialise') : null;

// Route the application.
$app->route();

// Mark afterRoute in the profiler.
JDEBUG ? $_PROFILER->mark('afterRoute') : null;
//$app->triggerEvent('onAfterRoute');

// Dispatch the application.
$app->dispatch();

// Mark afterDispatch in the profiler.
JDEBUG ? $_PROFILER->mark('afterDispatch') : null;

// Render the application.
$app->render();

// Mark afterRender in the profiler.
JDEBUG ? $_PROFILER->mark('afterRender') : null;

// Return the response.
echo JResponse::toString($app->getCfg('gzip'));

?>