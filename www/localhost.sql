-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2013 at 11:27 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `businessdb`
--
CREATE DATABASE `businessdb` DEFAULT CHARACTER SET hebrew COLLATE hebrew_bin;
USE `businessdb`;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) COLLATE hebrew_bin NOT NULL,
  `Type_id` int(11) NOT NULL COMMENT 'Type of business',
  `CapacityPercent` float DEFAULT '0',
  `LineLenght` float NOT NULL DEFAULT '0',
  `MoreBoys` int(11) NOT NULL DEFAULT '0',
  `MoreGirls` int(11) NOT NULL DEFAULT '0',
  `CostMoney` int(11) NOT NULL DEFAULT '0',
  `NoCostMoney` int(11) NOT NULL DEFAULT '0',
  `Country_ID` int(11) DEFAULT NULL,
  `Location_ID` int(11) NOT NULL,
  `full_address` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status_id` tinyint(4) NOT NULL DEFAULT '0',
  `last_update_time` datetime DEFAULT NULL,
  `LastRankTime` datetime DEFAULT NULL,
  `LikesCounter` int(10) unsigned DEFAULT NULL COMMENT 'count of likes',
  `LogoURL` varchar(1024) COLLATE hebrew_bin DEFAULT NULL COMMENT 'URL to the logo',
  `MinAge` int(10) unsigned NOT NULL COMMENT 'Minimum age',
  `MaxAge` int(10) unsigned NOT NULL COMMENT 'Maximum age',
  `GoingCounter` int(10) unsigned DEFAULT NULL COMMENT 'Count going button',
  `HomePageURL` varchar(1024) CHARACTER SET hebrew DEFAULT NULL COMMENT 'URL of the business home page',
  `HomePageURLClickCount` int(10) unsigned DEFAULT '0',
  `TodayStyle` varchar(2048) CHARACTER SET hebrew NOT NULL,
  `BusinessSummary` varchar(4096) CHARACTER SET hebrew NOT NULL,
  `BusinessHours` varchar(256) CHARACTER SET hebrew NOT NULL COMMENT 'the hours when the business is open',
  `PhoneClickCounter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Type_id` (`Type_id`),
  KEY `Location_ID` (`Location_ID`),
  KEY `LikesCounter` (`LikesCounter`),
  KEY `MinAge` (`MinAge`),
  KEY `MaxAge` (`MaxAge`)
) ENGINE=InnoDB  DEFAULT CHARSET=hebrew COLLATE=hebrew_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `business_name`, `Type_id`, `CapacityPercent`, `LineLenght`, `MoreBoys`, `MoreGirls`, `CostMoney`, `NoCostMoney`, `Country_ID`, `Location_ID`, `full_address`, `longitude`, `latitude`, `contact_email`, `status_id`, `last_update_time`, `LastRankTime`, `LikesCounter`, `LogoURL`, `MinAge`, `MaxAge`, `GoingCounter`, `HomePageURL`, `HomePageURLClickCount`, `TodayStyle`, `BusinessSummary`, `BusinessHours`, `PhoneClickCounter`) VALUES
(2, 'Aroma ארומה', 3, 88, 26, 6, 3, 6, 3, 1, 2, 'האומן 17 ירושלים', 35.208864, 31.751817, NULL, 0, '2013-01-31 00:00:00', '2013-02-18 23:17:05', 30, NULL, 19, 23, 0, NULL, 0, '', '', '', 0),
(3, 'מסעדת אבו רמיABU RAMI', 3, 48.3333, 6, 33, 67, 11, 2, 1, 2, 'פייר קניג Haoman', 35.213842, 31.754372, 'belik', 0, '2013-05-05 00:00:00', '2013-05-28 12:04:18', 21, NULL, 18, 22, 26, 'http://www.yoyomedia.co.il', 39, '', '', '', 1),
(4, 'לא במקום בילוי', 1, 0, 0, 0, 0, 0, 0, 1, 2, 'עמק רפאים 22', 0, 0, 'belik77@walla.co.il', 1, '2013-02-24 00:00:00', '2013-02-24 00:00:00', NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', 0),
(5, 'מייק פלייס', 1, 0, 0, 0, 0, 0, 0, NULL, 3, 'הירקון 22', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, 0, 0, NULL, NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businesslines`
--

