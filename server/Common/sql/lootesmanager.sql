-- MySQL dump 10.13  Distrib 5.5.28, for Win32 (x86)
--
-- Host: localhost    Database: lootesmanager
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
-- Table structure for table `bw_area_manager`
--

DROP TABLE IF EXISTS `bw_area_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_area_manager` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '分区名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='游戏服务器分区管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_area_manager`
--

LOCK TABLES `bw_area_manager` WRITE;
/*!40000 ALTER TABLE `bw_area_manager` DISABLE KEYS */;
INSERT INTO `bw_area_manager` VALUES (1,'一炮冲天');
/*!40000 ALTER TABLE `bw_area_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_args`
--

DROP TABLE IF EXISTS `bw_args`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_args` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pvp_max_k` mediumint(9) DEFAULT NULL COMMENT '获取pvp分数的最大k',
  `pvp_n` mediumint(9) DEFAULT NULL COMMENT '获取pvp分数的n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏服务器常数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_args`
--

LOCK TABLES `bw_args` WRITE;
/*!40000 ALTER TABLE `bw_args` DISABLE KEYS */;
/*!40000 ALTER TABLE `bw_args` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_building`
--

DROP TABLE IF EXISTS `bw_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_building` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '建筑名称',
  `building_type` int(11) NOT NULL COMMENT '0 army 1 town hall 2 resource 3 defense 4 wall 5 worker 6 npc\\n',
  `swf` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '建筑动画',
  `build_time_date` int(11) NOT NULL DEFAULT '0' COMMENT '建筑时间-日期',
  `build_time_hour` int(11) NOT NULL DEFAULT '0' COMMENT '建筑时间-小时',
  `build_time_minutes` int(11) NOT NULL DEFAULT '0' COMMENT '建筑时间--分钟',
  `build_resource_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '建筑消耗的资源0 金币 1 药水 2绿宝石',
  `width` smallint(6) NOT NULL DEFAULT '0' COMMENT '占地范围宽',
  `height` smallint(6) NOT NULL DEFAULT '0' COMMENT '占地范围高',
  `building_animation` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '建造中动画',
  `is_bunker` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是堡垒0不是 1是',
  `produces_resource_type` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '生成资源的种类 0 金币 1 药水 2 绿宝石',
  `upgrade_units` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以升级士兵 0不可以升级士兵 1可以升级士兵',
  `attack_range` int(11) NOT NULL DEFAULT '-1' COMMENT '攻击范围',
  `attack_speed` int(11) NOT NULL DEFAULT '-1' COMMENT '攻击速度',
  `building_crash_w` smallint(6) NOT NULL DEFAULT '0' COMMENT '建筑的碰撞范围 宽',
  `building_crash_h` smallint(6) NOT NULL DEFAULT '0' COMMENT '建筑的碰撞范围 高',
  `air_targets` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '对空攻击 -1 无效 0 false 1 ture',
  `ground_targets` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '对地攻击 -1 无效 0 false 1 ture',
  `min_attack_range` int(11) NOT NULL DEFAULT '-1' COMMENT '最小攻击范围',
  `damage_radius` int(11) NOT NULL DEFAULT '-1' COMMENT '溅射范围 -1 为无效值',
  `push_back` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '攻击附带击退效果　-1 无效值　0 无击退效果　1有击退效果',
  `is_sell` tinyint(1) NOT NULL DEFAULT '0' COMMENT '建筑是否可以出售 0 不可以出售　1可以出售',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要解锁　堡垒的专有功能　0不需要解锁　1需要解锁',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要隐身 0不需要　1需要',
  `trigger_radius` int(11) NOT NULL DEFAULT '-1' COMMENT '触发范围　(地雷 隐身，有触发范围)',
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='建筑信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_building`
--

LOCK TABLES `bw_building` WRITE;
/*!40000 ALTER TABLE `bw_building` DISABLE KEYS */;
INSERT INTO `bw_building` VALUES (1,'Troop Housing',0,'sc/buildings.sc',0,0,5,1,5,5,'fireplace_upg',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1),(2,'Barrack',0,'sc/buildings.sc',0,0,1,1,3,3,'barracks_upg',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1),(3,'Laboratory',0,'sc/buildings.sc',0,0,30,1,4,4,'laboratory_upg',0,-1,1,-1,-1,3,3,-1,-1,-1,-1,-1,1,0,0,-1),(4,'Alliance Castle',0,'sc/buildings.sc',0,0,0,0,3,3,'alliance_castle_upg',1,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,1,0,-1),(5,'Spell Forge',0,'sc/buildings.sc',1,0,0,1,3,3,'spell_factory_upg',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1),(100,'Town Hall',1,'sc/buildings.sc',0,0,1,0,4,4,'town_hall_upg',0,-1,0,-1,-1,3,3,-1,-1,-1,-1,-1,1,0,0,-1),(200,'Elixir Pump',2,'sc/buildings.sc',0,0,1,0,3,3,'elixir_pump_upg',0,1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1),(201,'Elixir Storage',2,'sc/buildings.sc',0,0,15,0,3,3,'elixir_storage_upg',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,0,0,0,-1),(202,'Gold Mine',2,'sc/buildings.sc',0,0,1,1,3,3,'goldmine_upg',0,0,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1),(203,'Gold Storage',2,'sc/buildings.sc',0,0,15,1,3,3,'gold_storage_upg',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,0,0,0,-1),(300,'Cannon',3,'sc/buildings.sc',0,0,1,0,3,3,'basic_turret_upg',0,-1,0,127,800,2,2,0,1,-1,-1,-1,1,0,0,-1),(301,'Archer Tower',3,'sc/buildings.sc',0,0,15,0,3,3,'tower_turret_upg',0,-1,0,127,1000,2,2,1,1,-1,-1,-1,0,0,0,-1),(302,'Wizard Tower',3,'sc/buildings.sc',0,12,0,0,3,3,'wizard_tower_upg',0,-1,0,127,1300,2,2,1,1,-1,100,-1,0,0,0,-1),(303,'Air Defense',3,'sc/buildings.sc',0,5,0,0,3,3,'fireworks_tower_upg',0,-1,0,127,1000,2,2,1,0,-1,-1,-1,0,0,0,-1),(304,'Mortar',3,'sc/buildings.sc',0,8,0,0,3,3,'mortar_upg',0,-1,0,127,5000,2,2,0,1,400,150,1,0,0,0,-1),(305,'Tesla Tower',3,'sc/buildings.sc',2,0,0,0,2,2,'teslatower_upg',0,-1,0,127,600,1,1,1,1,-1,-1,-1,0,0,1,500),(400,'Wall',4,'sc/buildings.sc',0,0,0,0,1,1,'dummy_particle',0,-1,0,-1,-1,1,1,-1,-1,-1,-1,-1,0,0,0,-1),(500,'Worker Building',5,'sc/buildings.sc',0,0,0,2,2,2,'worker_building_upg',0,-1,0,-1,-1,1,1,-1,-1,-1,-1,-1,1,0,0,-1),(600,'Communications mast',6,'sc/buildings.sc',0,0,0,0,2,2,'comm_mast_upg',0,-1,0,-1,-1,1,1,-1,-1,-1,-1,-1,1,0,0,-1),(601,'Goblin main building',6,'sc/buildings.sc',0,0,1,0,4,4,'generic_upgrade_state3',0,-1,0,-1,-1,3,3,-1,-1,-1,-1,-1,1,0,0,-1),(602,'Goblin hut',6,'sc/buildings.sc',0,0,5,1,2,2,'generic_upgrade_state2',0,-1,0,-1,-1,2,2,-1,-1,-1,-1,-1,1,0,0,-1);
/*!40000 ALTER TABLE `bw_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_building_properties_level`
--

DROP TABLE IF EXISTS `bw_building_properties_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_building_properties_level` (
  `id` int(11) NOT NULL,
  `build_level` smallint(6) NOT NULL DEFAULT '1' COMMENT '建筑等级',
  `building_id` int(11) NOT NULL COMMENT '建筑ID',
  `build_export_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '建筑升级对应的图片',
  `build_time_date` int(11) NOT NULL DEFAULT '0' COMMENT '建筑时间-日期',
  `build_time_hour` int(11) NOT NULL DEFAULT '0',
  `build_time_minutes` int(11) NOT NULL DEFAULT '0' COMMENT '建筑时间--分钟',
  `build_cost_count` int(11) NOT NULL DEFAULT '0' COMMENT '建造消耗的资源数量',
  `town_hall_level` int(11) NOT NULL DEFAULT '0' COMMENT '允许制造该建筑的主基地等级',
  `max_stored_gold` int(11) NOT NULL DEFAULT '-1' COMMENT '存储金钱上线',
  `max_stored_elixir` int(11) NOT NULL DEFAULT '-1' COMMENT '存储药水上限',
  `houseing_space` int(11) NOT NULL DEFAULT '-1' COMMENT '提供存兵的人口数',
  `produce_resource_per_hour` int(11) NOT NULL DEFAULT '-1' COMMENT '每小时生成资源的数量',
  `resource_max` int(11) NOT NULL DEFAULT '-1' COMMENT '生产后存储资源的上限',
  `unit_production` int(11) NOT NULL DEFAULT '-1' COMMENT '兵营中最多可以放多少人口',
  `hit_point` int(11) NOT NULL DEFAULT '-11' COMMENT '生命值',
  `regen_time` smallint(6) NOT NULL DEFAULT '-1' COMMENT '被拆除后 恢复需要的时间 秒为单位',
  `damage` int(11) NOT NULL DEFAULT '-1' COMMENT '攻击力',
  `projectile_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT '对应的子弹类型(文件名字)',
  `bw_characters_properties_level_id` int(11) NOT NULL DEFAULT '-1' COMMENT '防御塔上站着的士兵id(包含等级的)　-1为无效字段',
  `characters_count` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '-1' COMMENT '防御塔上站得士兵数量 -1为无效值　',
  `destruction_XP` int(11) NOT NULL DEFAULT '-1' COMMENT '破坏后获取的经验',
  `export_name_triggered` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT '电磁塔触发器名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='建筑等级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_building_properties_level`
--

LOCK TABLES `bw_building_properties_level` WRITE;
/*!40000 ALTER TABLE `bw_building_properties_level` DISABLE KEYS */;
INSERT INTO `bw_building_properties_level` VALUES (1,1,1,'fireplace_lvl1',0,0,5,250,1,-1,-1,20,-1,-1,-1,400,30,-1,'',-1,'-1',-1,'\r'),(2,2,1,'fireplace_lvl2',0,1,0,2500,2,-1,-1,30,-1,-1,-1,500,31,-1,'',-1,'-1',-1,'\r'),(3,3,1,'fireplace_lvl3',0,3,0,10000,3,-1,-1,35,-1,-1,-1,600,32,-1,'',-1,'-1',-1,'\r'),(4,4,1,'fireplace_lvl4',0,8,0,100000,4,-1,-1,40,-1,-1,-1,700,33,-1,'',-1,'-1',-1,'\r'),(5,5,1,'fireplace_lvl5',1,0,0,250000,5,-1,-1,45,-1,-1,-1,800,34,-1,'',-1,'-1',-1,'\r'),(6,6,1,'fireplace_lvl6',3,0,0,750000,6,-1,-1,50,-1,-1,-1,1000,35,-1,'',-1,'-1',-1,'\r'),(7,1,100,'town_hall_lvl1',0,0,1,0,0,1000,1000,-1,-1,-1,-1,1500,30,-1,'',-1,'-1',1,'\r'),(8,2,100,'town_hall_lvl2',0,0,5,1000,0,1000,1000,-1,-1,-1,-1,1600,32,-1,'',-1,'-1',2,'\r'),(9,3,100,'town_hall_lvl3',0,3,0,4000,0,1000,1000,-1,-1,-1,-1,1700,34,-1,'',-1,'-1',3,'\r'),(10,4,100,'town_hall_lvl4',1,0,0,25000,0,1000,1000,-1,-1,-1,-1,1800,36,-1,'',-1,'-1',4,'\r'),(11,5,100,'town_hall_lvl5',2,0,0,150000,0,1000,1000,-1,-1,-1,-1,1900,38,-1,'',-1,'-1',5,'\r'),(12,6,100,'town_hall_lvl6',4,0,0,750000,0,1000,1000,-1,-1,-1,-1,2000,40,-1,'',-1,'-1',6,'\r'),(13,7,100,'town_hall_lvl7',6,0,0,1200000,0,1000,1000,-1,-1,-1,-1,2200,42,-1,'',-1,'-1',7,'\r'),(14,8,100,'town_hall_lvl8',8,0,0,1500000,0,1000,1000,-1,-1,-1,-1,2500,44,-1,'',-1,'-1',8,'\r'),(15,1,200,'elixir_pump_lvl1',0,0,1,150,1,-1,-1,-1,200,500,-1,400,30,-1,'',-1,'-1',-1,'\r'),(16,2,200,'elixir_pump_lvl2',0,0,5,300,1,-1,-1,-1,400,1000,-1,450,31,-1,'',-1,'-1',-1,'\r'),(17,3,200,'elixir_pump_lvl3',0,0,0,700,2,-1,-1,-1,600,1500,-1,500,32,-1,'',-1,'-1',-1,'\r'),(18,4,200,'elixir_pump_lvl4',0,1,0,1400,2,-1,-1,-1,800,2500,-1,550,33,-1,'',-1,'-1',-1,'\r'),(19,5,200,'elixir_pump_lvl5',0,4,0,3500,3,-1,-1,-1,1000,10000,-1,590,34,-1,'',-1,'-1',-1,'\r'),(20,6,200,'elixir_pump_lvl6',0,12,0,7000,3,-1,-1,-1,1300,20000,-1,610,35,-1,'',-1,'-1',-1,'\r'),(21,7,200,'elixir_pump_lvl7',1,0,0,14000,4,-1,-1,-1,1600,30000,-1,630,36,-1,'',-1,'-1',-1,'\r'),(22,8,200,'elixir_pump_lvl8',2,0,0,28000,4,-1,-1,-1,1900,50000,-1,660,37,-1,'',-1,'-1',-1,'\r'),(23,9,200,'elixir_pump_lvl9',3,0,0,56000,5,-1,-1,-1,2200,75000,-1,680,38,-1,'',-1,'-1',-1,'\r'),(24,10,200,'elixir_pump_lvl10',4,0,0,84000,5,-1,-1,-1,2500,100000,-1,710,39,-1,'',-1,'-1',-1,'\r'),(25,1,201,'elixir_storage_level1',0,0,15,300,1,-1,1500,-1,-1,-1,-1,400,30,-1,'',-1,'-1',-1,'\r'),(26,2,201,'elixir_storage_level2',0,0,30,750,2,-1,3000,-1,-1,-1,-1,600,31,-1,'',-1,'-1',-1,'\r'),(27,3,201,'elixir_storage_level3',0,1,0,1500,2,-1,6000,-1,-1,-1,-1,800,32,-1,'',-1,'-1',-1,'\r'),(28,4,201,'elixir_storage_level4',0,2,0,3000,3,-1,12000,-1,-1,-1,-1,1000,33,-1,'',-1,'-1',-1,'\r'),(29,5,201,'elixir_storage_level5',0,3,0,6000,3,-1,25000,-1,-1,-1,-1,1200,34,-1,'',-1,'-1',-1,'\r'),(30,6,201,'elixir_storage_level6',0,4,0,12000,3,-1,50000,-1,-1,-1,-1,1500,35,-1,'',-1,'-1',-1,'\r'),(31,7,201,'elixir_storage_level7',0,6,0,25000,4,-1,100000,-1,-1,-1,-1,1650,36,-1,'',-1,'-1',-1,'\r'),(32,8,201,'elixir_storage_level8',0,8,0,50000,4,-1,250000,-1,-1,-1,-1,1740,37,-1,'',-1,'-1',-1,'\r'),(33,9,201,'elixir_storage_level9',0,12,0,100000,5,-1,500000,-1,-1,-1,-1,1820,38,-1,'',-1,'-1',-1,'\r'),(34,10,201,'elixir_storage_level10',0,24,0,250000,6,-1,1000000,-1,-1,-1,-1,1920,39,-1,'',-1,'-1',-1,'\r'),(35,1,202,'goldmine_lvl1',0,0,1,150,1,-1,-1,-1,200,500,-1,400,30,-1,'',-1,'-1',-1,'\r'),(36,2,202,'goldmine_lvl2',0,0,5,300,1,-1,-1,-1,400,1000,-1,450,31,-1,'',-1,'-1',-1,'\r'),(37,3,202,'goldmine_lvl3',0,0,15,700,2,-1,-1,-1,600,1500,-1,500,32,-1,'',-1,'-1',-1,'\r'),(38,4,202,'goldmine_lvl4',0,1,0,1400,2,-1,-1,-1,800,2500,-1,550,33,-1,'',-1,'-1',-1,'\r'),(39,5,202,'goldmine_lvl5',0,4,0,3000,3,-1,-1,-1,1000,10000,-1,590,34,-1,'',-1,'-1',-1,'\r'),(40,6,202,'goldmine_lvl6',0,12,0,7000,3,-1,-1,-1,1300,20000,-1,610,35,-1,'',-1,'-1',-1,'\r'),(41,7,202,'goldmine_lvl7',1,0,0,14000,4,-1,-1,-1,1600,30000,-1,630,36,-1,'',-1,'-1',-1,'\r'),(42,8,202,'goldmine_lvl8',2,0,0,28000,4,-1,-1,-1,1900,50000,-1,660,37,-1,'',-1,'-1',-1,'\r'),(43,9,202,'goldmine_lvl9',3,0,0,56000,5,-1,-1,-1,2200,75000,-1,680,38,-1,'',-1,'-1',-1,'\r'),(44,10,202,'goldmine_lvl10',4,0,0,84000,5,-1,-1,-1,2500,100000,-1,710,39,-1,'',-1,'-1',-1,'\r'),(45,1,203,'gold_storage_lvl1',0,0,15,300,1,1500,-1,-1,-1,-1,-1,400,30,-1,'',-1,'-1',-1,'\r'),(46,2,203,'gold_storage_lvl2',0,0,30,750,2,3000,-1,-1,-1,-1,-1,600,31,-1,'',-1,'-1',-1,'\r'),(47,3,203,'gold_storage_lvl3',0,1,0,1500,2,6000,-1,-1,-1,-1,-1,800,32,-1,'',-1,'-1',-1,'\r'),(48,4,203,'gold_storage_lvl4',0,2,0,3000,3,12000,-1,-1,-1,-1,-1,1000,33,-1,'',-1,'-1',-1,'\r'),(49,5,203,'gold_storage_lvl5',0,3,0,6000,3,25000,-1,-1,-1,-1,-1,1200,34,-1,'',-1,'-1',-1,'\r'),(50,6,203,'gold_storage_lvl6',0,4,0,12000,3,50000,-1,-1,-1,-1,-1,1500,35,-1,'',-1,'-1',-1,'\r'),(51,7,203,'gold_storage_lvl7',0,6,0,25000,4,100000,-1,-1,-1,-1,-1,1650,36,-1,'',-1,'-1',-1,'\r'),(52,8,203,'gold_storage_lvl8',0,8,0,50000,4,250000,-1,-1,-1,-1,-1,1740,37,-1,'',-1,'-1',-1,'\r'),(53,9,203,'gold_storage_lvl9',0,12,0,100000,5,500000,-1,-1,-1,-1,-1,1820,38,-1,'',-1,'-1',-1,'\r'),(54,10,203,'gold_storage_lvl10',0,24,0,250000,6,1000000,-1,-1,-1,-1,-1,1920,39,-1,'',-1,'-1',-1,'\r'),(55,1,2,'barracks_lvl1',0,0,1,200,1,-1,-1,-1,-1,-1,20,250,30,-1,'',-1,'-1',-1,'\r'),(56,2,2,'barracks_lvl2',0,0,15,1000,1,-1,-1,-1,-1,-1,25,270,31,-1,'',-1,'-1',-1,'\r'),(57,3,2,'barracks_lvl3',0,2,0,2500,1,-1,-1,-1,-1,-1,30,280,32,-1,'',-1,'-1',-1,'\r'),(58,4,2,'barracks_lvl4',0,4,0,5000,2,-1,-1,-1,-1,-1,35,290,33,-1,'',-1,'-1',-1,'\r'),(59,5,2,'barracks_lvl5',0,10,0,10000,3,-1,-1,-1,-1,-1,40,310,34,-1,'',-1,'-1',-1,'\r'),(60,6,2,'barracks_lvl6',0,16,0,80000,4,-1,-1,-1,-1,-1,45,320,35,-1,'',-1,'-1',-1,'\r'),(61,7,2,'barracks_lvl7',1,0,0,240000,5,-1,-1,-1,-1,-1,50,340,36,-1,'',-1,'-1',-1,'\r'),(62,8,2,'barracks_lvl8',2,0,0,1000000,6,-1,-1,-1,-1,-1,55,350,37,-1,'',-1,'-1',-1,'\r'),(63,9,2,'barracks_lvl9',4,0,0,1500000,7,-1,-1,-1,-1,-1,60,390,38,-1,'',-1,'-1',-1,'\r'),(64,10,2,'barracks_lvl10',6,0,0,2000000,8,-1,-1,-1,-1,-1,75,420,39,-1,'',-1,'-1',-1,'\r'),(65,1,3,'laboratory_lvl1',0,0,30,25000,3,-1,-1,-1,-1,-1,-1,250,30,-1,'',-1,'-1',-1,'\r'),(66,2,3,'laboratory_lvl2',0,5,0,50000,4,-1,-1,-1,-1,-1,-1,270,32,-1,'',-1,'-1',-1,'\r'),(67,3,3,'laboratory_lvl3',0,12,0,90000,5,-1,-1,-1,-1,-1,-1,280,34,-1,'',-1,'-1',-1,'\r'),(68,4,3,'laboratory_lvl4',1,0,0,270000,6,-1,-1,-1,-1,-1,-1,290,36,-1,'',-1,'-1',-1,'\r'),(69,5,3,'laboratory_lvl5',2,0,0,540000,7,-1,-1,-1,-1,-1,-1,310,38,-1,'',-1,'-1',-1,'\r'),(70,6,3,'laboratory_lvl6',4,0,0,1080000,8,-1,-1,-1,-1,-1,-1,320,40,-1,'',-1,'-1',-1,'\r'),(71,1,300,'basic_turret_lvl1',0,0,1,250,1,-1,-1,-1,-1,-1,-1,400,30,9,'Cannonball',-1,'-1',-1,'\r'),(72,2,300,'basic_turret_lvl2',0,0,15,1000,1,-1,-1,-1,-1,-1,-1,450,31,11,'Cannonball2',-1,'-1',-1,'\r'),(73,3,300,'basic_turret_lvl3',0,0,45,4000,2,-1,-1,-1,-1,-1,-1,500,32,15,'Cannonball2',-1,'-1',-1,'\r'),(74,4,300,'basic_turret_lvl4',0,2,0,16000,3,-1,-1,-1,-1,-1,-1,550,33,19,'Cannonball4',-1,'-1',-1,'\r'),(75,5,300,'basic_turret_lvl5',0,6,0,64000,4,-1,-1,-1,-1,-1,-1,590,34,25,'Cannonball4',-1,'-1',-1,'\r'),(76,6,300,'basic_turret_lvl6',0,12,0,150000,5,-1,-1,-1,-1,-1,-1,610,35,31,'Cannonball5',-1,'-1',-1,'\r'),(77,7,300,'basic_turret_lvl7',1,0,0,300000,6,-1,-1,-1,-1,-1,-1,630,36,40,'Cannonball5',-1,'-1',-1,'\r'),(78,8,300,'basic_turret_lvl8',2,0,0,600000,7,-1,-1,-1,-1,-1,-1,660,37,48,'Cannonball7',-1,'-1',-1,'\r'),(79,9,300,'basic_turret_lvl9',3,0,0,1200000,8,-1,-1,-1,-1,-1,-1,690,38,56,'Cannonball7',-1,'-1',-1,'\r'),(80,10,300,'basic_turret_lvl10',5,0,0,2400000,8,-1,-1,-1,-1,-1,-1,710,39,65,'Cannonball10',-1,'-1',-1,'\r'),(81,1,301,'tower_turret_lvl1',0,0,15,1000,2,-1,-1,-1,-1,-1,-1,400,30,11,'Tower Arrow',6,'1',-1,'\r'),(82,2,301,'tower_turret_lvl2',0,0,30,2000,2,-1,-1,-1,-1,-1,-1,450,31,15,'Tower Arrow',6,'2',-1,'\r'),(83,3,301,'tower_turret_lvl3',0,0,45,5000,3,-1,-1,-1,-1,-1,-1,500,32,19,'Tower Arrow',6,'3',-1,'\r'),(84,4,301,'tower_turret_lvl4',0,4,0,20000,4,-1,-1,-1,-1,-1,-1,550,33,25,'Tower Arrow Fire',8,'1',-1,'\r'),(85,5,301,'tower_turret_lvl5',0,12,0,80000,5,-1,-1,-1,-1,-1,-1,590,34,30,'Tower Arrow Fire',8,'2',-1,'\r'),(86,6,301,'tower_turret_lvl6',1,0,0,180000,5,-1,-1,-1,-1,-1,-1,610,35,35,'Tower Arrow Fire',8,'3',-1,'\r'),(87,7,301,'tower_turret_lvl7',3,0,0,360000,6,-1,-1,-1,-1,-1,-1,630,36,42,'Tower Arrow ElixFire',10,'1',-1,'\r'),(88,8,301,'tower_turret_lvl8',4,0,0,720000,7,-1,-1,-1,-1,-1,-1,660,37,48,'Tower Arrow ElixFire',10,'2',-1,'\r'),(89,9,301,'tower_turret_lvl9',5,0,0,1500000,8,-1,-1,-1,-1,-1,-1,690,38,56,'Tower Arrow ElixFire',10,'3',-1,'\r'),(90,10,301,'tower_turret_lvl10',6,0,0,2500000,8,-1,-1,-1,-1,-1,-1,710,39,65,'Tower Arrow ElixFire',10,'1',-1,'\r'),(91,1,400,'defense_wall_lvl1',0,0,0,200,2,-1,-1,-1,-1,-1,-1,300,30,-1,'',-1,'-1',-1,'\r'),(92,2,400,'defense_wall_lvl2',0,0,0,1000,2,-1,-1,-1,-1,-1,-1,500,31,-1,'',-1,'-1',-1,'\r'),(93,3,400,'defense_wall_lvl3',0,0,0,5000,3,-1,-1,-1,-1,-1,-1,700,32,-1,'',-1,'-1',-1,'\r'),(94,4,400,'defense_wall_lvl4',0,0,0,10000,4,-1,-1,-1,-1,-1,-1,900,33,-1,'',-1,'-1',-1,'\r'),(95,5,400,'defense_wall_lvl5',0,0,0,30000,5,-1,-1,-1,-1,-1,-1,1400,34,-1,'',-1,'-1',-1,'\r'),(96,6,400,'defense_wall_lvl6',0,0,0,75000,6,-1,-1,-1,-1,-1,-1,2000,35,-1,'',-1,'-1',-1,'\r'),(97,7,400,'defense_wall_lvl7',0,0,0,200000,7,-1,-1,-1,-1,-1,-1,2500,36,-1,'',-1,'-1',-1,'\r'),(98,8,400,'defense_wall_lvl8',0,0,0,500000,8,-1,-1,-1,-1,-1,-1,3000,37,-1,'',-1,'-1',-1,'\r'),(99,1,302,'wizard_tower_lvl1',0,12,0,180000,5,-1,-1,-1,-1,-1,-1,620,30,11,'Wizard Blast',31,'1',-1,'\r'),(100,2,302,'wizard_tower_lvl4',1,0,0,360000,5,-1,-1,-1,-1,-1,-1,660,32,13,'',-1,'-1',-1,'\r'),(101,3,302,'wizard_tower_lvl7',2,0,0,720000,6,-1,-1,-1,-1,-1,-1,690,34,16,'',-1,'-1',-1,'\r'),(102,4,302,'wizard_tower_lvl8',4,0,0,1280000,7,-1,-1,-1,-1,-1,-1,720,36,20,'',-1,'-1',-1,'\r'),(103,5,302,'wizard_tower_lvl9',6,0,0,1960000,8,-1,-1,-1,-1,-1,-1,760,38,24,'',-1,'-1',-1,'\r'),(104,6,302,'wizard_tower_lvl10',8,0,0,2680000,8,-1,-1,-1,-1,-1,-1,800,40,32,'',-1,'-1',-1,'\r'),(105,1,303,'fireworks_tower_lvl1',0,5,0,22500,4,-1,-1,-1,-1,-1,-1,800,30,80,'Firework',-1,'-1',-1,'\r'),(106,2,303,'fireworks_tower_lvl2',1,0,0,90000,4,-1,-1,-1,-1,-1,-1,860,32,110,'Firework2',-1,'-1',-1,'\r'),(107,3,303,'fireworks_tower_lvl3',3,0,0,270000,5,-1,-1,-1,-1,-1,-1,900,34,140,'Firework3',-1,'-1',-1,'\r'),(108,4,303,'fireworks_tower_lvl4',5,0,0,540000,6,-1,-1,-1,-1,-1,-1,940,36,160,'Firework4',-1,'-1',-1,'\r'),(109,5,303,'fireworks_tower_lvl5',7,0,0,1080000,7,-1,-1,-1,-1,-1,-1,990,38,190,'Firework5',-1,'-1',-1,'\r'),(110,6,303,'fireworks_tower_lvl6',8,0,0,2160000,8,-1,-1,-1,-1,-1,-1,1040,40,230,'Firework6',-1,'-1',-1,'\r'),(111,1,304,'mortar_lvl1',0,8,0,8000,3,-1,-1,-1,-1,-1,-1,400,30,4,'Mortar Ammo1',-1,'-1',-1,'\r'),(112,2,304,'mortar_lvl2',0,12,0,32000,4,-1,-1,-1,-1,-1,-1,450,32,5,'Mortar Ammo2',-1,'-1',-1,'\r'),(113,3,304,'mortar_lvl3',1,0,0,128000,5,-1,-1,-1,-1,-1,-1,500,34,6,'Mortar Ammo3',-1,'-1',-1,'\r'),(114,4,304,'mortar_lvl4',2,0,0,512000,6,-1,-1,-1,-1,-1,-1,550,36,7,'Mortar Ammo4',-1,'-1',-1,'\r'),(115,5,304,'mortar_lvl5',4,0,0,1024000,7,-1,-1,-1,-1,-1,-1,590,38,8,'Mortar Ammo5',-1,'-1',-1,'\r'),(116,6,304,'mortar_lvl6',6,0,0,2048000,8,-1,-1,-1,-1,-1,-1,610,40,9,'Mortar Ammo6',-1,'-1',-1,'\r'),(117,1,4,'alliance_castle_lvl1',0,0,0,40000,3,-1,-1,10,-1,-1,-1,500,30,-1,'',-1,'-1',-1,'\r'),(118,2,4,'alliance_castle_lvl2',0,6,0,100000,4,-1,-1,15,-1,-1,-1,520,32,-1,'',-1,'-1',-1,'\r'),(119,3,4,'alliance_castle_lvl3',1,0,0,800000,6,-1,-1,20,-1,-1,-1,550,34,-1,'',-1,'-1',-1,'\r'),(120,4,4,'alliance_castle_lvl4',2,0,0,1800000,8,-1,-1,25,-1,-1,-1,580,36,-1,'',-1,'-1',-1,'\r'),(121,1,305,'teslatower_lvl1_setup',2,0,0,1000000,7,-1,-1,-1,-1,-1,-1,600,34,34,'',-1,'-1',-1,'teslatower_lvl1\r'),(122,2,305,'teslatower_lvl2_setup',4,0,0,1250000,7,-1,-1,-1,-1,-1,-1,630,35,40,'',-1,'-1',-1,'teslatower_lvl2\r'),(123,3,305,'teslatower_lvl3_setup',6,0,0,1500000,7,-1,-1,-1,-1,-1,-1,660,36,48,'',-1,'-1',-1,'teslatower_lvl3\r'),(124,4,305,'teslatower_lvl4_setup',8,0,0,2000000,8,-1,-1,-1,-1,-1,-1,690,37,55,'',-1,'-1',-1,'teslatower_lvl4\r'),(125,5,305,'teslatower_lvl5_setup',10,0,0,2500000,8,-1,-1,-1,-1,-1,-1,730,38,64,'',-1,'-1',-1,'teslatower_lvl5\r'),(126,6,305,'teslatower_lvl6_setup',12,0,0,3000000,8,-1,-1,-1,-1,-1,-1,770,39,75,'',-1,'-1',-1,'teslatower_lvl6\r'),(127,1,5,'spell_factory_lvl1',1,0,0,200000,5,-1,-1,1,-1,-1,1,200,30,-1,'',-1,'-1',-1,'\r'),(128,2,5,'spell_factory_lvl2',2,0,0,400000,6,-1,-1,2,-1,-1,2,400,31,-1,'',-1,'-1',-1,'\r'),(129,3,5,'spell_factory_lvl3',4,0,0,800000,7,-1,-1,3,-1,-1,3,600,32,-1,'',-1,'-1',-1,'\r');
/*!40000 ALTER TABLE `bw_building_properties_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_characters`
--

DROP TABLE IF EXISTS `bw_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_characters` (
  `character_id` int(11) NOT NULL COMMENT '角色ID',
  `character_name` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '角色名称',
  `swf` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '动画文件名称',
  `housing_space` int(11) NOT NULL DEFAULT '1' COMMENT '所占人口',
  `barrack_level` int(11) NOT NULL DEFAULT '1' COMMENT '解锁兵种需要的兵营等级',
  `speed` int(11) NOT NULL COMMENT '移动速度',
  `training_time` int(11) NOT NULL COMMENT '造兵需要的时间 以秒为单位',
  `resource_type` smallint(6) NOT NULL DEFAULT '1' COMMENT '造兵需要消耗的资源类型0金币 1药水',
  `UpgradeResource` tinyint(1) NOT NULL DEFAULT '1' COMMENT '升级消耗资源的类型 0 金币 1 药水 2 绿宝石',
  `attack_rang` int(11) NOT NULL COMMENT '攻击范围',
  `attack_speed` int(11) NOT NULL COMMENT '攻击间隔',
  `damage_mod` int(11) NOT NULL COMMENT '对特定目标的攻击倍率',
  `ui_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '对应UI图标',
  `icon_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '对应的图标名称（造兵时显示的）',
  `big_picture` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '对应大尺寸图片',
  `attack_prefered_target` smallint(6) DEFAULT '-1' COMMENT '优先攻击的目标 -1此值无效 0任何类型 1资源类型 2 防御类型(炮塔，箭楼) 3wall ',
  `deploy_effect` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '兵放入地图时的特效',
  `is_flying` tinyint(1) NOT NULL COMMENT '0地面单位 1 飞行单位',
  `air_target` tinyint(1) NOT NULL COMMENT '是否可以对空中单位进行攻击 0不可以 1可以',
  `ground_targets` tinyint(1) NOT NULL COMMENT '是否可以攻击地面单位 0 不可以 1可以',
  `attack_count` tinyint(1) NOT NULL DEFAULT '0' COMMENT '攻击几次后死亡',
  `die_effect` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '死亡效果',
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='base role table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_characters`
--

LOCK TABLES `bw_characters` WRITE;
/*!40000 ALTER TABLE `bw_characters` DISABLE KEYS */;
INSERT INTO `bw_characters` VALUES (1,'Barbarian','sc/characters.cs',1,1,200,5,1,1,40,1000,1,'sc/ui.sc','icon_unit_barbarian','unit_barbarian_big',-1,'Barbarian Deploy',0,0,1,-1,'Barbarian Die\r'),(2,'Archer','sc/characters.cs',1,2,300,25,1,1,400,1000,1,'sc/ui.sc','icon_unit_archer','unit_archer_big',-1,'Archer Deploy',0,1,1,-1,'Archer Die\r'),(3,'Goblin','sc/characters.cs',2,3,800,0,1,1,40,1000,2,'sc/ui.sc','icon_unit_goblin','unit_goblin_big',1,'Goblin Deploy',1,1,1,-1,'Goblin Die\r'),(4,'Giant','sc/characters.cs',5,4,150,105,1,1,100,2000,1,'sc/ui.sc','icon_unit_giant','unit_giant_big',2,'Giant Deploy',0,0,1,-1,'Giant Die\r'),(5,'Wall Breaker','sc/characters.cs',1,5,300,120,1,1,50,1000,40,'sc/ui.sc','icon_unit_wallbreaker','unit_skeleton_big',3,'Wall Breaker Deploy',0,0,1,1,'Wall Breaker Die\r'),(6,'Balloon Goblin','sc/characters.cs',5,6,150,600,1,1,50,4000,1,'sc/ui.sc','icon_unit_balloon','unit_balloon_big',2,'Balloon Goblin Deploy',1,0,1,-1,'Balloon Goblin Die\r'),(7,'Wizard','sc/characters.cs',4,7,200,600,1,1,300,1500,1,'sc/ui.sc','icon_unit_wizard','unit_wizard_big',-1,'Wizard Deploy',0,1,1,-1,'Wizard Die\r'),(8,'Healer','sc/characters.cs',20,8,200,1200,1,1,400,700,1,'sc/ui.sc','icon_unit_healer','unit_healer_big',-1,'Healer Deploy',1,0,1,-1,'Healer Die\r'),(9,'Dragon','sc/characters.cs',20,9,200,1800,1,1,300,1500,1,'sc/ui.sc','icon_unit_dragon','unit_dragon_big',-1,'Dragon Deploy',1,1,1,-1,'Dragon Die\r'),(10,'PEKKA','sc/characters.cs',25,10,200,3600,1,1,80,2500,1,'sc/ui.sc','icon_unit_pekka','unit_pekka_big',-1,'Pekka Deploy',0,0,1,-1,'Pekka Die\r');
/*!40000 ALTER TABLE `bw_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_characters_properties_level`
--

DROP TABLE IF EXISTS `bw_characters_properties_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_characters_properties_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色等级表ID',
  `character_id` int(11) NOT NULL COMMENT '角色ID',
  `character_level` int(11) NOT NULL COMMENT '角色等级',
  `laboratory_level` int(11) NOT NULL COMMENT '升级需要的科技建筑等级',
  `hit_points` int(11) NOT NULL COMMENT '生命值',
  `training_resource_cost` int(11) NOT NULL COMMENT '消耗的资源数量',
  `upgrade_time` int(11) NOT NULL COMMENT '升级需要的时间，以小时为单位',
  `upgrade_resource_cose` int(11) DEFAULT NULL COMMENT '升级需要消耗的资源数量',
  `damage` int(11) NOT NULL COMMENT '攻击力',
  `damage_radius` int(11) DEFAULT '0' COMMENT '攻击的溅射范围(范围伤害型)',
  `projectile_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '子弹名称(弓箭兵发射出去的箭)',
  `attack_effect` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '士兵攻击特效',
  `hited_effect` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '被攻击效果',
  `animation` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '动画名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色等级属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_characters_properties_level`
--

LOCK TABLES `bw_characters_properties_level` WRITE;
/*!40000 ALTER TABLE `bw_characters_properties_level` DISABLE KEYS */;
INSERT INTO `bw_characters_properties_level` VALUES (1,1,1,1,45,25,6,50000,8,-1,'','Barbarian Attack','Barbarian Hit','Barbarian\r'),(2,1,2,1,54,40,24,100000,11,-1,'','','','Barbarian\r'),(3,1,3,3,65,60,72,500000,14,-1,'','','','Barbarian3\r'),(4,1,4,5,78,80,120,1500000,18,-1,'','','','Barbarian3\r'),(5,1,5,6,95,100,120,-1,23,-1,'','','','Barbarian5\r'),(6,2,1,1,20,50,6,50000,7,-1,'Arrow_small','Archer Attack','Archer Hit','Archer\r'),(7,2,2,1,23,80,24,100000,9,-1,'Arrow_small','','','Archer\r'),(8,2,3,3,28,120,72,500000,12,-1,'Arrow_small_fire','','','Archer2\r'),(9,2,4,5,33,160,120,1500000,16,-1,'Arrow_small_fire','','','Archer2\r'),(10,2,5,6,40,200,120,-1,20,-1,'Arrow_small_elixirFire','','','Archer3\r'),(11,3,1,1,25,25,6,20000,11,-1,'','Goblin Attack','Goblin Hit','Goblin\r'),(12,3,2,1,30,40,24,100000,14,-1,'','','','Goblin\r'),(13,3,3,3,36,60,72,500000,19,-1,'','','','Goblin2\r'),(14,3,4,5,43,80,120,1500000,24,-1,'','','','Goblin2\r'),(15,3,5,6,52,100,120,-1,32,-1,'','','','Goblin3\r'),(16,4,1,1,300,500,6,100000,11,-1,'','Giant Attack','Giant Hit','Giant\r'),(17,4,2,2,360,1000,24,250000,14,-1,'','','','Giant\r'),(18,4,3,4,430,1500,72,500000,19,-1,'','','','Giant2\r'),(19,4,4,5,520,2000,120,1500000,24,-1,'','','','Giant2\r'),(20,4,5,6,620,2500,120,-1,31,-1,'','','','Giant3\r'),(21,5,1,1,20,1000,6,100000,12,80,'','Wall Breaker Attack','Wall Breaker Hit','Wall Breaker\r'),(22,5,2,2,24,1500,24,250000,16,80,'','','','Wall Breaker\r'),(23,5,3,4,29,2000,72,500000,24,80,'','','','Wall Breaker2\r'),(24,5,4,5,35,2500,120,1500000,32,80,'','','','Wall Breaker2\r'),(25,5,5,6,42,3000,120,-1,46,80,'','','','Wall Breaker3\r'),(26,6,1,1,150,2000,6,100000,25,120,'','Balloon Goblin Attack','Balloon Goblin Hit','Balloon Goblin\r'),(27,6,2,2,180,2500,24,250000,32,-1,'','','','Balloon Goblin\r'),(28,6,3,4,216,3000,72,500000,48,-1,'','','','Balloon Goblin2\r'),(29,6,4,5,260,3500,120,1500000,72,-1,'','','','Balloon Goblin2\r'),(30,6,5,6,310,4000,120,-1,108,-1,'','','','Balloon Goblin3\r'),(31,7,1,1,75,2000,6,150000,50,-1,'wizard_projectile','Wizard Attack','Wizard Hit1','Wizard\r'),(32,7,2,3,90,2500,24,250000,70,-1,'wizard_projectile','Wizard Attack','Wizard Hit1','Wizard\r'),(33,7,3,4,108,3000,72,500000,90,-1,'wizard_projectile','Wizard Attack','Wizard Hit1','Wizard2\r'),(34,7,4,5,130,3500,120,1500000,125,-1,'wizard_projectile2','Wizard Attack2','Wizard Hit2','Wizard2\r'),(35,7,5,6,156,4000,120,-1,170,-1,'wizard_projectile2','Wizard Attack2','Wizard Hit2','Wizard3\r'),(36,8,1,1,60,7000,72,500000,-30,200,'HealerEnergy','Healer Attack','Healer Hit','Healer\r'),(37,8,2,5,75,10000,120,1500000,-40,-1,'','','','Healer\r'),(38,8,3,6,90,13000,120,-1,-50,-1,'','','','Healer2\r'),(39,9,1,1,1700,40000,168,2000000,120,-1,'','Dragon Attack','Dragon Hit','Dragon\r'),(40,9,2,5,2000,55000,240,3000000,150,-1,'','','','Dragon2\r'),(41,9,3,6,2200,65000,240,-1,170,-1,'','','','Dragon3\r'),(42,10,1,1,2400,70000,240,3000000,200,-1,'','Pekka Attack','Pekka Hit','PEKKA\r'),(43,10,2,6,3000,100000,240,-1,260,-1,'','','','PEKKA2\r');
/*!40000 ALTER TABLE `bw_characters_properties_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_decorations`
--

DROP TABLE IF EXISTS `bw_decorations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_decorations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `price` bigint(20) NOT NULL COMMENT '价格',
  `max_count` mediumint(9) NOT NULL DEFAULT '1' COMMENT '用户拥有的最大数量',
  `price_type` tinyint(1) NOT NULL COMMENT '价格类型 0金币 1药水 2 绿宝石',
  `imag_path` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片路径',
  `discount_price` mediumint(9) DEFAULT '10' COMMENT '出卖以后所得到的百分比',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='装饰品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_decorations`
--

LOCK TABLES `bw_decorations` WRITE;
/*!40000 ALTER TABLE `bw_decorations` DISABLE KEYS */;
INSERT INTO `bw_decorations` VALUES (1,'Torch',500,4,1,NULL,10),(2,'White Flag',5000,1,1,NULL,10);
/*!40000 ALTER TABLE `bw_decorations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_game_channle`
--

DROP TABLE IF EXISTS `bw_game_channle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_game_channle` (
  `id` smallint(6) NOT NULL COMMENT '服务器ID列表',
  `channle_name` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '频道名称',
  `service_url` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'rmi url',
  `service_interface` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'rmi接口',
  `max_user_count` int(11) DEFAULT NULL COMMENT '该频道用户最大数量',
  `address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '服务器对外暴露的IP地址和端口号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '服务器状态 0 不可以 1可用',
  `area_id` smallint(6) NOT NULL DEFAULT '1' COMMENT '分区ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='游戏服务器列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_game_channle`
--

LOCK TABLES `bw_game_channle` WRITE;
/*!40000 ALTER TABLE `bw_game_channle` DISABLE KEYS */;
INSERT INTO `bw_game_channle` VALUES (1,'gameServer1',NULL,NULL,2000,'192.168.0.66:8000',1,1),(2,'gameServer2',NULL,NULL,2000,'192.168.0.77:8000',1,1);
/*!40000 ALTER TABLE `bw_game_channle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_hall_builds_relation`
--

DROP TABLE IF EXISTS `bw_hall_builds_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_hall_builds_relation` (
  `hall_level` int(11) NOT NULL COMMENT '大厅等级',
  `attack_cost` bigint(20) NOT NULL COMMENT 'PVP检索花费',
  `troop_housing` mediumint(9) DEFAULT '-1' COMMENT '营火数量',
  `elixir_storage` mediumint(9) DEFAULT '-1' COMMENT '水罐数量',
  `golden_storage` mediumint(9) DEFAULT '-1' COMMENT '金库数量',
  `elixir_pump` mediumint(9) DEFAULT '-1' COMMENT '水井数量',
  `gold_mine` mediumint(9) DEFAULT '-1' COMMENT '金矿数量',
  `barrack` mediumint(9) DEFAULT '-1' COMMENT '兵营数量',
  `cannon` mediumint(9) DEFAULT '-1' COMMENT '加农炮',
  `wall` mediumint(9) DEFAULT '-1' COMMENT '墙',
  `archer_tower` mediumint(9) DEFAULT '-1' COMMENT '箭塔',
  `wizard_tower` mediumint(9) DEFAULT '-1' COMMENT '法师塔',
  `air_defense` mediumint(9) DEFAULT '-1' COMMENT '防空塔',
  `mortar` mediumint(9) DEFAULT '-1' COMMENT '巨炮',
  `alliance_castle` mediumint(9) DEFAULT '-1' COMMENT '公会城保',
  `ejector` mediumint(9) DEFAULT '-1' COMMENT '弹射地雷',
  `superbomb` mediumint(9) DEFAULT '-1',
  `mine` mediumint(9) DEFAULT '-1' COMMENT '普通地雷',
  `worker_building` mediumint(9) DEFAULT '-1' COMMENT '工人',
  `laboratory` mediumint(9) DEFAULT '-1' COMMENT '科技',
  `tesla_tower` mediumint(9) DEFAULT '-1' COMMENT '电塔',
  `spell_forge` mediumint(9) DEFAULT '-1' COMMENT '魔法池',
  `plunder_arg1` float DEFAULT '50' COMMENT '掠夺等级参数1',
  `plunder_arg2` float DEFAULT '50' COMMENT '掠夺等级参数2',
  PRIMARY KEY (`hall_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='大厅和其他建筑的关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_hall_builds_relation`
--

LOCK TABLES `bw_hall_builds_relation` WRITE;
/*!40000 ALTER TABLE `bw_hall_builds_relation` DISABLE KEYS */;
INSERT INTO `bw_hall_builds_relation` VALUES (1,10,1,1,1,1,1,1,2,-1,-1,-1,-1,-1,1,-1,-1,-1,5,-1,-1,-1,50,50),(2,50,-1,-1,-1,2,2,2,-1,25,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,50,50),(3,75,2,2,2,3,3,-1,-1,50,-1,-1,-1,1,-1,-1,-1,2,-1,1,-1,-1,50,50),(4,110,-1,-1,-1,4,4,3,-1,75,2,-1,1,-1,-1,2,-1,-1,-1,-1,-1,-1,50,50),(5,170,3,-1,-1,5,5,-1,3,100,3,1,-1,-1,-1,-1,-1,4,-1,-1,-1,1,50,50),(6,250,-1,-1,-1,6,6,-1,-1,125,-1,2,-1,2,-1,4,1,-1,-1,-1,-1,-1,50,50),(7,380,4,-1,-1,-1,-1,4,4,150,4,-1,2,3,-1,-1,2,6,-1,-1,1,-1,50,50),(8,580,-1,3,3,-1,-1,-1,-1,200,5,3,-1,-1,-1,-1,3,-1,-1,-1,3,-1,50,50);
/*!40000 ALTER TABLE `bw_hall_builds_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_init_user`
--

DROP TABLE IF EXISTS `bw_init_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_init_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `golden_count` varchar(45) CHARACTER SET utf8 NOT NULL,
  `elixir_count` varchar(45) CHARACTER SET utf8 NOT NULL,
  `gem_count` varchar(45) CHARACTER SET utf8 NOT NULL,
  `exp` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户初始化数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_init_user`
--

LOCK TABLES `bw_init_user` WRITE;
/*!40000 ALTER TABLE `bw_init_user` DISABLE KEYS */;
INSERT INTO `bw_init_user` VALUES (1,'750','750','500','0');
/*!40000 ALTER TABLE `bw_init_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_quicken`
--

DROP TABLE IF EXISTS `bw_quicken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_quicken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quicken_time` mediumint(9) NOT NULL COMMENT '加速时间',
  `price` mediumint(9) NOT NULL COMMENT '以绿宝石来计价',
  `quicken_type` tinyint(1) NOT NULL COMMENT '0分钟 1小时 2 天3 一周',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='加速基础表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_quicken`
--

LOCK TABLES `bw_quicken` WRITE;
/*!40000 ALTER TABLE `bw_quicken` DISABLE KEYS */;
INSERT INTO `bw_quicken` VALUES (1,1,1,0),(2,1,20,1),(3,24,260,2),(4,1,1000,3);
/*!40000 ALTER TABLE `bw_quicken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_shield`
--

DROP TABLE IF EXISTS `bw_shield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_shield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL COMMENT '价格 绿宝石',
  `image_path` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='保护时间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_shield`
--

LOCK TABLES `bw_shield` WRITE;
/*!40000 ALTER TABLE `bw_shield` DISABLE KEYS */;
INSERT INTO `bw_shield` VALUES (1,'one day shield',100,NULL),(2,'two day shield',150,NULL);
/*!40000 ALTER TABLE `bw_shield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_spell`
--

DROP TABLE IF EXISTS `bw_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_spell` (
  `spell_id` int(11) NOT NULL,
  `spell_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '加血',
  `unlock_spell` mediumint(9) DEFAULT NULL COMMENT '魔法解锁需要的建筑等级',
  `training_resource` tinyint(1) DEFAULT '0' COMMENT '制造花费资源种类 0 金币 1药水 2绿宝石',
  `housing_space` tinyint(1) DEFAULT '1' COMMENT '魔法所占储存空间',
  `training_time` mediumint(9) DEFAULT '0' COMMENT '制造时间 单位秒',
  `charging_Time_ms` mediumint(9) DEFAULT '0' COMMENT '效果准备时间毫秒',
  `hit_time_ms` mediumint(9) DEFAULT '0' COMMENT '效果发作时间毫秒',
  `cooldown_s` mediumint(9) DEFAULT '0' COMMENT '冷却时间秒',
  `upgrade_resource` tinyint(1) DEFAULT '1' COMMENT '升级需要的资源',
  PRIMARY KEY (`spell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='魔法表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_spell`
--

LOCK TABLES `bw_spell` WRITE;
/*!40000 ALTER TABLE `bw_spell` DISABLE KEYS */;
INSERT INTO `bw_spell` VALUES (1,'LighningStorm',1,0,1,7200,1000,1100,25,1),(2,'HealingWave',2,0,1,10800,300,400,25,1),(3,'Haste',3,0,1,14400,300,400,25,1),(4,'Jump',4,0,1,18000,300,400,25,1);
/*!40000 ALTER TABLE `bw_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_spell_properties_level`
--

DROP TABLE IF EXISTS `bw_spell_properties_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_spell_properties_level` (
  `id` int(11) NOT NULL,
  `spell_level` mediumint(9) DEFAULT NULL,
  `spell_id` mediumint(9) DEFAULT NULL,
  `laboratory_level` mediumint(9) DEFAULT NULL COMMENT '魔法升级需要的科技建筑等级',
  `training_cost` bigint(20) DEFAULT '0' COMMENT '制造花费资源数量',
  `upgrade_time_H` mediumint(9) DEFAULT '0' COMMENT '升级时间 以小时为单位',
  `upgrade_cost` bigint(20) DEFAULT '0' COMMENT '升级需要资源数量',
  `boost_time_ms` bigint(20) DEFAULT '0' COMMENT '加速状态持续时间（毫秒）',
  `move_speed_boost` bigint(20) DEFAULT '0' COMMENT '移动速度促进量',
  `attack_speed_boost` bigint(20) DEFAULT '0' COMMENT '攻击速度促进量',
  `jump_housing_limit` smallint(6) NOT NULL DEFAULT '-1' COMMENT '跳跃次数限制 -1 代表此字段无效',
  `jump_boost_ms` bigint(20) DEFAULT '-1' COMMENT '跳跃状态持续时间 毫秒',
  `damage_boost_percent` smallint(6) DEFAULT '-1' COMMENT '伤害系数改变为 百分比',
  `damage` mediumint(9) NOT NULL DEFAULT '0',
  `radius` mediumint(9) DEFAULT NULL COMMENT '伤害影响范围',
  `number_of_hits` mediumint(9) NOT NULL COMMENT '伤害次数',
  `random_radius` mediumint(9) DEFAULT NULL COMMENT '随机跳转的范围',
  `time_betweenHits_ms` mediumint(9) NOT NULL COMMENT '伤害间隔',
  `icon_export_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标输出名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='魔法属性等级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_spell_properties_level`
--

LOCK TABLES `bw_spell_properties_level` WRITE;
/*!40000 ALTER TABLE `bw_spell_properties_level` DISABLE KEYS */;
INSERT INTO `bw_spell_properties_level` VALUES (1,1,1,1,15000,24,200000,0,0,0,-1,-1,-1,50,200,6,350,400,'icon_spell_lightning\r'),(2,2,1,1,16500,48,500000,0,0,0,-1,-1,-1,55,200,6,350,400,'icon_spell_lightning2\r'),(3,3,1,2,18000,72,1000000,0,0,0,-1,-1,-1,60,200,6,350,400,'icon_spell_lightning3\r'),(4,4,1,3,20000,96,2000000,0,0,0,-1,-1,-1,65,200,6,350,400,'icon_spell_lightning4\r'),(5,5,1,6,22000,0,0,0,0,0,-1,-1,-1,70,200,6,350,400,'icon_spell_lightning5\r'),(6,1,2,2,20000,24,300000,0,0,0,-1,-1,-1,-10,350,40,200,300,'icon_spell_healing\r'),(7,2,2,2,22000,48,600000,0,0,0,-1,-1,-1,-15,350,40,200,300,'icon_spell_healing2\r'),(8,3,2,4,24000,72,1200000,0,0,0,-1,-1,-1,-20,350,40,200,300,'icon_spell_healing3\r'),(9,4,2,5,26500,120,2400000,0,0,0,-1,-1,-1,-25,350,40,200,300,'icon_spell_healing4\r'),(10,5,2,6,29000,0,0,0,0,0,-1,-1,-1,-30,350,40,200,300,'icon_spell_healing5\r'),(11,1,3,3,30000,48,450000,1000,20,10,-1,-1,130,0,500,60,400,300,'icon_spell_rage\r'),(12,2,3,3,33000,72,900000,1000,22,11,-1,-1,140,0,500,60,400,300,'icon_spell_rage2\r'),(13,3,3,4,36000,120,1800000,1000,24,12,-1,-1,150,0,500,60,400,300,'icon_spell_rage3\r'),(14,4,3,5,40000,168,3000000,1000,26,13,-1,-1,160,0,500,60,400,300,'icon_spell_rage4\r'),(15,5,3,6,44000,0,0,1000,28,14,-1,-1,180,0,500,60,400,300,'icon_spell_rage5\r'),(16,1,4,4,50000,120,4000000,0,0,0,4,1000,-1,0,500,30,400,300,'icon_spell_jump\r'),(17,2,4,5,60000,0,0,0,0,0,25,1000,-1,0,500,30,400,300,'icon_spell_jump2\r');
/*!40000 ALTER TABLE `bw_spell_properties_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_treasure`
--

DROP TABLE IF EXISTS `bw_treasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_treasure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `treasure_type` tinyint(1) NOT NULL COMMENT '0 金币 1药水，2绿宝石',
  `count` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `price_type` tinyint(1) NOT NULL COMMENT '0 美元 1 绿宝石',
  `imagePath` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='财富表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_treasure`
--

LOCK TABLES `bw_treasure` WRITE;
/*!40000 ALTER TABLE `bw_treasure` DISABLE KEYS */;
INSERT INTO `bw_treasure` VALUES (1,'pile of gems',2,500,30,0,NULL),(2,'bag of gems',2,1200,68,0,NULL),(3,'fill Storages by 10%',0,150100,151,1,NULL);
/*!40000 ALTER TABLE `bw_treasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_user_level_req`
--

DROP TABLE IF EXISTS `bw_user_level_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_level_req` (
  `level_id` int(11) NOT NULL COMMENT '等级',
  `exp_req` int(11) NOT NULL COMMENT '要求的经验',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户等级要求表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_user_level_req`
--

LOCK TABLES `bw_user_level_req` WRITE;
/*!40000 ALTER TABLE `bw_user_level_req` DISABLE KEYS */;
INSERT INTO `bw_user_level_req` VALUES (1,30),(2,50),(3,100),(4,150),(5,200),(6,250),(7,300),(8,350),(9,400),(10,450),(11,500),(12,550),(13,600),(14,650),(15,700),(16,750),(17,800),(18,850),(19,900),(20,950),(21,1000),(22,1050),(23,1100),(24,1150),(25,1200),(26,1250),(27,1300),(28,1350),(29,1400),(30,1450),(31,1500),(32,1550),(33,1600),(34,1650),(35,1700),(36,1750),(37,1800),(38,1850),(39,1900),(40,1950),(41,2000),(42,2050),(43,2100),(44,2150),(45,2200),(46,2250),(47,2300),(48,2350),(49,2400),(50,2450),(51,2500),(52,2550),(53,2600),(54,2650),(55,2700),(56,2750),(57,2800),(58,2850),(59,2900),(60,2950),(61,3000),(62,3050),(63,3100),(64,3150),(65,3200),(66,3250),(67,3300),(68,3350),(69,3400),(70,3450),(71,3500),(72,3550),(73,3600),(74,3650),(75,3700),(76,3750),(77,3800),(78,3850),(79,3900),(80,3950),(81,4000),(82,4050),(83,4100),(84,4150),(85,4200),(86,4250),(87,4300),(88,4350),(89,4400),(90,4450),(91,4500),(92,4550),(93,4600),(94,4650),(95,4700),(96,4750),(97,4800),(98,4850),(99,4900),(100,4950),(101,5000),(102,5050),(103,5100),(104,5150),(105,5200),(106,5250),(107,5300),(108,5350),(109,5400),(110,5450),(111,5500),(112,5550),(113,5600),(114,5650),(115,5700),(116,5750),(117,5800),(118,5850),(119,5900),(120,5950),(121,6000),(122,6050),(123,6100),(124,6150),(125,6200),(126,6250),(127,6300),(128,6350),(129,6400),(130,6450),(131,6500),(132,6550),(133,6600),(134,6650),(135,6700),(136,6750),(137,6800),(138,6850),(139,6900),(140,6950),(141,7000),(142,7050),(143,7100),(144,7150),(145,7200),(146,7250),(147,7300),(148,7350),(149,7400),(150,7450),(151,7500),(152,7550),(153,7600),(154,7650),(155,7700),(156,7750),(157,7800),(158,7850),(159,7900),(160,7950),(161,8000),(162,8050),(163,8100),(164,8150),(165,8200),(166,8250),(167,8300),(168,8350),(169,8400),(170,8450),(171,8500),(172,8550),(173,8600),(174,8650),(175,8700),(176,8750),(177,8800),(178,8850),(179,8900),(180,8950),(181,9000),(182,9050),(183,9100),(184,9150),(185,9200),(186,9250),(187,9300),(188,9350),(189,9400),(190,9450),(191,9500),(192,9550),(193,9600),(194,9650),(195,9700),(196,9750),(197,9800),(198,9850),(199,9900),(200,9950);
/*!40000 ALTER TABLE `bw_user_level_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bw_worker`
--

DROP TABLE IF EXISTS `bw_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `next_price` mediumint(9) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `next_count` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='农民数量价格表 ,农民的数量每增加一个，农民的价格就会更贵';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bw_worker`
--

LOCK TABLES `bw_worker` WRITE;
/*!40000 ALTER TABLE `bw_worker` DISABLE KEYS */;
INSERT INTO `bw_worker` VALUES (1,250,'农民',1),(2,500,'农民',2),(3,1000,'农民',3),(4,2000,'农民',4);
/*!40000 ALTER TABLE `bw_worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-07 17:36:52
