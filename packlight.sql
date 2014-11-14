CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1','jhipster','classpath:config/liquibase/changelog/db-changelog-001.xml','2014-10-27 16:25:58',1,'EXECUTED','7:5b7032abfd8baf68120da963f059b1b1','createTable (x3), addPrimaryKey, createTable (x2), createIndex, addForeignKeyConstraint (x3), loadData (x3)','',NULL,'3.1.1'),('2','jhipster','classpath:config/liquibase/changelog/db-changelog-001.xml','2014-10-27 16:25:59',2,'EXECUTED','7:924755ad1f30fda0adfef4b2c213d47d','createTable (x2), addPrimaryKey, createIndex (x2), addForeignKeyConstraint','',NULL,'3.1.1'),('3','jhipster','classpath:config/liquibase/changelog/db-changelog-001.xml','2014-10-27 16:26:00',3,'EXECUTED','7:af8ba5f4a12538204c59a54cb31042b3','createTable (x3), addForeignKeyConstraint (x2)','',NULL,'3.1.1'),('4','jhipster','classpath:config/liquibase/changelog/db-changelog-001.xml','2014-10-28 10:34:15',4,'EXECUTED','7:bf1e46a6cd4ce50e07dbc8b1b505d62d','addForeignKeyConstraint','',NULL,'3.1.1'),('5','jhipster','classpath:config/liquibase/changelog/db-changelog-001.xml','2014-10-28 10:34:15',5,'EXECUTED','7:78b4411db6f1495cd646947870bb502b','addColumn','',NULL,'3.1.1'),('20141101154014','jhipster','classpath:config/liquibase/changelog/20141101154014_added_entity_Category.xml','2014-11-01 15:44:37',6,'EXECUTED','7:0c27f88db00d12d4b243f2836c9c5c8d','createTable','',NULL,'3.1.1');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `HIBERNATE_SEQUENCES`
--

DROP TABLE IF EXISTS `HIBERNATE_SEQUENCES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HIBERNATE_SEQUENCES` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HIBERNATE_SEQUENCES`
--

LOCK TABLES `HIBERNATE_SEQUENCES` WRITE;
/*!40000 ALTER TABLE `HIBERNATE_SEQUENCES` DISABLE KEYS */;
INSERT INTO `HIBERNATE_SEQUENCES` VALUES ('T_PERSISTENT_AUDIT_EVENT',37);
/*!40000 ALTER TABLE `HIBERNATE_SEQUENCES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:01
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_AUTHORITY`
--

DROP TABLE IF EXISTS `T_AUTHORITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_AUTHORITY` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUTHORITY`
--

