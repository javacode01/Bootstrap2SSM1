-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bootstrap2ssm
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `sys_attachment`
--

DROP TABLE IF EXISTS `sys_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_attachment` (
  `RECID` varchar(32) NOT NULL COMMENT '附件ID',
  `MODULE` varchar(100) DEFAULT NULL COMMENT '附件所属模块，也可以是所属表',
  `BUSINESSID` varchar(32) DEFAULT NULL COMMENT '关联主表ID',
  `TYPE` varchar(100) DEFAULT NULL COMMENT '附件类型，比如首页图片，详情页图片',
  `NAME` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `PATH` varchar(200) DEFAULT NULL COMMENT '附件保存路径',
  `NOTE` varchar(1000) DEFAULT NULL COMMENT '附件备注',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '附件上传时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '附件上传人',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '附件更新时间',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '附件更新人',
  `ATTACHMENT_SIZE` double DEFAULT NULL COMMENT '附件大小',
  `SUFFIX` varchar(10) DEFAULT NULL COMMENT '附件后缀',
  PRIMARY KEY (`RECID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attachment`
--

LOCK TABLES `sys_attachment` WRITE;
/*!40000 ALTER TABLE `sys_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries` (
  `RECID` varchar(32) NOT NULL COMMENT '记录ID',
  `DIC_TYPE` varchar(100) DEFAULT NULL COMMENT '字典类型',
  `DIC_NAME` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `NOTE` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`RECID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统数据字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES ('0fac0c2a71884287b5ade2dcff2ad80e','QUARTZJOBSTATUS','定时任务状态',NULL),('2e6f4e4cb6734dadbc52d8437886a7fe','ORGANLEVEL','机构级别',NULL),('36078061cd8e47cc95490897c55db540','USERSSTATUS','用户状态',NULL),('47a9fe6ff2e54f259dba2f36ebe90b72','FLEVEL','功能级别',NULL),('5abc36d1b33e4b5d90eda11cf44cd68d','USERSSYSTEM','是否系统用户',NULL),('60f95adaf02c4abf8a1f4df597373041','FTYPE','功能类型',NULL),('866b97126e614d1e9d71f1c214c240e6','ORGANTYPE','机构类型',NULL),('a249bc4a95d344b5a65a869cff5d8918','ISORNOT','是否',NULL),('ad862009a0654ddf953bb6ee166fc18d','ORGANCLASS','机构类型',NULL);
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries_item`
--

DROP TABLE IF EXISTS `sys_dictionaries_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries_item` (
  `RECID` varchar(32) NOT NULL COMMENT '记录ID',
  `DIC_TYPE` varchar(100) DEFAULT NULL COMMENT '字典类型',
  `ITEM_CODE` varchar(100) DEFAULT NULL COMMENT '字典项编号',
  `ITEM_NAME` varchar(1000) DEFAULT NULL COMMENT '字典项名称',
  `NOTE` varchar(1000) DEFAULT NULL COMMENT '备注',
  `STATUS` char(1) DEFAULT NULL COMMENT '是否有效0：否1：是',
  `SEQ` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`RECID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典项数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries_item`
--

LOCK TABLES `sys_dictionaries_item` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries_item` DISABLE KEYS */;
INSERT INTO `sys_dictionaries_item` VALUES ('027ba33b6bfb48eeb66cfffe91b9c565','USERSSYSTEM','0','否',NULL,NULL,1),('0283268b51a849919a7b0edc71269dd3','QUARTZJOBSTATUS','COMPLETE','触发器完成',NULL,NULL,4),('16f4a8ff9ef340828b1fbf8e69071c4a','FLEVEL','3','操作',NULL,NULL,3),('1aa7563c62284709971752b3f9ff46e4','FTYPE','1','查询',NULL,NULL,1),('3708f99e35e54c9fa36e773d1f937022','ORGANTYPE','2','部门',NULL,NULL,2),('37d00e367e0247a5a0276d3d941c9140','FLEVEL','2','功能',NULL,NULL,2),('4d98864322874aac81625b5ebe01b767','QUARTZJOBSTATUS','ERROR','出现错误',NULL,NULL,6),('5f93b42fee7d41f9821e9732e5be5ec1','USERSSTATUS','1','正常',NULL,NULL,2),('617b37ae6d634926a7677d6455ee4143','ORGANLEVEL','4','财务部',NULL,NULL,4),('66a8bfcc9a4f4dcb8bc0c02d8f88a85e','ORGANLEVEL','1','总公司',NULL,NULL,1),('6bcf8ae61c10426ab4adcf55b288ff4e','QUARTZJOBSTATUS','NONE','就绪',NULL,NULL,1),('79546522e8d44abb86f35c1e2fd86a43','ORGANTYPE','1','公司',NULL,NULL,1),('81f3f8ea96ee4c928ca61eed33090a45','QUARTZJOBSTATUS','PAUSED','暂停状态',NULL,NULL,3),('84a641f73a3d4a5a9ac39451af9cbb5b','USERSSYSTEM','1','是',NULL,NULL,2),('8e834940bae84ba1ad590a7c7376b82b','QUARTZJOBSTATUS','NORMAL','正常状态',NULL,NULL,2),('97156546dd2a49ae839a43c0d1bb3b81','ORGANLEVEL','3','商务部',NULL,NULL,3),('9b709ca220b04a2da828722e7af75f25','FTYPE','2','操作',NULL,NULL,2),('bc8196cbfa724bceae1518784772b298','ORGANLEVEL','2','分公司',NULL,NULL,2),('c687b285c7db4ce4854e547944fbd66c','QUARTZJOBSTATUS','BLOCKED','线程阻塞状态',NULL,NULL,5),('d2192510336342179e7b5d8951326877','ORGANCLASS','1','公司',NULL,NULL,1),('d6bb5f9a45ba440a934d33b88c9b67f8','ORGANCLASS','2','集团',NULL,NULL,2),('d7ca56bc8a5349b9b6249cd906df6904','USERSSTATUS','0','锁定',NULL,NULL,1),('daf8f6d78ece49abb64574cc3f4b4a19','FLEVEL','1','模块',NULL,NULL,1),('dfec3514f1ae4715b547997e96edf845','ISORNOT','0','否',NULL,NULL,1),('e612a780ee91408585ac5336852a1e9a','ISORNOT','1','是',NULL,NULL,2),('f6029e888cc545bf9b14719e2f62135f','ORGANLEVEL','5','后勤部',NULL,NULL,5);
/*!40000 ALTER TABLE `sys_dictionaries_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_functions`
--

DROP TABLE IF EXISTS `sys_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_functions` (
  `FUNCTION_ID` varchar(32) NOT NULL COMMENT '功能ID',
  `FUNCTION_NAME` varchar(50) DEFAULT NULL COMMENT '功能名称',
  `FUNCTION_ICON` varchar(50) DEFAULT NULL COMMENT '功能图标',
  `FUNCTION_LEVEL` char(1) DEFAULT NULL COMMENT '功能级别1：模块2：功能3：操作',
  `PARENT_CODE` varchar(20) DEFAULT NULL COMMENT '上级功能编码',
  `FUNCTION_CODE` varchar(20) NOT NULL COMMENT '功能编码',
  `FUNCTION_URL` varchar(100) DEFAULT NULL COMMENT '资源地址',
  `FUNCTION_TYPE` char(1) DEFAULT NULL COMMENT '功能类型1：查询2：操作',
  `SEQ` int(11) DEFAULT NULL COMMENT '排序',
  `DEFAULT_ACTION` char(1) DEFAULT NULL COMMENT '默认访问0：否，1：是',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`FUNCTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统功能表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_functions`
--

LOCK TABLES `sys_functions` WRITE;
/*!40000 ALTER TABLE `sys_functions` DISABLE KEYS */;
INSERT INTO `sys_functions` VALUES ('1EC561807E9746DE829F420EA48FFEE9','查询',NULL,'3','00990004','009900040001','sys/dictionaries/initmanagerdictionaries','1',1,'1','2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42',NULL),('26EF7BFAF2E74427A89E569E1B063A56','查询',NULL,'3','00990003','009900030001','sys/functions/initmanagerfunctions','1',1,'1','2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42',NULL),('32B92F3D5194494A981069218CD9BC3D','数据字典管理','fa fa-book','2','0099','00990004',NULL,NULL,4,NULL,'2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42','1'),('3F78BF1C4B424F4F9A8E0F2E62183B07','系统管理','fa fa-th-large','1','root','0099',NULL,NULL,99,NULL,'2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42',NULL),('72086f4c94cd469ca9c65b5c750a7f68','组织结构管理','fa fa-sitemap','2','0099','00990005',NULL,NULL,5,NULL,'2018-04-14 01:54:42','1','2018-04-14 01:54:42','1'),('8ABACF0F7A2E433B959F93F1563B765C','查询',NULL,'3','00990001','009900010001','sys/users/initmanagerusers','1',1,'1','2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42',NULL),('a13a6812a6fd41af9ca2e6aa23d8f32a','查询',NULL,'3','00990006','009900060001','sys/quartzjob/initmanagerquartzjob','1',1,'1','2018-04-14 01:54:42','1','2018-04-14 01:54:42','1'),('A9D81C42E46A44E7802440DBE90618ED','角色管理','fa fa-unlock','2','0099','00990002',NULL,NULL,2,NULL,'2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42','1'),('ab8776f89a1344768af1811b34bbdd0b','定时任务管理','fa fa-clock-o','2','0099','00990006',NULL,NULL,6,NULL,'2018-04-14 01:54:42','1','2018-04-14 01:54:42','1'),('B51F8D51CB6B4320BB5898C23965F220','功能管理','fa fa-wrench','2','0099','00990003',NULL,NULL,3,NULL,'2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42','1'),('C0906A8B563946208CE577C6EC06820B','查询',NULL,'3','00990002','009900020001','sys/roles/initmanagerroles','1',1,'1','2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42',NULL),('C83773F6A9854502A2883DC15ED7B367','用户管理','fa fa-user','2','0099','00990001',NULL,NULL,1,NULL,'2018-04-14 01:54:42',NULL,'2018-04-14 01:54:42','1'),('fc962c16a18b472492cb173ca361d679','查询',NULL,'3','00990005','009900050001','sys/organ/initmanagerorgan','1',1,'1','2018-04-14 01:54:42','1','2018-04-14 01:54:42','1');
/*!40000 ALTER TABLE `sys_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_organ`
--

DROP TABLE IF EXISTS `sys_organ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_organ` (
  `ORGAN_ID` varchar(32) NOT NULL COMMENT '组织机构ID',
  `ORGAN_CODE` varchar(20) NOT NULL COMMENT '组织机构编号',
  `ORGAN_NAME` varchar(50) DEFAULT NULL COMMENT '组织机构名称',
  `PARENT_CODE` varchar(20) DEFAULT NULL COMMENT '上级组织机构',
  `ICON_URL` varchar(50) DEFAULT NULL COMMENT '组织图标',
  `SEQ` int(11) DEFAULT NULL COMMENT '排序',
  `ORGAN_LEVEL` char(1) DEFAULT NULL COMMENT '机构级别如1：省局2：市局',
  `ORGAN_CLASS` char(2) DEFAULT NULL COMMENT '机构类型如1：工商2：质检',
  `ORGAN_TYPE` char(1) DEFAULT NULL COMMENT '机构类型:如1:单位2:部门',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ORGAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统组织结构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_organ`
--

LOCK TABLES `sys_organ` WRITE;
/*!40000 ALTER TABLE `sys_organ` DISABLE KEYS */;
INSERT INTO `sys_organ` VALUES ('19fd5e58816f4ea69f1bd341ddc8bc50','0001','有钱人的公司','root',NULL,1,'1',NULL,'1','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1'),('28f5279e437f44eb8ebc7d80efdabcb4','000100010003','后勤1部','00010001',NULL,3,'5',NULL,'2','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1'),('56f7d190549e4d2994314cd5ddf20e5f','000100010002','财务1部','00010001',NULL,2,'4',NULL,'2','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1'),('bbb730278da444ea96d65476fd991c76','000100010004','商务2部','00010001',NULL,4,'3',NULL,'2','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1'),('da514ada0cea41e39d6a0fdc5f30f860','00010001','有钱人的济南分公司','0001',NULL,1,'2',NULL,'1','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1'),('e10d1c6ebaea45e29f56b25ff40e8182','000100010001','商务1部','00010001',NULL,1,'3',NULL,'2','2018-04-14 01:58:47','1','2018-04-14 01:58:47','1');
/*!40000 ALTER TABLE `sys_organ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quartz_job`
--

DROP TABLE IF EXISTS `sys_quartz_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_quartz_job` (
  `RECID` varchar(32) NOT NULL COMMENT '定时任务记录ID',
  `JOB_NAME` varchar(100) DEFAULT NULL COMMENT '任务名称',
  `JOB_GROUP_NAME` varchar(100) DEFAULT NULL COMMENT '任务组',
  `JOB_CLASS` varchar(500) DEFAULT NULL COMMENT '任务执行类',
  `CRON_EXPRESSION` varchar(100) DEFAULT NULL COMMENT '触发时间',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '状态',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATETIME` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATETIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000' COMMENT '修改时间',
  PRIMARY KEY (`RECID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quartz_job`
--

LOCK TABLES `sys_quartz_job` WRITE;
/*!40000 ALTER TABLE `sys_quartz_job` DISABLE KEYS */;
INSERT INTO `sys_quartz_job` VALUES ('58b9878cf6d348b28d6a89614571fbf1','定时任务测试','1','com.sys.utils.schedule.QuartzJob','0/2 * * * * ?',NULL,'测试','1','2018-04-14 01:58:47.000000','1','2018-04-14 01:58:47.000000');
/*!40000 ALTER TABLE `sys_quartz_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_function`
--

DROP TABLE IF EXISTS `sys_role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_function` (
  `ID` varchar(32) NOT NULL COMMENT '角色功能ID',
  `ROLE_CODE` varchar(20) DEFAULT NULL COMMENT '角色编码',
  `FUNCTION_CODE` varchar(20) DEFAULT NULL COMMENT '功能编码',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色功能关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_function`
--

LOCK TABLES `sys_role_function` WRITE;
/*!40000 ALTER TABLE `sys_role_function` DISABLE KEYS */;
INSERT INTO `sys_role_function` VALUES ('0604841718f045e697680265d9cf148e','0002','00990005','2018-04-14 01:58:47','1'),('0c84f86ef0bf4d638ff344453984317d','0002','009900040001','2018-04-14 01:58:47','1'),('1089b744fec241a085adaaa70b22b016','0001','0099','2018-04-14 01:58:47','1'),('196a5b045a1c4a54ba6720cf5577b3e6','0001','009900010001','2018-04-14 01:58:47','1'),('2262e33c3b6e465bb6cab3e792043f9c','0002','00990001','2018-04-14 01:58:47','1'),('22f4bb7ba74043689a311851a035a85d','0001','00990003','2018-04-14 01:58:47','1'),('256067262b62497692134ff9511a5b2d','0002','009900060001','2018-04-14 01:58:47','1'),('38f92ad87d90408f82ff35713ae795e1','0001','009900030001','2018-04-14 01:58:47','1'),('3f3afae5aa4243be82e57d0f69dca8cb','0001','00990002','2018-04-14 01:58:47','1'),('47065afcd2dd46cf9291478b1a15fffb','0001','009900040001','2018-04-14 01:58:47','1'),('5bf2f1afd67241598be01fac18a732a4','0001','009900020001','2018-04-14 01:58:47','1'),('6f2a168b4cc341d59c53cde7007cb3de','0002','009900020001','2018-04-14 01:58:47','1'),('7048632a0d0e44679edba86faf98312e','0002','009900010001','2018-04-14 01:58:47','1'),('86cd7231778f4244a5a9701b05914c40','0002','00990002','2018-04-14 01:58:47','1'),('8fadd9abea7040a8a0c907b3ab6dd295','0001','00990004','2018-04-14 01:58:47','1'),('9f044ff40757409a9b58101898d2c627','0001','009900060001','2018-04-14 01:58:47','1'),('a4a87ae5fdac4709a8c74e5cdd3a1e99','0001','root','2018-04-14 01:58:47','1'),('a5b0f1a171e344759a77dffbd5ad6a45','0001','00990001','2018-04-14 01:58:47','1'),('a77f27d735e94a95ae979d3bd22514e1','0002','00990006','2018-04-14 01:58:47','1'),('b20b4c5148db4eb8911f7fbd37f7cc0b','0002','00990004','2018-04-14 01:58:47','1'),('bd338c261a0d4e899eb67fe8e0456f79','0002','root','2018-04-14 01:58:47','1'),('d12d6055e89a4025a512945d0abd57bb','0001','009900050001','2018-04-14 01:58:47','1'),('d94996537f39494c966bb39d89dcbb3d','0002','00990003','2018-04-14 01:58:47','1'),('e3e7327c4e934248921aae46d4e9e62e','0002','009900050001','2018-04-14 01:58:47','1'),('ea3d207058214916adf8d808100798fa','0001','00990005','2018-04-14 01:58:47','1'),('eff3c7c2a6f34a098bc86e4bc8d67f9d','0001','00990006','2018-04-14 01:58:47','1'),('f8c63bd34cae4ee79de9ea37faefc6a1','0002','009900030001','2018-04-14 01:58:47','1'),('fa50193c9e7547139feea0650bb1aa9b','0002','0099','2018-04-14 01:58:47','1');
/*!40000 ALTER TABLE `sys_role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `ROLE_NAME` varchar(100) DEFAULT NULL COMMENT '角色名',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '角色描述',
  `ORGAN_CODE` varchar(20) DEFAULT NULL COMMENT '所属组织结构',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ROLE_CODE` varchar(20) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES ('8920c67439b44c29a195a0b4310c09dd','测试',NULL,NULL,'2018-04-14 01:58:47','1','2018-04-14 01:58:47','1','0002'),('FD5E07609C0940DAB801A575C88B422F','测试角色','用于功能测试',NULL,'2018-04-14 01:58:47',NULL,'2018-04-14 01:58:47',NULL,'0001');
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `ID` varchar(32) NOT NULL COMMENT '用户角色ID',
  `USER_CODE` varchar(20) DEFAULT NULL COMMENT '用户编码',
  `ROLE_CODE` varchar(20) DEFAULT NULL COMMENT '角色编码',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保存用户角色关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('C37ED3DFDD0C4143897FDC24C0B4DD9D','1','0001','2018-04-14 01:58:47',NULL),('e148c177ce8a41ae9d6bc2100717da3e','0001','0001','2018-04-14 01:58:47','1');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `USER_NAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态0：锁定，1：正常',
  `SYSTEM` char(1) DEFAULT NULL COMMENT '是否系统用户0：否，1：是',
  `LOCK_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '锁定时间',
  `EXPIRED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '逾期时间',
  `ORGAN_CODE` varchar(20) DEFAULT NULL COMMENT '所属组织机构',
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `NICKNAME` varchar(50) DEFAULT NULL COMMENT '昵称',
  `USER_CODE` varchar(20) NOT NULL COMMENT '用户编码',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES ('1','admin','96e79218965eb72c92a549dd5a330112',NULL,NULL,'2018-04-14 01:58:47','2018-04-14 01:58:47',NULL,'2018-04-14 01:58:47','2018-04-14 01:58:47',NULL,'1','用户1','1'),('bcbb6dc97ed14f33b29fa4240c02e3de','login1','e10adc3949ba59abbe56e057f20f883e','1','0','2018-04-14 01:58:47','2018-04-14 01:58:47','000100010001','2018-04-14 01:58:47','2018-04-14 01:58:47','1','1','商务部用户1','0001');
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-14 11:09:31
