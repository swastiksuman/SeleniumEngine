-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 113.128.162.200    Database: sakila
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `qa_result_test_case`
--

DROP TABLE IF EXISTS `qa_result_test_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_result_test_case` (
  `THREAD_ID` varchar(20) NOT NULL,
  `TEST_CASE_ID` decimal(10,0) NOT NULL,
  `FLOW_ID` decimal(10,0) NOT NULL,
  `STEP_ID` decimal(10,0) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `RESULT_TEST_CASE_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`RESULT_TEST_CASE_ID`),
  KEY `QA_RESULT_TEST_CASE_FK1` (`TEST_CASE_ID`),
  KEY `QA_RESULT_TEST_CASE_FK2` (`FLOW_ID`),
  KEY `QA_RESULT_TEST_CASE_FK3` (`STEP_ID`),
  CONSTRAINT `QA_RESULT_TEST_CASE_FK1` FOREIGN KEY (`TEST_CASE_ID`) REFERENCES `qa_test_case` (`TEST_CASE_ID`),
  CONSTRAINT `QA_RESULT_TEST_CASE_FK2` FOREIGN KEY (`FLOW_ID`) REFERENCES `qa_flow` (`FLOW_ID`),
  CONSTRAINT `QA_RESULT_TEST_CASE_FK3` FOREIGN KEY (`STEP_ID`) REFERENCES `qa_step` (`STEP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_result_test_case`
--

LOCK TABLES `qa_result_test_case` WRITE;
/*!40000 ALTER TABLE `qa_result_test_case` DISABLE KEYS */;
INSERT INTO `qa_result_test_case` VALUES ('06112015034117124',1,1,5,'SUCCESS',1),('06112015034117124',1,1,16,'SUCCESS',2),('06112015034117124',1,1,1,'SUCCESS',3),('06112015034117124',1,1,2,'FAILED',4),('06112015034335682',1,1,5,'SUCCESS',5),('06112015034335682',1,1,1,'SUCCESS',6),('06112015034335682',1,1,2,'SUCCESS',7),('06112015034335682',1,1,3,'SUCCESS',8),('06112015034335682',1,1,4,'SUCCESS',9),('06112015034424698',1,1,5,'SUCCESS',10),('06112015034424698',1,1,1,'SUCCESS',11),('06112015034424698',1,1,2,'SUCCESS',12),('06112015034424698',1,1,3,'SUCCESS',13),('06112015034424698',1,1,4,'SUCCESS',14),('06112015034811236',2,2,6,'SUCCESS',15),('06112015034811236',2,2,7,'SUCCESS',16),('06112015034811236',2,2,8,'SUCCESS',17),('06112015034811236',2,2,9,'SUCCESS',18),('06112015034811236',2,2,10,'FAILED',19),('06112015035043648',2,2,6,'SUCCESS',20),('06112015035043648',2,2,7,'FAILED',21),('06112015035453413',2,2,6,'SUCCESS',22),('06112015035453413',2,2,7,'SUCCESS',23),('06112015035453413',2,2,8,'SUCCESS',24),('06112015035453413',2,2,9,'SUCCESS',25),('06112015035453413',2,2,10,'FAILED',26),('06112015035631768',2,2,6,'SUCCESS',27),('06112015035631768',2,2,7,'SUCCESS',28),('06112015035631768',2,2,8,'SUCCESS',29),('06112015035631768',2,2,9,'SUCCESS',30),('06112015035631768',2,2,10,'SUCCESS',31),('06112015035631768',2,2,11,'SUCCESS',32),('06112015035631768',2,2,12,'SUCCESS',33),('06112015035631768',2,2,13,'SUCCESS',34),('06112015035631768',2,2,14,'SUCCESS',35),('06112015035631768',2,2,15,'SUCCESS',36),('08112015223333596',1,1,5,'FAILED',37),('08112015224142868',1,1,5,'SUCCESS',38),('08112015224142868',1,1,1,'SUCCESS',39),('08112015224142868',1,1,2,'SUCCESS',40),('08112015224142868',1,1,3,'SUCCESS',41),('08112015224142868',1,1,4,'SUCCESS',42),('08112015225047250',1,1,5,'SUCCESS',43),('08112015225047250',1,1,1,'SUCCESS',44),('08112015225047250',1,1,2,'SUCCESS',45),('08112015225047250',1,1,3,'SUCCESS',46),('08112015225047250',1,1,4,'SUCCESS',47),('08112015230019333',1,1,5,'SUCCESS',48),('08112015230019333',1,1,1,'SUCCESS',49),('08112015230019333',1,1,2,'SUCCESS',50),('08112015230019333',1,1,3,'SUCCESS',51),('08112015230019333',1,1,4,'SUCCESS',52),('08112015230255418',1,1,5,'SUCCESS',53),('08112015230255418',1,1,1,'SUCCESS',54),('08112015230255418',1,1,2,'SUCCESS',55),('08112015230255418',1,1,3,'SUCCESS',56),('08112015230255418',1,1,4,'SUCCESS',57),('08112015231211372',1,1,5,'SUCCESS',58),('08112015231211372',1,1,1,'SUCCESS',59),('08112015231211372',1,1,2,'SUCCESS',60),('08112015231211372',1,1,3,'SUCCESS',61),('08112015231211372',1,1,4,'SUCCESS',62),('08112015231715115',3,3,5,'SUCCESS',63),('08112015231715115',3,3,5,'SUCCESS',64),('08112015231715115',3,3,2,'FAILED',65),('08112015231842931',3,3,5,'SUCCESS',66),('08112015231842931',3,3,5,'SUCCESS',67),('08112015231842931',3,3,2,'FAILED',68),('08112015232100157',3,3,5,'SUCCESS',69),('08112015232100157',3,3,5,'SUCCESS',70),('08112015232100157',3,3,2,'FAILED',71),('08112015233353145',3,3,5,'SUCCESS',72),('08112015233353145',3,3,5,'SUCCESS',73),('08112015233353145',3,3,2,'FAILED',74),('0811201523370565',3,3,1,'SUCCESS',75),('0811201523370565',3,3,5,'SUCCESS',76),('0811201523370565',3,3,2,'FAILED',77),('08112015233837922',3,3,5,'SUCCESS',78),('08112015233837922',3,3,1,'SUCCESS',79),('08112015233837922',3,3,2,'SUCCESS',80),('08112015233837922',3,3,3,'SUCCESS',81),('08112015233837922',3,3,4,'SUCCESS',82),('08112015234345906',3,3,5,'SUCCESS',84),('08112015234345906',3,3,1,'SUCCESS',85),('08112015234345906',3,3,2,'SUCCESS',86),('08112015234345906',3,3,3,'SUCCESS',87),('08112015234345906',3,3,4,'SUCCESS',88),('08112015234621893',3,3,5,'SUCCESS',89),('08112015234621893',3,3,1,'SUCCESS',90),('08112015234621893',3,3,2,'SUCCESS',91),('08112015234621893',3,3,3,'SUCCESS',92),('08112015234621893',3,3,4,'SUCCESS',93),('081120152348514',3,3,5,'SUCCESS',95),('081120152348514',3,3,1,'SUCCESS',96),('081120152348514',3,3,2,'SUCCESS',97),('081120152348514',3,3,3,'SUCCESS',98),('081120152348514',3,3,4,'SUCCESS',99),('08112015235050494',3,3,5,'SUCCESS',101),('08112015235050494',3,3,1,'SUCCESS',102),('08112015235050494',3,3,2,'SUCCESS',103),('08112015235050494',3,3,3,'SUCCESS',104),('08112015235050494',3,3,4,'SUCCESS',105),('0911201501423069',3,3,5,'SUCCESS',107),('0911201501423069',3,3,1,'SUCCESS',108),('0911201501423069',3,3,2,'SUCCESS',109),('0911201501423069',3,3,3,'SUCCESS',110),('0911201501423069',3,3,4,'SUCCESS',111),('0911201501451738',3,3,5,'SUCCESS',112),('0911201501451738',3,3,1,'SUCCESS',113),('0911201501451738',3,3,2,'SUCCESS',114),('0911201501451738',3,3,3,'SUCCESS',115),('0911201501451738',3,3,4,'SUCCESS',116),('09112015015413276',3,3,5,'SUCCESS',118),('09112015015413276',3,3,1,'SUCCESS',119),('09112015015413276',3,3,2,'SUCCESS',120),('09112015015413276',3,3,3,'SUCCESS',121),('09112015015413276',3,3,4,'SUCCESS',122),('09112015015413276',3,3,99999999,'FAILED',123),('09112015015623616',3,3,5,'SUCCESS',124),('09112015015623616',3,3,1,'SUCCESS',125),('09112015015623616',3,3,2,'SUCCESS',126),('09112015015623616',3,3,3,'SUCCESS',127),('09112015015623616',3,3,4,'SUCCESS',128),('09112015015623616',3,3,99999999,'FAILED',129),('09112015015804820',3,3,5,'SUCCESS',130),('09112015015804820',3,3,1,'SUCCESS',131),('09112015015804820',3,3,2,'SUCCESS',132),('09112015015804820',3,3,3,'SUCCESS',133),('09112015015804820',3,3,4,'SUCCESS',134),('09112015015804820',3,3,99999999,'FAILED',135),('09112015020040916',3,3,5,'SUCCESS',136),('09112015020040916',3,3,1,'SUCCESS',137),('09112015020040916',3,3,2,'SUCCESS',138),('09112015020040916',3,3,3,'SUCCESS',139),('09112015020040916',3,3,4,'SUCCESS',140),('09112015020040916',3,3,99999999,'FAILED',141),('0911201502021570',3,3,5,'SUCCESS',142),('0911201502021570',3,3,1,'SUCCESS',143),('0911201502021570',3,3,2,'SUCCESS',144),('0911201502021570',3,3,3,'SUCCESS',145),('0911201502021570',3,3,4,'SUCCESS',146),('0911201502021570',3,3,99999999,'FAILED',147),('09112015020606481',3,3,5,'SUCCESS',148),('09112015020606481',3,3,1,'SUCCESS',149),('09112015020606481',3,3,2,'SUCCESS',150),('09112015020606481',3,3,3,'SUCCESS',151),('09112015020606481',3,3,4,'SUCCESS',152),('09112015020606481',3,3,99999999,'FAILED',153),('20112015022907834',3,3,5,'SUCCESS',154),('20112015022907834',3,3,1,'SUCCESS',155),('20112015022907834',3,3,2,'SUCCESS',156),('20112015022907834',3,3,3,'SUCCESS',157),('20112015022907834',3,3,4,'SUCCESS',158),('20112015022907834',3,3,99999999,'FAILED',159),('20112015160543997',2,2,6,'SUCCESS',160),('20112015160543997',2,2,7,'FAILED',161),('20112015164053370',4,4,17,'SUCCESS',162),('20112015164053370',4,4,18,'SUCCESS',163),('20112015164053370',4,4,19,'SUCCESS',164),('20112015164650711',4,4,17,'SUCCESS',165),('20112015164650711',4,4,18,'SUCCESS',166),('20112015164650711',4,4,19,'SUCCESS',167),('20112015171525860',4,4,17,'SUCCESS',168),('20112015171525860',4,4,18,'SUCCESS',169),('20112015171525860',4,4,19,'SUCCESS',170),('20112015171525860',4,5,20,'SUCCESS',171),('20112015171525860',4,5,21,'FAILED',172),('20112015172453537',4,4,17,'SUCCESS',173),('20112015172453537',4,4,18,'SUCCESS',174),('20112015172453537',4,4,19,'SUCCESS',175),('20112015172453537',4,5,20,'SUCCESS',176),('20112015172453537',4,5,21,'SUCCESS',177),('20112015172453537',4,5,22,'SUCCESS',178),('20112015174247414',4,4,17,'SUCCESS',179),('20112015174247414',4,4,18,'SUCCESS',180),('20112015174247414',4,4,19,'SUCCESS',181),('20112015174247414',4,5,20,'SUCCESS',182),('20112015174247414',4,5,21,'SUCCESS',183),('20112015174247414',4,5,22,'SUCCESS',184),('20112015174247414',4,5,23,'FAILED',185),('20112015181118949',4,4,17,'SUCCESS',186),('20112015181118949',4,4,18,'SUCCESS',187),('20112015181118949',4,4,19,'SUCCESS',188),('20112015181118949',4,5,20,'SUCCESS',189),('20112015181118949',4,5,21,'SUCCESS',190),('20112015181118949',4,5,22,'SUCCESS',191),('20112015181118949',4,5,23,'FAILED',192),('20112015183848313',4,4,17,'SUCCESS',193),('20112015183848313',4,4,18,'SUCCESS',194),('20112015183848313',4,4,19,'SUCCESS',195),('20112015183848313',4,5,20,'SUCCESS',196),('20112015183848313',4,5,21,'SUCCESS',197),('20112015183848313',4,5,22,'SUCCESS',198),('20112015183848313',4,5,23,'FAILED',199),('20112015184039108',4,4,17,'SUCCESS',200),('20112015184039108',4,4,18,'SUCCESS',201),('20112015184039108',4,4,19,'SUCCESS',202),('20112015184039108',4,5,20,'SUCCESS',203),('20112015184039108',4,5,21,'SUCCESS',204),('20112015184039108',4,5,22,'SUCCESS',205),('20112015184039108',4,5,23,'FAILED',206),('20112015184145770',4,4,17,'SUCCESS',207),('20112015184145770',4,4,18,'SUCCESS',208),('20112015184145770',4,4,19,'SUCCESS',209),('20112015184145770',4,5,20,'SUCCESS',210),('20112015184145770',4,5,21,'SUCCESS',211),('20112015184145770',4,5,22,'SUCCESS',212),('20112015184145770',4,5,23,'FAILED',213),('20112015184326755',4,4,17,'SUCCESS',214),('20112015184326755',4,4,18,'SUCCESS',215),('20112015184326755',4,4,19,'SUCCESS',216),('20112015184326755',4,5,20,'SUCCESS',217),('20112015184326755',4,5,21,'SUCCESS',218),('20112015184326755',4,5,22,'SUCCESS',219),('20112015184326755',4,5,23,'FAILED',220),('20112015184417776',4,4,17,'SUCCESS',221),('20112015184417776',4,4,18,'SUCCESS',222),('20112015184417776',4,4,19,'SUCCESS',223),('20112015184417776',4,5,20,'SUCCESS',224),('20112015184417776',4,5,21,'SUCCESS',225),('20112015184417776',4,5,22,'SUCCESS',226),('20112015184417776',4,5,23,'FAILED',227),('20112015184529834',4,4,17,'SUCCESS',228),('20112015184529834',4,4,18,'SUCCESS',229),('20112015184529834',4,4,19,'SUCCESS',230),('20112015184529834',4,5,20,'SUCCESS',231),('20112015184529834',4,5,21,'SUCCESS',232),('20112015184529834',4,5,22,'SUCCESS',233),('20112015184529834',4,5,23,'FAILED',234),('20112015184635171',4,4,17,'SUCCESS',235),('20112015184635171',4,4,18,'SUCCESS',236),('20112015184635171',4,4,19,'SUCCESS',237),('20112015184635171',4,5,20,'SUCCESS',238),('20112015184635171',4,5,21,'SUCCESS',239),('20112015184635171',4,5,22,'SUCCESS',240),('20112015184635171',4,5,23,'FAILED',241),('20112015184808342',4,4,17,'SUCCESS',242),('20112015184808342',4,4,18,'SUCCESS',243),('20112015184808342',4,4,19,'SUCCESS',244),('20112015184808342',4,5,20,'SUCCESS',245),('20112015184808342',4,5,21,'SUCCESS',246),('20112015184808342',4,5,22,'SUCCESS',247),('20112015184808342',4,5,23,'FAILED',248),('20112015185016922',4,4,17,'SUCCESS',249),('20112015185016922',4,4,18,'SUCCESS',250),('20112015185016922',4,4,19,'SUCCESS',251),('20112015185016922',4,5,20,'SUCCESS',252),('20112015185016922',4,5,21,'SUCCESS',253),('20112015185016922',4,5,22,'SUCCESS',254),('20112015185016922',4,5,23,'FAILED',255),('20112015185834256',4,4,17,'SUCCESS',256),('20112015185834256',4,4,18,'SUCCESS',257),('20112015185834256',4,4,19,'SUCCESS',258),('20112015185834256',4,5,20,'SUCCESS',259),('20112015185834256',4,5,21,'SUCCESS',260),('20112015185834256',4,5,22,'SUCCESS',261),('20112015185834256',4,5,23,'SUCCESS',262),('20112015190005262',4,4,17,'SUCCESS',263),('20112015190005262',4,4,18,'SUCCESS',264),('20112015190005262',4,4,19,'SUCCESS',265),('20112015190005262',4,5,20,'SUCCESS',266),('20112015190005262',4,5,21,'SUCCESS',267),('20112015190005262',4,5,22,'SUCCESS',268),('20112015190005262',4,5,23,'SUCCESS',269),('20112015190928976',4,4,17,'SUCCESS',270),('20112015190928976',4,4,18,'SUCCESS',271),('20112015190928976',4,4,19,'SUCCESS',272),('20112015190928976',4,5,20,'SUCCESS',273),('20112015190928976',4,5,21,'SUCCESS',274),('20112015190928976',4,5,22,'SUCCESS',275),('20112015190928976',4,5,23,'SUCCESS',276),('20112015191519514',4,4,17,'SUCCESS',277),('20112015191519514',4,4,18,'SUCCESS',278),('20112015191519514',4,4,19,'SUCCESS',279),('20112015191519514',4,5,20,'SUCCESS',280),('20112015191519514',4,5,21,'SUCCESS',281),('20112015191519514',4,5,22,'SUCCESS',282),('20112015191519514',4,5,23,'SUCCESS',283),('20112015191731736',4,4,17,'SUCCESS',284),('20112015191731736',4,4,18,'SUCCESS',285),('20112015191731736',4,4,19,'SUCCESS',286),('20112015191731736',4,5,20,'SUCCESS',287),('20112015191731736',4,5,21,'SUCCESS',288),('20112015191731736',4,5,22,'SUCCESS',289),('20112015191731736',4,5,23,'SUCCESS',290),('20112015192006670',4,4,17,'SUCCESS',291),('20112015192006670',4,4,18,'SUCCESS',292),('20112015192006670',4,4,19,'SUCCESS',293),('20112015192006670',4,5,20,'SUCCESS',294),('20112015192006670',4,5,21,'SUCCESS',295),('20112015192006670',4,5,22,'SUCCESS',296),('20112015192006670',4,5,23,'SUCCESS',297),('20112015192138209',4,4,17,'SUCCESS',298),('20112015192138209',4,4,18,'SUCCESS',299),('20112015192138209',4,4,19,'SUCCESS',300),('20112015192138209',4,5,20,'SUCCESS',301),('20112015192138209',4,5,21,'SUCCESS',302),('20112015192138209',4,5,22,'SUCCESS',303),('20112015192138209',4,5,23,'SUCCESS',304),('20112015193724372',4,4,17,'SUCCESS',305),('20112015193724372',4,4,18,'SUCCESS',306),('20112015193724372',4,4,19,'SUCCESS',307),('20112015193724372',4,5,20,'SUCCESS',308),('20112015193724372',4,5,21,'SUCCESS',309),('20112015193724372',4,5,22,'SUCCESS',310),('20112015193724372',4,5,23,'SUCCESS',311),('20112015193924962',4,4,17,'SUCCESS',312),('20112015193924962',4,4,18,'SUCCESS',313),('20112015193924962',4,4,19,'SUCCESS',314),('20112015193924962',4,5,20,'SUCCESS',315),('20112015193924962',4,5,21,'SUCCESS',316),('20112015193924962',4,5,22,'SUCCESS',317),('20112015193924962',4,5,23,'SUCCESS',318),('20112015193924962',4,6,24,'SUCCESS',319),('20112015202109475',4,4,17,'SUCCESS',320),('20112015202109475',4,4,18,'SUCCESS',321),('20112015202109475',4,4,19,'SUCCESS',322),('20112015202109475',4,5,20,'SUCCESS',323),('20112015202109475',4,5,21,'SUCCESS',324),('20112015202109475',4,5,22,'SUCCESS',325),('20112015202109475',4,5,23,'SUCCESS',326),('20112015202109475',4,6,24,'SUCCESS',327),('20112015202109475',4,6,25,'SUCCESS',328),('20112015202528360',4,4,17,'SUCCESS',329),('20112015202528360',4,4,18,'SUCCESS',330),('20112015202528360',4,4,19,'SUCCESS',331),('20112015202528360',4,5,20,'SUCCESS',332),('20112015202528360',4,5,21,'SUCCESS',333),('20112015202528360',4,5,22,'SUCCESS',334),('20112015202528360',4,5,23,'SUCCESS',335),('20112015202528360',4,6,24,'SUCCESS',336),('20112015202528360',4,6,25,'SUCCESS',337),('20112015202924740',4,4,17,'SUCCESS',338),('20112015202924740',4,4,18,'SUCCESS',339),('20112015202924740',4,4,19,'SUCCESS',340),('20112015202924740',4,5,20,'SUCCESS',341),('20112015202924740',4,5,21,'SUCCESS',342),('20112015202924740',4,5,22,'SUCCESS',343),('20112015202924740',4,5,23,'SUCCESS',344),('20112015202924740',4,6,24,'SUCCESS',345),('20112015202924740',4,6,25,'SUCCESS',346),('21112015151755264',4,4,17,'SUCCESS',347),('21112015151755264',4,4,18,'SUCCESS',348),('21112015151755264',4,4,19,'SUCCESS',349),('21112015151755264',4,5,20,'SUCCESS',350),('21112015151755264',4,5,21,'SUCCESS',351),('21112015151755264',4,5,22,'SUCCESS',352),('21112015151755264',4,5,23,'SUCCESS',353),('21112015151755264',4,6,24,'SUCCESS',354),('21112015151755264',4,6,25,'SUCCESS',355),('21112015152837159',4,4,17,'SUCCESS',356),('21112015152837159',4,4,18,'SUCCESS',357),('21112015152837159',4,4,19,'SUCCESS',358),('21112015152837159',4,5,20,'SUCCESS',359),('21112015152837159',4,5,21,'SUCCESS',360),('21112015152837159',4,5,22,'SUCCESS',361),('21112015152837159',4,5,23,'SUCCESS',362),('21112015152837159',4,6,24,'SUCCESS',363),('21112015152837159',4,6,25,'SUCCESS',364),('21112015153114202',2,2,6,'SUCCESS',365),('21112015153114202',2,2,7,'FAILED',366),('2111201515412051',2,2,6,'SUCCESS',367),('2111201515412051',2,2,8,'SUCCESS',368),('2111201515412051',2,2,9,'SUCCESS',369),('2111201515412051',2,2,10,'SUCCESS',370),('2111201515412051',2,2,11,'SUCCESS',371),('2111201515412051',2,2,12,'FAILED',372),('21112015154436413',2,2,6,'SUCCESS',373),('21112015154436413',2,2,8,'SUCCESS',374),('21112015154436413',2,2,9,'SUCCESS',375),('21112015154436413',2,2,10,'SUCCESS',376),('21112015154436413',2,2,11,'SUCCESS',377),('21112015154436413',2,2,12,'FAILED',378),('21112015162617616',5,7,6,'SUCCESS',379),('21112015162617616',5,7,8,'SUCCESS',380),('21112015162617616',5,7,9,'SUCCESS',381),('21112015162617616',5,7,10,'SUCCESS',382),('21112015162617616',5,8,26,'SUCCESS',383),('21112015162617616',5,8,12,'SUCCESS',384),('21112015163659411',5,7,6,'SUCCESS',385),('21112015163659411',5,7,8,'SUCCESS',386),('21112015163659411',5,7,9,'SUCCESS',387),('21112015163659411',5,7,10,'SUCCESS',388),('21112015163659411',5,8,26,'SUCCESS',389),('21112015163659411',5,8,12,'SUCCESS',390),('21112015163659411',5,8,13,'SUCCESS',391),('21112015163659411',5,8,14,'SUCCESS',392),('21112015163659411',5,8,15,'SUCCESS',393),('21112015163924271',1,1,5,'SUCCESS',394),('21112015163924271',1,1,1,'SUCCESS',395),('21112015163924271',1,1,2,'SUCCESS',396),('21112015163924271',1,1,3,'SUCCESS',397),('21112015163924271',1,1,4,'SUCCESS',398),('21112015163930353',5,7,6,'SUCCESS',399),('21112015163930353',5,7,8,'SUCCESS',400),('21112015163930353',5,7,9,'SUCCESS',401),('21112015163930353',5,7,10,'SUCCESS',402),('21112015163930353',5,8,26,'SUCCESS',403),('21112015163930353',5,8,12,'SUCCESS',404),('21112015163930353',5,8,13,'SUCCESS',405),('21112015163930353',5,8,14,'SUCCESS',406),('21112015163930353',5,8,15,'SUCCESS',407),('21112015164613359',1,1,5,'SUCCESS',408),('21112015164613359',1,1,1,'SUCCESS',409),('21112015164613359',1,1,2,'SUCCESS',410),('21112015164613359',1,1,3,'SUCCESS',411),('21112015164613359',1,1,4,'SUCCESS',412),('21112015164706952',5,7,6,'SUCCESS',413),('21112015164706952',5,7,8,'SUCCESS',414),('21112015164706952',5,7,9,'SUCCESS',415),('21112015164706952',5,7,10,'SUCCESS',416),('21112015164706952',5,8,26,'SUCCESS',417),('21112015164706952',5,8,12,'SUCCESS',418),('21112015164706952',5,8,13,'SUCCESS',419),('21112015164706952',5,8,14,'SUCCESS',420),('21112015164706952',5,8,15,'SUCCESS',421),('21112015164808490',1,1,5,'SUCCESS',422),('21112015164808490',1,1,1,'SUCCESS',423),('21112015164808490',1,1,2,'SUCCESS',424),('21112015164808490',1,1,3,'SUCCESS',425),('21112015164808490',1,1,4,'SUCCESS',426),('2111201516481588',5,7,6,'SUCCESS',427),('2111201516481588',5,7,8,'SUCCESS',428),('2111201516481588',5,7,9,'SUCCESS',429),('2111201516481588',5,7,10,'SUCCESS',430),('2111201516481588',5,8,26,'SUCCESS',431),('2111201516481588',5,8,12,'SUCCESS',432),('2111201516481588',5,8,13,'SUCCESS',433),('2111201516481588',5,8,14,'SUCCESS',434),('2111201516481588',5,8,15,'SUCCESS',435),('2111201516492039',3,3,5,'SUCCESS',436),('2111201516492039',3,3,1,'SUCCESS',437),('2111201516492039',3,3,2,'SUCCESS',438),('2111201516492039',3,3,3,'SUCCESS',439),('2111201516492039',3,3,4,'SUCCESS',440),('2111201516492039',3,3,99999999,'FAILED',441),('21112015165702245',4,4,17,'SUCCESS',442),('21112015165702245',4,4,18,'SUCCESS',443),('21112015165702245',4,4,19,'SUCCESS',444),('21112015165702245',4,5,20,'SUCCESS',445),('21112015165702245',4,5,21,'SUCCESS',446),('21112015165702245',4,5,22,'SUCCESS',447),('21112015165702245',4,5,23,'SUCCESS',448),('21112015165702245',4,6,24,'SUCCESS',449),('21112015165702245',4,6,25,'SUCCESS',450),('21112015170026869',4,4,17,'SUCCESS',451),('21112015170026869',4,4,18,'SUCCESS',452),('21112015170026869',4,4,19,'SUCCESS',453),('21112015170026869',4,5,20,'SUCCESS',454),('21112015170026869',4,5,21,'SUCCESS',455),('21112015170026869',4,5,22,'SUCCESS',456),('21112015170026869',4,5,23,'SUCCESS',457),('21112015170026869',4,6,24,'SUCCESS',458),('21112015170026869',4,6,25,'SUCCESS',459),('21112015170136425',4,4,17,'SUCCESS',460),('21112015170136425',4,4,18,'SUCCESS',461),('21112015170136425',4,4,19,'SUCCESS',462),('21112015170136425',4,5,20,'SUCCESS',463),('21112015170136425',4,5,21,'SUCCESS',464),('21112015170136425',4,5,22,'SUCCESS',465),('21112015170136425',4,5,23,'SUCCESS',466),('21112015170136425',4,6,24,'SUCCESS',467),('21112015170136425',4,6,25,'SUCCESS',468),('21112015033746813',4,4,17,'SUCCESS',469),('21112015033746813',4,4,18,'SUCCESS',470),('21112015033746813',4,4,19,'SUCCESS',471),('21112015033746813',4,5,20,'SUCCESS',472),('21112015033746813',4,5,21,'SUCCESS',473),('21112015033746813',4,5,22,'SUCCESS',474),('21112015033746813',4,5,23,'SUCCESS',475),('21112015033746813',4,6,24,'SUCCESS',476),('21112015033746813',4,6,25,'SUCCESS',477),('21112015183728372',6,9,27,'FAILED',478),('21112015183827942',6,9,27,'FAILED',479),('21112015184444406',6,9,27,'FAILED',480),('21112015190027112',6,9,28,'SUCCESS',481),('21112015190027112',6,9,27,'SUCCESS',482),('21112015191034964',6,9,28,'SUCCESS',483),('21112015191034964',6,9,27,'SUCCESS',484),('21112015191034964',6,9,29,'FAILED',485),('21112015195205264',6,9,28,'SUCCESS',486),('21112015195205264',6,9,34,'FAILED',487),('21112015195346260',6,9,28,'SUCCESS',488),('21112015195346260',6,9,27,'SUCCESS',489),('21112015195346260',6,9,34,'SUCCESS',490),('21112015195346260',6,9,29,'FAILED',491),('2111201519561126',6,9,28,'SUCCESS',492),('2111201519561126',6,9,27,'FAILED',493),('21112015200145449',6,9,28,'SUCCESS',494),('21112015200145449',6,9,27,'SUCCESS',495),('21112015200145449',6,9,34,'SUCCESS',496),('21112015200451528',6,9,28,'SUCCESS',497),('21112015200451528',6,9,27,'FAILED',498),('21112015200609491',6,9,28,'SUCCESS',499),('21112015200609491',6,9,27,'FAILED',500),('21112015201001942',5,7,6,'SUCCESS',501),('21112015201001942',5,7,8,'SUCCESS',502),('21112015201001942',5,7,9,'SUCCESS',503),('21112015201001942',5,7,10,'SUCCESS',504),('21112015201001942',5,8,26,'SUCCESS',505),('21112015201001942',5,8,12,'SUCCESS',506),('21112015201001942',5,8,13,'SUCCESS',507),('21112015201001942',5,8,14,'SUCCESS',508),('21112015201001942',5,8,15,'SUCCESS',509),('21112015201104663',6,9,28,'SUCCESS',510),('21112015201104663',6,9,27,'FAILED',511),('21112015201158275',6,9,28,'SUCCESS',512),('21112015201158275',6,9,27,'FAILED',513),('21112015201329131',6,9,28,'SUCCESS',514),('21112015201329131',6,9,27,'SUCCESS',515),('21112015201329131',6,9,34,'SUCCESS',516),('21112015201329131',6,9,29,'SUCCESS',517),('21112015201329131',6,9,30,'SUCCESS',518),('21112015201329131',6,9,31,'SUCCESS',519),('21112015201329131',6,9,32,'SUCCESS',520),('21112015201329131',6,9,33,'FAILED',521),('21112015201442654',6,9,28,'SUCCESS',522),('21112015201442654',6,9,27,'SUCCESS',523),('21112015201442654',6,9,34,'SUCCESS',524),('21112015201442654',6,9,29,'SUCCESS',525),('21112015201442654',6,9,30,'SUCCESS',526),('21112015201442654',6,9,31,'SUCCESS',527),('21112015201442654',6,9,32,'SUCCESS',528),('21112015201442654',6,9,33,'FAILED',529),('21112015202754420',6,9,27,'FAILED',530),('21112015203227513',6,9,27,'FAILED',531),('21112015203920974',6,9,27,'FAILED',532),('21112015210036787',6,9,35,'SUCCESS',533),('21112015210036787',6,9,27,'FAILED',534),('21112015210710547',6,9,35,'SUCCESS',535),('21112015210710547',6,9,27,'FAILED',536),('21112015210859564',6,9,35,'SUCCESS',537),('21112015211439858',6,9,35,'SUCCESS',538),('21112015211439858',6,9,27,'SUCCESS',539),('21112015211439858',6,9,34,'FAILED',540),('21112015211530510',6,9,35,'SUCCESS',541),('21112015211530510',6,9,27,'SUCCESS',542),('21112015211530510',6,9,34,'FAILED',543),('21112015211806593',6,9,35,'SUCCESS',544),('21112015211806593',6,9,27,'SUCCESS',545),('21112015211806593',6,9,34,'FAILED',546),('21112015212017782',6,9,35,'SUCCESS',547),('21112015212017782',6,9,27,'SUCCESS',548),('21112015212017782',6,9,34,'FAILED',549),('21112015212350449',6,9,35,'SUCCESS',550),('21112015212350449',6,9,27,'SUCCESS',551),('21112015212350449',6,9,34,'SUCCESS',552),('21112015212350449',6,9,29,'SUCCESS',553),('21112015212350449',6,9,30,'SUCCESS',554),('21112015212350449',6,9,31,'SUCCESS',555),('21112015212350449',6,9,32,'FAILED',556),('21112015212557809',6,9,35,'SUCCESS',557),('21112015212557809',6,9,27,'SUCCESS',558),('21112015212557809',6,9,34,'SUCCESS',559),('21112015212557809',6,9,29,'SUCCESS',560),('21112015212557809',6,9,30,'SUCCESS',561),('21112015212557809',6,9,31,'SUCCESS',562),('21112015212557809',6,9,32,'FAILED',563),('21112015212724402',6,9,35,'SUCCESS',564),('21112015212724402',6,9,27,'SUCCESS',565),('21112015212724402',6,9,34,'SUCCESS',566),('21112015212724402',6,9,29,'SUCCESS',567),('21112015212724402',6,9,30,'SUCCESS',568),('21112015212724402',6,9,31,'SUCCESS',569),('21112015212724402',6,9,32,'SUCCESS',570),('21112015212724402',6,9,33,'SUCCESS',571),('21112015212938254',6,9,35,'SUCCESS',572),('21112015212938254',6,9,27,'SUCCESS',573),('21112015212938254',6,9,34,'SUCCESS',574),('21112015212938254',6,9,29,'SUCCESS',575),('21112015212938254',6,9,30,'SUCCESS',576),('21112015212938254',6,9,31,'SUCCESS',577),('21112015212938254',6,9,32,'FAILED',578),('21112015213311489',6,9,35,'SUCCESS',579),('21112015213311489',6,9,27,'SUCCESS',580),('21112015213311489',6,9,34,'SUCCESS',581),('21112015213311489',6,9,29,'SUCCESS',582),('21112015213311489',6,9,30,'SUCCESS',583),('21112015213311489',6,9,31,'SUCCESS',584),('21112015213311489',6,9,32,'SUCCESS',585),('21112015213311489',6,9,33,'SUCCESS',586),('21112015213429163',6,9,35,'SUCCESS',587),('21112015213429163',6,9,27,'SUCCESS',588),('21112015213429163',6,9,34,'FAILED',589),('21112015213720832',6,9,35,'SUCCESS',590),('21112015213720832',6,9,27,'SUCCESS',591),('21112015214737509',6,9,35,'SUCCESS',592),('21112015214737509',6,9,27,'SUCCESS',593),('21112015214737509',6,9,34,'SUCCESS',594),('21112015214737509',6,9,29,'SUCCESS',595),('21112015214737509',6,9,36,'SUCCESS',596),('21112015214737509',6,9,30,'SUCCESS',597),('21112015214737509',6,9,31,'SUCCESS',598),('21112015214737509',6,9,32,'SUCCESS',599),('21112015214737509',6,9,33,'SUCCESS',600),('21112015214855767',6,9,35,'SUCCESS',601),('21112015214855767',6,9,27,'SUCCESS',602),('21112015214855767',6,9,34,'SUCCESS',603),('21112015214855767',6,9,29,'SUCCESS',604),('21112015214855767',6,9,36,'SUCCESS',605),('21112015214855767',6,9,30,'SUCCESS',606),('21112015214855767',6,9,31,'SUCCESS',607),('21112015214855767',6,9,32,'SUCCESS',608),('21112015214855767',6,9,33,'SUCCESS',609),('21112015215002373',6,9,35,'SUCCESS',610),('21112015215002373',6,9,27,'SUCCESS',611),('21112015215002373',6,9,34,'SUCCESS',612),('21112015215002373',6,9,29,'SUCCESS',613),('21112015215002373',6,9,36,'SUCCESS',614),('21112015215002373',6,9,30,'SUCCESS',615),('21112015215002373',6,9,31,'SUCCESS',616),('21112015215002373',6,9,32,'SUCCESS',617),('21112015215002373',6,9,33,'SUCCESS',618),('21112015215104315',6,9,35,'SUCCESS',619),('21112015215104315',6,9,27,'SUCCESS',620),('21112015215104315',6,9,34,'SUCCESS',621),('21112015215104315',6,9,29,'SUCCESS',622),('21112015215104315',6,9,36,'SUCCESS',623),('21112015215104315',6,9,30,'SUCCESS',624),('21112015215104315',6,9,31,'SUCCESS',625),('21112015215104315',6,9,32,'SUCCESS',626),('21112015215104315',6,9,33,'SUCCESS',627),('23112015113635665',6,9,35,'SUCCESS',628),('23112015113635665',6,9,27,'SUCCESS',629),('23112015113635665',6,9,34,'SUCCESS',630),('23112015113635665',6,9,29,'SUCCESS',631),('23112015113635665',6,9,36,'SUCCESS',632),('23112015113635665',6,9,30,'SUCCESS',633),('23112015113635665',6,9,31,'SUCCESS',634),('23112015113635665',6,9,32,'SUCCESS',635),('23112015113635665',6,9,33,'FAILED',636),('23112015113806733',6,9,35,'SUCCESS',637),('23112015113806733',6,9,27,'SUCCESS',638),('23112015113806733',6,9,34,'SUCCESS',639),('23112015113806733',6,9,29,'SUCCESS',640),('23112015113806733',6,9,36,'SUCCESS',641),('23112015113806733',6,9,30,'SUCCESS',642),('23112015113806733',6,9,31,'SUCCESS',643),('23112015113806733',6,9,32,'SUCCESS',644),('23112015113806733',6,9,33,'SUCCESS',645),('23112015114423711',1,1,5,'SUCCESS',646),('23112015114423711',1,1,1,'SUCCESS',647),('23112015114423711',1,1,2,'SUCCESS',648),('23112015114423711',1,1,3,'SUCCESS',649),('23112015114423711',1,1,4,'SUCCESS',650),('23112015114646835',1,1,5,'FAILED',651),('23112015114756863',5,7,6,'SUCCESS',652),('23112015114756863',5,7,8,'SUCCESS',653),('23112015114756863',5,7,9,'SUCCESS',654),('23112015114756863',5,7,10,'SUCCESS',655),('23112015114756863',5,8,26,'SUCCESS',656),('23112015114756863',5,8,12,'SUCCESS',657),('23112015114756863',5,8,13,'SUCCESS',658),('23112015114756863',5,8,14,'SUCCESS',659),('23112015114756863',5,8,15,'SUCCESS',660),('2311201511490549',4,4,17,'SUCCESS',661),('2311201511490549',4,4,18,'SUCCESS',662),('2311201511490549',4,4,19,'SUCCESS',663),('2311201511490549',4,5,20,'SUCCESS',664),('2311201511490549',4,5,21,'SUCCESS',665),('2311201511490549',4,5,22,'SUCCESS',666),('2311201511490549',4,5,23,'SUCCESS',667),('2311201511490549',4,6,24,'SUCCESS',668),('2311201511490549',4,6,25,'SUCCESS',669),('23112015115047248',1,1,5,'SUCCESS',670),('23112015115047248',1,1,1,'SUCCESS',671),('23112015115047248',1,1,2,'SUCCESS',672),('23112015115047248',1,1,3,'SUCCESS',673),('23112015115047248',1,1,4,'SUCCESS',674),('2311201511522777',5,7,6,'SUCCESS',675),('2311201511522777',5,7,8,'SUCCESS',676),('2311201511522777',5,7,9,'SUCCESS',677),('2311201511522777',5,7,10,'SUCCESS',678),('2311201511522777',5,8,26,'SUCCESS',679),('2311201511522777',5,8,12,'SUCCESS',680),('2311201511522777',5,8,13,'SUCCESS',681),('2311201511522777',5,8,14,'SUCCESS',682),('2311201511522777',5,8,15,'SUCCESS',683),('23112015115442632',3,3,5,'SUCCESS',684),('23112015115442632',3,3,1,'SUCCESS',685),('23112015115442632',3,3,2,'SUCCESS',686),('23112015115442632',3,3,3,'SUCCESS',687),('23112015115442632',3,3,4,'SUCCESS',688),('23112015122000649',1,1,5,'SUCCESS',689),('23112015122000649',1,1,1,'SUCCESS',690),('23112015122000649',1,1,2,'SUCCESS',691),('23112015122000649',1,1,3,'SUCCESS',692),('23112015122000649',1,1,4,'SUCCESS',693),('2311201512222656',1,1,5,'SUCCESS',694),('2311201512222656',1,1,1,'FAILED',695),('23112015122407928',1,1,5,'SUCCESS',696),('23112015122407928',1,1,1,'SUCCESS',697),('23112015122407928',1,1,2,'SUCCESS',698),('23112015122407928',1,1,3,'SUCCESS',699),('23112015122407928',1,1,4,'SUCCESS',700),('23112015122536319',1,1,5,'SUCCESS',701),('23112015122536319',1,1,1,'SUCCESS',702),('23112015122536319',1,1,2,'SUCCESS',703),('23112015122536319',1,1,3,'SUCCESS',704),('23112015122536319',1,1,4,'SUCCESS',705),('23112015122730757',1,1,5,'SUCCESS',706),('23112015122730757',1,1,1,'SUCCESS',707),('23112015122730757',1,1,2,'SUCCESS',708),('23112015122730757',1,1,3,'SUCCESS',709),('23112015122730757',1,1,4,'SUCCESS',710),('23112015130047895',6,9,35,'SUCCESS',711),('23112015130047895',6,9,27,'SUCCESS',712),('23112015130047895',6,9,34,'SUCCESS',713),('23112015130047895',6,9,29,'SUCCESS',714),('23112015130047895',6,9,36,'SUCCESS',715),('23112015130047895',6,9,30,'SUCCESS',716),('23112015130047895',6,9,31,'SUCCESS',717),('23112015130047895',6,9,32,'SUCCESS',718),('23112015130047895',6,9,33,'SUCCESS',719),('2311201515161262',1,1,5,'SUCCESS',720),('2311201515161262',1,1,1,'SUCCESS',721),('2311201515161262',1,1,2,'SUCCESS',722),('2311201515161262',1,1,3,'SUCCESS',723),('2311201515161262',1,1,4,'SUCCESS',724),('23112015163534517',1,1,5,'SUCCESS',725),('23112015163534517',1,1,1,'SUCCESS',726),('23112015163534517',1,1,2,'SUCCESS',727),('23112015163534517',1,1,3,'SUCCESS',728),('23112015163534517',1,1,4,'SUCCESS',729),('2311201516363550',5,7,6,'SUCCESS',730),('2311201516363550',5,7,8,'SUCCESS',731),('2311201516363550',5,7,9,'SUCCESS',732),('2311201516363550',5,7,10,'SUCCESS',733),('2311201516363550',5,8,26,'SUCCESS',734),('2311201516363550',5,8,12,'FAILED',735),('23112015163749938',5,7,6,'SUCCESS',736),('23112015163749938',5,7,8,'SUCCESS',737),('23112015163749938',5,7,9,'SUCCESS',738),('23112015163749938',5,7,10,'SUCCESS',739),('23112015163749938',5,8,26,'SUCCESS',740),('23112015163749938',5,8,12,'SUCCESS',741),('23112015163749938',5,8,13,'SUCCESS',742),('23112015163749938',5,8,14,'SUCCESS',743),('23112015163749938',5,8,15,'SUCCESS',744),('23112015163902657',1,1,5,'SUCCESS',745),('23112015163902657',1,1,1,'SUCCESS',746),('23112015163902657',1,1,2,'SUCCESS',747),('23112015163902657',1,1,3,'SUCCESS',748),('23112015163902657',1,1,4,'SUCCESS',749),('23112015163907122',5,7,6,'SUCCESS',750),('23112015163907122',5,7,8,'SUCCESS',751),('23112015163907122',5,7,9,'SUCCESS',752),('23112015163907122',5,7,10,'SUCCESS',753),('23112015163907122',5,8,26,'SUCCESS',754),('23112015163907122',5,8,12,'SUCCESS',755),('23112015163907122',5,8,13,'SUCCESS',756),('23112015163907122',5,8,14,'SUCCESS',757),('23112015163907122',5,8,15,'SUCCESS',758),('23112015164030534',3,3,5,'FAILED',759),('23112015164058546',3,3,5,'SUCCESS',760),('23112015164058546',3,3,1,'SUCCESS',761),('23112015164058546',3,3,2,'SUCCESS',762),('23112015164058546',3,3,3,'SUCCESS',763),('23112015164058546',3,3,4,'SUCCESS',764),('23112015164058546',3,3,99999999,'FAILED',765),('23112015164203982',4,4,17,'SUCCESS',766),('23112015164203982',4,4,18,'SUCCESS',767),('23112015164203982',4,4,19,'SUCCESS',768),('23112015164203982',4,5,20,'SUCCESS',769),('23112015164203982',4,5,21,'SUCCESS',770),('23112015164203982',4,5,22,'SUCCESS',771),('23112015164203982',4,5,23,'SUCCESS',772),('23112015164203982',4,6,24,'SUCCESS',773),('23112015164203982',4,6,25,'SUCCESS',774),('23112015164331615',6,9,35,'SUCCESS',775),('23112015164331615',6,9,27,'SUCCESS',776),('23112015164331615',6,9,34,'SUCCESS',777),('23112015164331615',6,9,29,'SUCCESS',778),('23112015164331615',6,9,36,'SUCCESS',779),('23112015164331615',6,9,30,'SUCCESS',780),('23112015164331615',6,9,31,'SUCCESS',781),('23112015164331615',6,9,32,'SUCCESS',782),('23112015164331615',6,9,33,'SUCCESS',783);
/*!40000 ALTER TABLE `qa_result_test_case` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-23 17:49:40