LOCK TABLES `T_AUTHORITY` WRITE;
/*!40000 ALTER TABLE `T_AUTHORITY` DISABLE KEYS */;
INSERT INTO `T_AUTHORITY` VALUES ('ROLE_ADMIN'),('ROLE_USER');
/*!40000 ALTER TABLE `T_AUTHORITY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_CATEGORY`
--

DROP TABLE IF EXISTS `T_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_CATEGORY` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_CATEGORY`
--

LOCK TABLES `T_CATEGORY` WRITE;
/*!40000 ALTER TABLE `T_CATEGORY` DISABLE KEYS */;
INSERT INTO `T_CATEGORY` VALUES (1,'couchage');
/*!40000 ALTER TABLE `T_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_HIKE`
--

DROP TABLE IF EXISTS `T_HIKE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_HIKE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `startingTown` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_HIKE`
--

LOCK TABLES `T_HIKE` WRITE;
/*!40000 ALTER TABLE `T_HIKE` DISABLE KEYS */;
INSERT INTO `T_HIKE` VALUES (2,'GR20',NULL,'Challans',13),(3,'HIKE',NULL,'HIKE',999),(4,'Telephone',NULL,'Perpignan',10),(5,'Ipad',NULL,'Perpignan',99);
/*!40000 ALTER TABLE `T_HIKE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_ITEM`
--

DROP TABLE IF EXISTS `T_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_ITEM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ITEM`
--

LOCK TABLES `T_ITEM` WRITE;
/*!40000 ALTER TABLE `T_ITEM` DISABLE KEYS */;
INSERT INTO `T_ITEM` VALUES (2,'pelle',110);
/*!40000 ALTER TABLE `T_ITEM` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:01
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_ITEM_HIKE`
--

DROP TABLE IF EXISTS `T_ITEM_HIKE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_ITEM_HIKE` (
  `idlist` int(11) NOT NULL,
  `iditem` int(11) NOT NULL,
  `onMe` tinyint(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `idCategory` int(11) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idlist`,`iditem`,`idCategory`),
  KEY `fk_item_idx` (`iditem`),
  CONSTRAINT `fk_hike` FOREIGN KEY (`idlist`) REFERENCES `T_HIKE` (`id`),
  CONSTRAINT `fk_item` FOREIGN KEY (`iditem`) REFERENCES `T_ITEM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ITEM_HIKE`
--

LOCK TABLES `T_ITEM_HIKE` WRITE;
/*!40000 ALTER TABLE `T_ITEM_HIKE` DISABLE KEYS */;
INSERT INTO `T_ITEM_HIKE` VALUES (2,2,1,12,1,'test');
/*!40000 ALTER TABLE `T_ITEM_HIKE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_PERSISTENT_AUDIT_EVENT`
--

DROP TABLE IF EXISTS `T_PERSISTENT_AUDIT_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PERSISTENT_AUDIT_EVENT` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1179649 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PERSISTENT_AUDIT_EVENT`
--

LOCK TABLES `T_PERSISTENT_AUDIT_EVENT` WRITE;
/*!40000 ALTER TABLE `T_PERSISTENT_AUDIT_EVENT` DISABLE KEYS */;
INSERT INTO `T_PERSISTENT_AUDIT_EVENT` VALUES (1,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(2,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(3,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(4,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(32768,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(65536,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(65537,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(65538,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(98304,'anonymousUser','2014-10-28','AUTHORIZATION_FAILURE'),(98305,'admin','2014-10-28','AUTHENTICATION_SUCCESS'),(98306,'admin','2014-10-28','AUTHENTICATION_SUCCESS'),(131072,'admin','2014-10-30','AUTHENTICATION_SUCCESS'),(131073,'anonymousUser','2014-10-30','AUTHORIZATION_FAILURE'),(131074,'anonymousUser','2014-10-30','AUTHORIZATION_FAILURE'),(131075,'admin','2014-10-30','AUTHENTICATION_SUCCESS'),(131076,'admin','2014-10-30','AUTHENTICATION_SUCCESS'),(131077,'admin','2014-10-30','AUTHENTICATION_SUCCESS'),(131078,'admin','2014-10-30','AUTHENTICATION_SUCCESS'),(131079,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(131080,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(131081,'anonymousUser','2014-10-31','AUTHORIZATION_FAILURE'),(131082,'anonymousUser','2014-10-31','AUTHORIZATION_FAILURE'),(131083,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(131084,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(163840,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(196608,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(229376,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(229377,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(229378,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(262144,'anonymousUser','2014-10-31','AUTHORIZATION_FAILURE'),(262145,'anonymousUser','2014-10-31','AUTHORIZATION_FAILURE'),(262146,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(262147,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(294912,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(327680,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(360448,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(393216,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(425984,'admin','2014-10-31','AUTHENTICATION_SUCCESS'),(458752,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(458753,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(491520,'anonymousUser','2014-11-01','AUTHORIZATION_FAILURE'),(491521,'anonymousUser','2014-11-01','AUTHORIZATION_FAILURE'),(491522,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(491523,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(524288,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(524289,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(524290,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(557056,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(589824,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(622592,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(655360,'admin','2014-11-01','AUTHENTICATION_SUCCESS'),(688128,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(720896,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(753664,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(753665,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(753666,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(753667,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(753668,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(786432,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(819200,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(851968,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(884736,'admin','2014-11-03','AUTHENTICATION_SUCCESS'),(917504,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917505,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917506,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917507,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917508,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917509,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917510,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917511,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917512,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917513,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917514,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917515,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917516,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917517,'anonymousUser','2014-11-04','AUTHORIZATION_FAILURE'),(917518,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(917519,'admin','2014-11-04','AUTHENTICATION_SUCCESS'),(950272,'anonymousUser','2014-11-05','AUTHORIZATION_FAILURE'),(950273,'anonymousUser','2014-11-05','AUTHORIZATION_FAILURE'),(950274,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(950275,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(983040,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1015808,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1015809,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1048576,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1081344,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1081345,'admin','2014-11-05','AUTHENTICATION_SUCCESS'),(1114112,'admin','2014-11-06','AUTHENTICATION_SUCCESS'),(1146880,'admin','2014-11-06','AUTHENTICATION_SUCCESS'),(1179648,'admin','2014-11-06','AUTHENTICATION_SUCCESS');
/*!40000 ALTER TABLE `T_PERSISTENT_AUDIT_EVENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_PERSISTENT_AUDIT_EVENT_DATA`
--

DROP TABLE IF EXISTS `T_PERSISTENT_AUDIT_EVENT_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PERSISTENT_AUDIT_EVENT_DATA` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_event_data` (`event_id`),
  CONSTRAINT `FK_event_persistent_audit_event_data` FOREIGN KEY (`event_id`) REFERENCES `T_PERSISTENT_AUDIT_EVENT` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PERSISTENT_AUDIT_EVENT_DATA`
--

LOCK TABLES `T_PERSISTENT_AUDIT_EVENT_DATA` WRITE;
/*!40000 ALTER TABLE `T_PERSISTENT_AUDIT_EVENT_DATA` DISABLE KEYS */;
INSERT INTO `T_PERSISTENT_AUDIT_EVENT_DATA` VALUES (1,'message','Accès refusé'),(1,'type','org.springframework.security.access.AccessDeniedException'),(2,'message','Accès refusé'),(2,'type','org.springframework.security.access.AccessDeniedException'),(3,'message','Accès refusé'),(3,'type','org.springframework.security.access.AccessDeniedException'),(4,'message','Accès refusé'),(4,'type','org.springframework.security.access.AccessDeniedException'),(32768,'message','Accès refusé'),(32768,'type','org.springframework.security.access.AccessDeniedException'),(65536,'message','Accès refusé'),(65536,'type','org.springframework.security.access.AccessDeniedException'),(65537,'message','Accès refusé'),(65537,'type','org.springframework.security.access.AccessDeniedException'),(65538,'message','Accès refusé'),(65538,'type','org.springframework.security.access.AccessDeniedException'),(98304,'message','Accès refusé'),(98304,'type','org.springframework.security.access.AccessDeniedException'),(98305,'remoteAddress','0:0:0:0:0:0:0:1'),(98306,'remoteAddress','0:0:0:0:0:0:0:1'),(131072,'remoteAddress','0:0:0:0:0:0:0:1'),(131073,'message','Accès refusé'),(131073,'type','org.springframework.security.access.AccessDeniedException'),(131074,'message','Accès refusé'),(131074,'type','org.springframework.security.access.AccessDeniedException'),(131075,'remoteAddress','127.0.0.1'),(131076,'remoteAddress','127.0.0.1'),(131077,'remoteAddress','0:0:0:0:0:0:0:1'),(131078,'remoteAddress','0:0:0:0:0:0:0:1'),(131079,'remoteAddress','0:0:0:0:0:0:0:1'),(131080,'remoteAddress','0:0:0:0:0:0:0:1'),(131081,'message','Accès refusé'),(131081,'type','org.springframework.security.access.AccessDeniedException'),(131082,'message','Accès refusé'),(131082,'type','org.springframework.security.access.AccessDeniedException'),(131083,'remoteAddress','0:0:0:0:0:0:0:1'),(131083,'sessionId','EA4CC74099768FA3BDCBD353EEF1618F'),(131084,'remoteAddress','0:0:0:0:0:0:0:1'),(131084,'sessionId','EA4CC74099768FA3BDCBD353EEF1618F'),(163840,'remoteAddress','0:0:0:0:0:0:0:1'),(196608,'remoteAddress','0:0:0:0:0:0:0:1'),(229376,'remoteAddress','0:0:0:0:0:0:0:1'),(229377,'remoteAddress','0:0:0:0:0:0:0:1'),(229378,'remoteAddress','0:0:0:0:0:0:0:1'),(262144,'message','Accès refusé'),(262144,'type','org.springframework.security.access.AccessDeniedException'),(262145,'message','Accès refusé'),(262145,'type','org.springframework.security.access.AccessDeniedException'),(262146,'remoteAddress','0:0:0:0:0:0:0:1'),(262147,'remoteAddress','0:0:0:0:0:0:0:1'),(294912,'remoteAddress','0:0:0:0:0:0:0:1'),(327680,'remoteAddress','0:0:0:0:0:0:0:1'),(360448,'remoteAddress','0:0:0:0:0:0:0:1'),(393216,'remoteAddress','0:0:0:0:0:0:0:1'),(425984,'remoteAddress','0:0:0:0:0:0:0:1'),(458752,'remoteAddress','0:0:0:0:0:0:0:1'),(458753,'remoteAddress','0:0:0:0:0:0:0:1'),(491520,'message','Accès refusé'),(491520,'type','org.springframework.security.access.AccessDeniedException'),(491521,'message','Accès refusé'),(491521,'type','org.springframework.security.access.AccessDeniedException'),(491522,'remoteAddress','0:0:0:0:0:0:0:1'),(491523,'remoteAddress','0:0:0:0:0:0:0:1'),(524288,'remoteAddress','0:0:0:0:0:0:0:1'),(524289,'remoteAddress','0:0:0:0:0:0:0:1'),(524289,'sessionId','0C2389A2118912593B7285F96EBF6CF5'),(524290,'remoteAddress','0:0:0:0:0:0:0:1'),(524290,'sessionId','0C2389A2118912593B7285F96EBF6CF5'),(557056,'remoteAddress','0:0:0:0:0:0:0:1'),(589824,'remoteAddress','0:0:0:0:0:0:0:1'),(622592,'remoteAddress','0:0:0:0:0:0:0:1'),(655360,'remoteAddress','0:0:0:0:0:0:0:1'),(688128,'remoteAddress','0:0:0:0:0:0:0:1'),(720896,'remoteAddress','0:0:0:0:0:0:0:1'),(753664,'remoteAddress','0:0:0:0:0:0:0:1'),(753665,'remoteAddress','0:0:0:0:0:0:0:1'),(753665,'sessionId','4CA0738C212571F0407F3230906555F2'),(753666,'remoteAddress','0:0:0:0:0:0:0:1'),(753666,'sessionId','4CA0738C212571F0407F3230906555F2'),(753667,'remoteAddress','0:0:0:0:0:0:0:1'),(753667,'sessionId','8A9D9A5476D93D023CF15489190D0539'),(753668,'remoteAddress','0:0:0:0:0:0:0:1'),(753668,'sessionId','8A9D9A5476D93D023CF15489190D0539'),(786432,'remoteAddress','0:0:0:0:0:0:0:1'),(819200,'remoteAddress','0:0:0:0:0:0:0:1'),(851968,'remoteAddress','0:0:0:0:0:0:0:1'),(884736,'remoteAddress','0:0:0:0:0:0:0:1'),(917504,'message','Accès refusé'),(917504,'type','org.springframework.security.access.AccessDeniedException'),(917505,'message','Accès refusé'),(917505,'type','org.springframework.security.access.AccessDeniedException'),(917506,'remoteAddress','0:0:0:0:0:0:0:1'),(917506,'sessionId','EBF1AC5382DADCC2202B37CBF517460F'),(917507,'remoteAddress','0:0:0:0:0:0:0:1'),(917507,'sessionId','EBF1AC5382DADCC2202B37CBF517460F'),(917508,'message','Accès refusé'),(917508,'type','org.springframework.security.access.AccessDeniedException'),(917509,'message','Accès refusé'),(917509,'type','org.springframework.security.access.AccessDeniedException'),(917510,'remoteAddress','80.215.135.203'),(917510,'sessionId','F56681D5E493F5A8E7DA1425E330F8E8'),(917511,'remoteAddress','80.215.135.203'),(917511,'sessionId','F56681D5E493F5A8E7DA1425E330F8E8'),(917512,'remoteAddress','0:0:0:0:0:0:0:1'),(917513,'message','Accès refusé'),(917513,'type','org.springframework.security.access.AccessDeniedException'),(917514,'remoteAddress','80.215.135.203'),(917514,'sessionId','395AC67BFA3CEE03038C579E74A43E13'),(917515,'remoteAddress','80.215.135.203'),(917515,'sessionId','395AC67BFA3CEE03038C579E74A43E13'),(917516,'message','Accès refusé'),(917516,'type','org.springframework.security.access.AccessDeniedException'),(917517,'message','Accès refusé'),(917517,'type','org.springframework.security.access.AccessDeniedException'),(917518,'remoteAddress','192.168.1.98'),(917518,'sessionId','B849D27EF53EF1607DC6EE615A58AF3D'),(917519,'remoteAddress','192.168.1.98'),(917519,'sessionId','B849D27EF53EF1607DC6EE615A58AF3D'),(950272,'message','Accès refusé'),(950272,'type','org.springframework.security.access.AccessDeniedException'),(950273,'message','Accès refusé'),(950273,'type','org.springframework.security.access.AccessDeniedException'),(950274,'remoteAddress','0:0:0:0:0:0:0:1'),(950274,'sessionId','DB62B39F788A969CEDDF55298FF647B2'),(950275,'remoteAddress','0:0:0:0:0:0:0:1'),(950275,'sessionId','DB62B39F788A969CEDDF55298FF647B2'),(983040,'remoteAddress','0:0:0:0:0:0:0:1'),(1015808,'remoteAddress','0:0:0:0:0:0:0:1'),(1015809,'remoteAddress','0:0:0:0:0:0:0:1'),(1048576,'remoteAddress','0:0:0:0:0:0:0:1'),(1081344,'remoteAddress','0:0:0:0:0:0:0:1'),(1081345,'remoteAddress','0:0:0:0:0:0:0:1'),(1114112,'remoteAddress','0:0:0:0:0:0:0:1'),(1146880,'remoteAddress','0:0:0:0:0:0:0:1'),(1179648,'remoteAddress','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `T_PERSISTENT_AUDIT_EVENT_DATA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_PERSISTENT_TOKEN`
--

DROP TABLE IF EXISTS `T_PERSISTENT_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PERSISTENT_TOKEN` (
  `series` varchar(255) NOT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `token_value` varchar(255) DEFAULT NULL,
  `token_date` date DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `fk_user_persistent_token` (`user_login`),
  CONSTRAINT `fk_user_persistent_token` FOREIGN KEY (`user_login`) REFERENCES `T_USER` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PERSISTENT_TOKEN`
--

LOCK TABLES `T_PERSISTENT_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_PERSISTENT_TOKEN` DISABLE KEYS */;
INSERT INTO `T_PERSISTENT_TOKEN` VALUES ('0Xcofa8wxvbLC9FZDSEzhg==','admin','vMwIE8cyJtMrr8pzwIlJlA==','2014-11-04','80.215.135.203','Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D201 Safari/9537.53'),('4LY+5hSBWCp/CSFjayBMdg==','admin','90Zii8Cen9Csz2gqEJ8Tjg==','2014-11-04','192.168.1.98','Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safari/9537.53'),('4y3zuInzVit02fnHE/+/ig==','admin','Mw97/TUR/xPhtbR0QLIc2w==','2014-11-04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),('BUTmZec1Rqq7haJAuFM5fw==','admin','VpbAbAKsLu5PVmdyMnOD2g==','2014-11-03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),('jQbwC8nhzwowWrDjFhDt0g==','admin','+TXulVftJKIwidpIewUgOA==','2014-11-06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),('mfl13R8CdsdcGCR4hgJDMg==','admin','fX7kYUbJ8Myn70ylCSCwow==','2014-10-30','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25'),('Pb0y+w/2lK2E8GQfvNrhQA==','admin','GI+ZwTcjJW9L2hnANmnRwg==','2014-11-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),('Uokfdcx3k0Jfdy5bZmOKqA==','admin','OXDyXbNkKmPsP52Rx86WkQ==','2014-11-03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36'),('wr2mzElfOaRbeurLGp17IQ==','admin','dnM4zHGf8MoL3hwt3r2Bng==','2014-10-31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36');
/*!40000 ALTER TABLE `T_PERSISTENT_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_USER`
--

DROP TABLE IF EXISTS `T_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_USER` (
  `login` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activated` bit(1) DEFAULT b'0',
  `lang_key` varchar(5) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '2012-01-01 00:00:00',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_USER`
--

LOCK TABLES `T_USER` WRITE;
/*!40000 ALTER TABLE `T_USER` DISABLE KEYS */;
INSERT INTO `T_USER` VALUES ('admin','b8f57d6d6ec0a60dfe2e20182d4615b12e321cad9e2979e0b9f81e0d6eda78ad9b6dcfe53e4e22d1',NULL,'Administrator',NULL,'',NULL,NULL,'',NULL,NULL,'2014-10-24 11:55:15'),('user','4f54479f8290dfd503b72a654faf5d70593eab443993d87a79e14e5f7cda3eb7988423aa99090c9b',NULL,'User',NULL,'',NULL,NULL,'',NULL,NULL,'2014-10-24 11:55:15');
/*!40000 ALTER TABLE `T_USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
CREATE DATABASE  IF NOT EXISTS `packlight` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `packlight`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: packlight
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `T_USER_AUTHORITY`
--

DROP TABLE IF EXISTS `T_USER_AUTHORITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_USER_AUTHORITY` (
  `login` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`login`,`name`),
  UNIQUE KEY `idx_user_authority` (`login`,`name`),
  KEY `fk_authority_name` (`name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`name`) REFERENCES `T_AUTHORITY` (`name`),
  CONSTRAINT `fk_user_login` FOREIGN KEY (`login`) REFERENCES `T_USER` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_USER_AUTHORITY`
--

LOCK TABLES `T_USER_AUTHORITY` WRITE;
/*!40000 ALTER TABLE `T_USER_AUTHORITY` DISABLE KEYS */;
INSERT INTO `T_USER_AUTHORITY` VALUES ('admin','ROLE_ADMIN'),('admin','ROLE_USER'),('user','ROLE_USER');
/*!40000 ALTER TABLE `T_USER_AUTHORITY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 10:12:02
