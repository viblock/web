-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flarum_viblock
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_tokens` (
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_activity_at` datetime NOT NULL,
  `lifetime_seconds` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `access_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
INSERT INTO `access_tokens` VALUES ('7WuFqSQj5FIKifDjBEJHgGipvfXwp1fTNFNvNvCJ',1,'2020-04-16 09:46:38',3600,'2020-04-16 09:46:38'),('ebfgDodomjAV4saTi1gNlK6i6VmxgJShbaDMaXXl',1,'2020-04-14 14:57:23',3600,'2020-04-14 14:57:23'),('FgNiyVMkKyLTCgoUE8fsyNo02dpgBjtbJ2MYX9lb',1,'2020-04-16 21:47:40',3600,'2020-04-16 21:47:40'),('jfVOpd7ZvT4m16Tb5R7YJREQr6uK1tvq0H9niKTn',1,'2020-04-15 02:02:42',3600,'2020-04-15 02:02:42'),('LvnVcGLMGegpBISsDXZyrAoc9eIxyOdkDGd8u2hp',1,'2020-04-15 10:55:30',3600,'2020-04-15 10:55:30'),('nEr4riNl9PV2GFdi2eRgHmqpmW5OVw3QwBnCxVP3',1,'2020-04-17 15:43:45',3600,'2020-04-17 15:43:45'),('OweyfJFBzalAOa4kSOY9DMvk4kWCgsek12TAp2Tu',1,'2020-04-18 22:47:33',3600,'2020-04-18 22:47:33'),('PDANwitlP2NhW5ORW6FnkIhjAfUkvajkgRNgZ9cJ',1,'2020-04-15 20:56:15',3600,'2020-04-15 20:56:15'),('szMds1qPlgeSBcdhtx3WNHt2pSHmOCVLMIEaCC6R',1,'2020-04-13 08:40:55',3600,'2020-04-13 08:40:55'),('TcEWkqB2LVXrzFvzEbgTmpq14yhSY8wb3UixZo9A',1,'2020-04-13 19:29:30',3600,'2020-04-13 19:29:30'),('TVyQHIXknmH0djDBkV8LhGTZTUQPWxtikAMgjc1s',1,'2020-04-19 14:32:27',3600,'2020-04-19 14:32:27'),('x43rZrrUWNKE05FvJU1t9kvg8gZ5k3uAhg8i6aTF',1,'2020-04-16 16:02:24',3600,'2020-04-16 16:02:24'),('xAUsk973fHTstudrTEvnRCNivPHehyNuBEug0Dzc',1,'2020-04-17 19:06:39',3600,'2020-04-17 19:06:39'),('xN57UsSdatlQEb1M9m4NEwXICcSQmkSTmY4I1tcR',1,'2020-04-12 20:43:36',3600,'2020-04-12 20:43:36');
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_key_unique` (`key`),
  KEY `api_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_tag`
--

DROP TABLE IF EXISTS `discussion_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_tag` (
  `discussion_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discussion_id`,`tag_id`),
  KEY `discussion_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_tag`
--

