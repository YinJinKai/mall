-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: yin_mall
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `mall_address`
--

DROP TABLE IF EXISTS `mall_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `iseffect` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `addressee` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `province_code` varchar(45) DEFAULT NULL,
  `city_code` varchar(45) DEFAULT NULL,
  `area_code` varchar(45) DEFAULT NULL,
  `complete_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_address`
--

LOCK TABLES `mall_address` WRITE;
/*!40000 ALTER TABLE `mall_address` DISABLE KEYS */;
INSERT INTO `mall_address` VALUES (38,'2017-12-21 14:44:15','2017-12-21 14:44:15','2222','2222',0,1,'2222','ljkljkl','ljljl','sd','sdqd','sdqdc','jlljljk'),(39,'2017-12-21 14:44:25','2017-12-22 10:08:57','2222','2222',0,1,'2222','5','ljklkj','sd','sdqd','sdqdh','lkjlkj'),(44,'2018-01-01 22:17:11','2018-01-01 22:17:36','411517453','411517453',0,1,'411517453','尹金凯','156620247','hb','hbs','hbsc','金沙滩'),(45,'2018-01-02 17:16:02','2018-01-02 17:16:02','411517453','411517453',0,1,'411517453','五','111111111','sd','sdqd','sdqdh','金沙滩'),(46,'2018-01-04 15:03:09','2018-01-07 21:31:03','55555','55555',0,1,'55555','骄傲','123456789','sd','sdqd','sdqdh','加减'),(47,'2018-01-04 15:16:13','2018-01-04 15:16:13','99999','99999',0,1,'99999','小白','88888','sd','sdqd','sdqdh','长江路'),(48,'2018-01-05 11:04:15','2018-01-05 11:04:15','12345678','12345678',0,1,'12345678','VAVA','15662024700','sd','sdqd','sdqdh','金沙滩'),(49,'2018-01-05 11:10:34','2018-01-05 11:10:34','12345678','12345678',0,1,'12345678','VAVA','15662024700','hb','hbs','hbsc','街道'),(50,'2018-01-07 21:31:44','2018-01-07 21:34:02','55555','55555',0,1,'55555','请求','123456789','sd','sdqd','sdqdh','5555'),(51,'2018-01-07 21:40:56','2018-01-07 21:40:56','11223344','11223344',0,1,'11223344','尹金凯','15678961123','sd','sdqd','sdqdc','明阳路');
/*!40000 ALTER TABLE `mall_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_basicdata`
--

DROP TABLE IF EXISTS `mall_basicdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_basicdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basic_code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `basic_parentcode` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='基础数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_basicdata`
--

