/*
SQLyog Community v11.42 (64 bit)
MySQL - 5.1.73 : Database - ni381535_1_DB
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ni381535_1_DB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `arma3srv`;

/*Table structure for table `dynperms` */

DROP TABLE IF EXISTS `dynperms`;

CREATE TABLE `dynperms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permid` text NOT NULL,
  `permname` text NOT NULL,
  `maxrank` int(11) NOT NULL DEFAULT '0',
  `ruleconfig` text NOT NULL,
  `member_conditions` text NOT NULL,
  `logo` text NOT NULL,
  `levelnames` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Dynamic group definition system';

/*Table structure for table `homes` */

DROP TABLE IF EXISTS `homes`;

CREATE TABLE `homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '100000',
  `home_group` text NOT NULL,
  `name` text,
  `marker_spawn` text NOT NULL,
  `marker_car_spawn` text NOT NULL,
  `inventory` text NOT NULL,
  `owned` tinyint(1) NOT NULL DEFAULT '0',
  `price_sell` int(11) NOT NULL DEFAULT '2000',
  `inventory_weight` int(11) NOT NULL DEFAULT '600',
  `ownername` text NOT NULL,
  `inventory_maxweight` int(11) NOT NULL DEFAULT '1200',
  `upgrade_safe` tinyint(1) NOT NULL DEFAULT '0',
  `safe_inventory` text NOT NULL,
  `trustedpersons` text NOT NULL,
  `buyable` tinyint(1) NOT NULL DEFAULT '1',
  `donator` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

/*Table structure for table `money_laundering` */

DROP TABLE IF EXISTS `money_laundering`;

CREATE TABLE `money_laundering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` text NOT NULL,
  `value` int(10) unsigned NOT NULL,
  `remainingtime` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=770 DEFAULT CHARSET=latin1;

/*Table structure for table `players` */

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text,
  `mediclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_gear` text,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `inventory` text,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `jail_time` int(11) NOT NULL DEFAULT '0',
  `anticheat_mot` text,
  `playtime` int(11) NOT NULL DEFAULT '0',
  `perms` text,
  `adaclevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `adac_licenses` text,
  `adac_gear` text,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500),
  `damage` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(32) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `trunk` varchar(2048) NOT NULL DEFAULT '[]',
  `weapon_storage` varchar(4096) NOT NULL DEFAULT '[]',
  `weapon_storage2` varchar(4096) NOT NULL DEFAULT '[]',
  `position` varchar(255) NOT NULL,
  `occupied` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;




CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gangname` varchar(30) NOT NULL,
  `atmCash` varchar(2048) NOT NULL,
  `locked` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`gangname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

CREATE TABLE IF NOT EXISTS `gang_players` (
  `gangid` int(11) NOT NULL,
  `playerid` varchar(2048) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




/* Procedure structure for procedure `deleteDeadVehicles` */

/*!50003 DROP PROCEDURE IF EXISTS  `deleteDeadVehicles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ni381535_1_DB`@`%` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `resetLifeVehicles` */

/*!50003 DROP PROCEDURE IF EXISTS  `resetLifeVehicles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ni381535_1_DB`@`%` PROCEDURE `resetLifeVehicles`()
BEGIN
	UPDATE vehicles SET `active`= 0;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
