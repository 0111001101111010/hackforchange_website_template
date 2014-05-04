<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// No direct access.
defined('_JEXEC') or die;

/**
 * Joomla! Application define.
 */

//Global definitions.
//Joomla framework path definitions.
$parts = explode(DS, JPATH_BASE);
$lastpart = array_pop($parts);

//Defines.
define('JPATH_ROOT', implode(DS, $parts));
define('JPATH_SITE', JPATH_ROOT);
define('JPATH_CONFIGURATION', JPATH_ROOT);
define('JPATH_FORUM', JPATH_BASE);
define('JPATH_FORUM_PATH', $lastpart);
define('JPATH_ADMINISTRATOR', JPATH_ROOT . DS . 'administrator');
define('JPATH_LIBRARIES', JPATH_ROOT . DS . 'libraries');
define('JPATH_PLUGINS', JPATH_ROOT . DS . 'plugins');
define('JPATH_INSTALLATION', JPATH_ROOT . DS . 'installation');
define('JPATH_THEMES', JPATH_BASE . DS . 'templates');
define('JPATH_CACHE', JPATH_BASE . DS . 'cache');
//Make sure that UTF8 functions are not loaded twice, so we define UTF8_CORE TRUE
define('UTF8_CORE', TRUE);

?>