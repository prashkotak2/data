-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: comda-mlp-dev-db1.cednbejr8xvm.us-east-1.rds.amazonaws.com    Database: mage-dev-mlp
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `mageplaza_betterblog_category`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_category` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Category ID',
  `name` varchar(255) NOT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `status` smallint(6) DEFAULT NULL COMMENT 'Enabled',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL key',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent id',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `level` int(10) unsigned DEFAULT NULL COMMENT 'Level',
  `children_count` int(10) unsigned DEFAULT NULL COMMENT 'Children count',
  `in_rss` smallint(6) DEFAULT NULL COMMENT 'In RSS',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Meta title',
  `meta_keywords` text COMMENT 'Meta keywords',
  `meta_description` text COMMENT 'Meta description',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Category Modification Time',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Category Creation Time',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Category Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_category`
--

LOCK TABLES `mageplaza_betterblog_category` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_category` DISABLE KEYS */;
INSERT INTO `mageplaza_betterblog_category` VALUES (1,'Root',NULL,NULL,NULL,0,'1',0,0,11,NULL,NULL,NULL,NULL,'2017-01-10 09:12:53','2017-01-10 09:12:53'),(2,'News',NULL,0,'news',1,'1/2',1,1,0,0,NULL,NULL,NULL,'2017-01-18 00:19:46','2017-01-10 09:12:53'),(3,'Events',NULL,1,'events',1,'1/3',1,1,0,0,NULL,NULL,NULL,'2019-09-07 02:51:09','2017-01-10 09:12:53'),(4,'Sales',NULL,1,'sales',1,'1/4',7,1,0,1,NULL,NULL,NULL,'2017-01-18 00:20:23','2017-01-18 00:20:23'),(5,'Calendars',NULL,1,'calendars',1,'1/5',3,1,0,1,NULL,NULL,NULL,'2017-01-18 00:25:04','2017-01-18 00:20:48'),(6,'Promotional Products',NULL,1,'promotional-products',1,'1/6',4,1,2,1,NULL,NULL,NULL,'2017-01-18 00:21:42','2017-01-18 00:21:42'),(7,'Marketing Strategies',NULL,1,'marketing-strategies',1,'1/7',6,1,0,1,NULL,NULL,NULL,'2017-01-18 00:24:58','2017-01-18 00:24:58'),(8,'Automotive',NULL,1,'automotive',1,'1/8',2,1,0,1,NULL,NULL,NULL,'2017-01-18 00:25:27','2017-01-18 00:25:27'),(9,'Seasonal',NULL,1,'seasonal',1,'1/9',8,1,0,1,NULL,NULL,NULL,'2017-01-18 00:26:27','2017-01-18 00:26:27'),(10,'Tradeshows',NULL,1,'tradeshows',1,'1/10',9,1,0,1,NULL,NULL,NULL,'2017-01-18 00:26:49','2017-01-18 00:26:49'),(11,'Mobile',NULL,1,'mobile',6,'1/6/11',2,2,0,1,NULL,NULL,NULL,'2017-01-18 00:27:02','2017-01-18 00:27:02'),(12,'Writing Instruments',NULL,1,'writing-instruments',1,'1/12',10,1,0,1,NULL,NULL,NULL,'2017-01-18 01:34:48','2017-01-18 01:34:48'),(13,'Caps',NULL,1,'caps',6,'1/6/13',1,2,0,1,NULL,NULL,NULL,'2017-06-29 02:58:56','2017-06-29 02:58:56'),(14,'Purchasing Series',NULL,1,'purchasing-series',1,'1/14',5,1,0,1,NULL,NULL,NULL,'2017-06-29 03:01:12','2017-06-29 03:01:12');
/*!40000 ALTER TABLE `mageplaza_betterblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_category_store`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_category_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_category_store` (
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_CATEGORY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_43459BB1A4C7E8D1058814B0A02AF607` FOREIGN KEY (`category_id`) REFERENCES `mageplaza_betterblog_category` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_CTGR_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Categories To Store Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_category_store`
--

LOCK TABLES `mageplaza_betterblog_category_store` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_category_store` DISABLE KEYS */;
INSERT INTO `mageplaza_betterblog_category_store` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0);
/*!40000 ALTER TABLE `mageplaza_betterblog_category_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_eav_attribute`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_eav_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Attribute ID',
  `is_global` int(11) DEFAULT NULL COMMENT 'Attribute scope',
  `position` int(11) DEFAULT NULL COMMENT 'Attribute position',
  `is_wysiwyg_enabled` int(11) DEFAULT NULL COMMENT 'Attribute uses WYSIWYG',
  `is_visible` int(11) DEFAULT NULL COMMENT 'Attribute is visible',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8 COMMENT='BetterBlog attribute table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_eav_attribute`
--

LOCK TABLES `mageplaza_betterblog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_eav_attribute` DISABLE KEYS */;
INSERT INTO `mageplaza_betterblog_eav_attribute` VALUES (219,0,10,0,1),(220,0,20,0,1),(221,0,30,1,1),(222,0,40,0,1),(223,0,50,0,1),(224,0,60,0,1),(225,0,70,0,1),(226,0,80,0,1),(227,0,90,0,1),(228,0,100,0,1),(229,0,110,0,1),(230,1,91,0,0),(231,1,92,0,0),(232,2,93,0,1);
/*!40000 ALTER TABLE `mageplaza_betterblog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  CONSTRAINT `FK_3715A83C7450FD5188B2DA2AB38CCEBF` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_3C79BB7D23993F82B4FFA2B8BAB0A0E1` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='Post Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post`
--

LOCK TABLES `mageplaza_betterblog_post` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post` DISABLE KEYS */;
INSERT INTO `mageplaza_betterblog_post` VALUES (1,10,10,'2017-01-17 22:20:46','2020-04-23 10:59:47'),(2,10,10,'2017-01-17 22:26:38','2020-04-23 02:35:37'),(3,10,10,'2017-01-17 22:28:15','2020-04-23 23:06:01'),(4,10,10,'2017-01-18 00:08:39','2020-04-23 22:45:18'),(5,10,10,'2017-01-18 00:59:38','2020-04-23 22:07:37'),(6,10,10,'2017-02-07 04:19:52','2020-04-22 21:55:54'),(7,10,10,'2017-02-07 04:25:12','2020-04-23 16:40:11'),(8,10,10,'2017-02-07 04:29:55','2020-04-24 00:55:34'),(9,10,10,'2017-02-07 04:34:22','2020-04-23 03:04:36'),(10,10,10,'2017-02-07 04:37:37','2020-04-23 22:49:25'),(11,10,10,'2017-02-07 04:47:36','2020-04-22 23:26:37'),(12,10,10,'2017-02-21 22:13:30','2020-04-23 11:00:15'),(13,10,10,'2017-03-10 23:46:17','2020-04-23 19:05:56'),(15,10,10,'2017-03-22 01:12:18','2020-04-23 19:16:30'),(16,10,10,'2017-04-06 22:14:14','2020-04-24 01:31:31'),(17,10,10,'2017-04-12 23:10:46','2020-04-21 17:20:55'),(18,10,10,'2017-05-18 00:53:35','2020-04-24 01:11:30'),(19,10,10,'2017-05-18 03:20:31','2020-04-23 14:07:56'),(20,10,10,'2017-05-24 22:57:43','2020-04-23 04:19:08'),(21,10,10,'2017-06-27 22:43:01','2020-04-23 12:49:42'),(22,10,10,'2017-06-29 03:24:37','2020-04-23 23:32:40'),(23,10,10,'2017-07-06 02:44:45','2020-04-23 10:49:40'),(24,10,10,'2017-07-18 02:53:17','2020-04-24 00:28:38'),(25,10,10,'2017-08-11 04:40:56','2020-04-23 08:07:23'),(26,10,10,'2018-01-16 05:29:57','2020-04-23 23:56:29'),(27,10,10,'2018-01-30 03:24:11','2020-04-23 21:58:24'),(28,10,10,'2018-04-26 20:59:48','2020-04-23 22:06:00'),(29,10,10,'2018-04-26 22:26:39','2020-04-23 10:06:19'),(30,10,10,'2018-05-09 02:47:13','2020-04-24 01:01:11'),(31,10,10,'2018-05-25 00:12:17','2020-04-22 12:49:25'),(32,10,10,'2018-06-06 04:00:42','2020-04-23 23:05:57'),(33,10,10,'2018-06-28 03:25:08','2020-04-23 21:38:02'),(34,10,10,'2018-06-28 21:39:52','2020-04-21 23:06:17'),(35,10,10,'2018-07-24 03:40:05','2020-04-24 01:01:19'),(36,10,10,'2018-07-24 23:04:24','2020-04-23 16:34:23'),(37,10,10,'2018-07-24 23:13:40','2020-04-23 23:20:13'),(38,10,10,'2018-08-07 20:59:22','2018-09-08 03:33:17'),(39,10,10,'2018-08-16 02:50:07','2020-04-23 11:34:28'),(40,10,10,'2018-08-22 22:12:49','2020-04-23 18:30:38'),(41,10,10,'2018-08-22 22:46:29','2020-04-23 15:02:45'),(42,10,10,'2018-08-22 23:01:42','2020-04-23 21:20:08'),(43,10,10,'2018-08-23 00:46:35','2020-04-24 00:32:30'),(44,10,10,'2018-09-08 03:31:30','2020-04-23 16:50:27'),(45,10,10,'2018-09-19 22:58:53','2020-04-23 12:32:51'),(46,10,10,'2018-09-22 03:32:17','2020-04-23 16:07:18'),(47,10,10,'2018-09-28 04:38:40','2020-04-23 04:13:05'),(48,10,10,'2018-10-10 20:30:58','2020-04-24 00:22:33'),(49,10,10,'2018-10-10 23:49:14','2020-04-23 23:18:57'),(50,10,10,'2018-10-11 02:02:14','2020-04-22 05:13:15'),(51,10,10,'2018-10-12 21:50:37','2018-10-12 21:58:39'),(52,10,10,'2018-11-07 04:38:17','2020-04-24 00:31:39'),(53,10,10,'2018-11-07 04:41:13','2020-04-23 23:38:03'),(54,10,10,'2018-11-07 04:44:01','2020-04-21 23:33:47'),(55,10,10,'2018-11-13 00:48:05','2020-04-22 22:39:43'),(56,10,10,'2018-11-13 23:35:49','2020-04-23 23:04:30'),(57,10,10,'2018-12-08 03:41:48','2020-04-23 23:21:31'),(58,10,10,'2018-12-08 03:48:51','2020-04-23 15:56:57'),(59,10,10,'2019-01-10 00:06:04','2020-04-23 23:13:26'),(60,10,10,'2019-01-11 22:21:23','2020-04-23 20:51:27'),(61,10,10,'2019-01-28 23:46:22','2020-04-22 11:39:05'),(62,10,10,'2019-01-29 03:30:18','2020-04-23 19:47:27'),(63,10,10,'2019-02-08 00:09:50','2020-04-23 17:40:26'),(64,10,10,'2019-03-09 02:34:39','2020-04-23 23:32:05'),(65,10,10,'2019-03-09 02:39:03','2020-04-24 00:59:39'),(66,10,10,'2019-03-11 21:53:01','2020-04-23 16:11:00'),(67,10,10,'2019-03-27 01:48:38','2020-04-23 06:34:51'),(68,10,10,'2019-03-29 21:51:40','2020-04-23 04:57:06'),(69,10,10,'2019-04-05 21:48:47','2020-04-23 23:06:04'),(70,10,10,'2019-04-11 00:38:54','2020-04-23 20:36:55'),(71,10,10,'2019-04-24 02:44:47','2020-04-23 23:32:05'),(72,10,10,'2019-04-30 01:27:28','2020-04-23 18:10:01'),(73,10,10,'2019-05-04 01:35:28','2020-04-22 19:13:52'),(74,10,10,'2019-05-09 21:11:19','2020-04-23 20:05:37'),(75,10,10,'2019-05-15 03:53:56','2020-04-22 00:40:02'),(76,10,10,'2019-05-27 23:54:45','2020-04-23 23:20:12'),(77,10,10,'2019-06-05 01:30:34','2020-04-23 16:50:37'),(78,10,10,'2019-06-11 01:32:13','2020-04-22 00:37:27'),(79,10,10,'2019-06-15 03:38:41','2020-04-23 22:35:49'),(80,10,10,'2019-06-20 20:27:39','2020-04-23 23:17:37'),(81,10,10,'2019-06-25 02:44:35','2020-04-23 23:32:32'),(82,10,10,'2019-07-09 20:48:51','2020-04-22 21:51:43'),(83,10,10,'2019-07-16 03:46:36','2020-04-23 22:52:01'),(84,10,10,'2019-07-23 03:37:50','2020-04-23 23:22:31'),(85,10,10,'2019-07-27 02:44:47','2020-04-23 23:18:57'),(86,10,10,'2019-08-03 02:17:05','2020-04-21 03:51:41'),(87,10,10,'2019-08-13 00:16:01','2020-04-22 14:35:27'),(88,10,10,'2019-08-20 00:05:13','2020-04-22 03:35:58'),(89,10,10,'2019-08-27 00:08:38','2020-04-23 23:20:12'),(90,10,10,'2019-09-06 00:00:46','2020-04-23 17:13:18'),(91,10,10,'2019-09-12 02:13:53','2020-04-22 22:57:57'),(92,10,10,'2019-09-12 03:29:29','2020-04-22 08:03:55'),(93,10,10,'2019-09-17 20:44:09','2020-04-23 23:05:35'),(94,10,10,'2019-09-24 21:08:22','2020-04-23 03:36:43'),(95,10,10,'2019-09-27 22:20:04','2020-04-23 20:04:08'),(96,10,10,'2019-10-04 01:59:39','2020-04-23 23:22:31'),(97,10,10,'2019-10-08 22:41:50','2020-04-22 16:11:07'),(98,10,10,'2019-10-19 01:59:01','2020-04-23 23:18:57'),(99,10,10,'2019-10-26 02:20:45','2020-04-23 11:14:25'),(100,10,10,'2019-11-01 23:12:24','2020-04-22 22:32:11'),(101,10,10,'2019-11-11 21:10:01','2020-04-23 23:05:39'),(102,10,10,'2019-11-16 04:06:10','2020-04-23 21:02:49'),(103,10,10,'2019-11-23 02:03:22','2020-04-23 20:43:37'),(104,10,10,'2019-11-30 04:39:58','2020-04-23 07:21:55'),(105,10,10,'2019-12-07 03:11:59','2020-04-22 13:17:02'),(106,10,10,'2019-12-14 00:59:09','2020-04-23 23:20:12'),(107,10,10,'2020-01-18 05:07:45','2020-04-23 20:26:35'),(108,10,10,'2020-01-28 04:56:18','2020-04-22 18:58:55'),(109,10,10,'2020-03-02 23:49:17','2020-05-26 17:05:35'),(110,10,10,'2020-02-08 02:37:34','2020-04-23 21:05:04'),(111,10,10,'2020-02-15 04:21:04','2020-05-26 17:05:25'),(112,10,10,'2020-02-22 03:36:08','2020-04-24 00:25:36'),(113,10,10,'2020-02-29 04:48:50','2020-05-26 16:55:00'),(114,10,10,'2020-03-07 03:54:48','2020-04-22 20:10:58'),(115,10,10,'2020-03-14 02:30:55','2020-04-23 23:18:57'),(116,10,10,'2020-03-21 01:07:02','2020-05-26 16:54:55'),(117,10,10,'2020-03-23 22:54:50','2020-05-26 17:03:53'),(118,10,10,'2020-03-28 02:22:14','2020-04-23 23:27:25'),(119,10,10,'2020-04-02 23:49:33','2020-05-26 17:02:47'),(120,10,10,'2020-04-10 02:33:53','2020-04-23 23:05:52'),(121,10,10,'2020-04-20 22:24:36','2020-05-26 17:04:30');
/*!40000 ALTER TABLE `mageplaza_betterblog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post_category`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post_category` (
  `rel_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Relation ID',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Post ID',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`rel_id`),
  UNIQUE KEY `UNQ_MAGEPLAZA_BETTERBLOG_POST_CATEGORY_POST_ID_CATEGORY_ID` (`post_id`,`category_id`),
  KEY `FK_3941789F61A94F344E031ACCEC720128` (`category_id`),
  CONSTRAINT `FK_3941789F61A94F344E031ACCEC720128` FOREIGN KEY (`category_id`) REFERENCES `mageplaza_betterblog_category` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_A8335C41C82F4FBFA9040949C4DEBFA6` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_betterblog_post` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COMMENT='Post to Category Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post_category`
--

LOCK TABLES `mageplaza_betterblog_post_category` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_category` DISABLE KEYS */;
INSERT INTO `mageplaza_betterblog_post_category` VALUES (1,1,5,0),(2,3,6,0),(3,4,6,0),(5,1,4,1),(6,5,6,1),(7,5,4,1),(8,2,12,0),(9,11,8,1),(10,11,6,1),(11,6,7,1),(12,7,6,1),(13,7,4,1),(14,8,4,1),(15,8,6,1),(16,8,12,1),(17,9,6,1),(18,9,7,1),(19,10,12,1),(20,10,6,1),(21,12,7,1),(22,15,4,1),(23,15,10,1),(24,15,7,1),(25,15,6,1),(26,16,6,1),(27,16,4,1),(28,19,9,1),(29,19,7,1),(30,16,13,0),(31,18,13,0),(32,20,13,0),(33,21,13,0),(34,21,14,0),(35,22,5,1),(36,28,6,1),(37,28,5,1),(38,28,4,1),(39,28,7,1),(40,28,13,1),(41,3,11,1),(42,3,13,1),(43,3,14,1),(44,3,7,1),(45,4,7,1),(46,6,14,1),(47,12,4,1),(48,13,6,1),(49,13,7,1),(50,16,7,1),(51,17,6,1),(52,17,7,1),(53,17,11,1),(54,18,6,1),(55,18,7,1),(56,18,14,1),(58,18,10,1),(59,21,6,1),(60,23,9,1),(61,23,7,1),(62,24,7,1),(63,24,9,1),(64,25,9,1),(65,25,7,1),(66,26,9,1),(67,26,7,1),(68,27,7,1),(69,27,6,1),(70,27,13,1),(71,29,9,1),(72,29,7,1),(73,30,6,1),(74,30,4,1),(75,30,7,1),(76,31,6,1),(77,31,7,1),(78,31,10,1),(79,32,6,1),(80,32,9,1),(81,33,7,1),(82,34,6,1),(83,34,9,1),(84,35,9,1),(85,36,7,1),(86,37,7,1),(87,38,7,1),(88,38,14,1),(89,39,6,1),(90,39,13,1),(91,39,12,1),(92,40,6,1),(93,40,14,1),(94,41,9,1),(95,41,14,1),(96,42,14,1),(97,42,9,1),(98,43,5,1),(99,43,14,1),(100,44,14,1),(101,44,7,1),(102,45,9,1),(103,46,7,1),(104,46,6,1),(105,47,5,1),(106,47,7,1),(107,48,7,1),(108,48,6,1),(109,49,6,1),(110,49,14,1),(111,50,5,1),(112,51,9,1),(113,50,7,1),(114,52,7,1),(115,52,9,1),(116,53,6,1),(117,53,9,1),(118,54,5,1),(119,54,7,1),(120,55,9,1),(121,55,7,1),(122,56,14,1),(123,56,7,1),(124,57,7,1),(125,57,6,1),(126,57,10,1),(127,58,6,1),(128,58,7,1),(129,58,9,1),(130,58,14,1),(131,59,6,1),(132,59,14,1),(133,59,9,1),(134,60,6,1),(135,60,14,1),(136,61,6,1),(137,61,7,1),(138,62,6,1),(139,62,9,1),(140,63,9,1),(141,63,7,1),(142,64,3,1),(143,64,6,1),(144,64,9,1),(145,65,7,1),(146,65,9,1),(147,66,6,1),(148,66,7,1),(149,66,9,1),(150,67,6,1),(151,67,14,1),(152,67,7,1),(153,68,6,1),(154,68,9,1),(155,69,6,1),(156,69,14,1),(157,69,7,1),(158,70,6,1),(159,70,14,1),(160,70,7,1),(161,71,6,1),(162,71,14,1),(163,72,6,1),(164,72,14,1),(165,73,6,1),(166,78,6,1),(167,78,7,1),(168,79,6,1),(169,80,7,1),(170,81,7,1),(171,82,6,1),(172,82,9,1),(173,83,5,1),(174,83,6,1),(175,83,7,1),(176,83,4,1),(177,84,6,1),(178,84,5,1),(179,84,13,1),(180,84,7,1),(181,84,10,1),(182,84,12,1),(183,85,5,1),(184,85,6,1),(185,85,4,1),(186,86,6,1),(187,86,7,1),(188,86,4,1),(189,87,6,1),(190,87,13,1),(191,87,7,1),(192,87,4,1),(193,87,9,1),(194,87,12,1),(195,88,6,1),(196,88,7,1),(197,88,4,1),(198,88,10,1),(199,89,5,1),(200,89,6,1),(201,89,12,1),(202,90,5,1),(203,90,6,1),(204,90,4,1),(205,90,7,1),(206,90,12,1),(208,91,3,1),(209,92,6,1),(210,92,13,1),(211,92,4,1),(212,92,9,1),(213,93,3,1),(214,94,7,1),(215,94,4,1),(216,94,9,1),(217,94,3,1),(218,95,12,1),(219,95,4,1),(220,95,14,1),(221,95,6,1),(222,96,3,1),(223,96,5,1),(224,96,6,1),(225,96,13,1),(226,96,7,1),(227,96,10,1),(228,96,12,1),(229,97,3,1),(230,98,4,1),(231,98,6,1),(232,98,14,1),(233,99,8,1),(234,99,6,1),(235,99,7,1),(236,100,5,1),(237,101,3,1),(238,101,6,1),(239,101,9,1),(240,102,6,1),(241,102,3,1),(242,102,14,1),(243,103,6,1),(244,103,14,1),(245,103,7,1),(246,104,5,1),(247,104,6,1),(248,104,9,1),(249,105,3,1),(250,105,6,1),(251,105,14,1),(252,105,7,1),(253,105,4,1),(254,106,7,1),(255,107,6,1),(256,107,14,1),(257,107,7,1),(258,107,4,1),(259,108,5,1),(260,108,6,1),(261,108,7,1),(262,108,14,1),(263,109,6,1),(264,109,7,1),(265,110,6,1),(266,110,4,1),(267,111,3,1),(268,111,10,1),(269,112,14,1),(270,112,6,1),(271,112,7,1),(272,113,6,1),(273,113,7,1),(274,114,3,1),(275,114,6,1),(276,114,13,1),(277,115,9,1),(278,115,6,1),(279,116,6,1),(280,116,7,1),(281,119,3,1),(282,119,4,1),(283,120,6,1),(284,120,14,1),(285,120,7,1);
/*!40000 ALTER TABLE `mageplaza_betterblog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post_comment`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Post Comment ID',
  `post_id` int(10) unsigned NOT NULL COMMENT 'Post ID',
  `title` varchar(255) NOT NULL COMMENT 'Comment Title',
  `comment` text NOT NULL COMMENT 'Comment',
  `status` smallint(6) NOT NULL COMMENT 'Comment status',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `name` varchar(255) NOT NULL COMMENT 'Customer name',
  `email` varchar(255) NOT NULL COMMENT 'Customer email',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Post Comment Modification Time',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Post Comment Creation Time',
  PRIMARY KEY (`comment_id`),
  KEY `FK_3B53D1758DCD7732B9D31F93C6F94F30` (`post_id`),
  KEY `FK_MAGEPLAZA_BETTERBLOG_POST_COMMENT_CSTR_ID_CSTR_ENTT_ENTT_ID` (`customer_id`),
  CONSTRAINT `FK_3B53D1758DCD7732B9D31F93C6F94F30` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_betterblog_post` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_POST_COMMENT_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Comments Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post_comment`
--

LOCK TABLES `mageplaza_betterblog_post_comment` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post_comment_store`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post_comment_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post_comment_store` (
  `comment_id` int(11) NOT NULL COMMENT 'Comment ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`comment_id`,`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_COMMENT_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_D2430699B8D13CAFD6E2FBFBE2062D27` FOREIGN KEY (`comment_id`) REFERENCES `mageplaza_betterblog_post_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_F7EFC1D280FEA2A7B36310CA2EE6C3A4` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Posts Comments To Store Linkage Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post_comment_store`
--

LOCK TABLES `mageplaza_betterblog_post_comment_store` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_comment_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_comment_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post_datetime`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MAGEPLAZA_BETTERBLOG_POST_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_9DDFF946A4725DAA53F1F237339C9BD7` FOREIGN KEY (`entity_id`) REFERENCES `mageplaza_betterblog_post` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_POST_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_POST_DTIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Datetime Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post_datetime`
--

LOCK TABLES `mageplaza_betterblog_post_datetime` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mageplaza_betterblog_post_decimal`
--

DROP TABLE IF EXISTS `mageplaza_betterblog_post_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mageplaza_betterblog_post_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MAGEPLAZA_BETTERBLOG_POST_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MAGEPLAZA_BETTERBLOG_POST_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_BA09AD5510F26BA041EC5A3C2C72D18A` FOREIGN KEY (`entity_id`) REFERENCES `mageplaza_betterblog_post` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_POST_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MAGEPLAZA_BETTERBLOG_POST_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Datetime Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mageplaza_betterblog_post_decimal`
--

LOCK TABLES `mageplaza_betterblog_post_decimal` WRITE;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mageplaza_betterblog_post_decimal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 22:37:25
