-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm9k90a2eb
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `jspm9k90a2eb`
--

/*!40000 DROP DATABASE IF EXISTS `jspm9k90a2eb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspm9k90a2eb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspm9k90a2eb`;

--
-- Table structure for table `canjiamianshi`
--

DROP TABLE IF EXISTS `canjiamianshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canjiamianshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `mianshididian` varchar(200) DEFAULT NULL COMMENT '面试地点',
  `canjiashijian` datetime DEFAULT NULL COMMENT '参加时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COMMENT '头像',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='参加面试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canjiamianshi`
--

LOCK TABLES `canjiamianshi` WRITE;
/*!40000 ALTER TABLE `canjiamianshi` DISABLE KEYS */;
INSERT INTO `canjiamianshi` VALUES (81,'2024-05-12 13:54:12','标题1','面试地点1','2024-05-12 21:54:12','企业账号1','企业名称1','账号1','姓名1','upload/canjiamianshi_touxiang1.jpg,upload/canjiamianshi_touxiang2.jpg,upload/canjiamianshi_touxiang3.jpg',1,1),(82,'2024-05-12 13:54:12','标题2','面试地点2','2024-05-12 21:54:12','企业账号2','企业名称2','账号2','姓名2','upload/canjiamianshi_touxiang2.jpg,upload/canjiamianshi_touxiang3.jpg,upload/canjiamianshi_touxiang4.jpg',2,2),(83,'2024-05-12 13:54:12','标题3','面试地点3','2024-05-12 21:54:12','企业账号3','企业名称3','账号3','姓名3','upload/canjiamianshi_touxiang3.jpg,upload/canjiamianshi_touxiang4.jpg,upload/canjiamianshi_touxiang5.jpg',3,3),(84,'2024-05-12 13:54:12','标题4','面试地点4','2024-05-12 21:54:12','企业账号4','企业名称4','账号4','姓名4','upload/canjiamianshi_touxiang4.jpg,upload/canjiamianshi_touxiang5.jpg,upload/canjiamianshi_touxiang6.jpg',4,4),(85,'2024-05-12 13:54:12','标题5','面试地点5','2024-05-12 21:54:12','企业账号5','企业名称5','账号5','姓名5','upload/canjiamianshi_touxiang5.jpg,upload/canjiamianshi_touxiang6.jpg,upload/canjiamianshi_touxiang7.jpg',5,5),(86,'2024-05-12 13:54:12','标题6','面试地点6','2024-05-12 21:54:12','企业账号6','企业名称6','账号6','姓名6','upload/canjiamianshi_touxiang6.jpg,upload/canjiamianshi_touxiang7.jpg,upload/canjiamianshi_touxiang8.jpg',6,6),(87,'2024-05-12 13:54:12','标题7','面试地点7','2024-05-12 21:54:12','企业账号7','企业名称7','账号7','姓名7','upload/canjiamianshi_touxiang7.jpg,upload/canjiamianshi_touxiang8.jpg,upload/canjiamianshi_touxiang9.jpg',7,7),(88,'2024-05-12 13:54:12','标题8','面试地点8','2024-05-12 21:54:12','企业账号8','企业名称8','账号8','姓名8','upload/canjiamianshi_touxiang8.jpg,upload/canjiamianshi_touxiang9.jpg,upload/canjiamianshi_touxiang10.jpg',8,8);
/*!40000 ALTER TABLE `canjiamianshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (101,'2024-05-12 13:54:12','标题1','简介1','2024-05-12','upload/gonggaoxinxi_fengmian1.jpg,upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg','内容1',1),(102,'2024-05-12 13:54:12','标题2','简介2','2024-05-12','upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg','内容2',2),(103,'2024-05-12 13:54:12','标题3','简介3','2024-05-12','upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg','内容3',3),(104,'2024-05-12 13:54:12','标题4','简介4','2024-05-12','upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg','内容4',4),(105,'2024-05-12 13:54:12','标题5','简介5','2024-05-12','upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg','内容5',5),(106,'2024-05-12 13:54:12','标题6','简介6','2024-05-12','upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg','内容6',6),(107,'2024-05-12 13:54:12','标题7','简介7','2024-05-12','upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg','内容7',7),(108,'2024-05-12 13:54:12','标题8','简介8','2024-05-12','upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg,upload/gonggaoxinxi_fengmian10.jpg','内容8',8);
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mianshijieguo`
--

DROP TABLE IF EXISTS `mianshijieguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mianshijieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jieguo` varchar(200) NOT NULL COMMENT '结果',
  `jieguoshuoming` longtext COMMENT '结果说明',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COMMENT '头像',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='面试结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mianshijieguo`
--

LOCK TABLES `mianshijieguo` WRITE;
/*!40000 ALTER TABLE `mianshijieguo` DISABLE KEYS */;
INSERT INTO `mianshijieguo` VALUES (91,'2024-05-12 13:54:12','标题1','通过','结果说明1','2024-05-12 21:54:12','企业账号1','企业名称1','账号1','姓名1','upload/mianshijieguo_touxiang1.jpg,upload/mianshijieguo_touxiang2.jpg,upload/mianshijieguo_touxiang3.jpg',1,1),(92,'2024-05-12 13:54:12','标题2','通过','结果说明2','2024-05-12 21:54:12','企业账号2','企业名称2','账号2','姓名2','upload/mianshijieguo_touxiang2.jpg,upload/mianshijieguo_touxiang3.jpg,upload/mianshijieguo_touxiang4.jpg',2,2),(93,'2024-05-12 13:54:12','标题3','通过','结果说明3','2024-05-12 21:54:12','企业账号3','企业名称3','账号3','姓名3','upload/mianshijieguo_touxiang3.jpg,upload/mianshijieguo_touxiang4.jpg,upload/mianshijieguo_touxiang5.jpg',3,3),(94,'2024-05-12 13:54:12','标题4','通过','结果说明4','2024-05-12 21:54:12','企业账号4','企业名称4','账号4','姓名4','upload/mianshijieguo_touxiang4.jpg,upload/mianshijieguo_touxiang5.jpg,upload/mianshijieguo_touxiang6.jpg',4,4),(95,'2024-05-12 13:54:12','标题5','通过','结果说明5','2024-05-12 21:54:12','企业账号5','企业名称5','账号5','姓名5','upload/mianshijieguo_touxiang5.jpg,upload/mianshijieguo_touxiang6.jpg,upload/mianshijieguo_touxiang7.jpg',5,5),(96,'2024-05-12 13:54:12','标题6','通过','结果说明6','2024-05-12 21:54:12','企业账号6','企业名称6','账号6','姓名6','upload/mianshijieguo_touxiang6.jpg,upload/mianshijieguo_touxiang7.jpg,upload/mianshijieguo_touxiang8.jpg',6,6),(97,'2024-05-12 13:54:12','标题7','通过','结果说明7','2024-05-12 21:54:12','企业账号7','企业名称7','账号7','姓名7','upload/mianshijieguo_touxiang7.jpg,upload/mianshijieguo_touxiang8.jpg,upload/mianshijieguo_touxiang9.jpg',7,7),(98,'2024-05-12 13:54:12','标题8','通过','结果说明8','2024-05-12 21:54:12','企业账号8','企业名称8','账号8','姓名8','upload/mianshijieguo_touxiang8.jpg,upload/mianshijieguo_touxiang9.jpg,upload/mianshijieguo_touxiang10.jpg',8,8);
/*!40000 ALTER TABLE `mianshijieguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mianshiyaoqing`
--

DROP TABLE IF EXISTS `mianshiyaoqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mianshiyaoqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COMMENT '头像',
  `mianshididian` varchar(200) DEFAULT NULL COMMENT '面试地点',
  `zhunbeiziliao` longtext COMMENT '准备资料',
  `mianshishijian` datetime DEFAULT NULL COMMENT '面试时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='面试邀请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mianshiyaoqing`
--

LOCK TABLES `mianshiyaoqing` WRITE;
/*!40000 ALTER TABLE `mianshiyaoqing` DISABLE KEYS */;
INSERT INTO `mianshiyaoqing` VALUES (71,'2024-05-12 13:54:12','标题1','企业账号1','企业名称1','账号1','姓名1','upload/mianshiyaoqing_touxiang1.jpg,upload/mianshiyaoqing_touxiang2.jpg,upload/mianshiyaoqing_touxiang3.jpg','面试地点1','准备资料1','2024-05-12 21:54:12'),(72,'2024-05-12 13:54:12','标题2','企业账号2','企业名称2','账号2','姓名2','upload/mianshiyaoqing_touxiang2.jpg,upload/mianshiyaoqing_touxiang3.jpg,upload/mianshiyaoqing_touxiang4.jpg','面试地点2','准备资料2','2024-05-12 21:54:12'),(73,'2024-05-12 13:54:12','标题3','企业账号3','企业名称3','账号3','姓名3','upload/mianshiyaoqing_touxiang3.jpg,upload/mianshiyaoqing_touxiang4.jpg,upload/mianshiyaoqing_touxiang5.jpg','面试地点3','准备资料3','2024-05-12 21:54:12'),(74,'2024-05-12 13:54:12','标题4','企业账号4','企业名称4','账号4','姓名4','upload/mianshiyaoqing_touxiang4.jpg,upload/mianshiyaoqing_touxiang5.jpg,upload/mianshiyaoqing_touxiang6.jpg','面试地点4','准备资料4','2024-05-12 21:54:12'),(75,'2024-05-12 13:54:12','标题5','企业账号5','企业名称5','账号5','姓名5','upload/mianshiyaoqing_touxiang5.jpg,upload/mianshiyaoqing_touxiang6.jpg,upload/mianshiyaoqing_touxiang7.jpg','面试地点5','准备资料5','2024-05-12 21:54:12'),(76,'2024-05-12 13:54:12','标题6','企业账号6','企业名称6','账号6','姓名6','upload/mianshiyaoqing_touxiang6.jpg,upload/mianshiyaoqing_touxiang7.jpg,upload/mianshiyaoqing_touxiang8.jpg','面试地点6','准备资料6','2024-05-12 21:54:12'),(77,'2024-05-12 13:54:12','标题7','企业账号7','企业名称7','账号7','姓名7','upload/mianshiyaoqing_touxiang7.jpg,upload/mianshiyaoqing_touxiang8.jpg,upload/mianshiyaoqing_touxiang9.jpg','面试地点7','准备资料7','2024-05-12 21:54:12'),(78,'2024-05-12 13:54:12','标题8','企业账号8','企业名称8','账号8','姓名8','upload/mianshiyaoqing_touxiang8.jpg,upload/mianshiyaoqing_touxiang9.jpg,upload/mianshiyaoqing_touxiang10.jpg','面试地点8','准备资料8','2024-05-12 21:54:12');
/*!40000 ALTER TABLE `mianshiyaoqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuzhizhe`
--

DROP TABLE IF EXISTS `qiuzhizhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuzhizhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='求职者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuzhizhe`
--

LOCK TABLES `qiuzhizhe` WRITE;
/*!40000 ALTER TABLE `qiuzhizhe` DISABLE KEYS */;
INSERT INTO `qiuzhizhe` VALUES (11,'2024-05-12 13:54:12','账号1','123456','姓名1','男','13823888881','440300199101010001','upload/qiuzhizhe_touxiang1.jpg'),(12,'2024-05-12 13:54:12','账号2','123456','姓名2','男','13823888882','440300199202020002','upload/qiuzhizhe_touxiang2.jpg'),(13,'2024-05-12 13:54:12','账号3','123456','姓名3','男','13823888883','440300199303030003','upload/qiuzhizhe_touxiang3.jpg'),(14,'2024-05-12 13:54:12','账号4','123456','姓名4','男','13823888884','440300199404040004','upload/qiuzhizhe_touxiang4.jpg'),(15,'2024-05-12 13:54:12','账号5','123456','姓名5','男','13823888885','440300199505050005','upload/qiuzhizhe_touxiang5.jpg'),(16,'2024-05-12 13:54:12','账号6','123456','姓名6','男','13823888886','440300199606060006','upload/qiuzhizhe_touxiang6.jpg'),(17,'2024-05-12 13:54:12','账号7','123456','姓名7','男','13823888887','440300199707070007','upload/qiuzhizhe_touxiang7.jpg'),(18,'2024-05-12 13:54:12','账号8','123456','姓名8','男','13823888888','440300199808080008','upload/qiuzhizhe_touxiang8.jpg');
/*!40000 ALTER TABLE `qiuzhizhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `touxiang` longtext COMMENT '封面',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2024-05-12 13:54:12','企业账号1','123456','企业名称1','负责人1','13823888881','773890001@qq.com','企业地址1','upload/qiye_touxiang1.jpg'),(22,'2024-05-12 13:54:12','企业账号2','123456','企业名称2','负责人2','13823888882','773890002@qq.com','企业地址2','upload/qiye_touxiang2.jpg'),(23,'2024-05-12 13:54:12','企业账号3','123456','企业名称3','负责人3','13823888883','773890003@qq.com','企业地址3','upload/qiye_touxiang3.jpg'),(24,'2024-05-12 13:54:12','企业账号4','123456','企业名称4','负责人4','13823888884','773890004@qq.com','企业地址4','upload/qiye_touxiang4.jpg'),(25,'2024-05-12 13:54:12','企业账号5','123456','企业名称5','负责人5','13823888885','773890005@qq.com','企业地址5','upload/qiye_touxiang5.jpg'),(26,'2024-05-12 13:54:12','企业账号6','123456','企业名称6','负责人6','13823888886','773890006@qq.com','企业地址6','upload/qiye_touxiang6.jpg'),(27,'2024-05-12 13:54:12','企业账号7','123456','企业名称7','负责人7','13823888887','773890007@qq.com','企业地址7','upload/qiye_touxiang7.jpg'),(28,'2024-05-12 13:54:12','企业账号8','123456','企业名称8','负责人8','13823888888','773890008@qq.com','企业地址8','upload/qiye_touxiang8.jpg');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'企业账号1','qiye','企业','id1t4dlauqmg94vfka9pas022wv3km0v','2024-05-12 14:00:19','2024-05-12 15:00:20'),(2,11,'账号1','qiuzhizhe','求职者','s0lwnh1rx1le3qh70y7y33g7hjh6lw4l','2024-05-12 14:01:07','2024-05-12 15:01:07');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toudijianli`
--

DROP TABLE IF EXISTS `toudijianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toudijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  `gerenjianli` longtext COMMENT '个人简历',
  `toudishijian` datetime DEFAULT NULL COMMENT '投递时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='投递简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toudijianli`
--

LOCK TABLES `toudijianli` WRITE;
/*!40000 ALTER TABLE `toudijianli` DISABLE KEYS */;
INSERT INTO `toudijianli` VALUES (61,'2024-05-12 13:54:12','账号1','姓名1','性别1','手机1','upload/toudijianli_touxiang1.jpg,upload/toudijianli_touxiang2.jpg,upload/toudijianli_touxiang3.jpg','职位名称1','','2024-05-12 21:54:12','企业账号1','企业名称1',1,1,'是',''),(62,'2024-05-12 13:54:12','账号2','姓名2','性别2','手机2','upload/toudijianli_touxiang2.jpg,upload/toudijianli_touxiang3.jpg,upload/toudijianli_touxiang4.jpg','职位名称2','','2024-05-12 21:54:12','企业账号2','企业名称2',2,2,'是',''),(63,'2024-05-12 13:54:12','账号3','姓名3','性别3','手机3','upload/toudijianli_touxiang3.jpg,upload/toudijianli_touxiang4.jpg,upload/toudijianli_touxiang5.jpg','职位名称3','','2024-05-12 21:54:12','企业账号3','企业名称3',3,3,'是',''),(64,'2024-05-12 13:54:12','账号4','姓名4','性别4','手机4','upload/toudijianli_touxiang4.jpg,upload/toudijianli_touxiang5.jpg,upload/toudijianli_touxiang6.jpg','职位名称4','','2024-05-12 21:54:12','企业账号4','企业名称4',4,4,'是',''),(65,'2024-05-12 13:54:12','账号5','姓名5','性别5','手机5','upload/toudijianli_touxiang5.jpg,upload/toudijianli_touxiang6.jpg,upload/toudijianli_touxiang7.jpg','职位名称5','','2024-05-12 21:54:12','企业账号5','企业名称5',5,5,'是',''),(66,'2024-05-12 13:54:12','账号6','姓名6','性别6','手机6','upload/toudijianli_touxiang6.jpg,upload/toudijianli_touxiang7.jpg,upload/toudijianli_touxiang8.jpg','职位名称6','','2024-05-12 21:54:12','企业账号6','企业名称6',6,6,'是',''),(67,'2024-05-12 13:54:12','账号7','姓名7','性别7','手机7','upload/toudijianli_touxiang7.jpg,upload/toudijianli_touxiang8.jpg,upload/toudijianli_touxiang9.jpg','职位名称7','','2024-05-12 21:54:12','企业账号7','企业名称7',7,7,'是',''),(68,'2024-05-12 13:54:12','账号8','姓名8','性别8','手机8','upload/toudijianli_touxiang8.jpg,upload/toudijianli_touxiang9.jpg,upload/toudijianli_touxiang10.jpg','职位名称8','','2024-05-12 21:54:12','企业账号8','企业名称8',8,8,'是','');
/*!40000 ALTER TABLE `toudijianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2024-05-12 13:54:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  `zhiweileixing` varchar(200) DEFAULT NULL COMMENT '职位类型',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `zhaopinyaoqiu` longtext COMMENT '招聘要求',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `shangbandidian` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `fengmian` longtext COMMENT '封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopinxiangqing` longtext COMMENT '招聘详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (41,'2024-05-12 13:54:12','职位名称1','职位类型1','不限','招聘要求1','上班时间1','上班地点1','薪资待遇1',1,'upload/zhaopinxinxi_fengmian1.jpg,upload/zhaopinxinxi_fengmian2.jpg,upload/zhaopinxinxi_fengmian3.jpg','2024-05-12','企业账号1','企业名称1','负责人1','13823888881','773890001@qq.com','<p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p><br/></p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p><br/></p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>啊啧啧啧</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp; &nbsp;详情信息&nbsp; &nbsp;等内容。</p><p><br/></p>','2024-05-12 22:01:26',6),(42,'2024-05-12 13:54:12','职位名称2','职位类型2','不限','招聘要求2','上班时间2','上班地点2','薪资待遇2',2,'upload/zhaopinxinxi_fengmian2.jpg,upload/zhaopinxinxi_fengmian3.jpg,upload/zhaopinxinxi_fengmian4.jpg','2024-05-12','企业账号2','企业名称2','负责人2','13823888882','773890002@qq.com','招聘详情2','2024-05-12 21:54:12',2),(43,'2024-05-12 13:54:12','职位名称3','职位类型3','不限','招聘要求3','上班时间3','上班地点3','薪资待遇3',3,'upload/zhaopinxinxi_fengmian3.jpg,upload/zhaopinxinxi_fengmian4.jpg,upload/zhaopinxinxi_fengmian5.jpg','2024-05-12','企业账号3','企业名称3','负责人3','13823888883','773890003@qq.com','招聘详情3','2024-05-12 21:54:12',3),(44,'2024-05-12 13:54:12','职位名称4','职位类型4','不限','招聘要求4','上班时间4','上班地点4','薪资待遇4',4,'upload/zhaopinxinxi_fengmian4.jpg,upload/zhaopinxinxi_fengmian5.jpg,upload/zhaopinxinxi_fengmian6.jpg','2024-05-12','企业账号4','企业名称4','负责人4','13823888884','773890004@qq.com','招聘详情4','2024-05-12 21:54:12',4),(45,'2024-05-12 13:54:12','职位名称5','职位类型5','不限','招聘要求5','上班时间5','上班地点5','薪资待遇5',5,'upload/zhaopinxinxi_fengmian5.jpg,upload/zhaopinxinxi_fengmian6.jpg,upload/zhaopinxinxi_fengmian7.jpg','2024-05-12','企业账号5','企业名称5','负责人5','13823888885','773890005@qq.com','招聘详情5','2024-05-12 21:54:12',5),(46,'2024-05-12 13:54:12','职位名称6','职位类型6','不限','招聘要求6','上班时间6','上班地点6','薪资待遇6',6,'upload/zhaopinxinxi_fengmian6.jpg,upload/zhaopinxinxi_fengmian7.jpg,upload/zhaopinxinxi_fengmian8.jpg','2024-05-12','企业账号6','企业名称6','负责人6','13823888886','773890006@qq.com','招聘详情6','2024-05-12 21:54:12',6),(47,'2024-05-12 13:54:12','职位名称7','职位类型7','不限','招聘要求7','上班时间7','上班地点7','薪资待遇7',7,'upload/zhaopinxinxi_fengmian7.jpg,upload/zhaopinxinxi_fengmian8.jpg,upload/zhaopinxinxi_fengmian9.jpg','2024-05-12','企业账号7','企业名称7','负责人7','13823888887','773890007@qq.com','招聘详情7','2024-05-12 21:54:12',7),(48,'2024-05-12 13:54:12','职位名称8','职位类型8','不限','招聘要求8','上班时间8','上班地点8','薪资待遇8',8,'upload/zhaopinxinxi_fengmian8.jpg,upload/zhaopinxinxi_fengmian9.jpg,upload/zhaopinxinxi_fengmian10.jpg','2024-05-12','企业账号8','企业名称8','负责人8','13823888888','773890008@qq.com','招聘详情8','2024-05-12 21:54:12',8);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweileixing`
--

DROP TABLE IF EXISTS `zhiweileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweileixing` varchar(200) DEFAULT NULL COMMENT '职位类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiweileixing` (`zhiweileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='职位类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweileixing`
--

LOCK TABLES `zhiweileixing` WRITE;
/*!40000 ALTER TABLE `zhiweileixing` DISABLE KEYS */;
INSERT INTO `zhiweileixing` VALUES (31,'2024-05-12 13:54:12','职位类型1'),(32,'2024-05-12 13:54:12','职位类型2'),(33,'2024-05-12 13:54:12','职位类型3'),(34,'2024-05-12 13:54:12','职位类型4'),(35,'2024-05-12 13:54:12','职位类型5'),(36,'2024-05-12 13:54:12','职位类型6'),(37,'2024-05-12 13:54:12','职位类型7'),(38,'2024-05-12 13:54:12','职位类型8');
/*!40000 ALTER TABLE `zhiweileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunqiye`
--

DROP TABLE IF EXISTS `zixunqiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunqiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) DEFAULT NULL COMMENT '咨询标题',
  `zixunwenti` longtext NOT NULL COMMENT '咨询问题',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='咨询企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunqiye`
--

LOCK TABLES `zixunqiye` WRITE;
/*!40000 ALTER TABLE `zixunqiye` DISABLE KEYS */;
INSERT INTO `zixunqiye` VALUES (51,'2024-05-12 13:54:12','咨询标题1','咨询问题1','2024-05-12 21:54:12','企业账号1','企业名称1','账号1','姓名1',''),(52,'2024-05-12 13:54:12','咨询标题2','咨询问题2','2024-05-12 21:54:12','企业账号2','企业名称2','账号2','姓名2',''),(53,'2024-05-12 13:54:12','咨询标题3','咨询问题3','2024-05-12 21:54:12','企业账号3','企业名称3','账号3','姓名3',''),(54,'2024-05-12 13:54:12','咨询标题4','咨询问题4','2024-05-12 21:54:12','企业账号4','企业名称4','账号4','姓名4',''),(55,'2024-05-12 13:54:12','咨询标题5','咨询问题5','2024-05-12 21:54:12','企业账号5','企业名称5','账号5','姓名5',''),(56,'2024-05-12 13:54:12','咨询标题6','咨询问题6','2024-05-12 21:54:12','企业账号6','企业名称6','账号6','姓名6',''),(57,'2024-05-12 13:54:12','咨询标题7','咨询问题7','2024-05-12 21:54:12','企业账号7','企业名称7','账号7','姓名7',''),(58,'2024-05-12 13:54:12','咨询标题8','咨询问题8','2024-05-12 21:54:12','企业账号8','企业名称8','账号8','姓名8','');
/*!40000 ALTER TABLE `zixunqiye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 15:33:34