CREATE TABLE IF NOT EXISTS `businesslines` (
  `BusinessID` int(10) unsigned NOT NULL,
  `LineID` int(10) unsigned NOT NULL,
  `DOW` int(1) unsigned zerofill NOT NULL COMMENT 'day number',
  `LineDetails` varchar(2048) CHARACTER SET hebrew NOT NULL,
  `SortOrder` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BusinessID`,`LineID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin;

--
-- Dumping data for table `businesslines`
--

INSERT INTO `businesslines` (`BusinessID`, `LineID`, `DOW`, `LineDetails`, `SortOrder`) VALUES
(3, 1, 1, 'boys-girls - 20 - בנים - בנות', 1),
(3, 2, 2, 'boys-girls - 16 - בנים - בנות', 2);

-- --------------------------------------------------------

--
-- Table structure for table `businessphone`
--

CREATE TABLE IF NOT EXISTS `businessphone` (
  `BusinessID` int(10) unsigned NOT NULL,
  `PhoneNumber` varchar(256) CHARACTER SET hebrew NOT NULL,
  `SortOrder` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BusinessID`,`PhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin;

--
-- Dumping data for table `businessphone`
--

INSERT INTO `businessphone` (`BusinessID`, `PhoneNumber`, `SortOrder`) VALUES
(3, '*2323', 2),
(3, '972-5342898', 1);

-- --------------------------------------------------------

--
-- Table structure for table `businessphoto`
--

CREATE TABLE IF NOT EXISTS `businessphoto` (
  `BusinessID` int(10) unsigned NOT NULL,
  `PhotoID` int(10) unsigned NOT NULL,
  `PhotoURL` varchar(1024) COLLATE hebrew_bin NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  `SortOrder` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`BusinessID`,`PhotoID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin;

--
-- Dumping data for table `businessphoto`
--

INSERT INTO `businessphoto` (`BusinessID`, `PhotoID`, `PhotoURL`, `Active`, `SortOrder`) VALUES
(3, 1, 'http://www.google.co.il/imgres?q=%D7%90%D7%A8%D7%95%D7%9E%D7%94&hl=iw&biw=1280&bih=648&tbm=isch&tbnid=a75C7xHC6R7QjM:&imgrefurl=http://www.mishlohim.co.il/Menu.aspx%3FbusinessId%3D4156&docid=80tBt-3lQY8flM&imgurl=http://www.mishlohim.co.il/img/menu/Product_pic60848.jpg&w=244&h=253&ei=BcuQUZLHKaaY1AXsv4G4CQ&zoom=1&iact=rc&dur=576&page=1&tbnh=173&tbnw=171&start=0&ndsp=17&ved=1t:429,r:1,s:0&tx=885&ty=399', 1, 1),
(3, 2, 'http://www.google.co.il/imgres?q=%D7%90%D7%A8%D7%95%D7%9E%D7%94&hl=iw&biw=1280&bih=648&tbm=isch&tbnid=rumd2Heic2k2-M:&imgrefurl=http://mschools.macam.ac.il/haklai/aroma/SitePages/%25D7%259E%25D7%2591%25D7%25A0%25D7%2594%2520%25D7%2590%25D7%25A8%25D7%2592%25D7%2595%25D7%25A0%25D7%2599.aspx&docid=4Ul9YPjlSXgstM&imgurl=http://mschools.macam.ac.il/haklai/aroma/SiteAssets/SitePages/%2525D7%25259E%2525D7%252591%2525D7%2525A0%2525D7%252594%252520%2525D7%252590%2525D7%2525A8%2525D7%252592%2525D7%252595%2525D7%2525A0%2525D7%252599/dim386.jpg&w=250&h=250&ei=BcuQUZLHKaaY1AXsv4G4CQ&zoom=1&ved=1t:3588,r:4,s:0,i:99&iact=rc&dur=480&page=1&tbnh=173&tbnw=195&start=0&ndsp=17&tx=103&ty=57', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `businesssale`
--

CREATE TABLE IF NOT EXISTS `businesssale` (
  `BusinessID` int(11) NOT NULL,
  `SaleID` int(11) NOT NULL,
  `SaleDetail` varchar(2048) COLLATE hebrew_bin NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  `SortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`BusinessID`,`SaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin;

--
-- Dumping data for table `businesssale`
--

INSERT INTO `businesssale` (`BusinessID`, `SaleID`, `SaleDetail`, `Active`, `SortOrder`) VALUES
(3, 1, '1+1 coffee - קפה', 1, 1),
(3, 2, 'sandwich 50% - סנדוויץ', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `businesstype`
--

CREATE TABLE IF NOT EXISTS `businesstype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(512) COLLATE hebrew_bin NOT NULL,
  `SortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='Categories' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `businesstype`
--

INSERT INTO `businesstype` (`id`, `TypeName`, `SortOrder`) VALUES
(1, 'פאב', 1),
(2, 'מסעדה', 2),
(3, 'בית קפה', 3),
(4, 'קניון', 4);

-- --------------------------------------------------------

--
-- Table structure for table `businessuser`
--

CREATE TABLE IF NOT EXISTS `businessuser` (
  `BusinessID` int(10) unsigned NOT NULL,
  `UserID` int(10) unsigned NOT NULL,
  `LastRatingTime` datetime DEFAULT NULL,
  `RatingScore` int(10) unsigned DEFAULT NULL,
  `LastGoingClickTime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`BusinessID`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin;

--
-- Dumping data for table `businessuser`
--

INSERT INTO `businessuser` (`BusinessID`, `UserID`, `LastRatingTime`, `RatingScore`, `LastGoingClickTime`) VALUES
(3, 3, NULL, 0, '0000-00-00 00:00:00'),
(3, 5, NULL, 0, NULL),
(3, 7, '2013-05-28 12:04:18', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `businessuserfavorite`
--

CREATE TABLE IF NOT EXISTS `businessuserfavorite` (
  `BusinessID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`BusinessID`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='the favorite business of a user';

--
-- Dumping data for table `businessuserfavorite`
--

INSERT INTO `businessuserfavorite` (`BusinessID`, `UserID`) VALUES
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `businessuserrating`
--

CREATE TABLE IF NOT EXISTS `businessuserrating` (
  `businessID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ratingtime` datetime NOT NULL,
  `Capacity` int(11) NOT NULL DEFAULT '0',
  `MoreBoys` int(11) NOT NULL DEFAULT '0',
  `MoreGirls` int(11) NOT NULL DEFAULT '0',
  `LineLenght` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`businessID`,`UserID`,`ratingtime`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='log the user rating activity';

--
-- Dumping data for table `businessuserrating`
--

INSERT INTO `businessuserrating` (`businessID`, `UserID`, `ratingtime`, `Capacity`, `MoreBoys`, `MoreGirls`, `LineLenght`) VALUES
(3, 7, '2013-05-28 11:40:07', 30, 0, 1, 8),
(3, 7, '2013-05-28 11:41:19', 75, 1, 0, 6),
(3, 7, '2013-05-28 12:04:18', 40, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(512) COLLATE hebrew_bin NOT NULL,
  `SortOrder` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='City names etc...' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `LocationName`, `SortOrder`) VALUES
(2, 'ירושלים JERUSALEM', 1),
(3, 'תל אביב TEL-AVIV', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(2, '1361136345'),
(2, '1361136370'),
(3, '1361136542'),
(3, '1361696217'),
(3, '1361707552'),
(2, '1366751803'),
(2, '1366751864'),
(2, '1366751896'),
(2, '1366784936'),
(3, '1366784976'),
(2, '1366785064'),
(2, '1366785073'),
(4, '1366785116'),
(5, '1366785430'),
(5, '1366785472'),
(5, '1366791723'),
(5, '1366793531'),
(5, '1366793560'),
(5, '1366793590'),
(5, '1366793610'),
(5, '1366793912'),
(6, '1366794613'),
(6, '1366795253'),
(6, '1366795617'),
(6, '1366795632'),
(6, '1366795669'),
(6, '1366795875'),
(7, '1366797851'),
(7, '1366797856'),
(7, '1366812858'),
(7, '1366812994'),
(7, '1367510195'),
(7, '1367510226');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef'),
(3, 'belik1977', 'belik1977@gmail.com', '4f2b633d27c77468f6c942c7302cecd0151ee4edcd27a773303ffb361f41a74c1cc72b453ff1f66abc043f7b767db06334608e7c5ca212a5cf149f422d60667f', '2a67a1fe7a8ff865a0ce53b2b6d1547d9cd3246e8bff6a78b909300fa13329d588948b6fa6e4a7bb4a565465c5b4aad2b6559e293822a438677f13c3e2850524'),
(5, 'belik77', 'belik77@walla.co.il', '46f55cf89d508ea33f91318ffad447eb68314f6b3c303326900726be890874eb7befa15565ed7b4d4961f1224b3be1c6d620ac85f4eca93618db29039391db1e', 'ae669912898ba02b23d0236f3ee1f90224617f58bb8ed66f72e29dfa4b90540d140ab51c32e39339e0517960bcc54936ca351c88a9f66199b33ccf72c960322a'),
(7, 'belik88', 'belik88@walla.co.il', 'c6c4b862ad6f9f441bca2e33a8f93e51c71e45001420159d76fd031349d7081426d63263b2e7630b6356f729932b3351e6fc2d0a591c2620c30e5430bf1a8752', 'bddd55a86865399362d22d564452d8cb8111b95e55d8b4d285a5fc781244a9873239206af1caada453a7e67af824cd5f88baa09cf872e7730b287c6241e988a3');

-- --------------------------------------------------------

--
-- Table structure for table `sysparam`
--

CREATE TABLE IF NOT EXISTS `sysparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_name` varchar(512) NOT NULL,
  `param_value` varchar(512) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_name` (`param_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='store system paramters' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sysparam`
--

INSERT INTO `sysparam` (`id`, `param_name`, `param_value`, `description`) VALUES
(1, 'MaxDistance', '5', 'Defines the maximum value of distance between User and business in the search screen'),
(2, 'MaxBusinessLimit', '10', 'Defines the maximum amount of businesses to be retrieved'),
(3, 'MaxDistanceForNearBy', '0.1', 'Defines the maximum value of distance between User and business in the near my location screen');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
