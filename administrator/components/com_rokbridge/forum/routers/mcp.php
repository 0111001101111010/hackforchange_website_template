<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// no direct access
defined('_JEXEC') or die;

function McpBuildRoute(&$query)
{
	$segments = array();
	
	if(isset($query['mode'])) {
		$segments[] = $query['mode'];
		unset($query['mode']);
	};

	return $segments;
}

function McpParseRoute($segments)
{
	$vars = array();

	// Count route segments
	$count = count($segments);

	return $vars;
}
?>