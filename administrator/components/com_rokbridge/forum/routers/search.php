<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// no direct access
defined('_JEXEC') or die;

function SearchBuildRoute(&$query)
{
	$segments = array();
	
	if(isset($query['search_id'])) {
		$segments[] = $query['search_id'];
		unset($query['search_id']);
	};

	return $segments;
}

function SearchParseRoute($segments)
{
	$vars = array();

	// Count route segments
	$count = count($segments);
	
	$vars['search_id'] = $segments[0];

	return $vars;
}
?>