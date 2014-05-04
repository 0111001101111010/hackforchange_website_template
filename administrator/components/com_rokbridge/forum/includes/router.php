<?php
 /**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// Check to ensure this file is within the rest of the framework
defined('JPATH_BASE') or die();
$version = new JVersion;
if (version_compare($version->getShortVersion(), '3.0', '<')) {
    /**
     * Class to create and parse routes for the site application
     *
     * @package		Joomla.Site
     * @subpackage	Application
     * @since		1.5
     */
    class JRouterForum extends JRouter
    {
        var $_views = array();

        function __construct($options = array())
        {
            parent::__construct($options);

            $this->_views = array(
                'adm'           => 'adm',
                'download' 		=> 'download',
                'faq'			=> 'faq',
                'file'			=> 'file',
                'mcp'			=> 'moderator',
                'memberlist'	=> 'members',
                'posting'		=> 'post',
                'report'		=> 'report',
                'search'		=> 'search',
                'ucp'			=> 'user',
                'viewforum'		=> 'forum',
                'viewonline'	=> 'online',
                'viewtopic'		=> 'topic',
                'cron'          => 'cron'
            );
        }

        public function parse(&$uri)
        {
            $vars = array();

            // Get the application
            $app = JApplication::getInstance('site');

            if ($app->getCfg('force_ssl') == 2 && strtolower($uri->getScheme()) != 'https') {
                //forward to https
                $uri->setScheme('https');
                $app->redirect((string)$uri);
            }

            // Get the path
            $path = $uri->getPath();

            // Remove the base URI path.
            $path = substr_replace($path, '', 0, strlen(JURI::base(true)));

            //Remove prefix
            $path = str_replace('index.php', '', $path);

            //Set the route
            $uri->setPath(trim($path , '/'));

            $vars += parent::parse($uri);

            return $vars;
        }

        public function build($url)
        {
            $uri = parent::build($url);

            // Get the path data
            $route = $uri->getPath();

            //Add the suffix to the uri
            if($this->_mode == JROUTER_MODE_SEF && $route)
            {
                $app = JFactory::getApplication();

                if($app->getCfg('sef_rewrite'))
                {
                    //Transform the route
                    $route = str_replace('index.php/', '', $route);
                }
            }

            //Add basepath to the uri
            $uri->setPath($route);

            return $uri;
        }


        protected function _parseRawRoute(&$uri)
        {
            return array();
        }

        protected function _parseSefRoute(&$uri)
        {
            $vars = array();

            $route = $uri->getPath();

            //Handle an empty URL (special case)
            if(empty($route)) {
                return array();
            }

            $segments = explode('/', $route);

            $view  = preg_replace('/[^A-Z0-9_\.-]/i', '', $segments[0]);

            $views = array_flip($this->_views);
            $view  =  $views[$view];

            if(empty($view)) {
                $view = 'index';
            }

            array_shift($segments);

            // Use the component routing handler if it exists
            $path = JPATH_BASE.'/routers/'.$view.'.php';

            if (file_exists($path) && count($segments))
            {
                require_once $path;
                $function =  $view.'ParseRoute';
                $vars =  $function($segments);
            }

            //set the view
            $vars['rb_v'] = $view;

            //Set the variables
            $this->setVars($vars);

            return array();
        }

        protected function _buildRawRoute(&$uri)
        {
            $route = ''; //the route created
            return $route;
        }

        protected function _buildSefRoute(&$uri)
        {
            $parts = array();

            // Get the route
            $route = $uri->getPath();

            //Get the query data
            $query = $uri->getQuery(true);

            if (!isset($query['rb_v'])) {
                return;
            }

            // Get the view
            $view = preg_replace('/[^A-Z0-9_\.-]/i', '', $query['rb_v']);

            // Unset unneeded query information
            unset($query['rb_v']);

            // Use the component routing handler if it exists
            $path = JPATH_BASE.'/routers/'.$view.'.php';

            // Use the custom request handler if it exists
            if (file_exists($path) && !empty($query)) {
                require_once $path;
                $function	= $view.'BuildRoute';
                $parts		= $function($query);

            }

            //Translate the view
            $views = $this->_views;
            $view  = $views[$view];

            //add the view to the head of the parts array
            $parts = array_merge(array('rb_v' => $view), $parts);

            $result  = implode('/', $parts);
            $route  .= ($result != "") ? '/'.$result : null;

            //Set query again in the URI
            $uri->setQuery($query);
            $uri->setPath($route);
        }
    }

} else {

    class JRouterForum extends JRouter
    {
    	var $_views = array();

    	function __construct($options = array())
    	{
    		parent::__construct($options);

    		$this->_views = array(
    		    'adm'           => 'adm',
    			'download' 		=> 'download',
    			'faq'			=> 'faq',
    			'file'			=> 'file',
    			'mcp'			=> 'moderator',
    			'memberlist'	=> 'members',
    			'posting'		=> 'post',
    			'report'		=> 'report',
    			'search'		=> 'search',
    			'ucp'			=> 'user',
    			'viewforum'		=> 'forum',
    			'viewonline'	=> 'online',
    			'viewtopic'		=> 'topic',
    			'cron'          => 'cron'
    		);
    	}

    	public function parse($uri)
    	{
    		$vars = array();

    		// Get the application
    		$app = JApplication::getInstance('site');

    		if ($app->getCfg('force_ssl') == 2 && strtolower($uri->getScheme()) != 'https') {
    			//forward to https
    			$uri->setScheme('https');
    			$app->redirect((string)$uri);
    		}

    		// Get the path
    		$path = $uri->getPath();

    		// Remove the base URI path.
    		$path = substr_replace($path, '', 0, strlen(JURI::base(true)));

    		//Remove prefix
    		$path = str_replace('index.php', '', $path);

    		//Set the route
    		$uri->setPath(trim($path , '/'));

    		$vars += parent::parse($uri);

    		return $vars;
    	}

    	public function build($url)
    	{
    		$uri = parent::build($url);

    		// Get the path data
    		$route = $uri->getPath();

    		//Add the suffix to the uri
    		if($this->_mode == JROUTER_MODE_SEF && $route)
    		{
    			$app = JFactory::getApplication();

    			if($app->getCfg('sef_rewrite'))
    			{
    				//Transform the route
    				$route = str_replace('index.php/', '', $route);
    			}
    		}

    		//Add basepath to the uri
    		$uri->setPath($route);

    		return $uri;
    	}


    	protected function _parseRawRoute($uri)
    	{
    		return array();
    	}

    	protected function _parseSefRoute($uri)
    	{
    		$vars = array();

    		$route = $uri->getPath();

    		//Handle an empty URL (special case)
    		if(empty($route)) {
    			return array();
    		}

    		$segments = explode('/', $route);

    		$view  = preg_replace('/[^A-Z0-9_\.-]/i', '', $segments[0]);

    		$views = array_flip($this->_views);
    		$view  =  $views[$view];

    		if(empty($view)) {
    			$view = 'index';
    		}

    		array_shift($segments);

    		// Use the component routing handler if it exists
    		$path = JPATH_BASE.'/routers/'.$view.'.php';

    		if (file_exists($path) && count($segments))
    		{
    			require_once $path;
    			$function =  $view.'ParseRoute';
    			$vars =  $function($segments);
    		}

    		//set the view
    		$vars['rb_v'] = $view;

    		//Set the variables
    		$this->setVars($vars);

    		return array();
    	}

    	protected function _buildRawRoute($uri)
    	{
    		$route = ''; //the route created
    		return $route;
    	}

    	protected function _buildSefRoute($uri)
    	{
    		$parts = array();

    		// Get the route
    		$route = $uri->getPath();

    		//Get the query data
    		$query = $uri->getQuery(true);

    		if (!isset($query['rb_v'])) {
    			return;
    		}

    		// Get the view
    		$view = preg_replace('/[^A-Z0-9_\.-]/i', '', $query['rb_v']);

    		// Unset unneeded query information
    		unset($query['rb_v']);

    		// Use the component routing handler if it exists
    		$path = JPATH_ROOT.'/routers/'.$view.'.php';

    		// Use the custom request handler if it exists
    		if (file_exists($path) && !empty($query)) {
    			require_once $path;
    			$function	= $view.'BuildRoute';
    			$parts		= $function($query);

    		}

    		//Translate the view
    		$views = $this->_views;
    		$view  = $views[$view];

    		//add the view to the head of the parts array
    		$parts = array_merge(array('rb_v' => $view), $parts);

    		$result  = implode('/', $parts);
    		$route  .= ($result != "") ? '/'.$result : null;

    		//Set query again in the URI
    		$uri->setQuery($query);
    		$uri->setPath($route);
    	}
    }

}