LOCK TABLES `discussion_tag` WRITE;
/*!40000 ALTER TABLE `discussion_tag` DISABLE KEYS */;
INSERT INTO `discussion_tag` VALUES (2,4),(2,10),(5,3),(5,11);
/*!40000 ALTER TABLE `discussion_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_user`
--

DROP TABLE IF EXISTS `discussion_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_user` (
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `last_read_post_number` int(10) unsigned DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discussion_id`),
  KEY `discussion_user_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_user`
--

LOCK TABLES `discussion_user` WRITE;
/*!40000 ALTER TABLE `discussion_user` DISABLE KEYS */;
INSERT INTO `discussion_user` VALUES (1,2,'2020-04-12 17:29:20',3,NULL),(1,5,'2020-04-13 23:33:42',3,NULL);
/*!40000 ALTER TABLE `discussion_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `participant_count` int(10) unsigned NOT NULL DEFAULT '0',
  `post_number_index` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `first_post_id` int(10) unsigned DEFAULT NULL,
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_post_number` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL,
  `hotness` double(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `discussions_first_post_id_foreign` (`first_post_id`),
  KEY `discussions_last_post_id_foreign` (`last_post_id`),
  KEY `discussions_last_posted_at_index` (`last_posted_at`),
  KEY `discussions_last_posted_user_id_index` (`last_posted_user_id`),
  KEY `discussions_created_at_index` (`created_at`),
  KEY `discussions_user_id_index` (`user_id`),
  KEY `discussions_comment_count_index` (`comment_count`),
  KEY `discussions_participant_count_index` (`participant_count`),
  KEY `discussions_hidden_at_index` (`hidden_at`),
  KEY `discussions_is_locked_index` (`is_locked`),
  KEY `discussions_is_sticky_created_at_index` (`is_sticky`,`created_at`),
  FULLTEXT KEY `title` (`title`),
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (2,'How to Appeal',1,1,3,'2020-04-12 17:28:53',1,2,'2020-04-12 17:28:53',1,2,1,NULL,NULL,'how-to-appeal',0,1,1,1,0,0.0000),(5,'How to apply to the Viblock team',1,1,3,'2020-04-13 23:32:49',1,7,'2020-04-13 23:32:49',1,7,1,NULL,NULL,'how-to-apply-to-the-viblock-team',0,1,1,0,0,0.0000);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_tokens`
--

DROP TABLE IF EXISTS `email_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `email_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_tokens`
--

LOCK TABLES `email_tokens` WRITE;
/*!40000 ALTER TABLE `email_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flags_post_id_foreign` (`post_id`),
  KEY `flags_user_id_foreign` (`user_id`),
  KEY `flags_created_at_index` (`created_at`),
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_linguist_strings`
--

DROP TABLE IF EXISTS `fof_linguist_strings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_linguist_strings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fof_linguist_strings_key_locale_unique` (`key`,`locale`),
  KEY `fof_linguist_strings_key_index` (`key`),
  KEY `fof_linguist_strings_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_linguist_strings`
--

LOCK TABLES `fof_linguist_strings` WRITE;
/*!40000 ALTER TABLE `fof_linguist_strings` DISABLE KEYS */;
/*!40000 ALTER TABLE `fof_linguist_strings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_masquerade_answers`
--

DROP TABLE IF EXISTS `fof_masquerade_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_masquerade_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fof_masquerade_answers_field_id_user_id_unique` (`field_id`,`user_id`),
  KEY `fof_masquerade_answers_user_id_foreign` (`user_id`),
  CONSTRAINT `fof_masquerade_answers_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fof_masquerade_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fof_masquerade_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_masquerade_answers`
--

LOCK TABLES `fof_masquerade_answers` WRITE;
/*!40000 ALTER TABLE `fof_masquerade_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fof_masquerade_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_masquerade_fields`
--

DROP TABLE IF EXISTS `fof_masquerade_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_masquerade_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `on_bio` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fof_masquerade_fields_required_index` (`required`),
  KEY `fof_masquerade_fields_sort_index` (`sort`),
  KEY `fof_masquerade_fields_type_index` (`type`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_masquerade_fields`
--

LOCK TABLES `fof_masquerade_fields` WRITE;
/*!40000 ALTER TABLE `fof_masquerade_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `fof_masquerade_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permission` (
  `group_id` int(10) unsigned NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`permission`),
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
INSERT INTO `group_permission` VALUES (2,'fof.gamification.viewRankingPage'),(2,'tag10.viewDiscussions'),(2,'tag11.viewDiscussions'),(2,'tag12.viewDiscussions'),(2,'tag3.viewDiscussions'),(2,'tag4.viewDiscussions'),(2,'tag9.viewDiscussions'),(2,'viewDiscussions'),(2,'viewUserList'),(3,'discussion.flagPosts'),(3,'discussion.likePosts'),(3,'discussion.reactPosts'),(3,'discussion.reply'),(3,'discussion.replyWithoutApproval'),(3,'discussion.startWithoutApproval'),(3,'discussion.vote'),(3,'startDiscussion'),(3,'tag12.discussion.flagPosts'),(3,'tag12.discussion.likePosts'),(3,'tag12.discussion.reactPosts'),(3,'tag12.discussion.reply'),(3,'tag12.startDiscussion'),(3,'tag9.startDiscussion'),(3,'votePolls'),(4,'discussion.approvePosts'),(4,'discussion.editPosts'),(4,'discussion.hide'),(4,'discussion.hidePosts'),(4,'discussion.lock'),(4,'discussion.polls'),(4,'discussion.rename'),(4,'discussion.sticky'),(4,'discussion.tag'),(4,'discussion.viewFlags'),(4,'discussion.viewIpsPosts'),(4,'startPolls'),(4,'tag12.discussion.editPosts'),(4,'tag12.discussion.hide'),(4,'tag12.discussion.hidePosts'),(4,'tag12.discussion.lock'),(4,'tag12.discussion.polls'),(4,'tag12.discussion.rename'),(4,'tag12.discussion.sticky'),(4,'tag12.discussion.tag'),(4,'tag12.discussion.viewFlags'),(4,'tag12.discussion.viewIpsPosts'),(4,'tag9.discussion.delete'),(4,'tag9.discussion.editPosts'),(4,'tag9.discussion.flagPosts'),(4,'tag9.discussion.hide'),(4,'tag9.discussion.hidePosts'),(4,'tag9.discussion.likePosts'),(4,'tag9.discussion.lock'),(4,'tag9.discussion.polls'),(4,'tag9.discussion.reactPosts'),(4,'tag9.discussion.rename'),(4,'tag9.discussion.reply'),(4,'tag9.discussion.tag'),(4,'tag9.discussion.viewFlags'),(4,'tag9.discussion.viewIpsPosts'),(4,'user.spamblock'),(4,'user.suspend'),(4,'user.viewLastSeenAt'),(5,'discussion.lock'),(5,'discussion.rename'),(5,'discussion.viewFlags'),(5,'startPolls'),(5,'tag12.discussion.lock'),(5,'tag12.discussion.rename'),(5,'tag12.discussion.viewFlags'),(5,'tag9.discussion.flagPosts'),(5,'tag9.discussion.likePosts'),(5,'tag9.discussion.reactPosts'),(5,'tag9.discussion.rename'),(5,'tag9.discussion.reply'),(5,'tag9.discussion.viewFlags'),(5,'user.viewLastSeenAt'),(6,'startPolls');
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_user_group_id_foreign` (`group_id`),
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1);
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admins','#ff0000','fas fa-wrench'),(2,'Guest','Guests',NULL,NULL),(3,'Member','Members',NULL,NULL),(4,'Mod','Mods','#37ff1c','fas fa-bolt'),(5,'Helper','Helpers','#00ceff','fas fa-star'),(6,'Content Creator','Content Creators','#a200ff','fab fa-youtube'),(7,'Supporter','Supporters','#ffe500','fas fa-coins'),(8,'Player','Players','#eea900','fas fa-user');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'Home','https://www.viblock.xyz',0,0,0),(2,'Forum','https://www.viblock.xyz/all',2,0,0),(3,'Rules','https://www.viblock.xyz/p/1-rules',1,0,0),(4,'Hytale','https://hytale.com',5,0,1),(5,'Discord','https://discord.gg/gGyKENb',4,0,1);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_providers`
--

DROP TABLE IF EXISTS `login_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_providers_provider_identifier_unique` (`provider`,`identifier`),
  KEY `login_providers_user_id_foreign` (`user_id`),
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_providers`
--

LOCK TABLES `login_providers` WRITE;
/*!40000 ALTER TABLE `login_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_access_tokens_table',NULL),('2015_02_24_000000_create_api_keys_table',NULL),('2015_02_24_000000_create_config_table',NULL),('2015_02_24_000000_create_discussions_table',NULL),('2015_02_24_000000_create_email_tokens_table',NULL),('2015_02_24_000000_create_groups_table',NULL),('2015_02_24_000000_create_notifications_table',NULL),('2015_02_24_000000_create_password_tokens_table',NULL),('2015_02_24_000000_create_permissions_table',NULL),('2015_02_24_000000_create_posts_table',NULL),('2015_02_24_000000_create_users_discussions_table',NULL),('2015_02_24_000000_create_users_groups_table',NULL),('2015_02_24_000000_create_users_table',NULL),('2015_09_15_000000_create_auth_tokens_table',NULL),('2015_09_20_224327_add_hide_to_discussions',NULL),('2015_09_22_030432_rename_notification_read_time',NULL),('2015_10_07_130531_rename_config_to_settings',NULL),('2015_10_24_194000_add_ip_address_to_posts',NULL),('2015_12_05_042721_change_access_tokens_columns',NULL),('2015_12_17_194247_change_settings_value_column_to_text',NULL),('2016_02_04_095452_add_slug_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_posts',NULL),('2018_01_11_093900_change_access_tokens_columns',NULL),('2018_01_11_094000_change_access_tokens_add_foreign_keys',NULL),('2018_01_11_095000_change_api_keys_columns',NULL),('2018_01_11_101800_rename_auth_tokens_to_registration_tokens',NULL),('2018_01_11_102000_change_registration_tokens_rename_id_to_token',NULL),('2018_01_11_102100_change_registration_tokens_created_at_to_datetime',NULL),('2018_01_11_120604_change_posts_table_to_innodb',NULL),('2018_01_11_155200_change_discussions_rename_columns',NULL),('2018_01_11_155300_change_discussions_add_foreign_keys',NULL),('2018_01_15_071700_rename_users_discussions_to_discussion_user',NULL),('2018_01_15_071800_change_discussion_user_rename_columns',NULL),('2018_01_15_071900_change_discussion_user_add_foreign_keys',NULL),('2018_01_15_072600_change_email_tokens_rename_id_to_token',NULL),('2018_01_15_072700_change_email_tokens_add_foreign_keys',NULL),('2018_01_15_072800_change_email_tokens_created_at_to_datetime',NULL),('2018_01_18_130400_rename_permissions_to_group_permission',NULL),('2018_01_18_130500_change_group_permission_add_foreign_keys',NULL),('2018_01_18_130600_rename_users_groups_to_group_user',NULL),('2018_01_18_130700_change_group_user_add_foreign_keys',NULL),('2018_01_18_133000_change_notifications_columns',NULL),('2018_01_18_133100_change_notifications_add_foreign_keys',NULL),('2018_01_18_134400_change_password_tokens_rename_id_to_token',NULL),('2018_01_18_134500_change_password_tokens_add_foreign_keys',NULL),('2018_01_18_134600_change_password_tokens_created_at_to_datetime',NULL),('2018_01_18_135000_change_posts_rename_columns',NULL),('2018_01_18_135100_change_posts_add_foreign_keys',NULL),('2018_01_30_112238_add_fulltext_index_to_discussions_title',NULL),('2018_01_30_220100_create_post_user_table',NULL),('2018_01_30_222900_change_users_rename_columns',NULL),('2018_07_21_000000_seed_default_groups',NULL),('2018_07_21_000100_seed_default_group_permissions',NULL),('2018_09_15_041340_add_users_indicies',NULL),('2018_09_15_041828_add_discussions_indicies',NULL),('2018_09_15_043337_add_notifications_indices',NULL),('2018_09_15_043621_add_posts_indices',NULL),('2018_09_22_004100_change_registration_tokens_columns',NULL),('2018_09_22_004200_create_login_providers_table',NULL),('2018_10_08_144700_add_shim_prefix_to_group_icons',NULL),('2019_06_24_145100_change_posts_content_column_to_mediumtext',NULL),('2015_09_21_011527_add_is_approved_to_discussions','flarum-approval'),('2015_09_21_011706_add_is_approved_to_posts','flarum-approval'),('2017_07_22_000000_add_default_permissions','flarum-approval'),('2018_09_29_060444_replace_emoji_shorcuts_with_unicode','flarum-emoji'),('2015_09_02_000000_add_flags_read_time_to_users_table','flarum-flags'),('2015_09_02_000000_create_flags_table','flarum-flags'),('2017_07_22_000000_add_default_permissions','flarum-flags'),('2018_06_27_101500_change_flags_rename_time_to_created_at','flarum-flags'),('2018_06_27_101600_change_flags_add_foreign_keys','flarum-flags'),('2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at','flarum-flags'),('2018_09_15_043621_add_flags_indices','flarum-flags'),('2015_05_11_000000_create_posts_likes_table','flarum-likes'),('2015_09_04_000000_add_default_like_permissions','flarum-likes'),('2018_06_27_100600_rename_posts_likes_to_post_likes','flarum-likes'),('2018_06_27_100700_change_post_likes_add_foreign_keys','flarum-likes'),('2015_02_24_000000_add_locked_to_discussions','flarum-lock'),('2017_07_22_000000_add_default_permissions','flarum-lock'),('2018_09_15_043621_add_discussions_indices','flarum-lock'),('2015_05_11_000000_create_mentions_posts_table','flarum-mentions'),('2015_05_11_000000_create_mentions_users_table','flarum-mentions'),('2018_06_27_102000_rename_mentions_posts_to_post_mentions_post','flarum-mentions'),('2018_06_27_102100_rename_mentions_users_to_post_mentions_user','flarum-mentions'),('2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id','flarum-mentions'),('2018_06_27_102300_change_post_mentions_post_add_foreign_keys','flarum-mentions'),('2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id','flarum-mentions'),('2018_06_27_102500_change_post_mentions_user_add_foreign_keys','flarum-mentions'),('2015_02_24_000000_add_sticky_to_discussions','flarum-sticky'),('2017_07_22_000000_add_default_permissions','flarum-sticky'),('2018_09_15_043621_add_discussions_indices','flarum-sticky'),('2015_05_11_000000_add_subscription_to_users_discussions_table','flarum-subscriptions'),('2015_05_11_000000_add_suspended_until_to_users_table','flarum-suspend'),('2015_09_14_000000_rename_suspended_until_column','flarum-suspend'),('2017_07_22_000000_add_default_permissions','flarum-suspend'),('2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until','flarum-suspend'),('2015_02_24_000000_create_discussions_tags_table','flarum-tags'),('2015_02_24_000000_create_tags_table','flarum-tags'),('2015_02_24_000000_create_users_tags_table','flarum-tags'),('2015_02_24_000000_set_default_settings','flarum-tags'),('2015_10_19_061223_make_slug_unique','flarum-tags'),('2017_07_22_000000_add_default_permissions','flarum-tags'),('2018_06_27_085200_change_tags_columns','flarum-tags'),('2018_06_27_085300_change_tags_add_foreign_keys','flarum-tags'),('2018_06_27_090400_rename_users_tags_to_tag_user','flarum-tags'),('2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at','flarum-tags'),('2018_06_27_100200_change_tag_user_add_foreign_keys','flarum-tags'),('2018_06_27_103000_rename_discussions_tags_to_discussion_tag','flarum-tags'),('2018_06_27_103100_add_discussion_tag_foreign_keys','flarum-tags'),('2019_04_21_000000_add_icon_to_tags_table','flarum-tags'),('2019_10_12_195349_change_posts_add_discussion_foreign_key',NULL),('2019_10_22_000000_change_reason_text_col_type','flarum-flags'),('2016_04_11_182821__create_pages_table','fof-pages'),('2016_08_28_180020_add_is_html','fof-pages'),('2019_07_08_000000_create_reactions_tables','fof-reactions'),('2019_07_08_000001_create_post_reactions_table','fof-reactions'),('2019_07_08_000002_add_default_reaction_permission','fof-reactions'),('2019_07_08_000003_migrate_extension_settings','fof-reactions'),('2019_12_05_000000_add_timestamps_to_post_reactions_table','fof-reactions'),('2019_07_01_000000_add_polls_table','fof-polls'),('2019_07_01_000001_add_poll_options_table','fof-polls'),('2019_07_01_000002_add_poll_votes_table','fof-polls'),('2016_02_13_000000_create_links_table','fof-links'),('2016_04_19_065618_change_links_columns','fof-links'),('2019_07_09_000000_create_post_votes_table','fof-gamification'),('2019_07_09_000001_add_attributes_to_users','fof-gamification'),('2019_07_09_000002_add_votes_and_hotness_to_discussions','fof-gamification'),('2019_07_09_000003_add_default_permissions','fof-gamification'),('2019_07_09_000004_create_rank_users_table','fof-gamification'),('2019_07_09_000005_migrate_extension_settings','fof-gamification'),('2019_07_10_000000_create_ranks_table','fof-gamification'),('2019_08_09_000000_add_votes_foreign_keys','fof-gamification'),('2019_06_10_000000_rename_permissions','fof-user-directory'),('2019_06_07_000000_add_recipients_table','fof-byobu'),('2019_06_07_000001_remove_flagrow_migrations','fof-byobu'),('2019_07_08_000000_add_blocks_pd_to_users','fof-byobu'),('2019_07_09_000000_blocks_pd_index','fof-byobu'),('2020_02_14_214800_fix_user_id_not_nullable_for_group_pds','fof-byobu'),('2020_02_19_110103_remove_retired_settings_key','fof-byobu'),('2018_08_9_000000_create_webhooks_table','reflar-webhooks'),('2018_12_10_000000_make_error_nullable','reflar-webhooks'),('2018_01_10_000000_migrate_extension_settings','fof-recaptcha'),('2019_09_22_01_rename_flagrow_tables','fof-linguist'),('2019_09_22_02_create_strings_table','fof-linguist'),('2019_06_10_01_rename_permissions','fof-masquerade'),('2019_06_10_02_rename_flagrow_tables','fof-masquerade'),('2019_06_10_03_create_fields_table','fof-masquerade'),('2019_06_10_04_create_answers_table','fof-masquerade'),('2019_06_17_000000_add_settings_social_list','fof-share-social'),('2019_02_05_000000_migrate_from_fa_4','fof-socialprofile'),('2019_02_05_000001_create_socialbuttons_column','fof-socialprofile');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `data` blob,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_from_user_id_foreign` (`from_user_id`),
  KEY `notifications_user_id_index` (`user_id`),
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'☰ OUR RULES ☰','rules','2020-04-12 13:52:12','2020-04-13 19:49:27','<r><p>In order for us to maintain a fun, safe and friendly atmosphere for all our community members, we expect that all users of Viblock platforms abide by the following rules. Punishments can range from having your forum post deleted to being permanently banned from our platforms - depending on the rule broken and the severity. Viblock staff reserve the right to mute and ban rule breakers, as well as delete their content. If you follow the rules... Thanks <E>:D</E></p>\n\n<p>&lt;h6&gt;Rules version 3.2 updated by vro on 12th April 2020&lt;/h6&gt;<br/>\n&lt;div id=\"rcorners1\"&gt;<br/>\n&lt;h7&gt;☰ Be respectful&lt;/h7&gt;<br/>\nGive all players, users, and staff the respect they deserve. We do not tolerate...</p>\n<LIST><LI><s>- </s>Discrimination in any form</LI>\n<LI><s>- </s>Any non-agreed advertising</LI>\n<LI><s>- </s>Spamming of any kind</LI>\n<LI><s>- </s>Discussions of politics or religion</LI>\n<LI><s>- </s>Targeted aggressive or toxic behaviour</LI>\n<LI><s>- </s>Harassment of community members</LI>\n<LI><s>- </s>Demanding or revealing others\' personal information</LI>\n<LI><s>- </s>Intentionally offending or humiliating others<br/>\n&lt;/div&gt;</LI></LIST>\n\n<p>&lt;div id=\"rcorners1\"&gt;<br/>\n&lt;h7&gt;☰ No NSFW content&lt;/h7&gt;<br/>\nViblock aims to be suitable for all ages. Using or sharing NSFW content in any way, for example URL links, in-game skins, builds, nicknames, submissions, etc. is not allowed. We consider content NSFW if...</p>\n<LIST><LI><s>- </s>It is sexual or pornographic</LI>\n<LI><s>- </s>It contains gory visuals or descriptions</LI>\n<LI><s>- </s>It contains extreme or excessive profanity</LI>\n<LI><s>- </s>It makes strong reference to terrorism or cruelty</LI>\n<LI><s>- </s>It contains slurs</LI>\n<LI><s>- </s>It is obviously intended to be inappropriate<br/>\n&lt;/div&gt;</LI></LIST>\n\n<p>&lt;div id=\"rcorners1\"&gt;<br/>\n&lt;h7&gt;☰ Do not cheat&lt;/h7&gt;<br/>\nFor our games to remain enjoyable and fair, we require that all players start on a level playing field. Anything that gives you an unfair advantage over other players is considered cheating. This includes, but is not limited to...</p>\n<LIST><LI><s>- </s>Using an auto-clicker or macros</LI>\n<LI><s>- </s>Teaming in solo games or cross-teaming</LI>\n<LI><s>- </s>Exploiting bugs or glitches</LI>\n<LI><s>- </s>Abusing alt accounts to your advantage</LI>\n<LI><s>- </s>Using \'hacks\' or disallowed mods<br/>\n&lt;/div&gt;</LI></LIST>\n\n<p>&lt;div id=\"rcorners1\"&gt;<br/>\n&lt;h7&gt;☰ Use features as intended&lt;/h7&gt;<br/>\nWe have systems in place to keep our community platforms organised and accessible. To help us...</p>\n<LIST><LI><s>- </s>Keep forum posts in the correct section</LI>\n<LI><s>- </s>Keep Discord conversations in the correct channel</LI>\n<LI><s>- </s>Do not create \'troll\' ban appeals</LI>\n<LI><s>- </s>Do not intentionally make false reports<br/>\n&lt;/div&gt;</LI></LIST>\n\n<p>&lt;div id=\"rcorners1\"&gt;<br/>\n&lt;h7&gt;Oh, and one more thing...&lt;/h7&gt;<br/>\nIn addition to these rules, we may also punish users who encourage others to break rules, commit illegal or fraudulent activity, or attempt to do harm to Viblock and our community.<br/>\n&lt;/div&gt;</p></r>',0,1),(2,'Home','home','2020-04-12 13:52:48','2020-04-16 10:05:58','<r><p>&lt;a href=\"<URL url=\"https://viblock.flarum.cloud/d/5-how-to-apply-to-the-viblock-team%22%3E%3Cdiv\">https://viblock.flarum.cloud/d/5-how-to-apply-to-the-viblock-team\"&gt;&lt;div</URL> id=\"rcorners2\"&gt;&lt;h4&gt;★ Recruiting artists, builders, and devs! Learn more...&lt;/h4&gt;&lt;/div&gt;&lt;/a&gt;<br/>\n&lt;center&gt;&lt;h8&gt;☰ INTRODUCTION ☰&lt;/h8&gt;&lt;/center&gt;<br/>\n&lt;table&gt;<br/>\n&lt;tbody&gt;<br/>\n&lt;tr&gt;<br/>\n&lt;td bgcolor=\"#B619FF\"&gt;&amp;nbsp;&lt;/td&gt;<br/>\n&lt;td style=\"padding:15px;\"&gt;Viblock is an upcoming multiplayer server on &lt;a href=\"https://hytale.com\"&gt;Hytale&lt;/a&gt;, a new block game to be released by &lt;a href=\"https://hypixelstudios.com\"&gt;Hypixel Studios&lt;/a&gt; in 2021. The Viblock server will be one of the first community servers on Hytale, and we aim to be one of the best! Viblock will have many diverse game modes - some of which may be familiar to those of you who have played Minecraft - and some will be completely new. Our gamemodes will centre around combat, adventure, building, puzzles, and more. We will also have an amazing and experienced team working together to bring high quality regular content and updates.&lt;/td&gt;<br/>\n&lt;/tr&gt;<br/>\n&lt;/tbody&gt;<br/>\n&lt;/table&gt;<br/>\nSince Hytale is not yet released, we are currently focusing our time on building a community of players and staff, growing our platforms, and making plans and preparations. But that doesn’t mean we will have nothing to do while we wait! Viblock will be providing you with the latest Hytale development updates, opportunities to contribute to the creation of our server, and a unique 1.16 Minecraft server to play on until Hytale’s release (More information when MC v1.16 releases).<br/>\n&lt;h3&gt;Welcome to the start of the Viblock adventure!&lt;/h3&gt;<br/>\n&lt;center&gt;&lt;h8&gt;☰ HOW TO PLAY ☰&lt;/h8&gt;&lt;/center&gt;<br/>\n&lt;h3&gt;How to join Viblock | play.viblock.xyz&lt;/h3&gt;<br/>\n&lt;table&gt;<br/>\n&lt;tbody&gt;<br/>\n&lt;tr&gt;<br/>\n&lt;td bgcolor=\"#B619FF\"&gt;&amp;nbsp;&lt;/td&gt;<br/>\n&lt;td style=\"padding:15px;\"&gt;- Open Hytale and navigate to the multiplayer menu.</p>\n<LIST><LI><s>- </s>Search \"Viblock\" and click \"Connect\", or join directly using IP \"play.viblock.xyz\"</LI>\n<LI><s>- </s>You\'re in! You can invite your friends in-game by clicking \"Share\" in the server welcome page.&lt;/td&gt;<br/>\n&lt;/tr&gt;<br/>\n&lt;/tbody&gt;<br/>\n&lt;/table&gt;<br/>\n&lt;h3&gt;How to join ViblockMC | mc.viblock.xyz&lt;/h3&gt;<br/>\n&lt;table&gt;<br/>\n&lt;tbody&gt;<br/>\n&lt;tr&gt;<br/>\n&lt;td bgcolor=\"#B619FF\"&gt;&amp;nbsp;&lt;/td&gt;<br/>\n&lt;td style=\"padding:15px;\"&gt;- Open Minecraft version 1.16 or higher.</LI>\n<LI><s>- </s>Navigate to the multiplayer menu and click \"Add Server\"</LI>\n<LI><s>- </s>Type the server address \"mc.viblock.xyz\" and click \"Done\"</LI>\n<LI><s>- </s>You\'re in! Enjoy the server!&lt;/td&gt;<br/>\n&lt;/tr&gt;<br/>\n&lt;/tbody&gt;<br/>\n&lt;/table&gt;<br/>\n&lt;center&gt;&lt;h8&gt;☰ OUR GAMEMODES ☰&lt;/h8&gt;&lt;/center&gt;<br/>\n&lt;center&gt;Coming soon...&lt;/center&gt;</LI></LIST></r>',0,1),(4,'☰ PRIVACY POLICY ☰','privacy','2020-04-13 13:35:56','2020-04-16 13:33:42','<r><p>&lt;center&gt;&lt;h8&gt;UPDATED ON 16/04/2020&lt;/h8&gt;&lt;/center&gt;<br/>\n&lt;table&gt;<br/>\n&lt;tbody&gt;<br/>\n&lt;tr&gt;<br/>\n&lt;td bgcolor=\"#B619FF\"&gt;&amp;nbsp;&lt;/td&gt;<br/>\n&lt;td style=\"padding:15px;\"&gt;Thank you for choosing to be part of our community at Viblock! We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about our policy, or our practices with regards to your personal information, please contact our support team with <EMAIL email=\"support@viblock.xyz\">support@viblock.xyz</EMAIL></p>\n\n<p>When you visit our website (www.viblock.xyz) and use our services, you trust us with your personal information. We take your privacy very seriously. In this privacy policy, we seek to explain to you in the clearest way possible what information we collect, how we use it and what rights you have in relation to it. We hope you take some time to read through it carefully, as it is important. If there are any terms in this privacy policy that you do not agree with, please discontinue use of our sites and our services. This privacy policy applies to all information collected through our website, game servers, Discord server, online stores, social media platforms, and other services.<br/>\n&lt;/td&gt;<br/>\n&lt;/tr&gt;<br/>\n&lt;/tbody&gt;<br/>\n&lt;/table&gt;<br/>\n&lt;center&gt;&lt;h8&gt;☰ TERMINOLOGY ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nThe collective terms “we”, “us” and “our” refer to Viblock as an organisation. “Services” refers to all platforms under our control - including this website, our game servers, our social media pages and other applications.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ INFORMATION WE COLLECT ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe may collect information about the services you use and how you use them - such as the selections you make on our services. We collect PII, DII, and log information about your interactions as described below.</p>\n\n<p>Personally identifiable information (PII) is information that can be used to identify or contact you online or offline, such as your name, address, email, phone number, photos, or payment information. Our services may collect PII when it is provided to us, such as when you use our forums, attempt to contact us, submit a form, connect with us on social media, or make a purchase from us.</p>\n\n<p>We may also create or collect device-identifiable information (DII), such as cookies, unique device and advertising identifiers, usernames, and similar identifiers that are linkable to a browser or device. From these platforms, we may also receive other information, such as your IP address, user agent, timestamps, apps, fonts, and screen size.</p>\n\n<p>Our services also collect information about your interactions, including navigation paths, search queries, crashes, timestamps, purchases, clicks and shares, and referral URLs. We may combine this data with PII and DII. We may also partner with third parties that collect additional information to enhance our services - please see below regarding their privacy policies for more details.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ HOW WE USE THIS INFORMATION ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe use the information we collect from our services to provide, maintain, protect and improve our services, to develop new services and offerings, and to protect us and our users.</p>\n\n<p>PII is used for business purposes, such as for sending you occasional updates, responding to inquiries, logins, enabling purchases, offering customer support, and providing services. When you contact us, we may keep a record of your communication as well as the other information to help solve any issues you might be facing. We may use your email address to inform you about our services, such as letting you know about changes or improvements. Please keep in mind that comments sections, forums, and other similar areas of our services are public. Any information posted in those areas is viewable and usable by anyone that has access.</p>\n\n<p>We use DII to operate our services and manage user sessions, including analysing usage of our services, prevent malicious behaviour and fraud, improve our content, and link your identity across devices and browsers in order to provide you with a more seamless experience online.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ THIRD PARTIES ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe do not share PII or DII that we have collected from our users with third parties except for the purposes of our own data collection and processing, for example using Google analytics to identify ways to improve our services. However, we may receive information from third parties that we work with in oder to enable our services. For example, we may use a third party to run and manage our online stores and receive information that you enter into their website in order to allow us to complete the transaction and offer customer support. Below you can find a list of privacy notices/policies from third parties that may provide us with information.</p>\n\n<p>BuyCraft Privacy Notice: <URL url=\"https://www.buycraft.net/legal/privacy\">https://www.buycraft.net/legal/privacy</URL><br/>\nGoogle Privacy Policy: <URL url=\"https://policies.google.com/privacy?hl=en\">https://policies.google.com/privacy?hl=en</URL><br/>\nPayPal Privacy Policy: <URL url=\"https://www.paypal.com/us/webapps/mpp/ua/privacy-full\">https://www.paypal.com/us/webapps/mpp/ua/privacy-full</URL></p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ ACCESSING AND UPDATING YOUR INFORMATION ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe aim to provide you with reasonable opportunity to access, update, and delete to your PII. When updating your information, we may ask you to verify your identity before we can act on your request.</p>\n\n<p>Information stored publicly or privately relating to your profile on this website can be accessed and modified by visiting your account settings page, where you can also review your notification and privacy options.</p>\n\n<p>If you are unsure how to review, access, update, or delete certain PII that we hold about you, please contact our support team who will assist you with the email provided at the end of this policy.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ INFORMATION SECURITY ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe work hard to protect our users’ information from unauthorised access and unauthorised alteration. We undertake reasonable security and non-disclosure measures with appropriate confidentiality, integrity, and availability protections. However, since no software or storage system is 100% secure, we cannot guarantee the absolute security of your information stored by our services, or any other service for that matter. You can help protect your account information by using unique, hard to guess, and secure passwords.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ CHILDREN UNDER 13 ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nWe do not knowingly collect information for any child under the age of 13. If you are the parent of a child under the age of 13 and have a concern regarding your child’s information on our services, please contact us at the email provided at the end of this policy.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ CHANGES TO THIS POLICY ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nOur privacy policy may change from time to time. We will post any policy changes on this page, including material changes. While you may be informed by us of such changes, we hold no responsibility to do so. Please check back periodically to view changes to our privacy policy.</p>\n\n<p>&lt;center&gt;&lt;h8&gt;☰ SUPPORT AND QUESTIONS ☰&lt;/h8&gt;&lt;/center&gt;<br/>\nIf you have questions, concerns or requests regarding your privacy or the content of this privacy policy, please contact us at <EMAIL email=\"support@viblock.xyz\">support@viblock.xyz</EMAIL></p></r>',0,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `password_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_tokens`
--

LOCK TABLES `password_tokens` WRITE;
/*!40000 ALTER TABLE `password_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_options`
--

DROP TABLE IF EXISTS `poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_options_poll_id_foreign` (`poll_id`),
  CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_options`
--

LOCK TABLES `poll_options` WRITE;
/*!40000 ALTER TABLE `poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_votes`
--

DROP TABLE IF EXISTS `poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_votes_poll_id_foreign` (`poll_id`),
  KEY `poll_votes_option_id_foreign` (`option_id`),
  KEY `poll_votes_user_id_foreign` (`user_id`),
  CONSTRAINT `poll_votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_votes`
--

LOCK TABLES `poll_votes` WRITE;
/*!40000 ALTER TABLE `poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `public_poll` tinyint(1) NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_discussion_id_foreign` (`discussion_id`),
  KEY `polls_user_id_foreign` (`user_id`),
  CONSTRAINT `polls_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_likes` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
INSERT INTO `post_likes` VALUES (2,1),(7,1);
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_post`
--

DROP TABLE IF EXISTS `post_mentions_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_post` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_post_id`),
  KEY `post_mentions_post_mentions_post_id_foreign` (`mentions_post_id`),
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_post`
--

LOCK TABLES `post_mentions_post` WRITE;
/*!40000 ALTER TABLE `post_mentions_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_user`
--

DROP TABLE IF EXISTS `post_mentions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_user` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_user_id`),
  KEY `post_mentions_user_mentions_user_id_foreign` (`mentions_user_id`),
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_user`
--

LOCK TABLES `post_mentions_user` WRITE;
/*!40000 ALTER TABLE `post_mentions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_reactions`
--

DROP TABLE IF EXISTS `post_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_reactions_post_id_foreign` (`post_id`),
  KEY `post_reactions_user_id_foreign` (`user_id`),
  KEY `post_reactions_reaction_id_foreign` (`reaction_id`),
  CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_reactions`
--

LOCK TABLES `post_reactions` WRITE;
/*!40000 ALTER TABLE `post_reactions` DISABLE KEYS */;
INSERT INTO `post_reactions` VALUES (2,2,1,NULL,'2020-04-12 17:29:28','2020-04-12 17:29:32');
/*!40000 ALTER TABLE `post_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_user`
--

DROP TABLE IF EXISTS `post_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_user` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_user_user_id_foreign` (`user_id`),
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_user`
--

LOCK TABLES `post_user` WRITE;
/*!40000 ALTER TABLE `post_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_votes`
--

DROP TABLE IF EXISTS `post_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_votes_post_id_foreign` (`post_id`),
  CONSTRAINT `post_votes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_votes`
--

LOCK TABLES `post_votes` WRITE;
/*!40000 ALTER TABLE `post_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT ' ',
  `edited_at` datetime DEFAULT NULL,
  `edited_user_id` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  KEY `posts_edited_user_id_foreign` (`edited_user_id`),
  KEY `posts_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `posts_discussion_id_number_index` (`discussion_id`,`number`),
  KEY `posts_discussion_id_created_at_index` (`discussion_id`,`created_at`),
  KEY `posts_user_id_created_at_index` (`user_id`,`created_at`),
  FULLTEXT KEY `content` (`content`),
  CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,2,1,'2020-04-12 17:28:53',1,'comment','<r><H3><s>### </s>Introduction</H3>\n<p>After a user receives a ban or mute on one of our platforms, they have the chance to make an appeal. If an appeal is accepted, the user will have their punishment removed or reduced. For an appeal to be successful, it either has to:</p>\n<LIST><LI><s>- </s>Provide sufficient evidence that the punishment was wrongly issued.</LI>\n<LI><s>- </s>Admit that the punishment was justified and provide reason for us to believe it won\'t happen again.</LI></LIST>\n\n<H3><s>### </s>Appeal Format</H3>\n<p>Write your appeal by answering the following questions:</p>\n<LIST><LI><s>- </s>What is your Hytale/Minecraft/Forum/Discord username? (Provide all that apply)</LI>\n<LI><s>- </s>Are you guilty of whatever you were punished for?</LI>\n<LI><s>- </s>Give us a brief summary of your perspective. What happened, and why? If you were not guilty, give us all the evidence you have.</LI></LIST>\n\n<H3><s>### </s>Appeal Rules</H3>\n<p>Do not insult other users or staff members in your appeal. It will be denied.<br/>\nIf you make an appeal when you have not received a punishment or an appeal which is clearly not serious, it will be ignored. Doing this repeatedly may result in an actual punishment &#128558;</p> </r>',NULL,NULL,NULL,NULL,'86.190.137.240',0,1),(3,2,2,'2020-04-12 17:29:08',1,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1),(4,2,3,'2020-04-12 17:29:12',1,'discussionLocked','{\"locked\":true}',NULL,NULL,NULL,NULL,NULL,0,1),(7,5,1,'2020-04-13 23:32:49',1,'comment','<r><p>Hi there, potential awesome future team member friend person! Thanks for taking an interest in applying to be a part of our team <E>:D</E></p>\n\n<p>First off, there\'s a couple of basic requirements that we require all applicants to meet. For most of the positions on our team, you need to be 18 or older. If you are applying for the helper, builder or artist positions, you must be at least 15. Also, you must be able to communicate fluently in English in order to work effectively in our team.</p>\n\n<H3><s>### </s>Avaliable Positions</H3>\n<p>The positions we have are listed below. This list is not in order of importance, as all roles are equally crucial to our team and highly valued. They are listed simply in order of on-the-job permission level. Positions marked as \"<STRONG><s>**</s>APPS CLOSED<e>**</e></STRONG>\" are either full, currently unavailable, or impossible to obtain through the application process.</p>\n\n<p>Management - <STRONG><s>**</s>APPS CLOSED<e>**</e></STRONG><br/>\nGeneral Admin - <STRONG><s>**</s>APPS CLOSED<e>**</e></STRONG><br/>\nServer Admin<br/>\nNetwork Developer - <STRONG><s>**</s>APPS CLOSED<e>**</e></STRONG><br/>\nWeb Developer<br/>\nServer/Software Developer<br/>\nModerator<br/>\nMarketing<br/>\nHelper<br/>\nArtist/Designer<br/>\nBuilder</p>\n\n<H3><s>### </s>Application Process</H3>\n<p>Cool, so how do you actually apply? Head over to the staff application forum and create a new discussion thread with a vaguely sensible name. Probably a good idea to put what position you are applying for in the title too. Asides from that, you can write in whatever format you choose. Let us know why you should be on our team in your own style. Nothing is compulsory, but below are some very useful things to include...</p>\n\n<LIST><LI><s>- </s>An alternative method to contact you (email, Discord, Fax, TikTok, whatever)</LI>\n<LI><s>- </s>Your past experience with this position - or similar positions - with something to show for it. If you\'re a builder, show us some builds! If you\'re an artist, show us some art! Developer? Show us your GitHub or resources! Moderator? Yeah... that one\'s a little harder. Show us some memes?</LI>\n<LI><s>- </s>A bit about yourself and your teamwork skills <E>:)</E></LI>\n<LI><s>- </s>Why you want to join our team, and why we should want you too!</LI>\n<LI><s>- </s>Any challenges or difficulties that we might have to consider when working together.</LI></LIST>\n\n<p>After your application has been reviewed by a manager (probably me), it will either be accepted or denied. If it is accepted, we will probably reach out for some further information and do a Discord interview if you\'re ok with that before welcoming you to the team <E>:D</E></p>\n\n<p>Good luck!</p></r>','2020-04-13 23:38:23',1,NULL,NULL,'86.190.137.240',0,1),(9,5,3,'2020-04-13 23:33:36',1,'discussionLocked','{\"locked\":true}',NULL,NULL,NULL,NULL,NULL,0,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank_users`
--

DROP TABLE IF EXISTS `rank_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_users` (
  `rank_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_users`
--

LOCK TABLES `rank_users` WRITE;
/*!40000 ALTER TABLE `rank_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `points` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (1,'thumbsup','emoji'),(2,'thumbsdown','emoji'),(3,'laughing','emoji'),(4,'confused','emoji'),(5,'heart','emoji'),(6,'tada','emoji');
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `removed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipients_discussion_id_foreign` (`discussion_id`),
  KEY `recipients_user_id_foreign` (`user_id`),
  KEY `recipients_group_id_foreign` (`group_id`),
  CONSTRAINT `recipients_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipients_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_tokens`
--

DROP TABLE IF EXISTS `registration_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_tokens`
--

LOCK TABLES `registration_tokens` WRITE;
/*!40000 ALTER TABLE `registration_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('allow_post_editing','reply'),('allow_renaming','10'),('allow_sign_up','1'),('custom_footer','<div id=\"footerdiv1\">\n<h2>&copy; Viblock <script>document.write( new Date().getFullYear() );</script>, All Rights Reserved</h2>\nAll trademarks referenced herein are property of their respective owner(s)<br><a href=\"https://www.viblock.xyz/p/4-privacy\">This website uses Cookies | Privacy Policy</a></div>'),('custom_header','<link href=\"https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap\" rel=\"stylesheet\">\n<link href=\"https://fonts.googleapis.com/css2?family=Girassol&display=swap\" rel=\"stylesheet\">\n<div id=\"headersquare\"><center><a href=\"https://ibb.co/zPmzVb0\"><img height=\"150\"  src=\"https://i.ibb.co/c2yjht7/fgdsfgdfg.png\" alt=\"HeaderViblock\"></a></center></div>'),('custom_less','html, body {\n  font-family: \'Josefin Sans\', sans-serif;\n}\nh1, h2, h3, h4, h5, h6 {\n  font-family: \'Girassol\', cursive;\n  letter-spacing: 3px;\n}\nh7 {\n  text-align: center;\n  font-size: 25px;\n  font-family: \'Girassol\', cursive;\n  letter-spacing: 3px;\n}\nh8 {\n  text-align: center;\n  font-size: 25px;\n  color: #B619FF;\n  font-family: \'Girassol\', cursive;\n  letter-spacing: 3px;\n}\n#rcorners1 {\n  margin: auto;\n  border-radius: 25px;\n  background: #B619FF;\n  padding-left: 40px; \n  padding-right: 30px; \n  padding-bottom: 25px;\n  width: 500px;\n  height: 100%;\n  color: #1a191a;\n}\n#rcorners2 {\n  margin: auto;\n  border-radius: 25px;\n  background: #c852ff;\n  padding-left: 40px; \n  padding-right: 30px; \n  padding-bottom: 5px;\n  padding-top: 5px;\n  width: 50%px;\n  height: 100%;\n  color: #1a191a;\n}\n#footerdiv1 {\n  margin: 5px;\n  background: #1a191a;\n  padding-top: 10px;\n  padding-bottom: 10px;\n  width: 100%;\n  height: 100%;\n  color: #B619FF;\n  text-align: center;\n}\nbody {\n  background-repeat: round;\n  background-attachment: fixed;\n  background-image: url(\'https://i.ibb.co/ynGtD6R/Cover.jpg\');\n}\n#headersquare {\n  padding-top: 20px;\n  height: 100%;\n  width: 100%;\n  background: #1a191a;\n  background-image: linear-gradient(#000000, #1a191a);\n}'),('default_locale','en'),('default_route','/pages/home'),('extensions_enabled','[\"flarum-bbcode\",\"flarum-emoji\",\"flarum-lang-english\",\"flarum-flags\",\"flarum-likes\",\"flarum-lock\",\"flarum-markdown\",\"flarum-mentions\",\"flarum-statistics\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"fof-default-user-preferences\",\"migratetoflarum-canonical\",\"fof-pages\",\"fof-reactions\",\"fof-profile-image-crop\",\"fof-polls\",\"fof-user-bio\",\"fof-links\",\"flarum-tags\",\"v17development-seo\",\"fof-share-social\",\"fof-spamblock\",\"flagrow-sitemap\"]'),('favicon_path','favicon-7cn1itak.png'),('flarum-tags.max_primary_tags','1'),('flarum-tags.max_secondary_tags','1'),('flarum-tags.min_primary_tags','1'),('flarum-tags.min_secondary_tags','1'),('fof-formatting.plugin.autoimage',''),('fof-formatting.plugin.autovideo',''),('fof-formatting.plugin.fancypants','0'),('fof-formatting.plugin.htmlentities',''),('fof-formatting.plugin.mediaembed',''),('fof-formatting.plugin.pipetables',''),('fof-gamification.autoUpvotePosts','0'),('fof-gamification.convertedLikes','0'),('fof-gamification.customRankingImages','0'),('fof-gamification.iconName','arrow'),('fof-gamification.rateLimit','0'),('fof-gamification.showVotesOnDiscussionPage','0'),('fof-reactions.convertToLike','thumbsup'),('fof-share-social.networks.facebook','1'),('fof-share-social.networks.linkedin',''),('fof-share-social.networks.my_mail',''),('fof-share-social.networks.odnoklassniki',''),('fof-share-social.networks.qq',''),('fof-share-social.networks.qzone',''),('fof-share-social.networks.reddit','1'),('fof-share-social.networks.twitter','1'),('fof-share-social.networks.vkontakte',''),('fof-user-directory-link','1'),('forum_description','The best multi-genre, multiplayer Hytale server.'),('forum_title','Viblock'),('logo_path','logo-yw9wdx1c.png'),('mail_driver','smtp'),('mail_from','web@viblock.xyz'),('mail_host','127.0.0.1'),('mail_port','25'),('migratetoflarum-canonical.status','301'),('pages_home','2'),('reflar-cookie-consent.backgroundColor',''),('reflar-cookie-consent.buttonBackgroundColor',''),('reflar-cookie-consent.buttonText','Okie Dokie'),('reflar-cookie-consent.buttonTextColor',''),('reflar-cookie-consent.ccTheme','blocky'),('reflar-cookie-consent.consentText','This website uses cookies to improve your experience.'),('reflar-cookie-consent.learnMoreLinkText','Learn More'),('reflar-cookie-consent.learnMoreLinkUrl',''),('reflar-cookie-consent.textColor',''),('seo_reviewed_post_crawler','1'),('seo_social_media_image_path','site-image-7xnffa9y.png'),('show_language_selector','1'),('theme_colored_header','0'),('theme_dark_mode','1'),('theme_primary_color','#B619FF'),('theme_secondary_color','#ffffff'),('version','0.1.0-beta.12'),('welcome_message','This website uses cookies.\nTo use the forums, sign up or log in!'),('welcome_title','Welcome to Viblock forums!');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_user`
--

DROP TABLE IF EXISTS `tag_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_user` (
  `user_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `marked_as_read_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`tag_id`),
  KEY `tag_user_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_user`
--

LOCK TABLES `tag_user` WRITE;
/*!40000 ALTER TABLE `tag_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_discussion_id` int(10) unsigned DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`),
  KEY `tags_parent_id_foreign` (`parent_id`),
  KEY `tags_last_posted_user_id_foreign` (`last_posted_user_id`),
  KEY `tags_last_posted_discussion_id_foreign` (`last_posted_discussion_id`),
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Community','community','A section for general discussion, sharing projects, and off-topic rambling...','#00b012',NULL,NULL,0,NULL,NULL,0,0,0,'2020-04-12 19:47:57',NULL,1,'fas fa-tree'),(2,'Art & Builds','art-builds','Share your creations here! Only share art that belongs to you.','#0fdb35',NULL,NULL,2,1,NULL,0,0,0,NULL,NULL,NULL,'fas fa-paint-brush'),(3,'Support','support','Ask staff and the community for help, read support threads, and report issues here.','#00e8e8',NULL,NULL,1,NULL,NULL,1,0,2,'2020-04-13 23:32:49',5,1,'fas fa-info-circle'),(4,'Appeal','appeal','Appeal bans and mutes here. Please read the appeal rules before making an appeal.','#ff0000',NULL,NULL,2,NULL,NULL,1,0,1,'2020-04-12 17:28:53',2,1,'fas fa-book-dead'),(5,'Introductions','introductions','Introduce yourself to the Viblock community and get to know people!','#d75eff',NULL,NULL,1,1,NULL,0,0,0,NULL,NULL,NULL,'fas fa-smile'),(6,'Viblock Server Discussion','viblock-server-discussion','Pretty self explanatory... Discuss all aspects of the Viblock server here!','#ff9900',NULL,NULL,0,1,NULL,0,0,0,'2020-04-12 19:47:57',NULL,1,'fas fa-server'),(7,'Off Topic','off-topic','The official Viblock yeeyee zone...','#cf3400',NULL,NULL,4,1,NULL,0,0,0,NULL,NULL,NULL,'fas fa-bath'),(8,'Coding','coding','Share, discuss, and get help with your coding projects here!','#0084ff',NULL,NULL,3,1,NULL,0,0,0,NULL,NULL,NULL,'fas fa-bug'),(9,'Finished Appeal','finished-appeal','By posting your appeal under this tag you agree that you have provided all necessary information and that your appeal will be reviewed by our staff.','',NULL,NULL,1,4,NULL,1,0,0,NULL,NULL,NULL,''),(10,'Appeals Guide','appeals-guide','Check out this tag for useful information about appeals and how to appeal correctly.','',NULL,NULL,0,4,NULL,1,0,1,'2020-04-12 17:28:53',2,1,''),(11,'Articles','articles','Find solutions to common problems here!','#00e1ff',NULL,NULL,0,3,NULL,1,0,2,'2020-04-13 23:32:49',5,1,'fas fa-hands-helping'),(12,'Questions','questions','Ask *support related* questions and get answers from staff and the community!','#00e1ff',NULL,NULL,1,3,NULL,1,0,0,NULL,NULL,NULL,'fas fa-question');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `joined_at` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `marked_all_as_read_at` datetime DEFAULT NULL,
  `read_notifications_at` datetime DEFAULT NULL,
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `read_flags_at` datetime DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `votes` int(11) NOT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_vote_time` datetime DEFAULT NULL,
  `blocks_byobu_pd` tinyint(1) NOT NULL DEFAULT '0',
  `social_buttons` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_joined_at_index` (`joined_at`),
  KEY `users_last_seen_at_index` (`last_seen_at`),
  KEY `users_discussion_count_index` (`discussion_count`),
  KEY `users_comment_count_index` (`comment_count`),
  KEY `users_blocks_byobu_pd_index` (`blocks_byobu_pd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vro','harry.r.a.janes@gmail.com',1,'$2y$10$fzf3bYJnlqBQuYweiEb4NeXM8BeO7jKenXnKRB3QWx2kDdI3gbCi2','this user have a very small brain',NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":false,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"followAfterReply\":false,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"en\"}','2019-08-02 13:10:18','2020-04-19 14:35:34',NULL,'2020-04-12 17:35:01',2,2,'2020-04-12 17:35:02',NULL,1,NULL,'2020-04-12 15:18:46',0,NULL),(2,'Viblock','harry.r.a.janes@icloud.com',1,'$2y$10$S.GvPdPBGEFiLP/M2cc3/u/fn9lhX2sG7lgx3Yl4Uh/CvHezb7zum',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-12 19:33:50','2020-04-12 19:38:27',NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `events` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 14:35:58
