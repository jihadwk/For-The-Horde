-- MySQL dump 10.13  Distrib 5.5.28, for Win32 (x86)
--
-- Host: localhost    Database: lootesserver
-- ------------------------------------------------------
-- Server version	5.5.28-log

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
-- Table structure for table `bw_barrack`
--

DROP TABLE IF EXISTS `bw_barrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_barrack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_map_data_id` bigint(20) NOT NULL COMMENT '用户建筑数据表的ID',
  `user_character_id` bigint(20) NOT NULL COMMENT '生产兵的ID，',
  `end_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '开始生产兵的结束时间',
  `produce_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '要生产得数量(兵营)/对实验室来说是没用的',
  `start_time` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '开始造兵时间',
  `produce_status` tinyint(1) DEFAULT '0' COMMENT '兵营停造状态0 未停造 1停造',
  `mail_address` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'mail address',
  `indexss` tinyint(1) DEFAULT NULL COMMENT '造兵的顺序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Forgion_ubdi` (`user_map_data_id`,`user_character_id`,`mail_address`),
  KEY `bw_barrack_mail_usermapid` (`user_map_data_id`,`mail_address`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户兵营(Barrack) 状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_barrack`
--

LOCK TABLES `bw_barrack` WRITE;
/*!40000 ALTER TABLE `bw_barrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_barrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_battle`
--

DROP TABLE IF EXISTS `bw_battle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_battle` (
  `battle_id` int(11) NOT NULL AUTO_INCREMENT,
  `attacker` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '攻击者',
  `defencer` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '防御者',
  `battle_time` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '战斗时间',
  `get_golden` bigint(20) DEFAULT NULL,
  `get_elixir` bigint(20) DEFAULT NULL,
  `pvp_mark` bigint(20) DEFAULT NULL,
  `battle_result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0胜利 1失败',
  `use_clans_flag` tinyint(1) DEFAULT '0' COMMENT '0没有使用工会 1使用工会',
  PRIMARY KEY (`battle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='战斗表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_battle`
--

LOCK TABLES `bw_battle` WRITE;
/*!40000 ALTER TABLE `bw_battle` DISABLE KEYS */;
INSERT INTO `bw_battle` VALUES (1,'wn_00000010000','test_0000002','2012-12-05 11:39:38',10,10,0,0,0),(2,'wn_00000010000','test_0000003','2012-12-05 11:40:05',10,10,0,0,0),(3,'wn_00000010000','test_0000004','2012-12-05 11:41:11',10,10,-20,0,0),(4,'wn_00000010000','test_0000005','2012-12-05 11:41:38',10,10,-20,0,0),(5,'wn_00000010000','test_0000001','2012-12-05 11:46:24',10,10,-20,0,0),(6,'wn_00000010000','test_0000001','2012-12-05 11:53:36',10,10,-20,0,0),(7,'wn_00000010000','test_0000002','2012-12-05 12:03:05',10,10,-20,0,0),(8,'wn_00000010000','test_0000002','2012-12-05 15:15:40',10,10,0,0,0),(9,'wn_00000010000','test_0000003','2012-12-05 15:21:32',10,10,0,0,0),(10,'wn_00000010000','test_0000004','2012-12-05 15:27:15',10,10,0,0,0),(11,'wn_00000010000','test_0000006','2012-12-05 15:27:26',10,10,0,0,0),(12,'wn_00000010000','test_0000007','2012-12-05 15:27:30',10,10,0,0,0),(13,'wn_00000010000','test_0000008','2012-12-05 19:13:31',10,10,0,0,0),(14,'wn_00000010000','test_0000008','2012-12-06 11:06:48',10,10,0,0,0);
/*!40000 ALTER TABLE `bw_battle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_battle_character_position`
--

DROP TABLE IF EXISTS `bw_battle_character_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_battle_character_position` (
  `id` int(11) NOT NULL COMMENT '战斗位置表',
  `battle_id` bigint(20) NOT NULL,
  `character_id` mediumint(9) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL COMMENT '士兵等级',
  `count` smallint(6) DEFAULT NULL COMMENT '士兵数量',
  `map_index` mediumint(9) NOT NULL COMMENT '士兵所在的格子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='战斗中兵的位置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_battle_character_position`
--

LOCK TABLES `bw_battle_character_position` WRITE;
/*!40000 ALTER TABLE `bw_battle_character_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_battle_character_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_battle_pay`
--

DROP TABLE IF EXISTS `bw_battle_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_battle_pay` (
  `id` int(11) NOT NULL,
  `battle_id` bigint(20) NOT NULL,
  `used_id` mediumint(9) NOT NULL COMMENT '包含:兵的id,工会ID,魔法id',
  `used_count` mediumint(9) NOT NULL COMMENT '数量',
  `used_type` smallint(6) NOT NULL COMMENT '0为兵 1为工会 2 魔法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='战斗使用的兵力情况(直接在内存中操作,暂不用此表)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_battle_pay`
--

LOCK TABLES `bw_battle_pay` WRITE;
/*!40000 ALTER TABLE `bw_battle_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_battle_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_clans`
--

DROP TABLE IF EXISTS `bw_clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clans_owner` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `clans_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '工会名字',
  `image_path` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '工会图片名称',
  `create_time` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '工会创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工会表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_clans`
--

LOCK TABLES `bw_clans` WRITE;
/*!40000 ALTER TABLE `bw_clans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_clans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_clans_character_request`
--

DROP TABLE IF EXISTS `bw_clans_character_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_clans_character_request` (
  `id` bigint(20) NOT NULL,
  `request_mail_address` bigint(20) NOT NULL COMMENT '用户建筑数据表的ID',
  `user_character_id` bigint(20) NOT NULL COMMENT '用户士兵ID',
  `produce_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '被放入的士兵数量',
  `reply_mail_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `request_time` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '请求的时间',
  `clans_id` bigint(20) NOT NULL COMMENT '工会id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工会成员请求兵表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_clans_character_request`
--

LOCK TABLES `bw_clans_character_request` WRITE;
/*!40000 ALTER TABLE `bw_clans_character_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_clans_character_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_clans_member`
--

DROP TABLE IF EXISTS `bw_clans_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_clans_member` (
  `clans_id` bigint(20) NOT NULL,
  `member_mail_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '成员mail地址',
  `privilege_id` mediumint(9) DEFAULT NULL COMMENT '工会特权ID(例如:长老等)',
  PRIMARY KEY (`clans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工会成员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_clans_member`
--

LOCK TABLES `bw_clans_member` WRITE;
/*!40000 ALTER TABLE `bw_clans_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_clans_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_mine_collector`
--

DROP TABLE IF EXISTS `bw_mine_collector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_mine_collector` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_building_data_id` bigint(20) NOT NULL COMMENT '用户建筑数据表的ID',
  `harvest_start_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '收获开始时间',
  `produce_count` bigint(20) DEFAULT '0' COMMENT '生产数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='金矿和药水收集状态 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_mine_collector`
--

LOCK TABLES `bw_mine_collector` WRITE;
/*!40000 ALTER TABLE `bw_mine_collector` DISABLE KEYS */;
INSERT INTO `bw_mine_collector` VALUES (1,9,'2012-11-27 10:07:13',0),(2,13,'2012-11-28 10:00:11',0),(3,17,'2012-11-28 10:20:44',0),(4,21,'2012-11-28 10:27:54',0),(5,25,'2012-11-28 10:30:16',0),(6,29,'2012-11-28 10:37:27',0),(7,33,'2012-11-28 10:53:44',0),(8,37,'2012-11-28 10:54:47',0),(9,41,'2012-11-28 10:56:26',0),(10,45,'2012-11-28 11:25:13',0),(11,49,'2012-11-28 11:27:37',0),(12,53,'2012-11-28 11:30:40',0),(13,57,'2012-11-28 11:35:13',0),(14,61,'2012-11-28 11:41:41',0),(15,65,'2012-11-28 11:42:39',0),(16,69,'2012-11-28 11:44:11',0),(17,73,'2012-11-28 11:47:48',0),(18,77,'2012-11-28 11:49:34',0),(19,81,'2012-11-28 11:53:03',0),(20,85,'2012-11-28 11:54:22',0),(21,89,'2012-11-28 11:58:18',0),(22,93,'2012-12-06 10:18:33',141),(23,97,'2012-12-06 10:18:43',141),(24,101,'2012-12-06 10:18:51',135),(25,105,'2012-12-06 10:19:43',111),(26,109,'2012-12-06 10:20:09',108),(27,113,'2012-12-06 10:28:52',126),(28,117,'2012-12-06 11:04:12',231),(29,121,'2012-12-06 11:05:48',234),(30,125,'2012-12-06 11:06:51',234),(31,129,'2012-12-06 12:06:23',411),(32,133,'2012-12-06 15:08:25',957),(33,137,'2012-12-06 17:38:29',1404),(34,141,'2012-12-06 17:58:55',1464),(35,145,'2012-12-06 09:50:23',7584),(36,149,'2012-12-06 09:50:52',7584),(37,153,'2012-12-06 10:03:19',7485),(38,157,'2012-12-06 10:05:54',7443),(39,161,'2012-12-06 10:07:58',7446),(40,165,'2012-12-06 10:12:48',7443),(41,169,'2012-12-06 10:18:13',7455),(42,173,'2012-11-28 13:50:40',0),(43,177,'2012-11-28 13:51:25',0),(44,181,'2012-11-28 13:56:17',0),(45,185,'2012-11-28 13:57:06',0),(46,189,'2012-11-28 13:57:48',0),(47,193,'2012-11-28 13:59:10',0),(48,197,'2012-11-28 14:02:27',0),(49,201,'2012-11-28 14:04:33',0),(50,205,'2012-11-28 14:08:45',0),(51,209,'2012-11-28 14:10:08',0),(52,213,'2012-11-28 14:15:27',0),(53,217,'2012-11-28 14:16:26',0),(54,221,'2012-11-28 14:21:25',0),(55,225,'2012-11-28 14:22:39',0),(56,229,'2012-11-28 14:24:20',0),(57,233,'2012-11-28 14:24:38',0),(58,237,'2012-11-28 14:26:17',0),(59,241,'2012-11-28 14:26:40',0),(60,245,'2012-11-28 14:28:56',0),(61,249,'2012-11-28 14:29:15',0),(62,253,'2012-11-28 14:32:15',0),(63,257,'2012-11-28 14:35:43',0),(64,261,'2012-11-28 14:38:56',0),(65,265,'2012-11-28 14:43:28',0),(66,269,'2012-11-28 14:43:36',0),(67,273,'2012-11-28 14:49:40',0),(68,277,'2012-11-28 15:00:51',0),(69,281,'2012-11-28 15:02:21',0),(70,285,'2012-11-28 15:04:35',0),(71,289,'2012-11-28 15:04:46',0),(72,293,'2012-11-28 15:06:59',0),(73,297,'2012-11-28 15:12:16',0),(74,301,'2012-11-28 15:12:24',0),(75,305,'2012-11-28 15:18:10',0),(76,309,'2012-11-28 15:19:19',0),(77,313,'2012-11-28 15:19:57',0),(78,317,'2012-12-03 13:02:38',3),(79,321,'2012-11-28 15:23:38',0),(80,325,'2012-11-28 15:24:44',0),(81,329,'2012-11-28 15:26:17',0),(82,333,'2012-11-28 15:27:18',0),(83,337,'2012-11-28 15:28:46',0),(84,341,'2012-11-28 15:37:26',0),(85,345,'2012-11-28 15:43:37',0),(86,349,'2012-11-28 16:38:21',0),(87,0,'2012-11-28 16:39:01',0),(88,0,'2012-11-28 16:39:08',0),(89,0,'2012-11-28 16:39:37',0),(90,0,'2012-11-28 16:39:55',0),(91,0,'2012-11-28 16:42:28',0),(92,0,'2012-11-28 16:43:44',0),(93,0,'2012-11-28 16:45:30',0),(94,351,'2012-11-28 17:02:13',0),(95,356,'2012-11-28 17:09:01',0),(96,359,'2012-11-28 17:09:27',0),(97,361,'2012-11-28 17:11:43',0),(98,364,'2012-11-28 17:12:13',0),(99,366,'2012-11-28 17:14:57',0),(100,369,'2012-11-28 17:15:42',0),(101,371,'2012-11-28 17:19:28',0),(102,376,'2012-11-28 17:24:50',0),(103,380,'2012-11-28 17:34:04',0),(104,384,'2012-11-28 17:35:39',0),(105,388,'2012-11-28 17:38:48',0),(106,392,'2012-11-28 17:50:49',0),(107,396,'2012-11-28 17:52:15',0),(108,400,'2012-11-28 17:54:15',0),(109,404,'2012-11-28 17:55:49',0),(110,408,'2012-11-28 18:00:06',0),(111,411,'2012-11-28 18:01:12',0),(112,413,'2012-11-28 18:01:33',0),(113,416,'2012-11-28 18:02:00',0),(114,418,'2012-11-28 18:11:03',0),(115,422,'2012-11-28 18:12:29',0),(116,425,'2012-11-28 18:12:42',0),(117,427,'2012-11-28 19:37:12',0),(118,430,'2012-11-28 19:38:18',0),(119,432,'2012-11-28 19:39:01',0),(120,435,'2012-11-28 19:40:40',0),(121,437,'2012-11-28 19:44:30',0),(122,440,'2012-11-28 19:45:23',0),(123,442,'2012-11-28 19:46:39',0),(124,445,'2012-11-28 19:48:18',0),(125,447,'2012-11-28 20:01:57',0),(126,451,'2012-11-28 20:10:32',0),(127,455,'2012-11-28 20:13:13',0),(128,459,'2012-11-28 20:15:41',0),(129,463,'2012-11-28 20:18:46',0),(130,466,'2012-11-28 20:19:49',0),(131,468,'2012-11-28 20:26:57',0),(132,471,'2012-11-28 20:27:46',0),(133,473,'2012-11-28 20:27:50',0),(134,476,'2012-11-28 20:28:36',0),(135,478,'2012-11-28 20:29:45',0),(136,481,'2012-11-28 20:30:28',0),(137,483,'2012-11-28 20:31:07',0),(138,486,'2012-11-28 20:31:51',0),(139,488,'2012-11-29 09:26:02',0),(140,491,'2012-11-29 09:27:12',0),(141,493,'2012-11-29 09:30:01',0),(142,496,'2012-11-29 09:31:15',0),(143,498,'2012-11-29 09:31:39',0),(144,501,'2012-11-29 09:32:52',0),(145,503,'2012-11-29 09:48:18',0),(146,507,'2012-11-29 09:51:57',0),(147,510,'2012-11-29 09:53:02',0),(148,512,'2012-11-29 10:03:19',0),(149,515,'2012-11-29 10:04:30',0),(150,517,'2012-11-29 11:05:24',0),(151,521,'2012-11-29 11:06:05',0),(152,525,'2012-11-29 11:08:11',0),(153,529,'2012-11-29 11:12:08',0),(154,532,'2012-11-29 11:27:28',0),(155,534,'2012-11-29 11:28:34',0),(156,538,'2012-11-29 11:30:52',0),(157,542,'2012-11-29 11:35:51',0),(158,546,'2012-11-30 11:36:26',6),(159,549,'2012-11-30 11:36:26',6),(160,550,'2012-11-30 11:36:26',6),(161,552,'2012-11-30 11:36:26',6),(162,554,'2012-11-30 11:36:26',6),(163,558,'2012-12-04 13:33:55',0),(164,564,'2012-12-04 13:39:46',0),(165,572,'2012-12-05 19:44:21',0);
/*!40000 ALTER TABLE `bw_mine_collector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_mine_collector_all`
--

DROP TABLE IF EXISTS `bw_mine_collector_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_mine_collector_all` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_building_data_id` bigint(20) NOT NULL COMMENT '用户建筑数据表的ID',
  `collect_count` bigint(20) NOT NULL COMMENT '收集到的金币/或者药水的数量，对大厅来说存储的是金币数量',
  `second_elixir_count` bigint(20) DEFAULT '0' COMMENT '此字段只供大厅用来存储药水数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='金币和药水收集的总数 表,以及大厅的金币，药水存储表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_mine_collector_all`
--

LOCK TABLES `bw_mine_collector_all` WRITE;
/*!40000 ALTER TABLE `bw_mine_collector_all` DISABLE KEYS */;
INSERT INTO `bw_mine_collector_all` VALUES (1,5,515,5),(2,8,532,8),(3,13,549,13),(4,20,550,20),(5,100,546,100),(6,100,549,100),(7,100,550,100),(8,100,552,100),(9,100,317,100),(10,100,549,100),(11,100,550,100),(12,100,552,100),(13,100,554,100),(14,100,317,100),(15,0,560,0),(16,0,561,0),(17,100,549,100),(18,100,550,100),(19,100,558,100),(20,100,554,100),(21,100,552,100),(22,100,546,100),(23,100,558,100),(24,100,317,100),(25,100,550,100),(26,100,558,100),(27,100,317,100),(28,100,549,100),(29,100,554,100),(30,100,550,100),(31,100,552,100),(32,100,546,100),(33,100,317,100),(34,100,558,100),(35,100,558,100),(36,100,317,100),(37,100,546,100),(38,100,552,100),(39,100,564,100),(40,100,550,100),(41,100,549,100),(42,100,554,100),(43,0,570,0),(44,100,564,100);
/*!40000 ALTER TABLE `bw_mine_collector_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_spell`
--

DROP TABLE IF EXISTS `bw_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_spell` (
  `id` int(11) NOT NULL,
  `user_map_data_id` bigint(20) DEFAULT NULL,
  `spell_type_id` mediumint(9) DEFAULT NULL COMMENT '魔法类型ID',
  `spell_level` mediumint(9) DEFAULT NULL,
  `spell_count` mediumint(9) DEFAULT NULL,
  `spell_create_start_time` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `spell_status` tinyint(1) DEFAULT NULL COMMENT '0 未停造 1 停造',
  `spell_create_end_time` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '魔法创建结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户魔法建筑，生成魔法情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_spell`
--

LOCK TABLES `bw_spell` WRITE;
/*!40000 ALTER TABLE `bw_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user`
--

DROP TABLE IF EXISTS `bw_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user` (
  `golden_count` bigint(20) NOT NULL DEFAULT '0' COMMENT '金币数量',
  `elixir_count` bigint(20) NOT NULL DEFAULT '0' COMMENT '药水数量',
  `pvp_mark` bigint(20) NOT NULL DEFAULT '0' COMMENT 'pvp 分数',
  `exp` bigint(20) DEFAULT '1',
  `level` smallint(6) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `nick_name` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '用户昵称',
  `mail_address` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'mail地址，或者mac地址',
  `last_login_time` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '最好一次登录时间',
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键自动增长ID',
  `shield_end_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `battle_status` tinyint(1) DEFAULT '0' COMMENT '0正常 1需要有全部建筑的回复动画',
  `mac_address` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `worker_count` tinyint(1) DEFAULT '0' COMMENT '农民数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bw_user_mailAddress` (`mail_address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user`
--

LOCK TABLES `bw_user` WRITE;
/*!40000 ALTER TABLE `bw_user` DISABLE KEYS */;
INSERT INTO `bw_user` VALUES (1000000,100000,1,1,1,'good','test@163.com','2012-11-6 10:10:10',1,NULL,0,NULL,0),(1000000,100000,1,1,1,'bad','wang_ning@163.com','2012-11-6 10:10:10',2,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','fjdskjalfs','2012-11-27 10:07:13',4,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfs','2012-11-28 10:00:10',5,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfss','2012-11-28 10:20:44',6,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfsss','2012-11-28 10:27:54',7,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfssss','2012-11-28 10:30:16',8,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfsssss','2012-11-28 10:37:27',9,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalfssssss','2012-11-28 10:53:44',10,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf1','2012-11-28 10:54:47',11,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf11','2012-11-28 10:56:26',12,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf111','2012-11-28 11:25:13',13,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf1111','2012-11-28 11:27:37',14,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf11111','2012-11-28 11:30:40',15,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf111111','2012-11-28 11:35:13',16,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf1111111','2012-11-28 11:41:41',17,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf11111111','2012-11-28 11:42:39',18,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf111111111','2012-11-28 11:44:11',19,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf1111111111','2012-11-28 11:47:48',20,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf11111111111','2012-11-28 11:49:34',21,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf111111111111','2012-11-28 11:53:03',22,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf1111111111111','2012-11-28 11:54:22',23,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wnfjdskjalf11111111111111','2012-11-28 11:58:18',24,NULL,0,NULL,0),(999949,99949,-61,0,0,'player','test_0000001','2012-11-28 12:03:01',25,NULL,0,NULL,0),(999969,99969,-21,0,0,'player','test_0000002','2012-11-28 12:05:45',26,NULL,0,NULL,0),(999980,99980,0,0,0,'player','test_0000003','2012-11-28 12:09:01',27,NULL,0,NULL,0),(999979,99979,-21,0,0,'player','test_0000004','2012-11-28 12:12:26',28,NULL,0,NULL,0),(999989,99989,-21,0,0,'player','test_0000005','2012-11-28 12:16:38',29,NULL,0,NULL,0),(999990,99990,0,0,0,'player','test_0000006','2012-11-28 12:18:35',30,NULL,0,NULL,0),(989990,89990,-20,0,0,'player','test_0000007','2012-11-28 12:19:38',31,NULL,0,NULL,0),(999980,99980,0,0,0,'player','test_0000008','2012-11-28 12:21:07',32,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000009','2012-11-28 12:21:49',33,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000010','2012-11-28 12:23:01',34,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000011','2012-11-28 12:23:37',35,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000012','2012-11-28 12:24:47',36,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000013','2012-11-28 12:26:42',37,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000014','2012-11-28 12:28:41',38,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000015','2012-11-28 12:29:21',39,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000016','2012-11-28 12:30:03',40,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000017','2012-11-28 12:31:42',41,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000018','2012-11-28 12:32:52',42,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000019','2012-11-28 12:33:32',43,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','test_0000020','2012-11-28 13:06:01',44,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000000','2012-11-28 13:50:40',45,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000001','2012-11-28 13:51:25',46,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000002','2012-11-28 13:56:17',47,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000003','2012-11-28 13:57:06',48,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000004','2012-11-28 13:57:48',49,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000005','2012-11-28 13:59:10',50,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000006','2012-11-28 14:02:27',51,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000006','2012-11-28 14:04:33',52,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000007','2012-11-28 14:08:45',53,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000008','2012-11-28 14:10:08',54,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000009','2012-11-28 14:15:27',55,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000010','2012-11-28 14:16:26',56,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000012','2012-11-28 14:21:25',57,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000011','2012-11-28 14:22:39',58,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000013','2012-11-28 14:24:20',59,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000012','2012-11-28 14:24:38',60,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000013','2012-11-28 14:26:17',61,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000014','2012-11-28 14:26:40',62,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000015','2012-11-28 14:28:56',63,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000015','2012-11-28 14:29:15',64,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000016','2012-11-28 14:32:15',65,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000017','2012-11-28 14:35:43',66,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000017','2012-11-28 14:38:56',67,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000018','2012-11-28 14:43:28',68,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000018','2012-11-28 14:43:36',69,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000020','2012-11-28 14:49:40',70,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000022','2012-11-28 15:00:51',71,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000023','2012-11-28 15:02:21',72,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000021','2012-11-28 15:04:35',73,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000024','2012-11-28 15:04:46',74,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000025','2012-11-28 15:06:59',75,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000022','2012-11-28 15:12:16',76,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_000026','2012-11-28 15:12:24',77,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000023','2012-11-28 15:18:10',78,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','wn_00000022','2012-11-28 15:19:19',79,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000024','2012-11-28 15:19:57',80,NULL,0,NULL,0),(1006664,571830,24,0,0,'player','wn_0000001000','2012-11-28 15:22:16',81,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000025','2012-11-28 15:23:38',82,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000026','2012-11-28 15:24:44',83,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000027','2012-11-28 15:26:17',84,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000028','2012-11-28 15:27:18',85,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000029','2012-11-28 15:28:46',86,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000030','2012-11-28 15:37:26',87,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000031','2012-11-28 15:43:37',88,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000035','2012-11-28 17:02:13',89,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000036','2012-11-28 17:09:01',90,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000037','2012-11-28 17:11:43',91,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000039','2012-11-28 17:14:57',92,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_0000391','2012-11-28 17:19:28',93,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000040','2012-11-28 17:24:50',94,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000041','2012-11-28 17:34:04',95,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000042','2012-11-28 17:35:38',96,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000043','2012-11-28 17:38:48',97,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000045','2012-11-28 17:50:49',98,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000046','2012-11-28 17:52:15',99,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000047','2012-11-28 17:54:15',100,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000048','2012-11-28 17:55:49',101,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000049','2012-11-28 18:00:06',102,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000050','2012-11-28 18:01:33',103,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000051','2012-11-28 18:11:03',104,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000052','2012-11-28 18:12:29',105,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000053','2012-11-28 19:37:12',106,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000054','2012-11-28 19:39:01',107,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000055','2012-11-28 19:44:29',108,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000056','2012-11-28 19:46:39',109,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000057','2012-11-28 20:01:57',110,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000058','2012-11-28 20:10:32',111,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000059','2012-11-28 20:13:13',112,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000060','2012-11-28 20:15:41',113,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000061','2012-11-28 20:18:46',114,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000062','2012-11-28 20:26:57',115,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000063','2012-11-28 20:27:50',116,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000065','2012-11-28 20:29:45',117,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000066','2012-11-28 20:31:07',118,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000067','2012-11-29 09:26:00',119,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000068','2012-11-29 09:30:01',120,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000069','2012-11-29 09:31:39',121,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000070','2012-11-29 09:48:18',122,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000071','2012-11-29 09:51:57',123,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000072','2012-11-29 10:03:19',124,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000073','2012-11-29 11:05:24',125,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000074','2012-11-29 11:06:05',126,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000075','2012-11-29 11:08:11',127,NULL,0,NULL,0),(1000000,100000,0,0,0,'player','dk_000076','2012-11-29 11:12:08',128,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000077','2012-11-29 11:28:33',129,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000078','2012-11-29 11:30:52',130,NULL,0,NULL,0),(1000000,100000,0,0,1,'player','dk_000079','2012-11-29 11:35:51',131,NULL,0,NULL,0),(570,-3362,0,0,0,'player','dk_000080','2012-11-29 12:00:32',132,NULL,0,NULL,2),(99660,100010,0,0,0,'player','wn_00000010000','2012-12-04 13:39:45',133,NULL,0,NULL,0),(730,750,0,0,1,'player','wn_000000100000','2012-12-05 19:44:19',134,NULL,0,NULL,0);
/*!40000 ALTER TABLE `bw_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_battle_statistics`
--

DROP TABLE IF EXISTS `bw_user_battle_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_battle_statistics` (
  `mail_address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `clans_id` bigint(20) DEFAULT NULL COMMENT '工会ID',
  `win_times` bigint(20) DEFAULT '0' COMMENT '胜利次数',
  `fail_times` bigint(20) DEFAULT '0' COMMENT '失败次数',
  `get_golden_count` bigint(20) DEFAULT '0' COMMENT '获取总共金币的数量',
  `get_elixir_count` bigint(20) DEFAULT '0' COMMENT '获取总共药水的数量',
  `max_pvp_mark` bigint(20) DEFAULT '0' COMMENT '最大pvp分数',
  PRIMARY KEY (`mail_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户战斗统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_battle_statistics`
--

LOCK TABLES `bw_user_battle_statistics` WRITE;
/*!40000 ALTER TABLE `bw_user_battle_statistics` DISABLE KEYS */;
INSERT INTO `bw_user_battle_statistics` VALUES ('dk_000006',0,0,0,0,0,0),('dk_000007',0,0,0,0,0,0),('dk_000008',0,0,0,0,0,0),('dk_000009',0,0,0,0,0,0),('dk_000010',0,0,0,0,0,0),('dk_000012',0,0,0,0,0,0),('dk_000013',0,0,0,0,0,0),('dk_000015',0,0,0,0,0,0),('dk_000016',0,0,0,0,0,0),('dk_000017',0,0,0,0,0,0),('dk_000018',0,0,0,0,0,0),('dk_000020',0,0,0,0,0,0),('dk_000021',0,0,0,0,0,0),('dk_000022',0,0,0,0,0,0),('dk_000023',0,0,0,0,0,0),('dk_000024',0,0,0,0,0,0),('dk_000025',0,0,0,0,0,0),('dk_000026',0,0,0,0,0,0),('dk_000027',0,0,0,0,0,0),('dk_000028',0,0,0,0,0,0),('dk_000029',0,0,0,0,0,0),('dk_000030',0,0,0,0,0,0),('dk_000031',0,0,0,0,0,0),('dk_000035',0,0,0,0,0,0),('dk_000036',0,0,0,0,0,0),('dk_000037',0,0,0,0,0,0),('dk_000039',0,0,0,0,0,0),('dk_0000391',0,0,0,0,0,0),('dk_000040',0,0,0,0,0,0),('dk_000041',0,0,0,0,0,0),('dk_000042',0,0,0,0,0,0),('dk_000043',0,0,0,0,0,0),('dk_000045',0,0,0,0,0,0),('dk_000046',0,0,0,0,0,0),('dk_000047',0,0,0,0,0,0),('dk_000048',0,0,0,0,0,0),('dk_000049',0,0,0,0,0,0),('dk_000050',0,0,0,0,0,0),('dk_000051',0,0,0,0,0,0),('dk_000052',0,0,0,0,0,0),('dk_000053',0,0,0,0,0,0),('dk_000054',0,0,0,0,0,0),('dk_000055',0,0,0,0,0,0),('dk_000056',0,0,0,0,0,0),('dk_000057',0,0,0,0,0,0),('dk_000058',0,0,0,0,0,0),('dk_000059',0,0,0,0,0,0),('dk_000060',0,0,0,0,0,0),('dk_000061',0,0,0,0,0,0),('dk_000062',0,0,0,0,0,0),('dk_000063',0,0,0,0,0,0),('dk_000065',0,0,0,0,0,0),('dk_000066',0,0,0,0,0,0),('dk_000067',0,0,0,0,0,0),('dk_000068',0,0,0,0,0,0),('dk_000069',0,0,0,0,0,0),('dk_000070',0,0,0,0,0,0),('dk_000071',0,0,0,0,0,0),('dk_000072',0,0,0,0,0,0),('dk_000073',0,0,0,0,0,0),('dk_000074',0,0,0,0,0,0),('dk_000075',0,0,0,0,0,0),('dk_000076',0,0,0,0,0,0),('dk_000077',0,0,0,0,0,0),('dk_000078',0,0,0,0,0,0),('dk_000079',0,0,0,0,0,0),('dk_000080',0,0,0,0,0,0),('fjdskjalfs',0,0,0,0,0,0),('test_0000001',0,0,0,0,0,0),('test_0000002',0,0,0,0,0,0),('test_0000003',0,0,0,0,0,0),('test_0000004',0,0,0,0,0,0),('test_0000005',0,0,0,0,0,0),('test_0000006',0,0,0,0,0,0),('test_0000007',0,0,0,0,0,0),('test_0000008',0,0,0,0,0,0),('test_0000009',0,0,0,0,0,0),('test_0000010',0,0,0,0,0,0),('test_0000011',0,0,0,0,0,0),('test_0000012',0,0,0,0,0,0),('test_0000013',0,0,0,0,0,0),('test_0000014',0,0,0,0,0,0),('test_0000015',0,0,0,0,0,0),('test_0000016',0,0,0,0,0,0),('test_0000017',0,0,0,0,0,0),('test_0000018',0,0,0,0,0,0),('test_0000019',0,0,0,0,0,0),('test_0000020',0,0,0,0,0,0),('wnfjdskjalf1',0,0,0,0,0,0),('wnfjdskjalf11',0,0,0,0,0,0),('wnfjdskjalf111',0,0,0,0,0,0),('wnfjdskjalf1111',0,0,0,0,0,0),('wnfjdskjalf11111',0,0,0,0,0,0),('wnfjdskjalf111111',0,0,0,0,0,0),('wnfjdskjalf1111111',0,0,0,0,0,0),('wnfjdskjalf11111111',0,0,0,0,0,0),('wnfjdskjalf111111111',0,0,0,0,0,0),('wnfjdskjalf1111111111',0,0,0,0,0,0),('wnfjdskjalf11111111111',0,0,0,0,0,0),('wnfjdskjalf111111111111',0,0,0,0,0,0),('wnfjdskjalf1111111111111',0,0,0,0,0,0),('wnfjdskjalf11111111111111',0,0,0,0,0,0),('wnfjdskjalfs',0,0,0,0,0,0),('wnfjdskjalfss',0,0,0,0,0,0),('wnfjdskjalfsss',0,0,0,0,0,0),('wnfjdskjalfssss',0,0,0,0,0,0),('wnfjdskjalfsssss',0,0,0,0,0,0),('wnfjdskjalfssssss',0,0,0,0,0,0),('wn_000000',0,0,0,0,0,0),('wn_0000001000',0,0,0,0,0,0),('wn_00000010000',0,0,0,0,0,0),('wn_000000100000',0,0,0,0,0,0),('wn_00000022',0,0,0,0,0,0),('wn_000001',0,0,0,0,0,0),('wn_000002',0,0,0,0,0,0),('wn_000003',0,0,0,0,0,0),('wn_000004',0,0,0,0,0,0),('wn_000005',0,0,0,0,0,0),('wn_000006',0,0,0,0,0,0),('wn_000011',0,0,0,0,0,0),('wn_000012',0,0,0,0,0,0),('wn_000013',0,0,0,0,0,0),('wn_000014',0,0,0,0,0,0),('wn_000015',0,0,0,0,0,0),('wn_000017',0,0,0,0,0,0),('wn_000018',0,0,0,0,0,0),('wn_000022',0,0,0,0,0,0),('wn_000023',0,0,0,0,0,0),('wn_000024',0,0,0,0,0,0),('wn_000025',0,0,0,0,0,0),('wn_000026',0,0,0,0,0,0);
/*!40000 ALTER TABLE `bw_user_battle_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_character`
--

DROP TABLE IF EXISTS `bw_user_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_character` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mail_address` varchar(40) CHARACTER SET utf8 NOT NULL,
  `chararchter_id` mediumint(9) NOT NULL COMMENT '兵ID\\\\n',
  `character_level` mediumint(9) NOT NULL COMMENT '兵等级',
  `upgrade_character_finish_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '兵种升级完成时间(用于实验室升级用)',
  `character_count` mediumint(9) DEFAULT '0' COMMENT '士兵数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mailAddressAndCharacterId` (`mail_address`,`chararchter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户兵种表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_character`
--

LOCK TABLES `bw_user_character` WRITE;
/*!40000 ALTER TABLE `bw_user_character` DISABLE KEYS */;
INSERT INTO `bw_user_character` VALUES (9,'dk_000080',1,1,'',119),(10,'wn_0000001000',1,1,'',185),(11,'wn_00000010000',0,1,'',0),(12,'wn_00000010000',1,1,'',6);
/*!40000 ALTER TABLE `bw_user_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_friends`
--

DROP TABLE IF EXISTS `bw_user_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `friend_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_friends`
--

LOCK TABLES `bw_user_friends` WRITE;
/*!40000 ALTER TABLE `bw_user_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_user_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_map_data`
--

DROP TABLE IF EXISTS `bw_user_map_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_map_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '用户_id',
  `status` smallint(6) NOT NULL COMMENT '土地状态 0未被占用 1被占用',
  `map_index_x` mediumint(9) NOT NULL COMMENT '所在格子的x',
  `uniqueness_build_id` bigint(20) DEFAULT '0' COMMENT '唯一性建筑ID',
  `build_id` mediumint(9) DEFAULT NULL COMMENT '建筑ID',
  `build_level` mediumint(9) DEFAULT NULL,
  `upgrade_finish_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '建筑升级完成时间',
  `map_index_y` mediumint(9) DEFAULT '0' COMMENT '格子的Y坐标',
  `delete_flag` tinyint(1) DEFAULT '0' COMMENT '0 未删除 1删除',
  `bw_user_map_datacol` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mailAndUniquenessId` (`uniqueness_build_id`,`mail_address`,`build_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户地图数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_map_data`
--

LOCK TABLES `bw_user_map_data` WRITE;
/*!40000 ALTER TABLE `bw_user_map_data` DISABLE KEYS */;
INSERT INTO `bw_user_map_data` VALUES (1,'test@163.com',1,10,12,100,1,NULL,10,0,NULL),(2,'wang_ning@163.com',1,10,12,100,1,NULL,10,0,NULL),(3,'test@163.com',1,25,13,304,1,NULL,25,0,NULL),(4,'test@163.com',1,20,100,100,1,'',20,0,NULL),(5,'test@163.com',1,20,101,100,1,'',20,0,NULL),(8,'fjdskjalfs',1,20,1,100,1,'',20,0,NULL),(9,'fjdskjalfs',1,30,2,202,1,'',30,0,NULL),(10,'fjdskjalfs',1,15,3,1,1,'',15,0,NULL),(11,'fjdskjalfs',1,25,4,304,1,'',25,0,NULL),(12,'wnfjdskjalfs',1,20,1,100,1,'',20,0,NULL),(13,'wnfjdskjalfs',1,30,2,202,1,'',30,0,NULL),(14,'wnfjdskjalfs',1,15,3,1,1,'',15,0,NULL),(15,'wnfjdskjalfs',1,25,4,304,1,'',25,0,NULL),(16,'wnfjdskjalfss',1,20,1,100,1,'',20,0,NULL),(17,'wnfjdskjalfss',1,30,2,202,1,'',30,0,NULL),(18,'wnfjdskjalfss',1,15,3,1,1,'',15,0,NULL),(19,'wnfjdskjalfss',1,25,4,304,1,'',25,0,NULL),(20,'wnfjdskjalfsss',1,20,1,100,1,'',20,0,NULL),(21,'wnfjdskjalfsss',1,30,2,202,1,'',30,0,NULL),(22,'wnfjdskjalfsss',1,15,3,1,1,'',15,0,NULL),(23,'wnfjdskjalfsss',1,25,4,304,1,'',25,0,NULL),(24,'wnfjdskjalfssss',1,20,1,100,1,'',20,0,NULL),(25,'wnfjdskjalfssss',1,30,2,202,1,'',30,0,NULL),(26,'wnfjdskjalfssss',1,15,3,1,1,'',15,0,NULL),(27,'wnfjdskjalfssss',1,25,4,304,1,'',25,0,NULL),(28,'wnfjdskjalfsssss',1,20,1,100,1,'',20,0,NULL),(29,'wnfjdskjalfsssss',1,30,2,202,1,'',30,0,NULL),(30,'wnfjdskjalfsssss',1,15,3,1,1,'',15,0,NULL),(31,'wnfjdskjalfsssss',1,25,4,304,1,'',25,0,NULL),(32,'wnfjdskjalfssssss',1,20,1,100,1,'',20,0,NULL),(33,'wnfjdskjalfssssss',1,30,2,202,1,'',30,0,NULL),(34,'wnfjdskjalfssssss',1,15,3,1,1,'',15,0,NULL),(35,'wnfjdskjalfssssss',1,25,4,304,1,'',25,0,NULL),(36,'wnfjdskjalf1',1,20,1,100,1,'',20,0,NULL),(37,'wnfjdskjalf1',1,30,2,202,1,'',30,0,NULL),(38,'wnfjdskjalf1',1,15,3,1,1,'',15,0,NULL),(39,'wnfjdskjalf1',1,25,4,304,1,'',25,0,NULL),(40,'wnfjdskjalf11',1,20,1,100,1,'',20,0,NULL),(41,'wnfjdskjalf11',1,30,2,202,1,'',30,0,NULL),(42,'wnfjdskjalf11',1,15,3,1,1,'',15,0,NULL),(43,'wnfjdskjalf11',1,25,4,304,1,'',25,0,NULL),(44,'wnfjdskjalf111',1,20,1,100,1,'',20,0,NULL),(45,'wnfjdskjalf111',1,30,2,202,1,'',30,0,NULL),(46,'wnfjdskjalf111',1,15,3,1,1,'',15,0,NULL),(47,'wnfjdskjalf111',1,25,4,304,1,'',25,0,NULL),(48,'wnfjdskjalf1111',1,20,1,100,1,'',20,0,NULL),(49,'wnfjdskjalf1111',1,30,2,202,1,'',30,0,NULL),(50,'wnfjdskjalf1111',1,15,3,1,1,'',15,0,NULL),(51,'wnfjdskjalf1111',1,25,4,304,1,'',25,0,NULL),(52,'wnfjdskjalf11111',1,20,1,100,1,'',20,0,NULL),(53,'wnfjdskjalf11111',1,30,2,202,1,'',30,0,NULL),(54,'wnfjdskjalf11111',1,15,3,1,1,'',15,0,NULL),(55,'wnfjdskjalf11111',1,25,4,304,1,'',25,0,NULL),(56,'wnfjdskjalf111111',1,20,1,100,1,'',20,0,NULL),(57,'wnfjdskjalf111111',1,30,2,202,1,'',30,0,NULL),(58,'wnfjdskjalf111111',1,15,3,1,1,'',15,0,NULL),(59,'wnfjdskjalf111111',1,25,4,304,1,'',25,0,NULL),(60,'wnfjdskjalf1111111',1,20,1,100,1,'',20,0,NULL),(61,'wnfjdskjalf1111111',1,30,2,202,1,'',30,0,NULL),(62,'wnfjdskjalf1111111',1,15,3,1,1,'',15,0,NULL),(63,'wnfjdskjalf1111111',1,25,4,304,1,'',25,0,NULL),(64,'wnfjdskjalf11111111',1,20,1,100,1,'',20,0,NULL),(65,'wnfjdskjalf11111111',1,30,2,202,1,'',30,0,NULL),(66,'wnfjdskjalf11111111',1,15,3,1,1,'',15,0,NULL),(67,'wnfjdskjalf11111111',1,25,4,304,1,'',25,0,NULL),(68,'wnfjdskjalf111111111',1,20,1,100,1,'',20,0,NULL),(69,'wnfjdskjalf111111111',1,30,2,202,1,'',30,0,NULL),(70,'wnfjdskjalf111111111',1,15,3,1,1,'',15,0,NULL),(71,'wnfjdskjalf111111111',1,25,4,304,1,'',25,0,NULL),(72,'wnfjdskjalf1111111111',1,20,1,100,1,'',20,0,NULL),(73,'wnfjdskjalf1111111111',1,30,2,202,1,'',30,0,NULL),(74,'wnfjdskjalf1111111111',1,15,3,1,1,'',15,0,NULL),(75,'wnfjdskjalf1111111111',1,25,4,304,1,'',25,0,NULL),(76,'wnfjdskjalf11111111111',1,20,1,100,1,'',20,0,NULL),(77,'wnfjdskjalf11111111111',1,30,2,202,1,'',30,0,NULL),(78,'wnfjdskjalf11111111111',1,15,3,1,1,'',15,0,NULL),(79,'wnfjdskjalf11111111111',1,25,4,304,1,'',25,0,NULL),(80,'wnfjdskjalf111111111111',1,20,1,100,1,'',20,0,NULL),(81,'wnfjdskjalf111111111111',1,30,2,202,1,'',30,0,NULL),(82,'wnfjdskjalf111111111111',1,15,3,1,1,'',15,0,NULL),(83,'wnfjdskjalf111111111111',1,25,4,304,1,'',25,0,NULL),(84,'wnfjdskjalf1111111111111',1,20,1,100,1,'',20,0,NULL),(85,'wnfjdskjalf1111111111111',1,30,2,202,1,'',30,0,NULL),(86,'wnfjdskjalf1111111111111',1,15,3,1,1,'',15,0,NULL),(87,'wnfjdskjalf1111111111111',1,25,4,304,1,'',25,0,NULL),(88,'wnfjdskjalf11111111111111',1,20,1,100,1,'',20,0,NULL),(89,'wnfjdskjalf11111111111111',1,30,2,202,1,'',30,0,NULL),(90,'wnfjdskjalf11111111111111',1,15,3,1,1,'',15,0,NULL),(91,'wnfjdskjalf11111111111111',1,25,4,304,1,'',25,0,NULL),(92,'test_0000001',1,20,1,100,1,'',20,0,NULL),(93,'test_0000001',1,30,2,202,1,'',8,0,NULL),(94,'test_0000001',1,15,3,1,1,'',15,0,NULL),(95,'test_0000001',1,25,4,304,1,'',25,0,NULL),(96,'test_0000002',1,20,1,100,1,'',20,0,NULL),(97,'test_0000002',1,30,2,202,1,'',30,0,NULL),(98,'test_0000002',1,15,3,1,1,'',15,0,NULL),(99,'test_0000002',1,25,4,304,1,'',25,0,NULL),(100,'test_0000003',1,20,1,100,1,'',20,0,NULL),(101,'test_0000003',1,30,2,202,1,'',30,0,NULL),(102,'test_0000003',1,15,3,1,1,'',15,0,NULL),(103,'test_0000003',1,25,4,304,1,'',25,0,NULL),(104,'test_0000004',1,20,1,100,1,'',20,0,NULL),(105,'test_0000004',1,30,2,202,1,'',30,0,NULL),(106,'test_0000004',1,15,3,1,1,'',15,0,NULL),(107,'test_0000004',1,25,4,304,1,'',25,0,NULL),(108,'test_0000005',1,20,1,100,1,'',20,0,NULL),(109,'test_0000005',1,30,2,202,1,'',30,0,NULL),(110,'test_0000005',1,15,3,1,1,'',15,0,NULL),(111,'test_0000005',1,25,4,304,1,'',25,0,NULL),(112,'test_0000006',1,20,1,100,1,'',20,0,NULL),(113,'test_0000006',1,30,2,202,1,'',30,0,NULL),(114,'test_0000006',1,15,3,1,1,'',15,0,NULL),(115,'test_0000006',1,25,4,304,1,'',25,0,NULL),(116,'test_0000007',1,20,1,100,1,'',20,0,NULL),(117,'test_0000007',1,30,2,202,1,'',30,0,NULL),(118,'test_0000007',1,15,3,1,1,'',15,0,NULL),(119,'test_0000007',1,25,4,304,1,'',25,0,NULL),(120,'test_0000008',1,20,1,100,1,'',20,0,NULL),(121,'test_0000008',1,30,2,202,1,'',30,0,NULL),(122,'test_0000008',1,15,3,1,1,'',15,0,NULL),(123,'test_0000008',1,25,4,304,1,'',25,0,NULL),(124,'test_0000009',1,20,1,100,1,'',20,0,NULL),(125,'test_0000009',1,30,2,202,1,'',30,0,NULL),(126,'test_0000009',1,15,3,1,1,'',15,0,NULL),(127,'test_0000009',1,25,4,304,1,'',25,0,NULL),(128,'test_0000010',1,20,1,100,1,'',20,0,NULL),(129,'test_0000010',1,30,2,202,1,'',30,0,NULL),(130,'test_0000010',1,15,3,1,1,'',15,0,NULL),(131,'test_0000010',1,25,4,304,1,'',25,0,NULL),(132,'test_0000011',1,20,1,100,1,'',20,0,NULL),(133,'test_0000011',1,30,2,202,1,'',30,0,NULL),(134,'test_0000011',1,15,3,1,1,'',15,0,NULL),(135,'test_0000011',1,25,4,304,1,'',25,0,NULL),(136,'test_0000012',1,20,1,100,1,'',20,0,NULL),(137,'test_0000012',1,30,2,202,1,'',30,0,NULL),(138,'test_0000012',1,15,3,1,1,'',15,0,NULL),(139,'test_0000012',1,25,4,304,1,'',25,0,NULL),(140,'test_0000013',1,20,1,100,1,'',20,0,NULL),(141,'test_0000013',1,30,2,202,1,'',30,0,NULL),(142,'test_0000013',1,15,3,1,1,'',15,0,NULL),(143,'test_0000013',1,25,4,304,1,'',25,0,NULL),(144,'test_0000014',1,20,1,100,1,'',20,0,NULL),(145,'test_0000014',1,30,2,202,1,'',30,0,NULL),(146,'test_0000014',1,15,3,1,1,'',15,0,NULL),(147,'test_0000014',1,25,4,304,1,'',25,0,NULL),(148,'test_0000015',1,20,1,100,1,'',20,0,NULL),(149,'test_0000015',1,30,2,202,1,'',30,0,NULL),(150,'test_0000015',1,15,3,1,1,'',15,0,NULL),(151,'test_0000015',1,25,4,304,1,'',25,0,NULL),(152,'test_0000016',1,20,1,100,1,'',20,0,NULL),(153,'test_0000016',1,30,2,202,1,'',30,0,NULL),(154,'test_0000016',1,15,3,1,1,'',15,0,NULL),(155,'test_0000016',1,25,4,304,1,'',25,0,NULL),(156,'test_0000017',1,20,1,100,1,'',20,0,NULL),(157,'test_0000017',1,30,2,202,1,'',30,0,NULL),(158,'test_0000017',1,15,3,1,1,'',15,0,NULL),(159,'test_0000017',1,25,4,304,1,'',25,0,NULL),(160,'test_0000018',1,20,1,100,1,'',20,0,NULL),(161,'test_0000018',1,30,2,202,1,'',30,0,NULL),(162,'test_0000018',1,15,3,1,1,'',15,0,NULL),(163,'test_0000018',1,25,4,304,1,'',25,0,NULL),(164,'test_0000019',1,20,1,100,1,'',20,0,NULL),(165,'test_0000019',1,30,2,202,1,'',30,0,NULL),(166,'test_0000019',1,15,3,1,1,'',15,0,NULL),(167,'test_0000019',1,25,4,304,1,'',25,0,NULL),(168,'test_0000020',1,20,1,100,1,'',20,0,NULL),(169,'test_0000020',1,30,2,202,1,'',30,0,NULL),(170,'test_0000020',1,15,3,1,1,'',15,0,NULL),(171,'test_0000020',1,25,4,304,1,'',25,0,NULL),(172,'wn_000000',1,20,1,100,1,'',20,0,NULL),(173,'wn_000000',1,30,2,202,1,'',30,0,NULL),(174,'wn_000000',1,15,3,1,1,'',15,0,NULL),(175,'wn_000000',1,25,4,304,1,'',25,0,NULL),(176,'wn_000001',1,20,1,100,1,'',20,0,NULL),(177,'wn_000001',1,30,2,202,1,'',30,0,NULL),(178,'wn_000001',1,15,3,1,1,'',15,0,NULL),(179,'wn_000001',1,25,4,304,1,'',25,0,NULL),(180,'wn_000002',1,20,1,100,1,'',20,0,NULL),(181,'wn_000002',1,30,2,202,1,'',30,0,NULL),(182,'wn_000002',1,15,3,1,1,'',15,0,NULL),(183,'wn_000002',1,25,4,304,1,'',25,0,NULL),(184,'wn_000003',1,20,1,100,1,'',20,0,NULL),(185,'wn_000003',1,30,2,202,1,'',30,0,NULL),(186,'wn_000003',1,15,3,1,1,'',15,0,NULL),(187,'wn_000003',1,25,4,304,1,'',25,0,NULL),(188,'wn_000004',1,20,1,100,1,'',20,0,NULL),(189,'wn_000004',1,30,2,202,1,'',30,0,NULL),(190,'wn_000004',1,15,3,1,1,'',15,0,NULL),(191,'wn_000004',1,25,4,304,1,'',25,0,NULL),(192,'wn_000005',1,20,1,100,1,'',20,0,NULL),(193,'wn_000005',1,30,2,202,1,'',30,0,NULL),(194,'wn_000005',1,15,3,1,1,'',15,0,NULL),(195,'wn_000005',1,25,4,304,1,'',25,0,NULL),(196,'wn_000006',1,20,1,100,1,'',20,0,NULL),(197,'wn_000006',1,30,2,202,1,'',30,0,NULL),(198,'wn_000006',1,15,3,1,1,'',15,0,NULL),(199,'wn_000006',1,25,4,304,1,'',25,0,NULL),(200,'dk_000006',1,20,1,100,1,'',20,0,NULL),(201,'dk_000006',1,30,2,202,1,'',30,0,NULL),(202,'dk_000006',1,15,3,1,1,'',15,0,NULL),(203,'dk_000006',1,25,4,304,1,'',25,0,NULL),(204,'dk_000007',1,20,1,100,1,'',20,0,NULL),(205,'dk_000007',1,30,2,202,1,'',30,0,NULL),(206,'dk_000007',1,15,3,1,1,'',15,0,NULL),(207,'dk_000007',1,25,4,304,1,'',25,0,NULL),(208,'dk_000008',1,20,1,100,1,'',20,0,NULL),(209,'dk_000008',1,30,2,202,1,'',30,0,NULL),(210,'dk_000008',1,15,3,1,1,'',15,0,NULL),(211,'dk_000008',1,25,4,304,1,'',25,0,NULL),(212,'dk_000009',1,20,1,100,1,'',20,0,NULL),(213,'dk_000009',1,30,2,202,1,'',30,0,NULL),(214,'dk_000009',1,15,3,1,1,'',15,0,NULL),(215,'dk_000009',1,25,4,304,1,'',25,0,NULL),(216,'dk_000010',1,20,1,100,1,'',20,0,NULL),(217,'dk_000010',1,30,2,202,1,'',30,0,NULL),(218,'dk_000010',1,15,3,1,1,'',15,0,NULL),(219,'dk_000010',1,25,4,304,1,'',25,0,NULL),(220,'dk_000012',1,20,1,100,1,'',20,0,NULL),(221,'dk_000012',1,30,2,202,1,'',30,0,NULL),(222,'dk_000012',1,15,3,1,1,'',15,0,NULL),(223,'dk_000012',1,25,4,304,1,'',25,0,NULL),(224,'wn_000011',1,20,1,100,1,'',20,0,NULL),(225,'wn_000011',1,30,2,202,1,'',30,0,NULL),(226,'wn_000011',1,15,3,1,1,'',15,0,NULL),(227,'wn_000011',1,25,4,304,1,'',25,0,NULL),(228,'dk_000013',1,20,1,100,1,'',20,0,NULL),(229,'dk_000013',1,30,2,202,1,'',30,0,NULL),(230,'dk_000013',1,15,3,1,1,'',15,0,NULL),(231,'dk_000013',1,25,4,304,1,'',25,0,NULL),(232,'wn_000012',1,20,1,100,1,'',20,0,NULL),(233,'wn_000012',1,30,2,202,1,'',30,0,NULL),(234,'wn_000012',1,15,3,1,1,'',15,0,NULL),(235,'wn_000012',1,25,4,304,1,'',25,0,NULL),(236,'wn_000013',1,20,1,100,1,'',20,0,NULL),(237,'wn_000013',1,30,2,202,1,'',30,0,NULL),(238,'wn_000013',1,15,3,1,1,'',15,0,NULL),(239,'wn_000013',1,25,4,304,1,'',25,0,NULL),(240,'wn_000014',1,20,1,100,1,'',20,0,NULL),(241,'wn_000014',1,30,2,202,1,'',30,0,NULL),(242,'wn_000014',1,15,3,1,1,'',15,0,NULL),(243,'wn_000014',1,25,4,304,1,'',25,0,NULL),(244,'wn_000015',1,20,1,100,1,'',20,0,NULL),(245,'wn_000015',1,30,2,202,1,'',30,0,NULL),(246,'wn_000015',1,15,3,1,1,'',15,0,NULL),(247,'wn_000015',1,25,4,304,1,'',25,0,NULL),(248,'dk_000015',1,20,1,100,1,'',20,0,NULL),(249,'dk_000015',1,30,2,202,1,'',30,0,NULL),(250,'dk_000015',1,15,3,1,1,'',15,0,NULL),(251,'dk_000015',1,25,4,304,1,'',25,0,NULL),(252,'dk_000016',1,20,1,100,1,'',20,0,NULL),(253,'dk_000016',1,30,2,202,1,'',30,0,NULL),(254,'dk_000016',1,15,3,1,1,'',15,0,NULL),(255,'dk_000016',1,25,4,304,1,'',25,0,NULL),(256,'dk_000017',1,20,1,100,1,'',20,0,NULL),(257,'dk_000017',1,30,2,202,1,'',30,0,NULL),(258,'dk_000017',1,15,3,1,1,'',15,0,NULL),(259,'dk_000017',1,25,4,304,1,'',25,0,NULL),(260,'wn_000017',1,20,1,100,1,'',20,0,NULL),(261,'wn_000017',1,30,2,202,1,'',30,0,NULL),(262,'wn_000017',1,15,3,1,1,'',15,0,NULL),(263,'wn_000017',1,25,4,304,1,'',25,0,NULL),(264,'wn_000018',1,20,1,100,1,'',20,0,NULL),(265,'wn_000018',1,30,2,202,1,'',30,0,NULL),(266,'wn_000018',1,15,3,1,1,'',15,0,NULL),(267,'wn_000018',1,25,4,304,1,'',25,0,NULL),(268,'dk_000018',1,20,1,100,1,'',20,0,NULL),(269,'dk_000018',1,30,2,202,1,'',30,0,NULL),(270,'dk_000018',1,15,3,1,1,'',15,0,NULL),(271,'dk_000018',1,25,4,304,1,'',25,0,NULL),(272,'dk_000020',1,20,1,100,1,'',20,0,NULL),(273,'dk_000020',1,30,2,202,1,'',30,0,NULL),(274,'dk_000020',1,15,3,1,1,'',15,0,NULL),(275,'dk_000020',1,25,4,304,1,'',25,0,NULL),(276,'wn_000022',1,20,1,100,1,'',20,0,NULL),(277,'wn_000022',1,30,2,202,1,'',30,0,NULL),(278,'wn_000022',1,15,3,1,1,'',15,0,NULL),(279,'wn_000022',1,25,4,304,1,'',25,0,NULL),(280,'wn_000023',1,20,1,100,1,'',20,0,NULL),(281,'wn_000023',1,30,2,202,1,'',30,0,NULL),(282,'wn_000023',1,15,3,1,1,'',15,0,NULL),(283,'wn_000023',1,25,4,304,1,'',25,0,NULL),(284,'dk_000021',1,20,1,100,1,'',20,0,NULL),(285,'dk_000021',1,30,2,202,1,'',30,0,NULL),(286,'dk_000021',1,15,3,1,1,'',15,0,NULL),(287,'dk_000021',1,25,4,304,1,'',25,0,NULL),(288,'wn_000024',1,20,1,100,1,'',20,0,NULL),(289,'wn_000024',1,30,2,202,1,'',30,0,NULL),(290,'wn_000024',1,15,3,1,1,'',15,0,NULL),(291,'wn_000024',1,25,4,304,1,'',25,0,NULL),(292,'wn_000025',1,20,1,100,1,'',20,0,NULL),(293,'wn_000025',1,30,2,202,1,'',30,0,NULL),(294,'wn_000025',1,15,3,1,1,'',15,0,NULL),(295,'wn_000025',1,25,4,304,1,'',25,0,NULL),(296,'dk_000022',1,20,1,100,1,'',20,0,NULL),(297,'dk_000022',1,30,2,202,1,'',30,0,NULL),(298,'dk_000022',1,15,3,1,1,'',15,0,NULL),(299,'dk_000022',1,25,4,304,1,'',25,0,NULL),(300,'wn_000026',1,20,1,100,1,'',20,0,NULL),(301,'wn_000026',1,30,2,202,1,'',30,0,NULL),(302,'wn_000026',1,15,3,1,1,'',15,0,NULL),(303,'wn_000026',1,25,4,304,1,'',25,0,NULL),(304,'dk_000023',1,20,1,100,1,'',20,0,NULL),(305,'dk_000023',1,30,2,202,1,'',30,0,NULL),(306,'dk_000023',1,15,3,1,1,'',15,0,NULL),(307,'dk_000023',1,25,4,304,1,'',25,0,NULL),(308,'wn_00000022',1,20,1,100,1,'',20,0,NULL),(309,'wn_00000022',1,30,2,202,1,'',30,0,NULL),(310,'wn_00000022',1,15,3,1,1,'',15,0,NULL),(311,'wn_00000022',1,25,4,304,1,'',25,0,NULL),(312,'dk_000024',1,20,1,100,1,'',20,0,NULL),(313,'dk_000024',1,30,2,202,1,'',30,0,NULL),(314,'dk_000024',1,15,3,1,1,'',15,0,NULL),(315,'dk_000024',1,25,4,304,1,'',25,0,NULL),(316,'wn_0000001000',1,20,1,100,1,'',20,0,NULL),(317,'wn_0000001000',1,30,2,202,1,'',30,0,NULL),(318,'wn_0000001000',1,15,3,1,1,'',15,0,NULL),(319,'wn_0000001000',1,25,4,304,1,'',25,0,NULL),(320,'dk_000025',1,20,1,100,1,'',20,0,NULL),(321,'dk_000025',1,30,2,202,1,'',30,0,NULL),(322,'dk_000025',1,15,3,1,1,'',15,0,NULL),(323,'dk_000025',1,25,4,304,1,'',25,0,NULL),(324,'dk_000026',1,20,1,100,1,'',20,0,NULL),(325,'dk_000026',1,30,2,202,1,'',30,0,NULL),(326,'dk_000026',1,15,3,1,1,'',15,0,NULL),(327,'dk_000026',1,25,4,304,1,'',25,0,NULL),(328,'dk_000027',1,20,1,100,1,'',20,0,NULL),(329,'dk_000027',1,30,2,202,1,'',30,0,NULL),(330,'dk_000027',1,15,3,1,1,'',15,0,NULL),(331,'dk_000027',1,25,4,304,1,'',25,0,NULL),(332,'dk_000028',1,20,1,100,1,'',20,0,NULL),(333,'dk_000028',1,30,2,202,1,'',30,0,NULL),(334,'dk_000028',1,15,3,1,1,'',15,0,NULL),(335,'dk_000028',1,25,4,304,1,'',25,0,NULL),(336,'dk_000029',1,20,1,100,1,'',20,0,NULL),(337,'dk_000029',1,30,2,202,1,'',30,0,NULL),(338,'dk_000029',1,15,3,1,1,'',15,0,NULL),(339,'dk_000029',1,25,4,304,1,'',25,0,NULL),(340,'dk_000030',1,20,1,100,1,'',20,0,NULL),(341,'dk_000030',1,30,2,202,1,'',30,0,NULL),(342,'dk_000030',1,15,3,1,1,'',15,0,NULL),(343,'dk_000030',1,25,4,304,1,'',25,0,NULL),(344,'dk_000031',1,20,1,100,1,'',20,0,NULL),(345,'dk_000031',1,30,2,202,1,'',30,0,NULL),(346,'dk_000031',1,15,3,1,1,'',15,0,NULL),(347,'dk_000031',1,25,4,304,1,'',25,0,NULL),(348,'dk_000031',1,8,200,2,1,'2012-12-12 12:12:12',10,0,NULL),(349,'dk_000031',1,5,200,200,1,'2012-12-12 12:12:12',7,0,NULL),(350,'dk_000035',1,20,1,100,1,'',20,0,NULL),(351,'dk_000035',1,30,2,202,1,'',30,0,NULL),(352,'dk_000035',1,15,3,1,1,'',15,0,NULL),(353,'dk_000035',1,25,4,304,1,'',25,0,NULL),(354,'dk_000035',1,7,200,2,1,'2012-12-12 12:12:12',7,0,NULL),(355,'dk_000036',1,20,1,100,1,'',20,0,NULL),(356,'dk_000036',1,30,2,202,1,'',30,0,NULL),(357,'dk_000036',1,15,3,1,1,'',15,0,NULL),(358,'dk_000036',1,25,4,304,1,'',25,0,NULL),(359,'dk_000036',1,6,200,200,1,'2012-12-12 12:12:12',7,0,NULL),(360,'dk_000037',1,20,1,100,1,'',20,0,NULL),(361,'dk_000037',1,30,2,202,1,'',30,0,NULL),(362,'dk_000037',1,15,3,1,1,'',15,0,NULL),(363,'dk_000037',1,25,4,304,1,'',25,0,NULL),(364,'dk_000037',1,5,200,200,1,'2012-12-12 12:12:12',8,0,NULL),(365,'dk_000039',1,20,1,100,1,'',20,0,NULL),(366,'dk_000039',1,30,2,202,1,'',30,0,NULL),(367,'dk_000039',1,15,3,1,1,'',15,0,NULL),(368,'dk_000039',1,25,4,304,1,'',25,0,NULL),(369,'dk_000039',1,7,200,200,1,'2012-12-12 12:12:12',0,0,NULL),(370,'dk_0000391',1,20,1,100,1,'',20,0,NULL),(371,'dk_0000391',1,30,2,202,1,'',30,0,NULL),(372,'dk_0000391',1,15,3,1,1,'',15,0,NULL),(373,'dk_0000391',1,25,4,304,1,'',25,0,NULL),(374,'dk_0000391',1,9,200,2,1,'2012-12-12 12:12:12',7,0,NULL),(375,'dk_000040',1,20,1,100,1,'',20,0,NULL),(376,'dk_000040',1,30,2,202,1,'',30,0,NULL),(377,'dk_000040',1,15,3,1,1,'',15,0,NULL),(378,'dk_000040',1,25,4,304,1,'',25,0,NULL),(379,'dk_000041',1,20,1,100,1,'',20,0,NULL),(380,'dk_000041',1,30,2,202,1,'',30,0,NULL),(381,'dk_000041',1,15,3,1,1,'',15,0,NULL),(382,'dk_000041',1,25,4,304,1,'',25,0,NULL),(383,'dk_000042',1,20,1,100,1,'',20,0,NULL),(384,'dk_000042',1,30,2,202,1,'',30,0,NULL),(385,'dk_000042',1,15,3,1,1,'',15,0,NULL),(386,'dk_000042',1,25,4,304,1,'',25,0,NULL),(387,'dk_000043',1,20,1,100,1,'',20,0,NULL),(388,'dk_000043',1,30,2,202,1,'',30,0,NULL),(389,'dk_000043',1,15,3,1,1,'',15,0,NULL),(390,'dk_000043',1,25,4,304,1,'',25,0,NULL),(391,'dk_000045',1,20,1,100,1,'',20,0,NULL),(392,'dk_000045',1,30,2,202,1,'',30,0,NULL),(393,'dk_000045',1,15,3,1,1,'',15,0,NULL),(394,'dk_000045',1,25,4,304,1,'',25,0,NULL),(395,'dk_000046',1,20,1,100,1,'',20,0,NULL),(396,'dk_000046',1,30,2,202,1,'',30,0,NULL),(397,'dk_000046',1,15,3,1,1,'',15,0,NULL),(398,'dk_000046',1,25,4,304,1,'',25,0,NULL),(399,'dk_000047',1,20,1,100,1,'',20,0,NULL),(400,'dk_000047',1,30,2,202,1,'',30,0,NULL),(401,'dk_000047',1,15,3,1,1,'',15,0,NULL),(402,'dk_000047',1,25,4,304,1,'',25,0,NULL),(403,'dk_000048',1,20,1,100,1,'',20,0,NULL),(404,'dk_000048',1,30,2,202,1,'',30,0,NULL),(405,'dk_000048',1,15,3,1,1,'',15,0,NULL),(406,'dk_000048',1,25,4,304,1,'',25,0,NULL),(407,'dk_000049',1,20,1,100,1,'',20,0,NULL),(408,'dk_000049',1,30,2,202,1,'',30,0,NULL),(409,'dk_000049',1,15,3,1,1,'',15,0,NULL),(410,'dk_000049',1,25,4,304,1,'',25,0,NULL),(411,'dk_000049',1,6,200,200,1,'2012-12-12 12:12:12',8,0,NULL),(412,'dk_000050',1,20,1,100,1,'',20,0,NULL),(413,'dk_000050',1,30,2,202,1,'',30,0,NULL),(414,'dk_000050',1,15,3,1,1,'',15,0,NULL),(415,'dk_000050',1,25,4,304,1,'',25,0,NULL),(416,'dk_000050',1,6,200,200,1,'2012-12-12 12:12:12',10,0,NULL),(417,'dk_000051',1,20,1,100,1,'',20,0,NULL),(418,'dk_000051',1,30,2,202,1,'',30,0,NULL),(419,'dk_000051',1,15,3,1,1,'',15,0,NULL),(420,'dk_000051',1,25,4,304,1,'',25,0,NULL),(421,'dk_000052',1,20,1,100,1,'',20,0,NULL),(422,'dk_000052',1,30,2,202,1,'',30,0,NULL),(423,'dk_000052',1,15,3,1,1,'',15,0,NULL),(424,'dk_000052',1,25,4,304,1,'',25,0,NULL),(425,'dk_000052',1,6,200,200,1,'2012-12-12 12:12:12',9,0,NULL),(426,'dk_000053',1,20,1,100,1,'',20,0,NULL),(427,'dk_000053',1,30,2,202,1,'',30,0,NULL),(428,'dk_000053',1,15,3,1,1,'',15,0,NULL),(429,'dk_000053',1,25,4,304,1,'',25,0,NULL),(430,'dk_000053',1,5,200,200,1,'2012-12-12 12:12:12',11,0,NULL),(431,'dk_000054',1,20,1,100,1,'',20,0,NULL),(432,'dk_000054',1,30,2,202,1,'',30,0,NULL),(433,'dk_000054',1,15,3,1,1,'',15,0,NULL),(434,'dk_000054',1,25,4,304,1,'',25,0,NULL),(435,'dk_000054',1,6,200,200,1,'2012-12-12 12:12:12',11,0,NULL),(436,'dk_000055',1,20,1,100,1,'',20,0,NULL),(437,'dk_000055',1,30,2,202,1,'',30,0,NULL),(438,'dk_000055',1,15,3,1,1,'',15,0,NULL),(439,'dk_000055',1,25,4,304,1,'',25,0,NULL),(440,'dk_000055',1,8,200,200,1,'2012-12-12 12:12:12',7,0,NULL),(441,'dk_000056',1,20,1,100,1,'',20,0,NULL),(442,'dk_000056',1,30,2,202,1,'',30,0,NULL),(443,'dk_000056',1,15,3,1,1,'',15,0,NULL),(444,'dk_000056',1,25,4,304,1,'',25,0,NULL),(445,'dk_000056',1,8,200,200,1,'2012-12-12 12:12:12',8,0,NULL),(446,'dk_000057',1,20,1,100,1,'',20,0,NULL),(447,'dk_000057',1,30,2,202,1,'',30,0,NULL),(448,'dk_000057',1,15,3,1,1,'',15,0,NULL),(449,'dk_000057',1,25,4,304,1,'',25,0,NULL),(450,'dk_000058',1,20,1,100,1,'',20,0,NULL),(451,'dk_000058',1,30,2,202,1,'',30,0,NULL),(452,'dk_000058',1,15,3,1,1,'',15,0,NULL),(453,'dk_000058',1,25,4,304,1,'',25,0,NULL),(454,'dk_000059',1,20,1,100,1,'',20,0,NULL),(455,'dk_000059',1,30,2,202,1,'',30,0,NULL),(456,'dk_000059',1,15,3,1,1,'',15,0,NULL),(457,'dk_000059',1,25,4,304,1,'',25,0,NULL),(458,'dk_000060',1,20,1,100,1,'',20,0,NULL),(459,'dk_000060',1,30,2,202,1,'',30,0,NULL),(460,'dk_000060',1,15,3,1,1,'',15,0,NULL),(461,'dk_000060',1,25,4,304,1,'',25,0,NULL),(462,'dk_000061',1,20,1,100,1,'',20,0,NULL),(463,'dk_000061',1,30,2,202,1,'',30,0,NULL),(464,'dk_000061',1,15,3,1,1,'',15,0,NULL),(465,'dk_000061',1,25,4,304,1,'',25,0,NULL),(466,'dk_000061',1,6,200,200,1,'2012-12-12 12:12:12',12,0,NULL),(467,'dk_000062',1,20,1,100,1,'',20,0,NULL),(468,'dk_000062',1,30,2,202,1,'',30,0,NULL),(469,'dk_000062',1,15,3,1,1,'',15,0,NULL),(470,'dk_000062',1,25,4,304,1,'',25,0,NULL),(471,'dk_000062',1,5,200,200,1,'2012-12-12 12:12:12',10,0,NULL),(472,'dk_000063',1,20,1,100,1,'',20,0,NULL),(473,'dk_000063',1,30,2,202,1,'',30,0,NULL),(474,'dk_000063',1,15,3,1,1,'',15,0,NULL),(475,'dk_000063',1,25,4,304,1,'',25,0,NULL),(476,'dk_000063',1,6,200,200,1,'2012-12-12 12:12:12',9,0,NULL),(477,'dk_000065',1,20,1,100,1,'',20,0,NULL),(478,'dk_000065',1,30,2,202,1,'',30,0,NULL),(479,'dk_000065',1,15,3,1,1,'',15,0,NULL),(480,'dk_000065',1,25,4,304,1,'',25,0,NULL),(481,'dk_000065',1,8,200,200,1,'2012-12-12 12:12:12',9,0,NULL),(482,'dk_000066',1,20,1,100,1,'',20,0,NULL),(483,'dk_000066',1,30,2,202,1,'',30,0,NULL),(484,'dk_000066',1,15,3,1,1,'',15,0,NULL),(485,'dk_000066',1,25,4,304,1,'',25,0,NULL),(486,'dk_000066',1,5,200,200,1,'2012-12-12 12:12:12',8,0,NULL),(487,'dk_000067',1,20,1,100,1,'',20,0,NULL),(488,'dk_000067',1,30,2,202,1,'',30,0,NULL),(489,'dk_000067',1,15,3,1,1,'',15,0,NULL),(490,'dk_000067',1,25,4,304,1,'',25,0,NULL),(491,'dk_000067',1,5,200,200,1,'2012-12-12 12:12:12',10,0,NULL),(492,'dk_000068',1,20,1,100,1,'',20,0,NULL),(493,'dk_000068',1,30,2,202,1,'',30,0,NULL),(494,'dk_000068',1,15,3,1,1,'',15,0,NULL),(495,'dk_000068',1,25,4,304,1,'',25,0,NULL),(496,'dk_000068',1,7,200,200,1,'2012-12-12 12:12:12',10,0,NULL),(497,'dk_000069',1,20,1,100,1,'',20,0,NULL),(498,'dk_000069',1,30,2,202,1,'',30,0,NULL),(499,'dk_000069',1,15,3,1,1,'',15,0,NULL),(500,'dk_000069',1,25,4,304,1,'',25,0,NULL),(501,'dk_000069',1,8,200,200,1,'2012-12-12 12:12:12',12,0,NULL),(502,'dk_000070',1,20,1,100,1,'',20,0,NULL),(503,'dk_000070',1,30,2,202,1,'',30,0,NULL),(504,'dk_000070',1,15,3,1,1,'',15,0,NULL),(505,'dk_000070',1,25,4,304,1,'',25,0,NULL),(506,'dk_000071',1,20,1,100,1,'',20,0,NULL),(507,'dk_000071',1,30,2,202,1,'',30,0,NULL),(508,'dk_000071',1,15,3,1,1,'',15,0,NULL),(509,'dk_000071',1,25,4,304,1,'',25,0,NULL),(510,'dk_000071',1,7,200,200,1,'2012-12-12 12:12:12',10,0,NULL),(511,'dk_000072',1,20,1,100,1,'',20,0,NULL),(512,'dk_000072',1,30,2,202,1,'',30,0,NULL),(513,'dk_000072',1,15,3,1,1,'',15,0,NULL),(514,'dk_000072',1,25,4,304,1,'',25,0,NULL),(515,'dk_000072',1,8,200,200,1,'2012-12-12 12:12:12',8,0,NULL),(516,'dk_000073',1,20,1,100,1,'',20,0,NULL),(517,'dk_000073',1,30,2,202,1,'',30,0,NULL),(518,'dk_000073',1,15,3,1,1,'',15,0,NULL),(519,'dk_000073',1,25,4,304,1,'',25,0,NULL),(520,'dk_000074',1,20,1,100,1,'',20,0,NULL),(521,'dk_000074',1,30,2,202,1,'',30,0,NULL),(522,'dk_000074',1,15,3,1,1,'',15,0,NULL),(523,'dk_000074',1,25,4,304,1,'',25,0,NULL),(524,'dk_000075',1,20,1,100,1,'',20,0,NULL),(525,'dk_000075',1,30,2,202,1,'',30,0,NULL),(526,'dk_000075',1,15,3,1,1,'',15,0,NULL),(527,'dk_000075',1,25,4,304,1,'',25,0,NULL),(528,'dk_000076',1,20,1,100,1,'',20,0,NULL),(529,'dk_000076',1,30,2,202,1,'',30,0,NULL),(530,'dk_000076',1,15,3,1,1,'',15,0,NULL),(531,'dk_000076',1,25,4,304,1,'',25,0,NULL),(532,'dk_000076',1,6,200,200,1,'2012-12-12 12:12:12',11,0,NULL),(533,'dk_000077',1,20,1,100,1,'',20,0,NULL),(534,'dk_000077',1,30,2,202,1,'',30,0,NULL),(535,'dk_000077',1,15,3,1,1,'',15,0,NULL),(536,'dk_000077',1,25,4,304,1,'',25,0,NULL),(537,'dk_000078',1,20,1,100,1,'',20,0,NULL),(538,'dk_000078',1,30,2,202,1,'',30,0,NULL),(539,'dk_000078',1,15,3,1,1,'',15,0,NULL),(540,'dk_000078',1,25,4,304,1,'',25,0,NULL),(541,'dk_000079',1,20,1,100,1,'',20,0,NULL),(542,'dk_000079',1,30,2,202,1,'',30,0,NULL),(543,'dk_000079',1,15,3,1,1,'',15,0,NULL),(544,'dk_000079',1,25,4,304,1,'',25,0,NULL),(545,'dk_000080',1,20,1,100,1,'',20,0,NULL),(546,'dk_000080',1,30,2,202,1,'',30,0,NULL),(547,'dk_000080',1,15,3,1,1,'',15,0,NULL),(548,'dk_000080',1,25,4,304,1,'',25,0,NULL),(549,'dk_000080',1,8,202,200,1,'2012-12-12 12:12:12',10,0,NULL),(550,'dk_000080',1,7,203,200,1,'2012-12-12 12:12:12',12,0,NULL),(551,'wn_0000001000',1,8,201,2,1,'2012-12-12 12:12:12',18,0,NULL),(552,'dk_000080',1,4,205,200,1,'2012-12-12 12:12:12',9,0,NULL),(554,'dk_000080',1,14,206,200,1,'2012-12-12 12:12:12',8,0,NULL),(555,'dk_000080',1,4,209,2,1,'2012-12-12 12:12:12',15,0,NULL),(556,'wn_0000001000',1,15,202,301,1,'2012-12-12 12:12:12',8,0,NULL),(557,'wn_0000001000',1,8,203,301,1,'2012-12-12 12:12:12',13,0,NULL),(558,'wn_0000001000',1,19,204,200,1,'2012-12-12 12:12:12',30,0,NULL),(559,'wn_0000001000',1,26,206,303,1,'2012-12-12 12:12:12',16,0,NULL),(560,'wn_0000001000',1,15,207,201,1,'2012-12-12 12:12:12',24,0,NULL),(561,'wn_0000001000',1,28,209,203,1,'2012-12-12 12:12:12',20,0,NULL),(562,'dk_000080',1,10,210,301,1,'2012-12-12 12:12:12',20,0,NULL),(563,'wn_00000010000',1,20,1,100,1,'',20,0,NULL),(564,'wn_00000010000',1,30,2,202,1,'',30,0,NULL),(565,'wn_00000010000',1,15,3,1,1,'',15,0,NULL),(566,'wn_00000010000',1,25,4,500,1,'',25,0,NULL),(567,'wn_00000010000',1,10,201,301,1,'2012-12-12 12:12:12',21,0,NULL),(568,'wn_00000010000',1,16,202,303,1,'2012-12-12 12:12:12',29,0,NULL),(569,'wn_00000010000',1,20,203,2,1,'2012-12-12 12:12:12',13,0,NULL),(570,'wn_00000010000',1,22,204,201,1,'2012-12-12 12:12:12',29,0,NULL),(571,'wn_000000100000',1,20,1,100,1,'',20,0,NULL),(572,'wn_000000100000',1,30,2,202,1,'',30,0,NULL),(573,'wn_000000100000',1,15,3,1,1,'',15,0,NULL),(574,'wn_000000100000',1,25,4,500,1,'',25,0,NULL);
/*!40000 ALTER TABLE `bw_user_map_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_spell`
--

DROP TABLE IF EXISTS `bw_user_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_spell` (
  `id` int(11) NOT NULL,
  `mail_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户建筑信息ID',
  `spell_type_id` mediumint(9) DEFAULT NULL COMMENT '魔法类型ID',
  `spell_level` tinyint(1) DEFAULT NULL,
  `spell_count` mediumint(9) DEFAULT NULL,
  `spell_upgrade_end_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '魔法升级结束时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_spell_ma_spellTypeId` (`mail_address`,`spell_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户魔法等级数量表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_spell`
--

LOCK TABLES `bw_user_spell` WRITE;
/*!40000 ALTER TABLE `bw_user_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_user_spell` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-07 17:37:19
