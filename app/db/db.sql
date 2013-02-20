-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: joomla25
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.10.1

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
-- Table structure for table `br9bh_assets`
--

DROP TABLE IF EXISTS `br9bh_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_assets` (
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_assets`
--

LOCK TABLES `br9bh_assets` WRITE;
/*!40000 ALTER TABLE `br9bh_assets` DISABLE KEYS */;
INSERT INTO `br9bh_assets` VALUES (1,0,1,77,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,28,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,29,30,1,'com_cpanel','com_cpanel','{}'),(10,1,31,32,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,33,34,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,35,36,1,'com_login','com_login','{}'),(13,1,37,38,1,'com_mailto','com_mailto','{}'),(14,1,39,40,1,'com_massmail','com_massmail','{}'),(15,1,41,42,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,43,44,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,45,46,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,47,48,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,49,52,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,53,54,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,55,56,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,57,58,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,59,60,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,61,64,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,65,68,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,69,70,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,50,51,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,66,67,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,62,63,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,71,72,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,73,74,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,75,76,1,'com_ckeditor','ckeditor','{}'),(37,8,20,23,2,'com_content.category.8','Материалы (RU)','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(38,8,24,27,2,'com_content.category.9','Материалы (EN)','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(39,37,21,22,3,'com_content.article.1','Главная','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,38,25,26,3,'com_content.article.2','Home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `br9bh_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_associations`
--

DROP TABLE IF EXISTS `br9bh_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_associations`
--

LOCK TABLES `br9bh_associations` WRITE;
/*!40000 ALTER TABLE `br9bh_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_banner_clients`
--

DROP TABLE IF EXISTS `br9bh_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_banner_clients` (
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
-- Dumping data for table `br9bh_banner_clients`
--

LOCK TABLES `br9bh_banner_clients` WRITE;
/*!40000 ALTER TABLE `br9bh_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_banner_tracks`
--

DROP TABLE IF EXISTS `br9bh_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_banner_tracks` (
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
-- Dumping data for table `br9bh_banner_tracks`
--

LOCK TABLES `br9bh_banner_tracks` WRITE;
/*!40000 ALTER TABLE `br9bh_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_banners`
--

DROP TABLE IF EXISTS `br9bh_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_banners` (
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
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_banners`
--

LOCK TABLES `br9bh_banners` WRITE;
/*!40000 ALTER TABLE `br9bh_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_categories`
--

DROP TABLE IF EXISTS `br9bh_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_categories` (
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
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_categories`
--

LOCK TABLES `br9bh_categories` WRITE;
/*!40000 ALTER TABLE `br9bh_categories` DISABLE KEYS */;
INSERT INTO `br9bh_categories` VALUES (1,0,0,0,17,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,37,1,13,14,1,'materialy-ru','com_content','Материалы (RU)','materialy-ru','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',543,'2013-02-19 12:19:14',543,'2013-02-19 12:25:15',0,'ru-RU'),(9,38,1,15,16,1,'materialy-en','com_content','Материалы (EN)','materialy-en','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',543,'2013-02-19 12:19:53',543,'2013-02-19 12:25:47',0,'en-GB');
/*!40000 ALTER TABLE `br9bh_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_contact_details`
--

DROP TABLE IF EXISTS `br9bh_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_contact_details` (
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
  `imagepos` varchar(20) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_contact_details`
--

LOCK TABLES `br9bh_contact_details` WRITE;
/*!40000 ALTER TABLE `br9bh_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_content`
--

DROP TABLE IF EXISTS `br9bh_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
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
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_content`
--

LOCK TABLES `br9bh_content` WRITE;
/*!40000 ALTER TABLE `br9bh_content` DISABLE KEYS */;
INSERT INTO `br9bh_content` VALUES (1,39,'Главная','glavnaya','','<p>\r\n	Главная</p>\r\n','',1,0,0,8,'2013-02-19 12:26:50',543,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-02-19 12:26:50','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'ru-RU',''),(2,40,'Home','home','','<p>\r\n	Home</p>\r\n','',1,0,0,9,'2013-02-19 12:27:10',543,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-02-19 12:27:10','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'en-GB','');
/*!40000 ALTER TABLE `br9bh_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_content_frontpage`
--

DROP TABLE IF EXISTS `br9bh_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_content_frontpage`
--

LOCK TABLES `br9bh_content_frontpage` WRITE;
/*!40000 ALTER TABLE `br9bh_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_content_rating`
--

DROP TABLE IF EXISTS `br9bh_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_content_rating`
--

LOCK TABLES `br9bh_content_rating` WRITE;
/*!40000 ALTER TABLE `br9bh_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_core_log_searches`
--

DROP TABLE IF EXISTS `br9bh_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_core_log_searches`
--

LOCK TABLES `br9bh_core_log_searches` WRITE;
/*!40000 ALTER TABLE `br9bh_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_extensions`
--

DROP TABLE IF EXISTS `br9bh_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_extensions` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_extensions`
--

LOCK TABLES `br9bh_extensions` WRITE;
/*!40000 ALTER TABLE `br9bh_extensions` DISABLE KEYS */;
INSERT INTO `br9bh_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.9\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-11-14\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.8.4\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.8.4\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'rt_missioncontrol','template','rt_missioncontrol','',1,1,1,0,'{\"legacy\":false,\"name\":\"rt_missioncontrol\",\"type\":\"template\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_TEMPLATE_DESC\",\"group\":\"\"}','{\"adminTitle\":\"Joomla Administrator\",\"templateWidth\":\"variable\",\"dashboard\":\"MissionControl is a brand-new take on the Joomla Administrator template.  Primary objectives during development were clean modern design, optimal usability, configurable colors and logo, and enhanced functionality via optimizations and new extensions.\",\"menuwidth\":\"small\",\"extendmenu\":\"off\",\"enableGravatar\":\"1\",\"enableSessionBar\":\"1\",\"enableTransitions\":\"enabled\",\"enableQuickEditor\":\"1\",\"enableViewSite\":\"1\",\"enableQuickCheckin\":\"0\",\"enableQuickCacheClean\":\"1\",\"enableFancyHeaders\":\"fancy\",\"showhelp\":\"1\",\"showhelpbutton\":\"1\",\"showlangmenu\":\"1\",\"body_text_color\":\"#333333\",\"body_link_color\":\"#4486BA\",\"header_bg_color\":\"#333333\",\"header_text_color\":\"#CCCCCC\",\"header_link_color\":\"#FFFFFF\",\"header_shadow_color\":\"#000000\",\"tab_bg_color\":\"#4D4D4D\",\"tab_text_color\":\"#FFFFFF\",\"special_bg_color\":\"#C62D2D\",\"special_text_color\":\"#FFFFFF\",\"active_bg_color\":\"#4F9BD8\",\"active_text_color\":\"#FFFFFF\",\"hover_bg_color\":\"#88B719\",\"hover_text_color\":\"#FFFFFF\"}','{\"last_update\":1361268872}','',0,'0000-00-00 00:00:00',0,0),(10006,'System - MissionControl Support','plugin','missioncontrol','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - MissionControl Support\",\"type\":\"plugin\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MissionControl Support Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10007,'System - RokTracking','plugin','roktracking','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokTracking\",\"type\":\"plugin\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"User Tracking Plugin\",\"group\":\"\"}','{\"userpurgedays\":\"14\",\"adminpurgedays\":\"14\",\"trackusers\":\"1\",\"trackadmins\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(10008,'RokQuickLinks','module','mod_rokquicklinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"RokQuickLinks\",\"type\":\"module\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_RQL_ROKQUICKLINKS_DESC\",\"group\":\"\"}','{\"iconpath\":\"\\/administrator\\/modules\\/mod_rokquicklinks\\/tmpl\\/icons\\/\",\"quickfields\":\"[{\'icon\':\'newspaper_add.png\',\'target\':\'self\',\'link\':\'index.php?option=com_content&task=article.edit\',\'title\':\'Add Article\'},{\'icon\':\'images.png\',\'target\':\'self\',\'link\':\'index.php?option=com_media\',\'title\':\'Media Manager\'},{\'icon\':\'drawer_open.png\',\'target\':\'self\',\'link\':\'index.php?option=com_categories&section=com_content\',\'title\':\'Category Manager\'},{\'icon\':\'cog.png\',\'target\':\'self\',\'link\':\'index.php?option=com_config\',\'title\':\'Configuration\'},{\'icon\':\'brick.png\',\'target\':\'self\',\'link\':\'index.php?option=com_installer\',\'title\':\'Install New\'},{\'icon\':\'color_management.png\',\'target\':\'self\',\'link\':\'index.php?option=com_templates\',\'title\':\'Templates\'}]\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,'RokUserStats','module','mod_rokuserstats','',1,1,1,0,'{\"legacy\":false,\"name\":\"RokUserStats\",\"type\":\"module\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_RUS_ROKUSERSTATS_DESC\",\"group\":\"\"}','{\"showstats\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10010,'RokStats','module','mod_rokstats','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokStats\",\"type\":\"module\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_RS_ROKUSERSTATS_DESC\",\"group\":\"\"}','{\"sessiontime\":\"\",\"showcurrentactiveusers\":\"1\",\"showactiveguests\":\"1\",\"showactiveregistered\":\"1\",\"showregisteredusernames\":\"0\",\"showuniqueviststoday\":\"1\",\"showuniquevistsyesterday\":\"1\",\"showvisitsthisweek\":\"1\",\"showvisitspreviousweek\":\"1\",\"showtotalarticles\":\"0\",\"shownewarticlesthisweek\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'RokUserChart','module','mod_rokuserchart','',1,1,1,0,'{\"legacy\":false,\"name\":\"RokUserChart\",\"type\":\"module\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_RUC_DESC\",\"group\":\"\"}','{\"extra_class\":\"\",\"history\":\"7\",\"width\":\"285\",\"height\":\"120\"}','','',0,'0000-00-00 00:00:00',0,0),(10012,'RokAdminAudit','module','mod_rokadminaudit','',1,1,1,0,'{\"legacy\":false,\"name\":\"RokAdminAudit\",\"type\":\"module\",\"creationDate\":\"April 10, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.6\",\"description\":\"MC_RAA_ROKADMINAUDIT_DESC\",\"group\":\"\"}','{\"limit\":\"5\",\"detail_filter\":\"low\",\"enableGravatar\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10015,'Editor - CKEditor','plugin','ckeditor','editors',0,1,1,0,'','{\"toolbar\":\"Advanced\",\"toolbar_frontEnd\":\"Basic\",\"skin\":\"moono\",\"CKEditorWidth\":\"\",\"CKEditorHeight\":\"\",\"Basic_ToolBar\":\"Bold,Italic,Underline,Strike,;,NumberedList,BulletedList,;,Outdent,Indent,;,JustifyLeft,JustifyCenter,JustifyRight,JustifyBlock,;,Link,Unlink,Anchor,/,Styles,Format,;,Image,;,Subscript,Superscript,;,SpecialChar\",\"Advanced_ToolBar\":\"Source, -, Save, NewPage, Preview,- ,Templates, Cut, Copy, Paste, PasteText, PasteFromWord, - ,Print, SpellChecker, Scayt, Undo, Redo, -, Find, Replace, -, SelectAll, RemoveFormat,/, Bold ,Italic, Underline, Strike, -, Subscript, Superscript, NumberedList, BulletedList, -, Outdent, Indent, Blockquote, JustifyLeft, JustifyCenter, JustifyRight, JustifyBlock, Link, Unlink, Anchor, Image, Flash, Table, HorizontalRule, Smiley, SpecialChar, PageBreak, /, Styles, Format, Font, FontSize, TextColor, BGColor, Maximize, ShowBlocks, -, ReadMore, -, About\",\"CKEditorAutoLang\":\"1\",\"language\":\"en\",\"CKEditorLangDir\":\"0\",\"enterMode\":\"1\",\"shiftEnterMode\":\"2\",\"templateCss\":\"0\",\"style\":\"\",\"template\":\"\",\"css\":\"\",\"CKEditorJs\":\"0\",\"DivBased\":\"0\",\"LinkBrowser\":\"1\",\"Scayt\":\"0\",\"Entities\":\"1\",\"CKEditorIndent\":\"1\",\"CKEditorBreakBeforeOpener\":\"1\",\"CKEditorBreakAfterOpener\":\"1\",\"CKEditorBreakBeforeCloser\":\"0\",\"CKEditorBreakAfterCloser\":\"1\",\"CKEditorPre\":\"0\",\"CKEditorCustomJs\":\"\",\"username_access\":[8],\"skinfm\":\"light\",\"ckfinder\":\"0\",\"option\":\"com_ckeditor\",\"client\":\"site\",\"type\":\"config\",\"task\":\"apply\",\"rows\":\"Bold,Italic,;,NumberedList,BulletedList,;,Link,Unlink\",\"toolbarGroup\":\"\"}','','',0,'0000-00-00 12:00:00',0,0),(10016,'ckeditor','component','com_ckeditor','',1,1,0,0,'{\"legacy\":false,\"name\":\"CKEditor\",\"type\":\"component\",\"creationDate\":\"2013-01-03\",\"author\":\"CKSource.com\",\"copyright\":\"Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved. For licensing, see LICENSE.html or\\thttp:\\/\\/ckeditor.com\\/license\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/cksource.com\",\"version\":\"1.7.5\",\"description\":\"CKEditor component integrates CKEditor, a WYSIWYG online editor, with the link browser plugin and CKFinder configuration options.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `br9bh_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_filters`
--

DROP TABLE IF EXISTS `br9bh_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_filters` (
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
-- Dumping data for table `br9bh_finder_filters`
--

LOCK TABLES `br9bh_finder_filters` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links`
--

DROP TABLE IF EXISTS `br9bh_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links` (
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
-- Dumping data for table `br9bh_finder_links`
--

LOCK TABLES `br9bh_finder_links` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms0`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms0`
--

LOCK TABLES `br9bh_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms1`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms1`
--

LOCK TABLES `br9bh_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms2`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms2`
--

LOCK TABLES `br9bh_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms3`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms3`
--

LOCK TABLES `br9bh_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms4`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms4`
--

LOCK TABLES `br9bh_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms5`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms5`
--

LOCK TABLES `br9bh_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms6`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms6`
--

LOCK TABLES `br9bh_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms7`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms7`
--

LOCK TABLES `br9bh_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms8`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms8`
--

LOCK TABLES `br9bh_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_terms9`
--

DROP TABLE IF EXISTS `br9bh_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_terms9`
--

LOCK TABLES `br9bh_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termsa`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termsa`
--

LOCK TABLES `br9bh_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termsb`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termsb`
--

LOCK TABLES `br9bh_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termsc`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termsc`
--

LOCK TABLES `br9bh_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termsd`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termsd`
--

LOCK TABLES `br9bh_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termse`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termse`
--

LOCK TABLES `br9bh_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_links_termsf`
--

DROP TABLE IF EXISTS `br9bh_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_links_termsf`
--

LOCK TABLES `br9bh_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_taxonomy`
--

DROP TABLE IF EXISTS `br9bh_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_taxonomy` (
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
-- Dumping data for table `br9bh_finder_taxonomy`
--

LOCK TABLES `br9bh_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `br9bh_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `br9bh_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `br9bh_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_taxonomy_map`
--

LOCK TABLES `br9bh_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_terms`
--

DROP TABLE IF EXISTS `br9bh_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_terms`
--

LOCK TABLES `br9bh_finder_terms` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_terms_common`
--

DROP TABLE IF EXISTS `br9bh_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_terms_common`
--

LOCK TABLES `br9bh_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_terms_common` DISABLE KEYS */;
INSERT INTO `br9bh_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `br9bh_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_tokens`
--

DROP TABLE IF EXISTS `br9bh_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_tokens`
--

LOCK TABLES `br9bh_finder_tokens` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `br9bh_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_tokens_aggregate` (
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
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_tokens_aggregate`
--

LOCK TABLES `br9bh_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_finder_types`
--

DROP TABLE IF EXISTS `br9bh_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_finder_types`
--

LOCK TABLES `br9bh_finder_types` WRITE;
/*!40000 ALTER TABLE `br9bh_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_languages`
--

DROP TABLE IF EXISTS `br9bh_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_languages` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_languages`
--

LOCK TABLES `br9bh_languages` WRITE;
/*!40000 ALTER TABLE `br9bh_languages` DISABLE KEYS */;
INSERT INTO `br9bh_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1),(2,'ru-RU','Русский (RU)','Русский (RU)','ru','ru','','','','',1,1,0);
/*!40000 ALTER TABLE `br9bh_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_menu`
--

DROP TABLE IF EXISTS `br9bh_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_menu` (
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
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_menu`
--

LOCK TABLES `br9bh_menu` WRITE;
/*!40000 ALTER TABLE `br9bh_menu` DISABLE KEYS */;
INSERT INTO `br9bh_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,51,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,1,'*',0),(103,'main','COM_CKEDITOR_MENU_NAME','com-ckeditor-menu-name','','com-ckeditor-menu-name','index.php?option=com_ckeditor','component',0,1,1,10016,0,0,'0000-00-00 00:00:00',0,1,'components/com_ckeditor/images/ckeditor_ico16.png',0,'',45,46,0,'',1),(104,'mainmenuru','Главная','glavnaya','','glavnaya','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,1,'ru-RU',0),(105,'mainmenuen','Home','home','','home','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,1,'en-GB',0);
/*!40000 ALTER TABLE `br9bh_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_menu_types`
--

DROP TABLE IF EXISTS `br9bh_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_menu_types`
--

LOCK TABLES `br9bh_menu_types` WRITE;
/*!40000 ALTER TABLE `br9bh_menu_types` DISABLE KEYS */;
INSERT INTO `br9bh_menu_types` VALUES (1,'mainmenu','Main Menu','Main Menu - Используется системой'),(2,'mainmenuru','Main Menu (RU)',''),(3,'mainmenuen','Main Menu (EN)','');
/*!40000 ALTER TABLE `br9bh_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_messages`
--

DROP TABLE IF EXISTS `br9bh_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_messages` (
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
-- Dumping data for table `br9bh_messages`
--

LOCK TABLES `br9bh_messages` WRITE;
/*!40000 ALTER TABLE `br9bh_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_messages_cfg`
--

DROP TABLE IF EXISTS `br9bh_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_messages_cfg`
--

LOCK TABLES `br9bh_messages_cfg` WRITE;
/*!40000 ALTER TABLE `br9bh_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_modules`
--

DROP TABLE IF EXISTS `br9bh_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_modules`
--

LOCK TABLES `br9bh_modules` WRITE;
/*!40000 ALTER TABLE `br9bh_modules` DISABLE KEYS */;
INSERT INTO `br9bh_modules` VALUES (1,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(88,'Быстрый доступ','','',1,'dashboard',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokquicklinks',1,1,'{\"iconpath\":\"\\/administrator\\/modules\\/mod_rokquicklinks\\/tmpl\\/icons\\/\",\"quickfields\":\"[{\'icon\':\'newspaper_add.png\',\'link\':\'index.php?option=com_content&task=add\',\'title\':\'Add Article\'},{\'icon\':\'images.png\',\'link\':\'index.php?option=com_media\',\'title\':\'Media Manager\'},{\'icon\':\'drawer_open.png\',\'link\':\'index.php?option=com_categories&section=com_content\',\'title\':\'Category Manager\'},{\'icon\':\'cog.png\',\'link\':\'index.php?option=com_config\',\'title\':\'Configuration\'},{\'icon\':\'brick.png\',\'link\':\'index.php?option=com_installer\',\'title\':\'Install New\'},{\'icon\':\'color_management.png\',\'link\':\'index.php?option=com_templates\',\'title\':\'Templates\'}]\"}',1,'en-GB'),(90,'Statistics Overview','','',1,'sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokuserstats',1,1,'{\"purgedays\":\"30\"}',1,'en-GB'),(92,'Site Statistics','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokstats',1,1,'{\"sessiontime\":\"\",\"showcurrentactiveusers\":\"1\",\"showactiveguests\":\"1\",\"showactiveregistered\":\"1\",\"showregisteredusernames\":\"0\",\"showuniqueviststoday\":\"1\",\"showuniquevistsyesterday\":\"1\",\"showvisitsthisweek\":\"1\",\"showvisitspreviousweek\":\"1\",\"showtotalarticles\":\"0\",\"shownewarticlesthisweek\":\"0\"}',0,'en-GB'),(94,'User Activity Chart','','',2,'sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokuserchart',1,1,'{\"extra_class\":\"\",\"history\":\"7\",\"width\":\"285\",\"height\":\"120\"}',1,'en-GB'),(96,'Admin Audit Trail','','',3,'sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rokadminaudit',1,1,'{\"userpurgedays\":\"14\",\"adminpurgedays\":\"14\",\"trackusers\":\"1\",\"trackadmins\":\"1\"}',1,'en-GB'),(97,'Переключение языков','','',0,'atomic-search',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_languages',1,0,'{\"header_text\":\"\",\"footer_text\":\"\",\"dropdown\":\"0\",\"image\":\"1\",\"inline\":\"1\",\"show_active\":\"1\",\"full_name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(98,'Main Menu (RU)','','',1,'atomic-sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenuru\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'ru-RU'),(99,'Main Menu (EN)','','',1,'atomic-sidebar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenuen\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'en-GB');
/*!40000 ALTER TABLE `br9bh_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_modules_menu`
--

DROP TABLE IF EXISTS `br9bh_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_modules_menu`
--

LOCK TABLES `br9bh_modules_menu` WRITE;
/*!40000 ALTER TABLE `br9bh_modules_menu` DISABLE KEYS */;
INSERT INTO `br9bh_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(88,0),(90,0),(92,0),(94,0),(96,0),(97,0),(98,0),(99,0);
/*!40000 ALTER TABLE `br9bh_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_newsfeeds`
--

DROP TABLE IF EXISTS `br9bh_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
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
-- Dumping data for table `br9bh_newsfeeds`
--

LOCK TABLES `br9bh_newsfeeds` WRITE;
/*!40000 ALTER TABLE `br9bh_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_overrider`
--

DROP TABLE IF EXISTS `br9bh_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_overrider`
--

LOCK TABLES `br9bh_overrider` WRITE;
/*!40000 ALTER TABLE `br9bh_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_redirect_links`
--

DROP TABLE IF EXISTS `br9bh_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_redirect_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_redirect_links`
--

LOCK TABLES `br9bh_redirect_links` WRITE;
/*!40000 ALTER TABLE `br9bh_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_rokadminaudit`
--

DROP TABLE IF EXISTS `br9bh_rokadminaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_rokadminaudit` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1432 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_rokadminaudit`
--

LOCK TABLES `br9bh_rokadminaudit` WRITE;
/*!40000 ALTER TABLE `br9bh_rokadminaudit` DISABLE KEYS */;
INSERT INTO `br9bh_rokadminaudit` VALUES (862,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=install','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:13:58'),(863,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=install','','2013-02-19 10:14:01'),(864,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=templates','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 10:14:04'),(865,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=templates','','2013-02-19 10:14:16'),(866,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 10:14:28'),(867,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 10:14:28'),(868,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 10:14:32'),(869,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 10:14:32'),(870,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','apply',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:14:36'),(871,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:14:37'),(872,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:14:59'),(873,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:14:59'),(874,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',3,'/administrator/index.php?option=com_templates&task=style.edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:15:20'),(875,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',3,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:15:20'),(876,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',3,'/administrator/index.php?option=com_templates&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','Atomic - Default','2013-02-19 10:15:26'),(877,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','','2013-02-19 10:15:27'),(878,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',3,'/administrator/index.php?option=com_templates&task=style.edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:15:31'),(879,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',3,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:15:31'),(880,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','apply',3,'/administrator/index.php?option=com_templates&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','Atomic - Default','2013-02-19 10:15:38'),(881,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',3,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','','2013-02-19 10:15:39'),(882,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',3,'/administrator/index.php?option=com_templates&layout=edit&id=3','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','Atomic - Default','2013-02-19 10:15:41'),(883,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=3','','2013-02-19 10:15:41'),(884,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:15:55'),(885,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content','','2013-02-19 10:15:59'),(886,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_content','','2013-02-19 10:15:59'),(887,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:16:03'),(888,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:16:04'),(889,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:16:14'),(890,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_content&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:16:23'),(891,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:16:29'),(892,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','apply',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:16:38'),(893,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:16:38'),(894,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_installer','',NULL,'/administrator/index.php?option=com_installer','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:19:33'),(895,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_installer','install',NULL,'/administrator/index.php?option=com_installer&view=install','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:19:39'),(896,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=install','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:19:41'),(897,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=install','','2013-02-19 10:22:14'),(898,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=install','','2013-02-19 10:22:14'),(899,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:22:27'),(900,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','save',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:22:54'),(901,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:22:54'),(902,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:22:56'),(903,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php?option=com_content','','2013-02-19 10:22:58'),(904,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_content','','2013-02-19 10:22:58'),(905,0,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_cpanel','',NULL,'/administrator/','','','2013-02-19 10:23:37'),(906,0,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_login','login',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 10:23:53'),(907,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 10:23:54'),(908,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:23:58'),(909,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:23:58'),(910,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:24:06'),(911,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:24:06'),(912,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:24:13'),(913,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_users','edit',543,'/administrator/index.php?option=com_users&task=user.edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:24:15'),(914,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_users','edit',543,'/administrator/index.php?option=com_users&view=user&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:24:15'),(915,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_users','cancel',543,'/administrator/index.php?option=com_users&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','Super User','2013-02-19 10:24:21'),(916,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','','2013-02-19 10:24:21'),(917,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:24:23'),(918,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:24:26'),(919,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','cancel',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:24:35'),(920,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:24:36'),(921,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','',NULL,'/administrator/index.php?option=com_plugins','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:24:39'),(922,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins','','2013-02-19 10:24:45'),(923,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','edit',NULL,'/administrator/index.php?option=com_plugins&task=plugin.edit&extension_id=10013','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 10:24:48'),(924,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','edit',NULL,'/administrator/index.php?option=com_plugins&view=plugin&layout=edit&extension_id=10013','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 10:24:48'),(925,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','cancel',NULL,'/administrator/index.php?option=com_plugins&layout=edit&extension_id=10013','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugin&layout=edit&extension_id=10013','Editor - CKEditor','2013-02-19 10:24:55'),(926,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugin&layout=edit&extension_id=10013','','2013-02-19 10:24:55'),(927,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 10:25:04'),(928,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=manage','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:25:07'),(929,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=manage','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=manage','','2013-02-19 10:25:11'),(930,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','remove',NULL,'/administrator/index.php?option=com_installer&view=manage','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=manage','','2013-02-19 10:25:18'),(931,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=manage','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=manage','','2013-02-19 10:25:20'),(932,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=manage','','2013-02-19 10:25:56'),(933,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','install',NULL,'/administrator/index.php?option=com_installer&view=install','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:26:04'),(934,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=install','http://user.q-lab.pro/administrator/index.php?option=com_installer','','2013-02-19 10:26:06'),(935,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=install','','2013-02-19 10:26:24'),(936,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','apply',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:26:30'),(937,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:26:30'),(938,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_config','save',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:26:34'),(939,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:26:35'),(940,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:26:38'),(941,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:26:39'),(942,543,'127.0.0.1','npb5srcc1rd3e7ghd3gu9491g4','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:28:16'),(943,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/','','','2013-02-19 10:28:38'),(944,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/','','2013-02-19 10:28:49'),(945,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:28:49'),(946,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:36:09'),(947,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:36:56'),(948,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:39:01'),(949,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_intro&folder=','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:39:24'),(950,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=imagesList&tmpl=component&folder=&asset=com_content&author=','http://user.q-lab.pro/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_intro&folder=','','2013-02-19 10:39:25'),(951,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_intro&folder=','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:39:32'),(952,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=imagesList&tmpl=component&folder=&asset=com_content&author=','http://user.q-lab.pro/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_intro&folder=','','2013-02-19 10:39:33'),(953,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_fulltext&folder=','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:39:41'),(954,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_media','',NULL,'/administrator/index.php?option=com_media&view=imagesList&tmpl=component&folder=&asset=com_content&author=','http://user.q-lab.pro/administrator/index.php?option=com_media&view=images&tmpl=component&asset=com_content&author=&fieldid=jform_images_image_fulltext&folder=','','2013-02-19 10:39:42'),(955,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:39:58'),(956,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:41:16'),(957,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/','','2013-02-19 10:41:27'),(958,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:41:36'),(959,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:41:36'),(960,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:41:39'),(961,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:42:27'),(962,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:42:47'),(963,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:43:00'),(964,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','','','2013-02-19 10:43:03'),(965,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=1','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:43:29'),(966,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=1','','2013-02-19 10:43:51'),(967,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','',NULL,'/administrator/index.php?option=com_categories&section=com_content','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:44:02'),(968,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','add',NULL,'/administrator/index.php?option=com_categories&view=categories','http://user.q-lab.pro/administrator/index.php?option=com_categories&section=com_content','','2013-02-19 10:44:06'),(969,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&section=com_content','','2013-02-19 10:44:06'),(970,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&section=com_content','','2013-02-19 10:44:34'),(971,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&section=com_content','','2013-02-19 10:44:58'),(972,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','cancel',0,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 10:45:28'),(973,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 10:45:28'),(974,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 10:45:32'),(975,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php?option=com_content&view=featured','','2013-02-19 10:45:36'),(976,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_content&view=featured','','2013-02-19 10:45:36'),(977,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:45:50'),(978,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:45:51'),(979,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:45:52'),(980,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_content&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:45:57'),(981,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_content&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:46:00'),(982,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:46:04'),(983,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=0','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:46:32'),(984,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_modules&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 10:46:34'),(985,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_modules&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 10:46:38'),(986,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 10:46:43'),(987,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','edit',543,'/administrator/index.php?option=com_users&task=user.edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:46:45'),(988,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','edit',543,'/administrator/index.php?option=com_users&view=user&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:46:45'),(989,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','cancel',543,'/administrator/index.php?option=com_users&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','Super User','2013-02-19 10:46:50'),(990,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','','2013-02-19 10:46:50'),(991,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_checkin','',NULL,'/administrator/index.php?option=com_checkin','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:46:56'),(992,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_checkin','','2013-02-19 10:47:11'),(993,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 10:47:13'),(994,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:47:15'),(995,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:47:15'),(996,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:47:15'),(997,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:03'),(998,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','cancel',101,'/administrator/index.php?option=com_menus&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','Home','2013-02-19 10:48:20'),(999,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 10:48:20'),(1000,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','rebuild',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:27'),(1001,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:28'),(1002,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:29'),(1003,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:30'),(1004,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menutypes&tmpl=component&recordId=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 10:48:33'),(1005,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','cancel',101,'/administrator/index.php?option=com_menus&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','Home','2013-02-19 10:48:41'),(1006,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 10:48:42'),(1007,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 10:48:50'),(1008,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_content','','2013-02-19 10:48:53'),(1009,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 10:48:57'),(1010,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 10:48:57'),(1011,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:49:07'),(1012,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:49:07'),(1013,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','edit',543,'/administrator/index.php?option=com_admin&task=profile.edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:49:08'),(1014,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','edit',543,'/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:49:08'),(1015,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','cancel',543,'/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','Super User','2013-02-19 10:49:12'),(1016,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','','2013-02-19 10:49:13'),(1017,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=1','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:49:24'),(1018,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&task=module.edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=1','','2013-02-19 10:49:26'),(1019,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=1','','2013-02-19 10:49:26'),(1020,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','apply',88,'/administrator/index.php?option=com_modules&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','Быстрый доступ','2013-02-19 10:49:41'),(1021,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','','2013-02-19 10:49:42'),(1022,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','cancel',88,'/administrator/index.php?option=com_modules&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','Быстрый доступ','2013-02-19 10:49:44'),(1023,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','','2013-02-19 10:49:45'),(1024,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 10:49:48'),(1025,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:51:13'),(1026,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:51:19'),(1027,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:51:19'),(1028,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','apply',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:51:33'),(1029,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:51:33'),(1030,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:51:36'),(1031,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:51:37'),(1032,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:51:41'),(1033,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:51:41'),(1034,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:51:44'),(1035,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&task=module.edit&id=88','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:51:51'),(1036,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&task=module.edit&id=88','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:51:51'),(1037,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','edit',88,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:51:51'),(1038,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','cancel',88,'/administrator/index.php?option=com_modules&layout=edit&id=88','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','Быстрый доступ','2013-02-19 10:51:54'),(1039,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=88','','2013-02-19 10:51:54'),(1040,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 10:52:20'),(1041,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:52:24'),(1042,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:52:26'),(1043,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:52:27'),(1044,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:52:27'),(1045,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','apply',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:52:34'),(1046,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:52:35'),(1047,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','cancel',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:52:49'),(1048,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:52:49'),(1049,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:52:51'),(1050,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:52:59'),(1051,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:53:01'),(1052,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:53:01'),(1053,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/','','','2013-02-19 10:53:08'),(1054,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/','','','2013-02-19 10:55:52'),(1055,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_config','',NULL,'/administrator/index.php?option=com_config','http://user.q-lab.pro/administrator/','','2013-02-19 10:55:56'),(1056,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php?option=com_config','','2013-02-19 10:56:00'),(1057,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&task=style.edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:56:03'),(1058,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','edit',7,'/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:56:03'),(1059,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','save',7,'/administrator/index.php?option=com_templates&layout=edit&id=7','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','rt_missioncontrol - По умолчанию','2013-02-19 10:56:08'),(1060,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:56:08'),(1061,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=style&layout=edit&id=7','','2013-02-19 10:56:42'),(1062,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 10:56:59'),(1063,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 10:57:02'),(1064,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','edit',543,'/administrator/index.php?option=com_users&task=user.edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:57:04'),(1065,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','edit',543,'/administrator/index.php?option=com_users&view=user&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:57:05'),(1066,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','cancel',543,'/administrator/index.php?option=com_users&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','Super User','2013-02-19 10:57:08'),(1067,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit&id=543','','2013-02-19 10:57:08'),(1068,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 10:57:15'),(1069,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:57:18'),(1070,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_modules','',NULL,'/administrator/index.php?option=com_modules','http://user.q-lab.pro/administrator/index.php?option=com_content&view=featured','','2013-02-19 10:57:21'),(1071,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_ckeditor','',NULL,'/administrator/index.php?option=com_ckeditor','http://user.q-lab.pro/administrator/index.php?option=com_modules','','2013-02-19 10:57:28'),(1072,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_ckeditor','cancel',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_ckeditor','','2013-02-19 10:57:36'),(1073,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_ckeditor','','2013-02-19 10:57:36'),(1074,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:57:38'),(1075,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:57:38'),(1076,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:57:43'),(1077,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 10:57:43'),(1078,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_contact','',NULL,'/administrator/index.php?option=com_contact','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 10:57:47'),(1079,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','edit',543,'/administrator/index.php?option=com_admin&task=profile.edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_contact','','2013-02-19 10:57:53'),(1080,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','edit',543,'/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_contact','','2013-02-19 10:57:53'),(1081,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','cancel',543,'/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','http://user.q-lab.pro/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','Super User','2013-02-19 10:57:57'),(1082,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_admin&view=profile&layout=edit&id=543','','2013-02-19 10:57:57'),(1083,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/index.php','','2013-02-19 10:58:04'),(1084,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/','','','2013-02-19 10:58:30'),(1085,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 10:58:34'),(1086,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 10:59:37'),(1087,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 10:59:52'),(1088,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 11:00:14'),(1089,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 11:00:48'),(1090,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 11:01:11'),(1091,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/','','2013-02-19 11:01:44'),(1092,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=groups','','2013-02-19 11:01:52'),(1093,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_admin','',NULL,'/administrator/index.php?option=com_admin&view=help','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 11:01:59'),(1094,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_categories','',NULL,'/administrator/index.php?option=com_categories&extension=com_banners','http://user.q-lab.pro/administrator/index.php?option=com_admin&view=help','','2013-02-19 11:02:04'),(1095,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_banners','','2013-02-19 11:03:42'),(1096,543,'127.0.0.1','o569gcf35mk9par5nsd817qvd3','com_login','logout',NULL,'/administrator/index.php?option=com_login&task=logout&b36a61bdba18776674388824a825314a=1','http://user.q-lab.pro/administrator/index.php','','2013-02-19 11:03:48'),(1097,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php','','2013-02-19 11:03:48'),(1098,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/','','','2013-02-19 11:09:12'),(1099,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/','','','2013-02-19 11:10:11'),(1100,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_login','login',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 11:10:18'),(1101,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 11:10:18'),(1102,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php','','2013-02-19 11:10:25'),(1103,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','add',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 11:10:27'),(1104,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','edit',NULL,'/administrator/index.php?option=com_users&view=user&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 11:10:27'),(1105,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','cancel',0,'/administrator/index.php?option=com_users&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit','','2013-02-19 11:10:32'),(1106,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit','','2013-02-19 11:10:32'),(1107,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 11:10:33'),(1108,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','add',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/index.php?option=com_users&view=groups','','2013-02-19 11:10:35'),(1109,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','edit',NULL,'/administrator/index.php?option=com_users&view=group&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_users&view=groups','','2013-02-19 11:10:35'),(1110,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','cancel',0,'/administrator/index.php?option=com_users&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_users&view=group&layout=edit','','2013-02-19 11:10:41'),(1111,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=groups','http://user.q-lab.pro/administrator/index.php?option=com_users&view=group&layout=edit','','2013-02-19 11:10:42'),(1112,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','add',NULL,'/administrator/index.php?option=com_users&task=level.add','http://user.q-lab.pro/administrator/index.php?option=com_users&view=groups','','2013-02-19 11:10:47'),(1113,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','edit',NULL,'/administrator/index.php?option=com_users&view=level&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_users&view=groups','','2013-02-19 11:10:47'),(1114,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','cancel',0,'/administrator/index.php?option=com_users&id=0','http://user.q-lab.pro/administrator/index.php?option=com_users&view=level&layout=edit','','2013-02-19 11:10:52'),(1115,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=levels','http://user.q-lab.pro/administrator/index.php?option=com_users&view=level&layout=edit','','2013-02-19 11:10:52'),(1116,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','add',NULL,'/administrator/index.php?option=com_categories&task=category.add&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_users&view=levels','','2013-02-19 11:11:08'),(1117,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_users&view=levels','','2013-02-19 11:11:09'),(1118,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','cancel',0,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 11:11:19'),(1119,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 11:11:19'),(1120,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 11:11:22'),(1121,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=featured','','2013-02-19 11:11:23'),(1122,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_content&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 11:11:27'),(1123,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','',NULL,'/administrator/index.php?option=com_content&view=featured','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 11:11:35'),(1124,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_media','',NULL,'/administrator/index.php?option=com_media','http://user.q-lab.pro/administrator/index.php?option=com_content&view=featured','','2013-02-19 11:11:38'),(1125,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_media','',NULL,'/administrator/index.php?option=com_media&view=mediaList&tmpl=component&folder=','http://user.q-lab.pro/administrator/index.php?option=com_media','','2013-02-19 11:11:39'),(1126,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_media','',NULL,'/administrator/index.php?option=com_media&view=mediaList&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_media','','2013-02-19 11:11:39'),(1127,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_media','','2013-02-19 11:12:02'),(1128,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 11:12:04'),(1129,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 11:12:04'),(1130,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 11:12:06'),(1131,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 11:12:06'),(1132,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 11:12:08'),(1133,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 11:12:11'),(1134,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 11:12:11'),(1135,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',101,'/administrator/index.php?option=com_menus&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','Home','2013-02-19 11:12:18'),(1136,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 11:12:19'),(1137,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 11:12:23'),(1138,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=select&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 11:12:24'),(1139,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_config','',NULL,'/administrator/index.php?option=com_config&view=component&component=com_modules&path=&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 11:12:28'),(1140,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_messages','add',NULL,'/administrator/index.php?option=com_messages&task=message.add','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 11:12:38'),(1141,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_messages','edit',NULL,'/administrator/index.php?option=com_messages&view=message&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 11:12:38'),(1142,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_messages','cancel',NULL,'/administrator/index.php?option=com_messages','http://user.q-lab.pro/administrator/index.php?option=com_messages&view=message&layout=edit','','2013-02-19 11:12:40'),(1143,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_messages','',NULL,'/administrator/index.php?option=com_messages&view=messages','http://user.q-lab.pro/administrator/index.php?option=com_messages&view=message&layout=edit','','2013-02-19 11:12:41'),(1144,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/','','','2013-02-19 12:02:28'),(1145,0,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_login','login',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 12:02:29'),(1146,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/','','2013-02-19 12:02:30'),(1147,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:10:06'),(1148,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=installed&client=1','http://user.q-lab.pro/administrator/index.php?option=com_languages','','2013-02-19 12:10:10'),(1149,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=installed&client=1','','2013-02-19 12:10:12'),(1150,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:10:22'),(1151,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:10:27'),(1152,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','install',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:10:35'),(1153,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:10:45'),(1154,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','','','2013-02-19 12:10:52'),(1155,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','add',NULL,'/administrator/index.php?option=com_users&task=user.add','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:10:58'),(1156,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','edit',NULL,'/administrator/index.php?option=com_users&view=user&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:10:58'),(1157,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','cancel',0,'/administrator/index.php?option=com_users&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit','','2013-02-19 12:11:02'),(1158,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.q-lab.pro/administrator/index.php?option=com_users&view=user&layout=edit','','2013-02-19 12:11:03'),(1159,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 12:11:05'),(1160,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_users&view=users','','2013-02-19 12:11:05'),(1161,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','cancel',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 12:11:08'),(1162,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 12:11:09'),(1163,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','','','2013-02-19 12:11:31'),(1164,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 12:12:32'),(1165,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:12:35'),(1166,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:12:35'),(1167,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:12:35'),(1168,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',101,'/administrator/index.php?option=com_menus&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','Home','2013-02-19 12:12:44'),(1169,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 12:12:45'),(1170,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:12:47'),(1171,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:12:57'),(1172,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','mainmenuru','2013-02-19 12:13:11'),(1173,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 12:13:12'),(1174,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:14:16'),(1175,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',1,'/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:14:16'),(1176,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','apply',1,'/administrator/index.php?option=com_menus&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','Main Menu - Используется системой','2013-02-19 12:14:38'),(1177,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',1,'/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','','2013-02-19 12:14:38'),(1178,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',1,'/administrator/index.php?option=com_menus&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','Main Menu - Используется системой','2013-02-19 12:14:41'),(1179,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','','2013-02-19 12:14:41'),(1180,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:14:56'),(1181,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:14:56'),(1182,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&task=item.edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:14:58'),(1183,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',101,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenu','','2013-02-19 12:14:59'),(1184,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',101,'/administrator/index.php?option=com_menus&layout=edit&id=101','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','Home','2013-02-19 12:15:07'),(1185,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=101','','2013-02-19 12:15:07'),(1186,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:15:11'),(1187,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&menutype=mainmenu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:15:11'),(1188,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenu&layout=edit','','2013-02-19 12:15:14'),(1189,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenu&layout=edit','','2013-02-19 12:15:14'),(1190,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_ckeditor','',NULL,'/administrator/index.php?option=com_ckeditor','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:16:04'),(1191,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_ckeditor','cancel',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_ckeditor','','2013-02-19 12:16:19'),(1192,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_ckeditor','','2013-02-19 12:16:19'),(1193,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:16:30'),(1194,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:16:40'),(1195,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',1,'/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:16:40'),(1196,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','apply',1,'/administrator/index.php?option=com_menus&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','Main Menu','2013-02-19 12:16:45'),(1197,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',1,'/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&id=1','','2013-02-19 12:16:45'),(1198,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',1,'/administrator/index.php?option=com_menus&layout=edit&id=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','Main Menu','2013-02-19 12:16:47'),(1199,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=1','','2013-02-19 12:16:48'),(1200,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:16:53'),(1201,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:16:53'),(1202,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','apply',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','Main Menu (RU)','2013-02-19 12:17:09'),(1203,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',2,'/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=2','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 12:17:10'),(1204,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','save',2,'/administrator/index.php?option=com_menus&layout=edit&id=2','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=2','Main Menu (RU)','2013-02-19 12:17:37'),(1205,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit&layout=edit&id=2','','2013-02-19 12:17:38'),(1206,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:17:40'),(1207,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:17:40'),(1208,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','save',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','Main Menu (EN)','2013-02-19 12:17:49'),(1209,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 12:17:49'),(1210,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:18:14'),(1211,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:18:14'),(1212,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:18:17'),(1213,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:18:17'),(1214,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menutypes&tmpl=component&recordId=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','','2013-02-19 12:18:20'),(1215,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','','2013-02-19 12:18:27'),(1216,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','','2013-02-19 12:18:27'),(1217,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','add',NULL,'/administrator/index.php?option=com_categories&task=category.add&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:18:31'),(1218,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:18:31'),(1219,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','apply',0,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','Материалы (RU)','2013-02-19 12:19:14'),(1220,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','edit',8,'/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 12:19:15'),(1221,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','cancel',8,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=8','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','Материалы (RU)','2013-02-19 12:19:25'),(1222,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','','2013-02-19 12:19:26'),(1223,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','add',NULL,'/administrator/index.php?option=com_categories&task=category.add&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:19:30'),(1224,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','edit',NULL,'/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:19:30'),(1225,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','save',0,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','Материалы (EN)','2013-02-19 12:19:53'),(1226,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','','2013-02-19 12:19:54'),(1227,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:20:02'),(1228,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=installed&client=1','http://user.q-lab.pro/administrator/index.php?option=com_languages','','2013-02-19 12:20:09'),(1229,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=installed&client=0','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=installed&client=1','','2013-02-19 12:20:12'),(1230,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=installed&client=0','','2013-02-19 12:20:14'),(1231,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=overrides','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:20:18'),(1232,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=overrides','','2013-02-19 12:20:20'),(1233,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:20:25'),(1234,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:20:30'),(1235,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=warnings','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:20:39'),(1236,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=warnings','','2013-02-19 12:20:41'),(1237,543,'127.0.0.1','im82vf4ajarpb9q0qdg4fibdr4','com_login','logout',NULL,'/administrator/index.php?option=com_login&task=logout&81bdcd908b43fc890fdae0d24831d7d5=1','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:20:51'),(1238,0,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:20:51'),(1239,0,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_login','login',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:20:53'),(1240,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:20:54'),(1241,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_languages','',NULL,'/administrator/index.php?option=com_languages','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:20:57'),(1242,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages','','2013-02-19 12:20:59'),(1243,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:21:02'),(1244,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:21:09'),(1245,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:21:12'),(1246,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:21:17'),(1247,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_installer','',NULL,'/administrator/index.php?option=com_installer&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:21:26'),(1248,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','',NULL,'/administrator/index.php?option=com_templates&filter_client_id=1','http://user.q-lab.pro/administrator/index.php?option=com_installer&view=languages','','2013-02-19 12:21:39'),(1249,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','setDefault',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 12:21:47'),(1250,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&filter_client_id=1','','2013-02-19 12:21:48'),(1251,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','setDefault',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:21:54'),(1252,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:21:54'),(1253,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','',NULL,'/administrator/index.php?option=com_categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:22:03'),(1254,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','edit',8,'/administrator/index.php?option=com_categories&task=category.edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:22:06'),(1255,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','edit',8,'/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:22:06'),(1256,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','cancel',8,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=8','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','Материалы (RU)','2013-02-19 12:22:14'),(1257,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','','2013-02-19 12:22:14'),(1258,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','',NULL,'/administrator/index.php?option=com_templates','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:22:18'),(1259,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','setDefault',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 12:22:22'),(1260,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 12:22:22'),(1261,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','',NULL,'/administrator/index.php?option=com_categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:22:25'),(1262,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','edit',8,'/administrator/index.php?option=com_categories&task=category.edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:22:26'),(1263,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','edit',8,'/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:22:27'),(1264,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','cancel',8,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=8','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','Материалы (RU)','2013-02-19 12:22:33'),(1265,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','','2013-02-19 12:22:33'),(1266,543,'127.0.0.1','mcnq8e7dl1rihj3cvu921lbin4','com_login','logout',NULL,'/administrator/index.php?option=com_login&task=logout&b8afc04f0365fe4382f88e49064c403c=1','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:22:34'),(1267,0,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:22:34'),(1268,0,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_login','login',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:22:36'),(1269,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_cpanel','',NULL,'/administrator/index.php','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:22:36'),(1270,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_installer','ajax',NULL,'/administrator/index.php?option=com_installer&view=update&task=update.ajax','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:22:36'),(1271,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_installer','ajax',NULL,'/administrator/index.php?option=com_installer&view=update&task=update.ajax','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:22:38'),(1272,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins','http://user.q-lab.pro/administrator/index.php','','2013-02-19 12:22:40'),(1273,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','',NULL,'/administrator/index.php?option=com_languages','http://user.q-lab.pro/administrator/index.php?option=com_plugins','','2013-02-19 12:23:59'),(1274,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages','','2013-02-19 12:24:00'),(1275,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','add',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:24:03'),(1276,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','edit',NULL,'/administrator/index.php?option=com_languages&view=language&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:24:03'),(1277,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','save',NULL,'/administrator/index.php?option=com_languages&layout=edit&lang_id=0','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=language&layout=edit','Русский (RU)','2013-02-19 12:24:57'),(1278,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_languages','',NULL,'/administrator/index.php?option=com_languages&view=languages','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=language&layout=edit','','2013-02-19 12:24:57'),(1279,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','',NULL,'/administrator/index.php?option=com_categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_languages&view=languages','','2013-02-19 12:25:09'),(1280,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','edit',8,'/administrator/index.php?option=com_categories&task=category.edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:25:10'),(1281,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','edit',8,'/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:25:11'),(1282,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','save',8,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=8','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','Материалы (RU)','2013-02-19 12:25:15'),(1283,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=8&extension=com_content','','2013-02-19 12:25:15'),(1284,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_templates','',NULL,'/administrator/index.php?option=com_templates','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:25:18'),(1285,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=templates','http://user.q-lab.pro/administrator/index.php?option=com_templates','','2013-02-19 12:25:20'),(1286,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=templates','','2013-02-19 12:25:22'),(1287,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_templates','setDefault',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:25:30'),(1288,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_templates','',NULL,'/administrator/index.php?option=com_templates&view=styles','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:25:31'),(1289,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','',NULL,'/administrator/index.php?option=com_categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_templates&view=styles','','2013-02-19 12:25:36'),(1290,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','edit',9,'/administrator/index.php?option=com_categories&task=category.edit&id=9&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:25:40'),(1291,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','edit',9,'/administrator/index.php?option=com_categories&view=category&layout=edit&id=9&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&extension=com_content','','2013-02-19 12:25:40'),(1292,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','save',9,'/administrator/index.php?option=com_categories&extension=com_content&layout=edit&id=9','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=9&extension=com_content','Материалы (EN)','2013-02-19 12:25:47'),(1293,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_categories','',NULL,'/administrator/index.php?option=com_categories&view=categories&extension=com_content','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=category&layout=edit&id=9&extension=com_content','','2013-02-19 12:25:48'),(1294,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','http://user.q-lab.pro/administrator/index.php?option=com_categories&view=categories&extension=com_content','','2013-02-19 12:26:15'),(1295,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:26:18'),(1296,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:26:18'),(1297,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','','2013-02-19 12:26:24'),(1298,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuru&layout=edit','','2013-02-19 12:26:24'),(1299,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:26:27'),(1300,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:26:27'),(1301,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','save',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','Главная','2013-02-19 12:26:42'),(1302,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 12:26:42'),(1303,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','save',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','Главная','2013-02-19 12:26:50'),(1304,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 12:26:51'),(1305,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','add',NULL,'/administrator/index.php?option=com_content&task=article.add','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 12:26:56'),(1306,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','edit',NULL,'/administrator/index.php?option=com_content&view=article&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 12:26:56'),(1307,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','save',0,'/administrator/index.php?option=com_content&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','Home','2013-02-19 12:27:10'),(1308,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.q-lab.pro/administrator/index.php?option=com_content&view=article&layout=edit','','2013-02-19 12:27:11'),(1309,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuru','http://user.q-lab.pro/administrator/index.php?option=com_content&view=articles','','2013-02-19 12:28:22'),(1310,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menutypes&tmpl=component&recordId=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuru','','2013-02-19 12:28:24'),(1311,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','setType',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuru','','2013-02-19 12:28:27'),(1312,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuru','','2013-02-19 12:28:28'),(1313,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','modal',NULL,'/administrator/index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_request_id&3e6e754c74e5167d7ab3d700335cf1f4=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:28:33'),(1314,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','modal',NULL,'/administrator/index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_request_id&3e6e754c74e5167d7ab3d700335cf1f4=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:28:48'),(1315,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','save',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','Главная','2013-02-19 12:29:36'),(1316,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:29:36'),(1317,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=menu&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:29:48'),(1318,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 12:29:50'),(1319,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menus','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menu&layout=edit','','2013-02-19 12:29:50'),(1320,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuen','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=menus','','2013-02-19 12:29:53'),(1321,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menutypes&tmpl=component&recordId=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuen','','2013-02-19 12:29:56'),(1322,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','setType',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuen','','2013-02-19 12:29:58'),(1323,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&menutype=mainmenuen','','2013-02-19 12:29:58'),(1324,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','modal',NULL,'/administrator/index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_request_id&3e6e754c74e5167d7ab3d700335cf1f4=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:30:07'),(1325,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','save',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','Home','2013-02-19 12:30:31'),(1326,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:30:32'),(1327,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','Home','2013-02-19 12:30:51'),(1328,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:30:51'),(1329,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',104,'/administrator/index.php?option=com_menus&task=item.edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:30:54'),(1330,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',104,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:30:55'),(1331,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',104,'/administrator/index.php?option=com_menus&layout=edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','Главная','2013-02-19 12:30:57'),(1332,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','','2013-02-19 12:30:58'),(1333,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:31:00'),(1334,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','add',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','','2013-02-19 12:31:02'),(1335,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&menutype=mainmenuen&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','','2013-02-19 12:31:02'),(1336,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=menutypes&tmpl=component&recordId=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuen&layout=edit','','2013-02-19 12:31:05'),(1337,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','setType',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuen&layout=edit','','2013-02-19 12:31:07'),(1338,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&menutype=mainmenuen&layout=edit','','2013-02-19 12:31:07'),(1339,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','modal',NULL,'/administrator/index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_request_id&3e6e754c74e5167d7ab3d700335cf1f4=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:31:17'),(1340,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','apply',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','Home','2013-02-19 12:31:21'),(1341,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:31:21'),(1342,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_content','modal',NULL,'/administrator/index.php?option=com_content&view=articles&layout=modal&tmpl=component&function=jSelectArticle_jform_request_id&3e6e754c74e5167d7ab3d700335cf1f4=1','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:31:48'),(1343,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','apply',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','Home','2013-02-19 12:32:01'),(1344,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',105,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:32:02'),(1345,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',105,'/administrator/index.php?option=com_menus&layout=edit&id=105','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','Home','2013-02-19 12:32:06'),(1346,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','','2013-02-19 12:32:06'),(1347,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:32:24'),(1348,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','http://user.q-lab.pro/administrator/index.php?option=com_plugins','','2013-02-19 12:33:15'),(1349,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',104,'/administrator/index.php?option=com_menus&task=item.edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:33:17'),(1350,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',104,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuru','','2013-02-19 12:33:18'),(1351,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','save',104,'/administrator/index.php?option=com_menus&layout=edit&id=104','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','Главная','2013-02-19 12:33:29'),(1352,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=104','','2013-02-19 12:33:30'),(1353,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:33:35'),(1354,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',105,'/administrator/index.php?option=com_menus&task=item.edit&id=105','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','','2013-02-19 12:33:36'),(1355,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',105,'/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items&menutype=mainmenuen','','2013-02-19 12:33:36'),(1356,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','save2new',105,'/administrator/index.php?option=com_menus&layout=edit&id=105','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','Home','2013-02-19 12:33:46'),(1357,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','edit',NULL,'/administrator/index.php?option=com_menus&view=item&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit&id=105','','2013-02-19 12:33:46'),(1358,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','cancel',0,'/administrator/index.php?option=com_menus&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:33:49'),(1359,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_menus','',NULL,'/administrator/index.php?option=com_menus&view=items','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=item&layout=edit','','2013-02-19 12:33:49'),(1360,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','','2013-02-19 12:34:00'),(1361,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins','','2013-02-19 12:34:10'),(1362,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:13'),(1363,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:18'),(1364,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','publish',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:22'),(1365,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','publish',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:22'),(1366,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_plugins','',NULL,'/administrator/index.php?option=com_plugins&view=plugins','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:22'),(1367,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_plugins&view=plugins','','2013-02-19 12:34:30'),(1368,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 12:34:40'),(1369,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 12:34:43'),(1370,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=select&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules','','2013-02-19 12:34:46'),(1371,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','add',NULL,'/administrator/index.php?option=com_modules&task=module.add&eid=222','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=select&tmpl=component','','2013-02-19 12:34:56'),(1372,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',NULL,'/administrator/index.php?option=com_modules&view=module&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=select&tmpl=component','','2013-02-19 12:34:56'),(1373,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','modal',NULL,'/administrator/index.php?option=com_modules&view=positions&layout=modal&tmpl=component&function=jSelectPosition_jform_position&client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','','2013-02-19 12:35:06'),(1374,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','modal',NULL,'/administrator/index.php?option=com_modules&view=positions&layout=modal&tmpl=component&function=jSelectPosition_jform_position&client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=positions&layout=modal&tmpl=component&function=jSelectPosition_jform_position&client_id=0','','2013-02-19 12:35:13'),(1375,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','apply',0,'/administrator/index.php?option=com_modules&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','Переключение языков','2013-02-19 12:35:20'),(1376,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',97,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=97','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','','2013-02-19 12:35:21'),(1377,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','cancel',97,'/administrator/index.php?option=com_modules&layout=edit&id=97','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=97','Переключение языков','2013-02-19 12:37:16'),(1378,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=97','','2013-02-19 12:37:16'),(1379,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&filter_client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:37:25'),(1380,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=select&tmpl=component','http://user.q-lab.pro/administrator/index.php?option=com_modules&filter_client_id=0','','2013-02-19 12:37:27'),(1381,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','add',NULL,'/administrator/index.php?option=com_modules&task=module.add&eid=209','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=select&tmpl=component','','2013-02-19 12:37:31'),(1382,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',NULL,'/administrator/index.php?option=com_modules&view=module&layout=edit','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=select&tmpl=component','','2013-02-19 12:37:31'),(1383,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','modal',NULL,'/administrator/index.php?option=com_modules&view=positions&layout=modal&tmpl=component&function=jSelectPosition_jform_position&client_id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','','2013-02-19 12:37:38'),(1384,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',0,'/administrator/index.php?option=com_modules&layout=edit&id=0','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','Main Menu (RU)','2013-02-19 12:38:07'),(1385,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit','','2013-02-19 12:38:07'),(1386,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','duplicate',NULL,'/administrator/index.php?option=com_modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:38:14'),(1387,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:38:14'),(1388,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&task=module.edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:38:16'),(1389,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:38:16'),(1390,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',99,'/administrator/index.php?option=com_modules&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','Main Menu (EN)','2013-02-19 12:38:40'),(1391,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','','2013-02-19 12:38:41'),(1392,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','publish',NULL,'/administrator/index.php?option=com_modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:17'),(1393,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:17'),(1394,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',98,'/administrator/index.php?option=com_modules&task=module.edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:18'),(1395,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',98,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:18'),(1396,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',98,'/administrator/index.php?option=com_modules&layout=edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','Main Menu (RU)','2013-02-19 12:39:22'),(1397,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','','2013-02-19 12:39:22'),(1398,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&task=module.edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:24'),(1399,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:24'),(1400,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',99,'/administrator/index.php?option=com_modules&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','Main Menu (EN)','2013-02-19 12:39:31'),(1401,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','','2013-02-19 12:39:32'),(1402,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',98,'/administrator/index.php?option=com_modules&task=module.edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:43'),(1403,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',98,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:43'),(1404,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',98,'/administrator/index.php?option=com_modules&layout=edit&id=98','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','Main Menu (RU)','2013-02-19 12:39:46'),(1405,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=98','','2013-02-19 12:39:47'),(1406,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&task=module.edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:50'),(1407,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','edit',99,'/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:39:50'),(1408,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','save',99,'/administrator/index.php?option=com_modules&layout=edit&id=99','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','Main Menu (EN)','2013-02-19 12:39:54'),(1409,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=module&layout=edit&id=99','','2013-02-19 12:39:54'),(1410,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','unpublish',NULL,'/administrator/index.php?option=com_modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:40:02'),(1411,543,'127.0.0.1','h239g4tlkbhtldino1glgd4pr5','com_modules','',NULL,'/administrator/index.php?option=com_modules&view=modules','http://user.q-lab.pro/administrator/index.php?option=com_modules&view=modules','','2013-02-19 12:40:02'),(1412,0,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_cpanel','',NULL,'/administrator/','','','2013-02-20 15:41:28'),(1413,0,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_login','login',NULL,'/administrator/index.php','http://user.joomla25/administrator/','','2013-02-20 15:43:00'),(1414,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_cpanel','',NULL,'/administrator/index.php','http://user.joomla25/administrator/','','2013-02-20 15:43:01'),(1415,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.joomla25/administrator/index.php','','2013-02-20 15:43:07'),(1416,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_users','edit',543,'/administrator/index.php?option=com_users&task=user.edit&id=543','http://user.joomla25/administrator/index.php?option=com_users&view=users','','2013-02-20 15:43:09'),(1417,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_users','edit',543,'/administrator/index.php?option=com_users&view=user&layout=edit&id=543','http://user.joomla25/administrator/index.php?option=com_users&view=users','','2013-02-20 15:43:09'),(1418,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_users','save',543,'/administrator/index.php?option=com_users&layout=edit&id=543','http://user.joomla25/administrator/index.php?option=com_users&view=user&layout=edit&id=543','Super User','2013-02-20 15:43:25'),(1419,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_users','',NULL,'/administrator/index.php?option=com_users&view=users','http://user.joomla25/administrator/index.php?option=com_users&view=user&layout=edit&id=543','','2013-02-20 15:43:25'),(1420,543,'127.0.0.1','s550tla08hlq2madvc4fl4uca4','com_login','logout',NULL,'/administrator/index.php?option=com_login&task=logout&f46e6217fac214c8cbb37edd54aeb99f=1','http://user.joomla25/administrator/index.php?option=com_users&view=users','','2013-02-20 15:43:30'),(1421,0,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_cpanel','',NULL,'/administrator/index.php','http://user.joomla25/administrator/index.php?option=com_users&view=users','','2013-02-20 15:43:30'),(1422,0,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_login','login',NULL,'/administrator/index.php','http://user.joomla25/administrator/index.php','','2013-02-20 15:43:39'),(1423,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_cpanel','',NULL,'/administrator/index.php','http://user.joomla25/administrator/index.php','','2013-02-20 15:43:39'),(1424,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_content','',NULL,'/administrator/index.php?option=com_content','http://user.joomla25/administrator/index.php','','2013-02-20 15:43:44'),(1425,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_content','edit',2,'/administrator/index.php?option=com_content&task=article.edit&id=2','http://user.joomla25/administrator/index.php?option=com_content','','2013-02-20 15:43:46'),(1426,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_content','edit',2,'/administrator/index.php?option=com_content&view=article&layout=edit&id=2','http://user.joomla25/administrator/index.php?option=com_content','','2013-02-20 15:43:46'),(1427,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_content','cancel',2,'/administrator/index.php?option=com_content&layout=edit&id=2','http://user.joomla25/administrator/index.php?option=com_content&view=article&layout=edit&id=2','Home','2013-02-20 15:44:48'),(1428,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_content','',NULL,'/administrator/index.php?option=com_content&view=articles','http://user.joomla25/administrator/index.php?option=com_content&view=article&layout=edit&id=2','','2013-02-20 15:44:48'),(1429,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_cpanel','',NULL,'/administrator/index.php','http://user.joomla25/administrator/index.php?option=com_content&view=articles','','2013-02-20 15:44:57'),(1430,543,'127.0.0.1','9bo9h1g9cq760vnapo82hsj1p4','com_login','logout',NULL,'/administrator/index.php?option=com_login&task=logout&fef31f77ee2338da256cbcfb5aa997b1=1','http://user.joomla25/administrator/index.php','','2013-02-20 15:45:06'),(1431,0,'127.0.0.1','qsu6g32pu2qbdgrddtjjmlb3q3','com_cpanel','',NULL,'/administrator/index.php','http://user.joomla25/administrator/index.php','','2013-02-20 15:45:06');
/*!40000 ALTER TABLE `br9bh_rokadminaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_rokuserstats`
--

DROP TABLE IF EXISTS `br9bh_rokuserstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_rokuserstats` (
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_rokuserstats`
--

LOCK TABLES `br9bh_rokuserstats` WRITE;
/*!40000 ALTER TABLE `br9bh_rokuserstats` DISABLE KEYS */;
INSERT INTO `br9bh_rokuserstats` VALUES (68,0,'127.0.0.1','9f7fmk43s5c1m4cep63e36ug56','/','','2013-02-19 10:15:48'),(69,0,'127.0.0.1','9f7fmk43s5c1m4cep63e36ug56','/','','2013-02-19 10:17:34'),(70,0,'127.0.0.1','9f7fmk43s5c1m4cep63e36ug56','/','http://user.q-lab.pro/','2013-02-19 10:17:36'),(71,0,'127.0.0.1','9f7fmk43s5c1m4cep63e36ug56','/component/users/?view=registration','http://user.q-lab.pro/','2013-02-19 10:17:43'),(72,0,'127.0.0.1','9f7fmk43s5c1m4cep63e36ug56','/','','2013-02-19 11:05:24'),(73,0,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/','','2013-02-19 11:32:10'),(74,0,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/index.php','http://user.q-lab.pro/','2013-02-19 11:46:10'),(75,0,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/index.php','http://user.q-lab.pro/','2013-02-19 12:00:10'),(76,0,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/','http://user.q-lab.pro/administrator/index.php?option=com_menus&view=items','2013-02-19 12:32:13'),(77,0,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/','http://user.q-lab.pro/','2013-02-19 12:32:17'),(78,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/','http://user.q-lab.pro/','2013-02-19 12:32:17'),(79,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/','2013-02-19 12:35:22'),(80,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:35:55'),(81,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:35:58'),(82,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/glavnaya.html','http://user.q-lab.pro/ru/','2013-02-19 12:36:22'),(83,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/glavnaya.html','2013-02-19 12:36:25'),(84,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:36:26'),(85,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:36:28'),(86,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/en/','2013-02-19 12:36:31'),(87,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/en/','2013-02-19 12:36:32'),(88,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:36:33'),(89,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/ru/','2013-02-19 12:39:02'),(90,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:39:04'),(91,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:39:07'),(92,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:39:12'),(93,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:39:36'),(94,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:39:38'),(95,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:39:40'),(96,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','','2013-02-19 12:40:09'),(97,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/ru/','2013-02-19 12:40:12'),(98,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/en/','http://user.q-lab.pro/ru/','2013-02-19 12:40:13'),(99,543,'127.0.0.1','951eddff3bf32563c1f776ae982f33d0','/ru/','http://user.q-lab.pro/en/','2013-02-19 12:40:15');
/*!40000 ALTER TABLE `br9bh_rokuserstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_schemas`
--

DROP TABLE IF EXISTS `br9bh_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_schemas`
--

LOCK TABLES `br9bh_schemas` WRITE;
/*!40000 ALTER TABLE `br9bh_schemas` DISABLE KEYS */;
INSERT INTO `br9bh_schemas` VALUES (700,'2.5.9');
/*!40000 ALTER TABLE `br9bh_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_session`
--

DROP TABLE IF EXISTS `br9bh_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_session`
--

LOCK TABLES `br9bh_session` WRITE;
/*!40000 ALTER TABLE `br9bh_session` DISABLE KEYS */;
INSERT INTO `br9bh_session` VALUES ('qsu6g32pu2qbdgrddtjjmlb3q3',1,1,'1361375106','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1361375106;s:18:\"session.timer.last\";i:1361375106;s:17:\"session.timer.now\";i:1361375106;s:22:\"session.client.browser\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.70 Safari/537.17\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:16:\"mc_default_style\";N;s:11:\"admin_style\";s:1:\"7\";}}s:14:\"\0*\0_authGroups\";N;s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"1907d9c7fd47afcc499c148791dfc18d\";}',0,'','');
/*!40000 ALTER TABLE `br9bh_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_template_styles`
--

DROP TABLE IF EXISTS `br9bh_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_template_styles`
--

LOCK TABLES `br9bh_template_styles` WRITE;
/*!40000 ALTER TABLE `br9bh_template_styles` DISABLE KEYS */;
INSERT INTO `br9bh_template_styles` VALUES (2,'bluestork',1,'0','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'1','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(7,'rt_missioncontrol',1,'1','rt_missioncontrol - По умолчанию','{\"adminTitle\":\" \",\"templateWidth\":\"variable\",\"dashboard\":\" \",\"menuwidth\":\"small\",\"extendmenu\":\"off\",\"enableGravatar\":\"1\",\"enableSessionBar\":\"1\",\"enableTransitions\":\"enabled\",\"enableQuickEditor\":\"1\",\"enableViewSite\":\"1\",\"enableQuickCheckin\":\"0\",\"enableQuickCacheClean\":\"1\",\"enableFancyHeaders\":\"fancy\",\"showhelp\":\"1\",\"showhelpbutton\":\"1\",\"showlangmenu\":\"1\",\"body_text_color\":\"#333333\",\"body_link_color\":\"#4486BA\",\"header_bg_color\":\"#333333\",\"header_text_color\":\"#CCCCCC\",\"header_link_color\":\"#FFFFFF\",\"header_shadow_color\":\"#000000\",\"tab_bg_color\":\"#4D4D4D\",\"tab_text_color\":\"#FFFFFF\",\"special_bg_color\":\"#C62D2D\",\"special_text_color\":\"#FFFFFF\",\"active_bg_color\":\"#4F9BD8\",\"active_text_color\":\"#FFFFFF\",\"hover_bg_color\":\"#88B719\",\"hover_text_color\":\"#FFFFFF\",\"blackliststyle\":\"2\"}');
/*!40000 ALTER TABLE `br9bh_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_update_categories`
--

DROP TABLE IF EXISTS `br9bh_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_update_categories`
--

LOCK TABLES `br9bh_update_categories` WRITE;
/*!40000 ALTER TABLE `br9bh_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_update_sites`
--

DROP TABLE IF EXISTS `br9bh_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_update_sites`
--

LOCK TABLES `br9bh_update_sites` WRITE;
/*!40000 ALTER TABLE `br9bh_update_sites` DISABLE KEYS */;
INSERT INTO `br9bh_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1361276558),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1361276558),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1361276558),(4,'Extension Update Site','collection','http://updates.rockettheme.com/joomla16/updates.xml',1,1361276558);
/*!40000 ALTER TABLE `br9bh_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_update_sites_extensions`
--

DROP TABLE IF EXISTS `br9bh_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_update_sites_extensions`
--

LOCK TABLES `br9bh_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `br9bh_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `br9bh_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10003),(4,10005);
/*!40000 ALTER TABLE `br9bh_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_updates`
--

DROP TABLE IF EXISTS `br9bh_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_updates`
--

LOCK TABLES `br9bh_updates` WRITE;
/*!40000 ALTER TABLE `br9bh_updates` DISABLE KEYS */;
INSERT INTO `br9bh_updates` VALUES (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.9.2','','http://update.joomla.org/language/details/da-DK_details.xml',''),(4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.5.3','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(31,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(32,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(33,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(34,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(35,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(37,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(38,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(39,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(40,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(41,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(42,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(43,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(44,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(45,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(46,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(47,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(48,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(49,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(50,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(51,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(52,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(53,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(54,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(55,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(56,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(57,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(58,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(59,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(60,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(61,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(62,4,0,0,'MissionControl','','rt_missioncontrol_j16','template','',1,'2.6','','http://updates.rockettheme.com/joomla16/templates/missioncontrol_j16.xml','');
/*!40000 ALTER TABLE `br9bh_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_user_notes`
--

DROP TABLE IF EXISTS `br9bh_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_user_notes` (
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
-- Dumping data for table `br9bh_user_notes`
--

LOCK TABLES `br9bh_user_notes` WRITE;
/*!40000 ALTER TABLE `br9bh_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_user_profiles`
--

DROP TABLE IF EXISTS `br9bh_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_user_profiles`
--

LOCK TABLES `br9bh_user_profiles` WRITE;
/*!40000 ALTER TABLE `br9bh_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_user_usergroup_map`
--

DROP TABLE IF EXISTS `br9bh_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_user_usergroup_map`
--

LOCK TABLES `br9bh_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `br9bh_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `br9bh_user_usergroup_map` VALUES (543,8);
/*!40000 ALTER TABLE `br9bh_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_usergroups`
--

DROP TABLE IF EXISTS `br9bh_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_usergroups` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_usergroups`
--

LOCK TABLES `br9bh_usergroups` WRITE;
/*!40000 ALTER TABLE `br9bh_usergroups` DISABLE KEYS */;
INSERT INTO `br9bh_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `br9bh_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_users`
--

DROP TABLE IF EXISTS `br9bh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_users`
--

LOCK TABLES `br9bh_users` WRITE;
/*!40000 ALTER TABLE `br9bh_users` DISABLE KEYS */;
INSERT INTO `br9bh_users` VALUES (543,'Super User','admin','admin@email.org','2dfc794ecc9923719f6040b34c7ba045:0c6Jqv28AckqDEsdAxGTVFEDftPITdHf','deprecated',0,1,'2013-02-19 10:07:25','2013-02-20 15:45:06','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `br9bh_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_viewlevels`
--

DROP TABLE IF EXISTS `br9bh_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_viewlevels`
--

LOCK TABLES `br9bh_viewlevels` WRITE;
/*!40000 ALTER TABLE `br9bh_viewlevels` DISABLE KEYS */;
INSERT INTO `br9bh_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `br9bh_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `br9bh_weblinks`
--

DROP TABLE IF EXISTS `br9bh_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `br9bh_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
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
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `br9bh_weblinks`
--

LOCK TABLES `br9bh_weblinks` WRITE;
/*!40000 ALTER TABLE `br9bh_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `br9bh_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-20 19:45:49