LOCK TABLES `mall_basicdata` WRITE;
/*!40000 ALTER TABLE `mall_basicdata` DISABLE KEYS */;
INSERT INTO `mall_basicdata` VALUES (1,'sd','山东省','0',NULL),(2,'sdqd','青岛市','sd',NULL),(3,'sdjn','济南市','sd',NULL),(4,'sdqdh','黄岛区','sdqd',NULL),(5,'sdqdc','城阳区','sdqd',NULL),(6,'sdjnl','历下区','sdjn',NULL),(7,'sdjnz','章丘市','sdjn',NULL),(8,'hb','河北省','0',NULL),(9,'hbs','石家庄市','hb',NULL),(10,'hbt','唐山市','hb',NULL),(11,'hbsc','长安区','hbs',NULL),(12,'hbsx','新华区','hbs',NULL),(13,'hbtlb','路北区','hbt',NULL),(14,'hbtln','路南区','hbt',NULL);
/*!40000 ALTER TABLE `mall_basicdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_classify`
--

DROP TABLE IF EXISTS `mall_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `iseffect` int(11) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `classify_code` varchar(100) DEFAULT NULL,
  `descr` varchar(45) DEFAULT NULL,
  `parentcode` varchar(45) DEFAULT NULL,
  `order_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_classify`
--

LOCK TABLES `mall_classify` WRITE;
/*!40000 ALTER TABLE `mall_classify` DISABLE KEYS */;
INSERT INTO `mall_classify` VALUES (45,NULL,NULL,NULL,NULL,NULL,NULL,'家电','11120180102111529',NULL,'0',NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL,'电视','22220180102111540',NULL,'11120180102111529',NULL),(47,NULL,NULL,NULL,NULL,NULL,NULL,'电脑','22220180102111551',NULL,'11120180102111529',NULL),(48,NULL,NULL,NULL,NULL,NULL,NULL,'厨房电器','22220180102111612',NULL,'11120180102111529',NULL),(49,NULL,NULL,NULL,NULL,NULL,NULL,'手机','11120180103113859',NULL,'0',NULL),(50,NULL,NULL,NULL,NULL,NULL,NULL,'小米1','22220180103114039',NULL,'11120180103113859',NULL),(51,NULL,NULL,NULL,NULL,NULL,NULL,'小米2','22220180103114054',NULL,'11120180103113859',NULL),(52,NULL,NULL,NULL,NULL,NULL,NULL,'小米3','22220180103114102',NULL,'11120180103113859',NULL),(53,NULL,NULL,NULL,NULL,NULL,NULL,'休闲','11120180103131730',NULL,'0',NULL),(54,NULL,NULL,NULL,NULL,NULL,NULL,'科技','22220180103131747',NULL,'11120180103131730',NULL),(55,NULL,NULL,NULL,NULL,NULL,NULL,'服务','11120180107214917',NULL,'0',NULL),(56,NULL,NULL,NULL,NULL,NULL,NULL,'智能','22220180107214932',NULL,'11120180107214917',NULL);
/*!40000 ALTER TABLE `mall_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_news`
--

DROP TABLE IF EXISTS `mall_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `iseffect` int(11) DEFAULT NULL,
  `news_name` varchar(45) DEFAULT NULL,
  `news_code` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `descr` varchar(45) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `classify_code` varchar(45) DEFAULT NULL,
  `old_price` varchar(45) DEFAULT NULL,
  `classify_two_code` varchar(45) DEFAULT NULL,
  `keyType` varchar(111) DEFAULT NULL,
  `detailDescr` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='商品信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_news`
--

LOCK TABLES `mall_news` WRITE;
/*!40000 ALTER TABLE `mall_news` DISABLE KEYS */;
INSERT INTO `mall_news` VALUES (52,'2018-01-02 11:31:36','2018-01-02 11:31:36','123456','123456',0,1,'小米电视','33320180102113136','3899','4.9mm 极超薄高端旗舰电视',200,'123456','小米','11120180102111529','4499','22220180102111540','家电','<p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal; text-align: center;\"><strong><span style=\"font-size: 27px; font-family: 微软雅黑, sans-serif; color: windowtext;\">小米电视耳机售后政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">本商品严格依据《中华人民共和国消费者权益保护法》、《中华人民共和国产品质量法》实行售后服务，服务内容如下：</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">一、退换货政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">1</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">、 凡通过小米商城或天猫商城的小米官方旗舰店购买本产品的用户，可在自签收次日起七日内享受无理由退货服务。退货时用户须出示有效购买凭证，并退回发票。用户须保证退货商品保持原有品质和功能、外观完好、商品本身及配件的商标和各种标识完整齐全，如有赠品需一并退回。如果商品出现人为损坏、包装箱缺失、零配件缺失的情况，不予办理退货。退货时产生的物流费用由用户承担。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自收到退货商品之日起七日内向用户返还已支付的货款。退款方式与付款方式相同。具体到账日期可能会受银行、支付机构等因素影响。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">2</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">、 自用户签收次日起七日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理退货业务，退货时用户须出示有效购买凭证，并退回发票。如有赠品需一并退回。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">3</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">、 自用户签收次日起十五日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理换货业务，更换整套商品。换货后，商品本身三包期重新计算。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">二、保修政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自用户签收次日起十五日后，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理维修业务。</span></p><p><br></p>'),(54,'2018-01-02 11:45:03','2018-01-02 11:45:03','123456','123456',0,1,'小米电视4A','33320180102114503','2199','2GB+8GB 大储存/全高清',200,'123456','小米','11120180102111529','2399','22220180102111540','家电','<p>材料：<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\" _src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"></p><p>大小<img src=\"http://img.baidu.com/hi/jx2/j_0061.gif\" _src=\"http://img.baidu.com/hi/jx2/j_0061.gif\"></p>'),(55,'2018-01-02 11:46:38','2018-01-02 11:46:38','123456','123456',0,1,'13.3\"小米笔记本Air i5 8G 256G MX150 银色 ','33320180102114638','5199','好',200,'123456','小米','11120180102111529','9999','22220180102111551','家电','<p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal; text-align: center;\"><strong><span style=\"font-size: 27px; font-family: 微软雅黑, sans-serif; color: windowtext;\">小米胶囊耳机售后政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">本商品严格依据《中华人民共和国消费者权益保护法》、《中华人民共和国产品质量法》实行售后服务，服务内容如下：</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">一、退换货政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: windowtext; font-size: 14px; font-family: 微软雅黑, sans-serif;\">1</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif;\"><font color=\"rgba(0, 0, 0, 0)\">、 凡通</font><b style=\"\"><font color=\"#ff0000\">Y-MALL</font></b><font color=\"rgba(0, 0, 0, 0)\">购买本产品的用户，可在自签收次日起七日内享受无理由退货服务。退货时用户须出示有效购买凭证，并退回发票。用户须保证退货商品保持原有品质和功能、外观完好、商品本身及配件的商标和各种标识完整齐全，如有赠品需一并退回。如果商品出现人为损坏、包装箱缺失、零配件缺失的情况，不予办理退货。退货时产生的物流费用由用户承担。</font></span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自收到退货商品之日起七日内向用户返还已支付的货款。退款方式与付款方式相同。具体到账日期可能会受银行、支付机构等因素影响。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">2</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">、 自用户签收次日起七日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理退货业务，退货时用户须出示有效购买凭证，并退回发票。如有赠品需一并退回。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">3</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">、 自用户签收次日起十五日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理换货业务，更换整套商品。换货后，商品本身三包期重新计算。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">二、保修政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自用户签收次日起十五日后，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理维修业务。</span></p><p><br></p>'),(56,'2018-01-02 11:48:14','2018-01-02 11:48:14','123456','123456',0,0,'15.6\"小米笔记本Pro','33320180102114814','6999','',200,'123456','小米','11120180102111529','','22220180102111551','家电',NULL),(59,'2018-01-02 14:09:15','2018-01-02 14:09:15','123456','123456',0,1,'米家压力IH电饭煲','33320180102140915','999','智能烹饪，灰铸铁粉体涂层内胆 ',200,'123456','小米','11120180102111529','5000','22220180102111612','家电',NULL),(60,'2018-01-03 11:45:13','2018-01-03 11:45:13','123456','123456',0,1,'小米Max','33320180103114513','1399','大屏大电量，轻薄全金属 ',2000,'123456','小米','11120180103113859','','22220180103114039','智能',NULL),(61,'2018-01-03 11:48:17','2018-01-03 11:48:17','123456','123456',0,1,'小米MIX','33320180103114817','3299','全面屏2.0，5.99\"大屏 ',100,'123456','小米','11120180103113859','','22220180103114054','明星',NULL),(62,'2018-01-03 11:49:53','2018-01-03 11:49:53','123456','123456',0,1,'小米6  ','33320180103114953','2299','变焦双摄，4 轴防抖',100,'123456','小米','11120180103113859','','22220180103114039','明星',NULL),(63,'2018-01-03 13:19:21','2018-01-03 13:19:21','123456','123456',0,1,'小米手环','33320180103131921','149','OLED 显示屏幕，升级计步算法',200,'123456','小米','11120180103131730','','22220180103131747','明星',NULL),(64,'2018-01-03 13:32:04','2018-01-03 13:32:04','123456','123456',0,1,'米家扫地机器人','33320180103133204','1699','爱干净，高效完成清扫任务',100,'123456','小米','11120180102111529','','22220180102111612','新推','<p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal; text-align: center;\"><strong><span style=\"font-size: 27px; font-family: 微软雅黑, sans-serif; color: windowtext;\">米家扫地机器人售后政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">本商品</span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif;\">严格依据《中华人民共和国消费者权益保护法》、《中华人民共和国产品质量法》实行售后服务，服务内容如下：</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 29px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">一、</span></strong><strong><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">退换货政策</span></strong></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">1、<span style=\"font-stretch: normal; font-size: 9px; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">凡通过小米商城或天猫商城的小米官方旗舰店购买本产品的用户，可在自签收次日起七日内享受无理由退货服务。退货时用户须出示有效购买凭证，并退回发票。用户须保证退货商品保持原有品质和功能、外观完好、商品本身及配件的商标和各种标识完整齐全，如有赠品需一并退回。如果商品出现人为损坏、包装箱缺失、零配件缺失的情况，不予办理退货。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">退货时产生的物流费用由用户承担（收费标准见“售后服务收费标准”）。如果用户未结清物流费用，将按实际发生额从退款金额中扣除。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自收到退货商品之日起七日内向用户返还已支付的货款。退款方式与付款方式相同。具体到账日期可能会受银行、支付机构等因素影响。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">2、<span style=\"font-stretch: normal; font-size: 9px; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自用户签收次日起七日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理退货业务，退货时用户须出示有效购买凭证，并退回发票。如有赠品需一并退回。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">3、<span style=\"font-stretch: normal; font-size: 9px; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size: 14px; font-family: 微软雅黑, sans-serif; color: windowtext;\">自用户签收次日起十五日内，发生非人为损坏性能故障，经由小米售后服务中心检测确认后，为用户办理换货业务，更换主机。换货后，商品本身三包期重新计算。</span></p><p><br></p>'),(65,'2018-01-03 13:37:10','2018-01-03 13:37:10','123456','123456',0,1,'小米电视4A','33320180103133710','999',' 64位四核处理器 / 1GB+4GB大内存',10,'123456','小米','11120180102111529','1199 ','22220180102111540','家电',NULL),(73,'2018-01-04 19:21:02','2018-01-04 19:21:02',NULL,NULL,0,0,'小米路由器3','33320180104192102','149','更快更强，不止四天线',200,NULL,'小米','11120180102111529','','22220180102111540','家电','<p>材质：太空材料</p><p>颜色：多姿多彩</p><p>大小：一般大小</p>'),(74,'2018-01-07 21:54:21','2018-01-07 21:54:21','88888888','88888888',0,1,'米兔智能故事机','33320180107215421','199','微信远程互动，智能语音交互',200,'88888888','小米','11120180107214917','','22220180107214932','明星','<p>好</p>');
/*!40000 ALTER TABLE `mall_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_news_picture`
--

DROP TABLE IF EXISTS `mall_news_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_news_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_code` varchar(100) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_news_picture`
--

LOCK TABLES `mall_news_picture` WRITE;
/*!40000 ALTER TABLE `mall_news_picture` DISABLE KEYS */;
INSERT INTO `mall_news_picture` VALUES (33,'33320180102113136','/mall/uploadImage/e4730046-80a7-45d5-a7cc-a6c3e827031b.jpg','0'),(34,'33320180102113136','/mall/uploadImage/72ea6583-a25a-4802-a44b-440d1f72a592.jpg','1'),(36,'33320180102114503','/mall/uploadImage/c89ff7b9-a60b-40d1-aa2b-65e08affcf11.jpg','0'),(37,'33320180102114503','/mall/uploadImage/a0a56de5-e723-438b-a3be-f47e9704d790.jpg','1'),(38,'33320180102114638','/mall/uploadImage/9e47da52-1a56-4030-9a18-aa8baafbae36.jpg','0'),(39,'33320180102114638','/mall/uploadImage/123587ed-1f22-4864-a061-c4cbe883053c.jpg','1'),(40,'33320180102114814','/mall/uploadImage/f2b3bccd-c2a3-43df-83e1-ba6a84f3e498.jpg','0'),(41,'33320180102114814','/mall/uploadImage/bfda6018-3765-4155-8aba-2fc49ac53e9d.jpg','1'),(44,'33320180102140915','/mall/uploadImage/36c9be32-56d0-43c2-ba79-fba158424a25.jpg','0'),(45,'33320180102140915','/mall/uploadImage/e6ff1c73-fde3-4d9b-9da2-8fe8657a3918.jpg','1'),(46,'33320180103114513','/mall/uploadImage/758034cf-960c-4483-9773-863e8ee31a64.jpg','0'),(47,'33320180103114513','/mall/uploadImage/aa7dd225-d1c1-4968-8008-88db41134f7e.jpg','1'),(48,'33320180103114817','/mall/uploadImage/48bc9be9-2646-4d16-a1a5-84aad0adfc4d.jpg','0'),(49,'33320180103114817','/mall/uploadImage/ed9a1fa3-d2dc-4bab-82ab-5e792ff03bdc.jpg','1'),(50,'33320180103114953','/mall/uploadImage/78890517-eb61-4f1a-88a2-d072e15606e5.jpg','0'),(51,'33320180103114953','/mall/uploadImage/f035bfa0-2b44-474c-8722-519a7a7fba13.jpg','1'),(52,'33320180103131921','/mall/uploadImage/faa370f5-28a3-49c5-a9fd-b432297b4815.jpg','0'),(53,'33320180103131921','/mall/uploadImage/2a96d423-50cc-49c3-a40d-121bbb8bb6fb.jpg','1'),(54,'33320180103133204','/mall/uploadImage/e49c56ea-a63c-4802-8d65-c5a4e2ff5017.jpg','0'),(55,'33320180103133204','/mall/uploadImage/62cc2f4b-522c-4d72-96de-7b3fca6db93b.jpg','1'),(56,'33320180103133710','/mall/uploadImage/edfe38c2-0eda-464c-8a0f-4786bfe9879b.jpg','0'),(57,'33320180103133710','/mall/uploadImage/198155a4-2e67-4938-9e0d-9c2966649476.jpg','1'),(58,'33320180104192102','/mall/uploadImage/c14261c0-075a-41b9-b37b-fecc5c61b877.jpg','0'),(59,'33320180104192102','/mall/uploadImage/2b93f358-1e2d-41f0-9a66-20ec8b69c72a.jpg','1'),(60,'33320180107215421','/mall/uploadImage/f0977e24-bf92-4a66-a0a7-980ba3d6ea2b.jpg','0'),(61,'33320180107215421','/mall/uploadImage/7fdc7884-0d7a-4e38-b4af-109011f8047a.jpg','1');
/*!40000 ALTER TABLE `mall_news_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_order`
--

DROP TABLE IF EXISTS `mall_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `news_code` varchar(100) DEFAULT NULL,
  `order_count` int(20) DEFAULT NULL,
  `adress_id` int(11) DEFAULT NULL,
  `subtotal_price` int(11) DEFAULT NULL,
  `isdeal` varchar(100) DEFAULT NULL,
  `order_number` varchar(200) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_order`
--

LOCK TABLES `mall_order` WRITE;
/*!40000 ALTER TABLE `mall_order` DISABLE KEYS */;
INSERT INTO `mall_order` VALUES (246,'11223344','33320180102114503',1,51,2199,'已关闭','1122334420180107214208',7194,'2018-01-07 21:42:08','2018-01-07 21:42:21'),(247,'11223344','33320180102140915',4,51,3996,'已关闭','1122334420180107214208',7194,'2018-01-07 21:42:09','2018-01-07 21:42:21'),(248,'11223344','33320180103133710',1,51,999,'已关闭','1122334420180107214208',7194,'2018-01-07 21:42:09','2018-01-07 21:42:21'),(249,'11223344','33320180103131921',1,51,149,'等待支付','1122334420180107214309',149,'2018-01-07 21:43:09',NULL),(250,'411517453','33320180102113136',5,44,19495,'已关闭','41151745320180107214340',33289,'2018-01-07 21:43:40','2018-01-07 21:43:48'),(251,'411517453','33320180103114953',6,44,13794,'已关闭','41151745320180107214340',33289,'2018-01-07 21:43:40','2018-01-07 21:43:48'),(252,'411517453','33320180103114817',1,44,3299,'已关闭','41151745320180107214644',3299,'2018-01-07 21:46:44','2018-01-12 09:02:07'),(253,'411517453','33320180102114638',1,45,5199,'已关闭','41151745320180107214800',8196,'2018-01-07 21:48:00','2018-01-07 22:05:49'),(254,'411517453','33320180103133710',3,45,2997,'已关闭','41151745320180107214800',8196,'2018-01-07 21:48:00','2018-01-07 22:05:49'),(255,'411517453','33320180107215421',1,45,199,'已关闭','41151745320180112090154',199,'2018-01-12 09:01:54','2018-01-20 15:17:06'),(256,'411517453','33320180107215421',1,45,199,'已关闭','41151745320180120151647',199,'2018-01-20 15:16:47','2018-01-20 15:17:10'),(257,'411517453','33320180103131921',1,45,149,'已关闭','41151745320180120151801',149,'2018-01-20 15:18:01','2018-01-20 15:18:27'),(258,'411517453','33320180102114638',2,45,10398,'已关闭','41151745320180203203204',10547,'2018-02-03 20:32:04','2018-02-03 20:32:37'),(259,'411517453','33320180103131921',1,45,149,'已关闭','41151745320180203203204',10547,'2018-02-03 20:32:04','2018-02-03 20:32:37'),(260,'411517453','33320180103114953',1,NULL,2299,'等待支付','41151745320180203203427',2299,'2018-02-03 20:34:27',NULL),(261,'411517453','33320180103114953',1,45,2299,'�ѹر�','41151745320180203204503',2448,'2018-02-03 20:45:03','2018-02-04 22:07:17'),(262,'411517453','33320180103131921',1,45,149,'�ѹر�','41151745320180203204503',2448,'2018-02-03 20:45:03','2018-02-04 22:07:17'),(263,'411517453','33320180103131921',1,45,149,'�ȴ�֧��','41151745320180204220703',149,'2018-02-04 22:07:03',NULL);
/*!40000 ALTER TABLE `mall_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_shoppingcar`
--

DROP TABLE IF EXISTS `mall_shoppingcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_shoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_code` varchar(100) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `car_count` int(20) DEFAULT NULL,
  `subtotal_price` int(11) DEFAULT NULL,
  `total_Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_shoppingcar`
--

LOCK TABLES `mall_shoppingcar` WRITE;
/*!40000 ALTER TABLE `mall_shoppingcar` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_shoppingcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_user`
--

DROP TABLE IF EXISTS `mall_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `updater` varchar(45) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `iseffect` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `isseller` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_user`
--

LOCK TABLES `mall_user` WRITE;
/*!40000 ALTER TABLE `mall_user` DISABLE KEYS */;
INSERT INTO `mall_user` VALUES (34,'2017-12-31 20:30:43','2017-12-31 20:30:43','411517453','411517453',0,1,'411517453','金凯','4QrcOUm6Wau+VuBX8g+IPg==',0),(35,'2017-12-31 20:31:15','2017-12-31 20:31:15','123456','123456',0,1,'123456','吴亦凡','4QrcOUm6Wau+VuBX8g+IPg==',1),(36,'2018-01-02 17:10:24','2018-01-02 17:10:24','444444','444444',0,1,'444444','姐姐','4QrcOUm6Wau+VuBX8g+IPg==',0),(37,'2018-01-04 15:01:28','2018-01-04 15:01:28','55555','55555',0,1,'55555','鹿晗','4QrcOUm6Wau+VuBX8g+IPg==',0),(38,'2018-01-04 15:10:41','2018-01-04 15:10:41','99999','99999',0,1,'99999','PGone','4QrcOUm6Wau+VuBX8g+IPg==',0),(39,'2018-01-05 11:02:48','2018-01-05 11:02:48','12345678','12345678',0,1,'12345678','VAVA','4QrcOUm6Wau+VuBX8g+IPg==',0),(40,'2018-01-07 16:49:04','2018-01-07 16:49:04','78945612','78945612',0,1,'78945612','京津冀','4QrcOUm6Wau+VuBX8g+IPg==',1),(41,'2018-01-07 21:40:12','2018-01-07 21:40:12','11223344','11223344',0,1,'11223344','尹金凯8','4QrcOUm6Wau+VuBX8g+IPg==',0),(42,'2018-01-07 21:48:44','2018-01-07 21:48:44','88888888','88888888',0,1,'88888888','我是卖家','4QrcOUm6Wau+VuBX8g+IPg==',1);
/*!40000 ALTER TABLE `mall_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05 14:40:35
