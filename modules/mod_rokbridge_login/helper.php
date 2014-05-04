<?php

/**
 * @version    $Id: helper.php 2047 2007-10-02 00:42:56Z rhuk $
 * @package RokBridge - phpBB3 edition
 * @copyright Copyright (C) 2009 RocketTheme. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @author RocketTheme, LLC

 */

// no direct access
defined('_JEXEC') or die;


class modRokBridgeLoginHelper

{

    var $fuser = null;

    var $phpbb_path;


    function modRokBridgeLoginHelper(&$rokbridge)
    {


        //save phpbb path for later use

        $this->phpbb_path = $rokbridge->phpbb_path;


        //test for rokbridge helper

        if (!class_exists('RokBridgeHelper')) {

            $app->enqueueMessage(JText::_('Error initializing mod_rokbridge_login, RokBridge not installed.'), "error");

            return;

        }

        if ($rokbridge->link_format == "bridged") {

            if (!defined('PHP_AVATAR_URL')) {
                define('PHP_AVATAR_URL', $rokbridge->bridge_path . "/index.php?rb_v=ucp&i=profile&mode=avatar");
            }
            if (!defined('PHP_PM_URL')) {
                define('PHP_PM_URL', $rokbridge->bridge_path . "/index.php?i=pm&folder=inbox&rb_v=ucp");
            }
            if (!defined('PHP_UNANSWERED_URL')) {
                define('PHP_UNANSWERED_URL', $rokbridge->bridge_path . "/index.php?search_id=unanswered&rb_v=search");
            }
            if (!defined('PHP_NEW_URL')) {
                define('PHP_NEW_URL', $rokbridge->bridge_path . "/index.php?search_id=newposts&rb_v=search");
            }
            if (!defined('PHP_ACTIVE_URL')) {
                define('PHP_ACTIVE_URL', $rokbridge->bridge_path . "/index.php?search_id=active_topics&rb_v=search");
            }
            if (!defined('PHP_YOUR_URL')) {
                define('PHP_YOUR_URL', $rokbridge->bridge_path . "/index.php?search_id=egosearch&rb_v=search");
            }
            if (!defined('PHP_YOUR_ACTIVITY')) {
                define('PHP_YOUR_ACTIVITY', $rokbridge->bridge_path . "/index.php?rb_v=ucp&i=main&mode=front");
            }

        } else {

            if (!defined('PHP_AVATAR_URL')) {
                define('PHP_AVATAR_URL', $rokbridge->phpbb_path . "/ucp.php?i=profile&mode=avatar");
            }
            if (!defined('PHP_PM_URL')) {
                define('PHP_PM_URL', $rokbridge->phpbb_path . "/ucp.php?i=pm&folder=inbox");
            }
            if (!defined('PHP_UNANSWERED_URL')) {
                define('PHP_UNANSWERED_URL', $rokbridge->phpbb_path . "/search.php?search_id=unanswered");
            }
            if (!defined('PHP_NEW_URL')) {
                define('PHP_NEW_URL', $rokbridge->phpbb_path . "/search.php?search_id=newposts");
            }
            if (!defined('PHP_ACTIVE_URL')) {
                define('PHP_ACTIVE_URL', $rokbridge->phpbb_path . "/search.php?search_id=active_topics");
            }
            if (!defined('PHP_YOUR_URL')) {
                define('PHP_YOUR_URL', $rokbridge->phpbb_path . "/search.php?search_id=egosearch");
            }
            if (!defined('PHP_YOUR_ACTIVITY')) {
                define('PHP_YOUR_ACTIVITY', $rokbridge->phpbb_path . "/ucp.php");
            }

        }

        if (!($phpbb_db = $rokbridge->getDb()))
            return;

        $user = JFactory::getUser();
        $fuser = null;

        if (isset($user->username)) {

            $query = "SELECT user_id, user_type, username, user_unread_privmsg, user_new_privmsg, user_avatar, user_avatar_type, user_avatar_width, user_avatar_height, user_lastvisit, FROM_UNIXTIME(user_lastvisit,'%a %b %D %x %h:%i %p') AS LastVisit FROM #__users WHERE " . $rokbridge->getWhereClause($user->username);
            $phpbb_db->setQuery($query);
            $fuser = $phpbb_db->loadObject();

        }
        $this->fuser = $fuser;
    }

    function getUser()
    {
        if (isset($this->fuser)) {
            return $this->fuser;
        }
    }

    function getPMs()
    {
        if (isset($this->fuser)) {
            return $this->fuser->user_unread_privmsg;
        }
    }

    function getLastVisit()
    {
        if (isset($this->fuser)) {
            return $this->fuser->LastVisit;
        }
    }

    static function getReturnURL($params, $type)
    {
        if ($itemid = $params->get($type)) {
            $url = 'index.php?Itemid=' . $itemid;
            $url = JRoute::_($url, false);
        } else {
            // Redirect to login
            $uri = JFactory::getURI();
            $url = $uri->toString();
        }

        return base64_encode($url);
    }

    static function getType()
    {
        $user = JFactory::getUser();
        return (!$user->get('guest')) ? 'logout' : 'login';
    }
}