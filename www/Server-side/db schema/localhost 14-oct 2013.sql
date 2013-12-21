-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2013 at 06:32 PM
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


-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) CHARACTER SET hebrew COLLATE hebrew_bin NOT NULL,
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
  `status_id` tinyint(4) NOT NULL DEFAULT '0',
  `last_update_time` datetime DEFAULT NULL,
  `LastRankTime` datetime DEFAULT NULL,
  `LikesCounter` int(10) unsigned DEFAULT NULL COMMENT 'count of likes',
  `LogoURL` varchar(1024) CHARACTER SET hebrew COLLATE hebrew_bin DEFAULT 'resources/images/logo.png' COMMENT 'URL to the logo',
  `MinAge` int(10) unsigned NOT NULL COMMENT 'Minimum age',
  `MaxAge` int(10) unsigned NOT NULL COMMENT 'Maximum age',
  `GoingCounter` int(10) unsigned DEFAULT NULL COMMENT 'Count going button',
  `HomePageURL` varchar(1024) DEFAULT NULL COMMENT 'URL of the business home page',
  `HomePageURLClickCount` int(10) unsigned DEFAULT '0',
  `TodayStyle` varchar(2048) NOT NULL,
  `BusinessSummary` varchar(4096) NOT NULL,
  `BusinessHours` varchar(256) NOT NULL COMMENT 'the hours when the business is open',
  `PhoneClickCounter` int(10) unsigned NOT NULL DEFAULT '0',
  `account_level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0-regular, 1-premium',
  `business_phone` varchar(512) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `today_deals` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `business_name` (`business_name`),
  KEY `Location_ID` (`Location_ID`),
  KEY `LikesCounter` (`LikesCounter`),
  KEY `MinAge` (`MinAge`),
  KEY `MaxAge` (`MaxAge`)
) ENGINE=InnoDB  DEFAULT CHARSET=hebrew AUTO_INCREMENT=111 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `business_name`, `CapacityPercent`, `LineLenght`, `MoreBoys`, `MoreGirls`, `CostMoney`, `NoCostMoney`, `Country_ID`, `Location_ID`, `full_address`, `longitude`, `latitude`, `status_id`, `last_update_time`, `LastRankTime`, `LikesCounter`, `LogoURL`, `MinAge`, `MaxAge`, `GoingCounter`, `HomePageURL`, `HomePageURLClickCount`, `TodayStyle`, `BusinessSummary`, `BusinessHours`, `PhoneClickCounter`, `account_level`, `business_phone`, `email`, `today_deals`) VALUES
(1, 'dummy', 0, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'resources/images/logo.png', 0, 0, NULL, NULL, 0, ' ', ' ', ' ', 0, 0, NULL, NULL, NULL),
(2, 'ארומה', 77.5, 61, 0, 100, 6, 3, 1, 2, 'האומן 17 ירושלים', 35.208156, 31.751343, 0, '2013-01-31 00:00:00', '2013-10-01 14:30:00', 30, 'resources/images/logo.png', 19, 23, 9, NULL, 0, '', '', '', 0, 0, '1-800-202202', NULL, NULL),
(3, 'מסעדת לאנטריקוט', 100, 7, 100, 0, 11, 2, 1, 3, 'נחלת בנימין binyamin', 35.208564, 31.751562, 0, '2013-08-21 08:30:00', '2013-09-27 08:36:59', 21, 'resources/images/logo.png', 18, 22, 26, 'http://www.yoyomedia.co.il', 39, '', '', '', 1, 1, NULL, NULL, NULL),
(4, 'לא במקום בילוי', 0, 0, 0, 0, 0, 0, 1, 2, 'עמק רפאים 22', 0, 0, 1, '2013-02-24 00:00:00', '2013-02-24 00:00:00', NULL, 'resources/images/logo.png', 0, 0, 0, NULL, NULL, '', '', '', 0, 0, NULL, NULL, NULL),
(5, 'מייק פלייס', 72, 10, 100, 0, 0, 0, 1, 2, 'עם ועולמו 9', 35.186741, 31.789616, 0, '2013-09-08 00:00:00', '2013-10-01 21:40:49', 60, 'resources/images/logo.png', 20, 25, 19, 'http://www.mikesplacebars.com/he/', NULL, 'גאז לאורך הלילה', 'הבר מאובזר ומגוון ועומד בסטנדרטים בינלאומיים. תמצאו בו מבחר רחב של בירות, מהחבית ובבקבוקים, המוגשות תמיד בטמפרטורה הנכונה, תפריט קוקטיילים עשיר ומגוון משקאות חריפים מכל הסוגים. כך שתמיד ולכולם יהיה מה לשתות. השילוב של טרנדים בינלאומיים בתחום האלכוהול, happy hour כל יום עד שעה מאוחרת, הלקוחות הקבועים יחד עם צוות העובדים החברותי יגרום לך לרצות ולקחת חלק בזה . . . תגיעו - תבינו!', '10:00-02:00', 3, 0, '02-654321', 'info@mikeplace.com', '1+1 על בירה'),
(10, 'העוגן', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שער פלמר 3 חיפה', 34.999663, 32.819523, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8645108', NULL, NULL),
(11, 'אליז Eli''s', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דרך יפו 35 חיפה', 34.99727, 32.820208, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-6354696', NULL, NULL),
(12, 'Temple bar טמפל בר', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שד'' ההסתדרות 55 קניון סינמול חיפה', 35.037289, 32.792758, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8404460', NULL, NULL),
(13, ' אלתרמן Alterman', NULL, 0, 0, 0, 0, 0, NULL, 2, 'יפה נוף 115 חיפה', 34.990329, 32.804311, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-8124809', NULL, NULL),
(14, 'פונדק הדב', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שד'' הנשיא 135 חיפה', 34.986134, 32.803148, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8381703', NULL, NULL),
(15, 'סטלה Stella', NULL, 0, 0, 0, 0, 0, NULL, 2, 'הירקון 1 חיפה', 34.984106, 32.796447, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '053-7103377', NULL, NULL),
(16, 'פאב הדאנק', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שד'' המגינים 95 חיפה', 34.990404, 32.821687, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8532836', NULL, NULL),
(17, 'צ''ארלי Charlie', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שער הלבנון 2 חיפה', 34.988333, 32.805736, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-3427543', NULL, NULL),
(18, 'הסנדק', NULL, 0, 0, 0, 0, 0, NULL, 2, 'קדושי בגדד 30 חיפה', 35.000092, 32.820424, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8671888', NULL, NULL),
(19, 'ניוטון Newtone', NULL, 0, 0, 0, 0, 0, NULL, 2, 'יפה נוף 115 חיפה', 34.990211, 32.804049, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-7400501', NULL, NULL),
(20, 'דיוק Duke', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שד'' מוריה 107 חיפה', 34.986826, 32.789726, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8347282', NULL, NULL),
(21, 'ברברוסה Barbarossa Haifa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דרך פיק"א 8 חיפה', 34.987762, 32.785448, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8114010', NULL, NULL),
(22, 'בארקי Barki', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דרך העצמאות 84 חיפה', 34.998823, 32.819516, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-4258904', NULL, NULL),
(23, 'פרנקי Frankie', NULL, 0, 0, 0, 0, 0, NULL, 2, 'ליטניס 4 חיפה', 34.98594, 32.789795, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-2812523', NULL, NULL),
(24, 'סקולה ', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חמם אל פשה 5 חיפה', 34.974345, 32.830427, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 1, 0, '04-8663388', NULL, NULL),
(25, 'אלחמרה בר מסעדה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'כיאט 1 חיפה', 34.999166, 32.819131, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-8774045', NULL, NULL),
(26, 'בית הבירה Beer house', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שד'' הנשיא 116 גן האם חיפה', 34.987158, 32.806252, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5018881', NULL, NULL),
(27, 'ליבירה פאב מבשלה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'הנאמנים 21 חיפה', 34.995613, 32.819922, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-2284840', NULL, NULL),
(28, 'ג''ק והאפונים', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דרך יפו 44 חיפה', 34.996895, 32.81998, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8535668', NULL, NULL),
(29, 'חיפה הקטנה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שער הלבנון 4 חיפה', 34.988161, 32.805519, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-8727722', NULL, NULL),
(30, 'נולה סוקס Nola socks', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שלום עליכם 4 מרכז זיו חיפה', 35.015018, 32.782692, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-7929159', NULL, NULL),
(31, 'פרנג''ליקו Frangelico Haifa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 132 חיפה ', 34.985425, 32.787527, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8248839', NULL, NULL),
(32, 'בראון Brown', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 131 חיפה', 34.985812, 32.787455, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8112391', NULL, NULL),
(33, 'מיילדרס Mailder''s Haifa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 126 חיפה', 34.986048, 32.788213, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8248754', NULL, NULL),
(34, 'צפרירים Zafririm', NULL, 0, 0, 0, 0, 0, NULL, 2, 'צפרירים 1 חיפה', 34.983661, 32.796966, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8112235', NULL, NULL),
(35, 'הספריה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 108 חיפה', 34.986455, 32.790287, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8261119', NULL, NULL),
(36, 'Drink point Haifa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 29', 34.984782, 32.799802, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, NULL, NULL, NULL),
(37, 'הסמינר Seminar', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות הנשיא 135 חיפה', 34.986284, 32.802985, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-6890968', NULL, NULL),
(38, 'סליק Sleek', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות הנשיא 124 חיפה', 34.987421, 32.804518, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5608884', NULL, NULL),
(39, 'לופט Loft 124', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות הנשיא 124 חיפה', 34.987421, 32.804518, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5608884', NULL, NULL),
(40, 'קפה הבנק Bank', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות הנשיא 119 חיפה', 34.987979, 32.804951, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8389623', NULL, NULL),
(41, 'ג''ירף חיפה Giraffe', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות הנשיא 131 חיפה', 34.986847, 32.803296, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8104012', NULL, NULL),
(42, 'Sinta - bar', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 127 חיפה', 34.986069, 32.787726, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8341170', NULL, NULL),
(43, 'השאנן', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שלום עליכם 3 חיפה', 35.015166, 32.782742, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-7020031', NULL, NULL),
(44, 'בר יין Whinebar', NULL, 0, 0, 0, 0, 0, NULL, 2, 'יפה נוף 107 חיפה', 34.989567, 32.805113, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-5004895', NULL, NULL),
(45, 'Morgan irish pub המורגן', NULL, 0, 0, 0, 0, 0, NULL, 2, 'האיצטדיון 22 חיפה', 35.05806, 32.823021, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5408911', NULL, NULL),
(46, 'Elephant', NULL, 0, 0, 0, 0, 0, NULL, 2, 'האיצטדיון 4 חיפה', 35.05542, 32.819631, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-2352400', NULL, NULL),
(47, 'הספריה קרית חיים', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 79 חיפה', 35.052373, 32.820298, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8405140', NULL, NULL),
(48, 'מיילדרס קריות Mailder''s', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 114 חיפה', 35.051901, 32.820641, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8400993', NULL, NULL),
(49, 'Nirvana נירוונה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דוד אלעזר חיפה', 34.956098, 32.796082, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8501444', NULL, NULL),
(50, 'Rose רוז', NULL, 0, 0, 0, 0, 0, NULL, 2, 'אריה שנקר 61 חיפה', 35.061509, 32.814708, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8403077', NULL, NULL),
(51, 'נתב''ג Natbag', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 110 חיפה', 35.052631, 32.820226, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-9123562', NULL, NULL),
(52, 'המכולת', NULL, 0, 0, 0, 0, 0, NULL, 2, 'קדימה 1 חיפה', 34.982298, 32.800731, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8104014', NULL, NULL),
(53, 'ששון Sasson', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חורב 10 חיפה', 34.985737, 32.785746, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-6306234', NULL, NULL),
(54, 'סינקופה Syncopa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'כיאט 5 חפה', 34.99867, 32.818691, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '050-9188899', NULL, NULL),
(55, 'אליקה Elica', NULL, 0, 0, 0, 0, 0, NULL, 2, 'מסדה 24 חיפה', 34.993091, 32.809816, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8643274', NULL, NULL),
(56, 'קלמנ''ס kalman''s', NULL, 0, 0, 0, 0, 0, NULL, 2, 'הנמל 3 חיפה', 35.0022, 32.817656, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8620525', NULL, NULL),
(57, 'ברברוסה קריות Barbarossa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות אח"י אילת 69 חיפה', 35.076417, 32.817855, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-6895100', NULL, NULL),
(58, 'מליסה בר Melissa ', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות אח"י אילת 65 חיפה', 35.076084, 32.818107, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '050-9903676', NULL, NULL),
(59, 'היפנוטיק בר Hypnotic', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 74 חיפה', 35.058559, 32.816543, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8428866', NULL, NULL),
(60, 'חונטה ', NULL, 0, 0, 0, 0, 0, NULL, 2, 'בית הסטודנט הטכניון חיפה', 35.022797, 32.776426, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-6903060', NULL, NULL),
(61, 'איזי', NULL, 0, 0, 0, 0, 0, NULL, 2, 'מסדה 19 חיפה', 34.993518, 32.809541, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8660879', NULL, NULL),
(62, 'פרנ''ליקו סינימול Frangelico', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות ההסתדרות 55 חיפה', 34.993518, 32.809541, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8720855', NULL, NULL),
(63, 'BBB Haifa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות מוריה 133 חיפה', 34.985651, 32.787311, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-6219034', NULL, NULL),
(64, 'ג''פטו Jeppeto', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 66 חיפה', 35.060517, 32.815447, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8404033', NULL, NULL),
(65, 'פיל או סוף', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חלוצי התעשייה 114 חיפה', 35.051944, 32.820695, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8400993', NULL, NULL),
(66, 'המרתף', NULL, 0, 0, 0, 0, 0, NULL, 2, 'הבנקים 2 חיפה', 34.997452, 32.820361, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8114483', NULL, NULL),
(67, 'אולטרסאונד Ultrasound', NULL, 0, 0, 0, 0, 0, NULL, 2, 'קיבוץ יגור', 35.076841, 32.741633, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '050-3145173', NULL, NULL),
(68, 'אלעזר 10', NULL, 0, 0, 0, 0, 0, NULL, 2, 'דוד אלעזר 10 חיפה', 34.956975, 32.797076, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-687-3343', NULL, NULL),
(69, 'הנמל 24', NULL, 0, 0, 0, 0, 0, NULL, 2, 'הנמל 24 חיפה', 35.000725, 32.819144, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-8628899', NULL, NULL),
(70, 'מלינה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'שדרות ההסתדרות 60 חיפה', 35.038329, 32.792857, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-513-8899', NULL, NULL),
(71, 'בר יהודה', NULL, 0, 0, 0, 0, 0, NULL, 2, 'קיבוץ יגור', 35.076841, 32.741633, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-903-7000', NULL, NULL),
(72, 'Avalon אבלון', NULL, 0, 0, 0, 0, 0, NULL, 2, 'היוצרים 69 נהריה', 34.849703, 32.034267, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-582-6186', NULL, NULL),
(73, 'המרפסת', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חורש האלונים 5 רמת ישי', 35.173867, 32.708454, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, NULL, NULL, NULL),
(74, 'ברברוסה רמת ישי Barbarossa', NULL, 0, 0, 0, 0, 0, NULL, 2, 'רמת ישי אזור תעשייה', 35.174612, 32.706964, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '04-9930082', NULL, NULL),
(75, 'בית המרזח', NULL, 0, 0, 0, 0, 0, NULL, 2, 'חורש האלונים רמת ישי', 35.176334, 32.708968, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-4478213', NULL, NULL),
(76, 'פרנג''ליקו רמת ישי Frangelico', NULL, 0, 0, 0, 0, 0, NULL, 2, 'מעלה הרדוף 32 רמת ישי', 35.159758, 32.705068, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-2197700', NULL, NULL),
(77, 'אנזו', NULL, 0, 0, 0, 0, 0, NULL, 2, 'החורש 3 רמת ישי', 35.130565, 32.721588, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5700040', NULL, NULL),
(78, 'השוקת', NULL, 0, 0, 0, 0, 0, NULL, 2, 'מעלה שיטים רמת ישי', 35.168347, 32.704192, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-4781890', NULL, NULL),
(79, 'Campus Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בן יהודה 59 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5718718', NULL, NULL),
(80, 'Next door', NULL, 0, 0, 0, 0, 0, NULL, 1, 'שדרות חן 52 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6956276', NULL, NULL),
(81, 'ננה', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אחד העם 1 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5161915', NULL, NULL),
(82, 'Chaser Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אלנבי 44 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-7530350', NULL, NULL),
(83, 'בר גיורא', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בר גיורא 4 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6204880', NULL, NULL),
(84, 'Mate פלורנטין', NULL, 0, 0, 0, 0, 0, NULL, 1, 'ויטל 2 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5185290', NULL, NULL),
(85, 'Mate דיזינגוף', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דיזינגוף 226 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5241615', NULL, NULL),
(86, 'Belle & Antoine', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בן יהודה 196 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6055225', NULL, NULL),
(87, 'Paulina stesh Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'הרצל 2 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '077-2087800', NULL, NULL),
(88, 'Pitcher''s Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בת עמי 3 תל אביב יפו', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '050-5998549', NULL, NULL),
(89, 'Temptation', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אלנבי 35 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6290875', NULL, NULL),
(90, 'Lenny''s', NULL, 0, 0, 0, 0, 0, NULL, 1, 'חיים ויטל 7 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5186637', NULL, NULL),
(91, 'מולדת', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בן יהודה 145 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-5606662', NULL, NULL),
(92, 'Cerveza', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דיזינגוף 174 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-3335454', NULL, NULL),
(93, 'אילקה', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דיזינגוף 148 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-8030706', NULL, NULL),
(94, 'Perla פרלה', NULL, 0, 0, 0, 0, 0, NULL, 1, 'פלורנטין 8 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6823823', NULL, NULL),
(95, 'פפיטו', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בוגרשוב 28 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5477741', NULL, NULL),
(96, 'ויינברג Wineberg', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בן יהודה 106 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5223939', NULL, NULL),
(97, 'המעבדה', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אלנבי 31 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '050-3030738', NULL, NULL),
(98, 'הגאולה', NULL, 0, 0, 0, 0, 0, NULL, 1, 'גאולה 51 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '052-3530647', NULL, NULL),
(99, 'פלורנטין 10', NULL, 0, 0, 0, 0, 0, NULL, 1, 'פלורנטין 10 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-6819999', NULL, NULL),
(100, 'Joey''s Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אלנבי 42 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5179277', NULL, NULL),
(101, 'Shine & Sharp', NULL, 0, 0, 0, 0, 0, NULL, 1, 'יגאל אלון 65 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5364755', NULL, NULL),
(102, 'פולי', NULL, 0, 0, 0, 0, 0, NULL, 1, 'רוטשילד 60 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-5598975', NULL, NULL),
(103, 'Juno ג''ונו', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דה-האז 1 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5446620', NULL, NULL),
(104, 'Patio Bar', NULL, 0, 0, 0, 0, 0, NULL, 1, 'הירקון 114 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-2223327', NULL, NULL),
(105, 'Sex Boutique סקס בוטיק', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דיזינגוף 122 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5444555', NULL, NULL),
(106, 'אזור 1', NULL, 0, 0, 0, 0, 0, NULL, 1, 'דיזינגוף 268 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, NULL, NULL, NULL),
(107, 'אלטנוילנד', NULL, 0, 0, 0, 0, 0, NULL, 1, 'בן יהודה 41 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '054-8055079', NULL, NULL),
(108, 'החתול והכלב', NULL, 0, 0, 0, 0, 0, NULL, 1, 'קרליבך 23 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, NULL, NULL, NULL),
(109, 'המנזר', NULL, 0, 0, 0, 0, 0, NULL, 1, 'אלנבי 60 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '03-5173015', NULL, NULL),
(110, 'זאייצ''יק', NULL, 0, 0, 0, 0, 0, NULL, 1, 'נחלת בנימין 45 תל אביב', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '', '', '', 0, 0, '072-3255120', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE IF NOT EXISTS `business_types` (
  `businessid` int(10) unsigned NOT NULL,
  `typeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`businessid`,`typeid`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COMMENT='connection between business to business type';

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`businessid`, `typeid`) VALUES
(4, 1),
(5, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(2, 2),
(3, 2),
(25, 2),
(2, 3);

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
(3, 2, 'http://www.google.co.il/imgres?q=%D7%90%D7%A8%D7%95%D7%9E%D7%94&hl=iw&biw=1280&bih=648&tbm=isch&tbnid=rumd2Heic2k2-M:&imgrefurl=http://mschools.macam.ac.il/haklai/aroma/SitePages/%25D7%259E%25D7%2591%25D7%25A0%25D7%2594%2520%25D7%2590%25D7%25A8%25D7%2592%25D7%2595%25D7%25A0%25D7%2599.aspx&docid=4Ul9YPjlSXgstM&imgurl=http://mschools.macam.ac.il/haklai/aroma/SiteAssets/SitePages/%2525D7%25259E%2525D7%252591%2525D7%2525A0%2525D7%252594%252520%2525D7%252590%2525D7%2525A8%2525D7%252592%2525D7%252595%2525D7%2525A0%2525D7%252599/dim386.jpg&w=250&h=250&ei=BcuQUZLHKaaY1AXsv4G4CQ&zoom=1&ved=1t:3588,r:4,s:0,i:99&iact=rc&dur=480&page=1&tbnh=173&tbnw=195&start=0&ndsp=17&tx=103&ty=57', 1, 2),
(5, 1, 'resources/images/business/mikeplace_1.png', 1, 1),
(5, 2, 'resources/images/business/mikeplace_2.png', 1, 2),
(5, 3, 'resources/images/business/mikeplace_3.png', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `businesssale`
--

CREATE TABLE IF NOT EXISTS `businesssale` (
  `BusinessID` int(10) unsigned NOT NULL,
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
  `id` int(10) unsigned NOT NULL,
  `TypeName` varchar(512) COLLATE hebrew_bin NOT NULL,
  `SortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='Categories';

--
-- Dumping data for table `businesstype`
--

INSERT INTO `businesstype` (`id`, `TypeName`, `SortOrder`) VALUES
(1, 'פאב', 1),
(2, 'מסעדה', 2),
(3, 'בית קפה', 3),
(4, 'מועדון', 4);

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
  `favorite` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0-no, 1-yes',
  PRIMARY KEY (`BusinessID`,`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;

--
-- Dumping data for table `businessuser`
--

INSERT INTO `businessuser` (`BusinessID`, `UserID`, `LastRatingTime`, `RatingScore`, `LastGoingClickTime`, `favorite`) VALUES
(2, 7, NULL, NULL, '0000-00-00 00:00:00', 0),
(2, 30, '2013-10-10 09:26:14', 17, '2013-10-10 17:18:03', 1),
(3, 7, '2013-05-28 12:04:18', 12, NULL, 0),
(3, 23, NULL, 0, '0000-00-00 00:00:00', 0),
(3, 30, '2013-10-10 17:21:09', 5, NULL, 0),
(5, 30, '2013-10-10 17:50:28', 29, '2013-10-07 14:17:31', 0),
(24, 30, NULL, 1, '2013-10-14 17:48:19', 0),
(72, 30, NULL, 1, '2013-10-14 17:46:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businessuserfavorite`
--

CREATE TABLE IF NOT EXISTS `businessuserfavorite` (
  `BusinessID` int(10) unsigned NOT NULL,
  `UserID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`BusinessID`,`UserID`),
  KEY `UserID` (`UserID`)
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
  `businessID` int(10) unsigned NOT NULL,
  `UserID` int(10) unsigned NOT NULL,
  `ratingtime` datetime NOT NULL,
  `Capacity` int(11) NOT NULL DEFAULT '0',
  `MoreBoys` int(11) NOT NULL DEFAULT '0',
  `MoreGirls` int(11) NOT NULL DEFAULT '0',
  `LineLenght` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`businessID`,`UserID`,`ratingtime`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='log the user rating activity';

--
-- Dumping data for table `businessuserrating`
--

INSERT INTO `businessuserrating` (`businessID`, `UserID`, `ratingtime`, `Capacity`, `MoreBoys`, `MoreGirls`, `LineLenght`) VALUES
(2, 30, '2013-10-02 22:19:22', 0, 0, 0, 1),
(2, 30, '2013-10-04 12:47:18', 0, 0, 0, 1),
(2, 30, '2013-10-04 12:48:33', 0, 0, 0, 1),
(2, 30, '2013-10-04 12:57:39', 0, 0, 0, 1),
(2, 30, '2013-10-10 09:09:18', 0, 0, 0, 1),
(2, 30, '2013-10-10 09:12:30', 43, 0, 0, 43),
(2, 30, '2013-10-10 09:13:44', 43, 1, 0, 42),
(2, 30, '2013-10-10 09:14:38', 77, 0, 0, 56),
(2, 30, '2013-10-10 09:16:01', 43, 0, 0, 42),
(2, 30, '2013-10-10 09:19:58', 14, 1, 0, 1),
(2, 30, '2013-10-10 09:23:50', 14, 0, 0, 7),
(2, 30, '2013-10-10 09:26:14', 14, 1, 0, 1),
(3, 30, '2013-10-10 09:19:26', 0, 0, 0, 1),
(3, 30, '2013-10-10 17:21:09', 43, 0, 1, 30),
(5, 30, '2013-10-01 21:40:49', 99, 1, 0, 10),
(5, 30, '2013-10-01 21:46:02', 99, 1, 0, 10),
(5, 30, '2013-10-02 22:31:04', 0, 0, 0, 1),
(5, 30, '2013-10-03 15:00:41', 0, 0, 0, 1),
(5, 30, '2013-10-04 14:56:40', 0, 0, 0, 1),
(5, 30, '2013-10-04 15:08:13', 99, 1, 0, 51),
(5, 30, '2013-10-07 09:36:40', 0, 0, 0, 1),
(5, 30, '2013-10-07 14:37:18', 43, 0, 1, 42),
(5, 30, '2013-10-07 15:03:18', 43, 1, 0, 38),
(5, 30, '2013-10-07 21:41:16', 77, 0, 1, 46),
(5, 30, '2013-10-09 08:48:17', 0, 0, 0, 1),
(5, 30, '2013-10-10 17:50:28', 43, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) unsigned NOT NULL,
  `LocationName` varchar(512) COLLATE hebrew_bin NOT NULL,
  `SortOrder` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COLLATE=hebrew_bin COMMENT='City names etc...';

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `LocationName`, `SortOrder`) VALUES
(1, 'תל אביב', 1),
(2, 'חיפה והצפון', 2),
(3, 'ירושלים', 3),
(4, 'באר שבע', 4),
(5, 'ראשון לציון', 5),
(6, 'הרצליה', 6);

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
(7, '1367510226'),
(7, '1369830561'),
(7, '1369830645'),
(7, '1369830737'),
(9, '1369832057'),
(11, '1369832182'),
(12, '1369832275'),
(12, '1369832332'),
(13, '1369832674'),
(13, '1369832754'),
(13, '1369832789'),
(14, '1369832964'),
(15, '1369833083'),
(16, '1369833207'),
(17, '1369833293'),
(22, '1369919846'),
(3, '1369994217'),
(3, '1369994716'),
(3, '1369994915'),
(3, '1369994958'),
(3, '1369994967'),
(3, '1369995057'),
(7, '1372331807'),
(7, '1372331818'),
(7, '1372331859'),
(29, '1372332377'),
(31, '1372677551'),
(32, '1372677964'),
(32, '1372677982'),
(32, '1372677999'),
(32, '1372680671'),
(7, '1372682999'),
(7, '1372683018'),
(7, '1372683066'),
(7, '1372683080'),
(7, '1372683358'),
(7, '1372683436'),
(30, '1372683457'),
(30, '1372683618'),
(30, '1372683713'),
(30, '1372737814'),
(31, '1372737829'),
(33, '1372857729'),
(33, '1372857729'),
(30, '1372946060'),
(30, '1372946504'),
(30, '1372946579'),
(33, '1373358257'),
(33, '1373358257'),
(33, '1373358262'),
(33, '1373431639'),
(7, '1373514683'),
(30, '1373514693'),
(33, '1373514885'),
(33, '1373515980'),
(7, '1373559703'),
(30, '1373559712'),
(7, '1373560304'),
(7, '1373560305'),
(30, '1376037941'),
(33, '1377006209'),
(30, '1380654820'),
(30, '1381126845');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `bfacebook` bit(1) NOT NULL DEFAULT b'0' COMMENT 'define if user is facebook user or not',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`, `bfacebook`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef', b'0'),
(7, 'belik88', 'belik88@walla.co.il', 'c6c4b862ad6f9f441bca2e33a8f93e51c71e45001420159d76fd031349d7081426d63263b2e7630b6356f729932b3351e6fc2d0a591c2620c30e5430bf1a8752', 'bddd55a86865399362d22d564452d8cb8111b95e55d8b4d285a5fc781244a9873239206af1caada453a7e67af824cd5f88baa09cf872e7730b287c6241e988a3', b'0'),
(23, 'belik77@walla.co.il', 'belik77@walla.co.il', '581c181fbb47676616830aec471169e067c92e977d0cbc22ab00130edbca5e1cfb0f719e646d126b521469dc9a3e193f60017b6a8311ca36a98c2270b5b7a392', 'f73bfa88676135fc31c9a3c084b8b831debd26b0b0472386b2eaeed5ad04651e1310be8693aa125230c2a827fa3b620f99eeefa73059a6ad0af0ba37461905a5', b'1'),
(28, 'belik1977@gmail.com', 'belik1977@gmail.com', '9998bddc4ae2916545059b69f8109d34e9326f2c7ee75224b256bda5cf2a62b0d32756a93e3947d12fece9ce4bf8d8929a7d418ff323fc97accb21221c692569', '6d2c2ca4ef481853db1b9fd5a0aea7841f58874b6b5d7c1130ca3c0438331fe68011d93440eab0bc8b45e04deda666eeb4c2bdfb978ae2143875d9c2fbe3a66b', b'1'),
(29, 'belik99@walla.co.il', 'belik99@walla.co.il', 'fc003e4149a6814559115d7f5a27e5325d1222bea5466299066c2db346a71ff59bd6346298cefde35469b4b544270f67963c3a6903276ad4f86f1701e9c396a9', '38755ab0bbc68cd9005acf9bd3961ef95861dce62dbbd46af1bbc7727b749508f994d6ef0a964cd8a37211c9479789999d164bf15b748438386d8651f10dc66a', b'0'),
(30, 'belik66@walla.co.il', 'belik66@walla.co.il', '51c57fd3624253906d4de0be86b4b5797484fb0a4ec74a1d3c1488dc63ca4dbf2cd8bef17ff9ad81fc434d6f660a9b0e7319eb28eff76d58b8a9f0424e90b972', '1f1ba19bde4dd0b4d11ce36b395bc04584efed7967971308b793a5074222f4f56844985864ca3dd966ba495b547ea77189d2894bad3b08ec4c1e3eebae325efe', b'0'),
(31, 'belik55@walla.co.il', 'belik55@walla.co.il', '57faaefbce597ff1ad3035128ddcf060b5f8409ead6b719eb0dd3d4d65d86cd44ea38468b1fd587587d7d58052bf141c5ce52fb0d24c68123cffe7194eef8fb7', '1afc81ab99ad07a382bf9dfb5774adc74e751469c89303c93be2c7e65b8233a38f38288b1c59913e2f17bd3728ebbd3e9a0d3346250b28b9b5dd52b1539877c1', b'0'),
(32, 'belik44@walla.co.il', 'belik44@walla.co.il', '73e1fb436ce4ce9287bf223745c584b0e098e9c00aae9ec60da01f40d0cbed3860adf390f4f587bab0338cfdc9716afa1ced4c7be60ab3b5b74cbd691e2e27c7', '9f5663f6fb896acc8b8fcc6c19d5ebe26724e7fb21be09a8af3265fef20728da880667efce5dceff82ce333d1c95961514d39bbacc73e620d1bfa07f631e9e1f', b'0'),
(33, '', '', '2b6e4b004f1cc57903a5229715253607d721d216387aa7b712ff750d7862bfc9915e5de5c5c8fec928db6bf4063f62614396050b2532fd4f3aa12fcd9b5c7b20', 'e4be67455a9a82e7547a8c73b06bc430415ee1568c50ede203f17f6cea8f1f903add6345205f02bd92decb304b53f544a1ee7b3895b8cfbf864c7900568c99dc', b'0'),
(34, 'belik111', 'belik111@walla.co.il', '25e14be4ef3ce3aa223eea6d7941259cc6c675070abf794ca73d0b58b25470f48532ed5a83ffa85398040e7b5c1390e268fa0c1fcc28fd286a8273b3ca09b64a', '8f39b94d7833c33c51cccad9db011d1f80e2ce2ffd0d39b325d5a8977a5c8cbb7ff3fddbcd05cebc02480a2d3d7c8dd8b246854c17924a736a9206b56cdb0a87', b'0'),
(35, 'belik222@walla.co.il', 'belik222@walla.co.il', '9ce52efdd2eb0e1aa9381c88e0c531bafa0f5d9d69183c0e403e97d4727db399008eaa8f515ab6fc226f4b7444ace3226c21dc95e13aafee12c272f311b809e9', '0d84ed72b647b4107527316ac3996e8a7cc3a0ef887a326c0b41fa7be7322a9c1dfee7419f3a8dfaa509762a29593a1a939e715efe805d1b21527cb2068c7642', b'0'),
(36, 'e', 'e', 'bb502e442ea65ccf93a3298d35fe5a2e47a2f97745ca1c9a879c2edc9c12c38c24266842a0df79c2cad4b4e83effe31ffa0adb4bc96343aa86f1da119bd7ecda', 'cac7bce2ec521b0c54d83cab7fb73cc18575073b201363adede287a5dafc282e86ce46090229d33cafb294f3c4704d601aa8c879d25e6f74ce0bd8852d5e1d8b', b'0'),
(37, ' jewishmarket', 'jewishmarket@yahoo.com', '45d0737ea7701d50051d7bb9cc9795779a321ea073dd02a731fd269bd5fb005668ab6e0d2efb9f298dd0f31e6fa9d747d0d77396b9fe82ac141b469dece6cf21', 'a0a81cebc55a73bf458c92fd35bed0cede97a13b2a5aa051ec645a2caf00899f63600c345385db2a8d756fa860aac82a415953942c6d61233f5b44980bfca84d', b'0');

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
(1, 'MaxDistance', '150', 'Defines the maximum value of distance (KM) between User and business in the search screen'),
(2, 'MaxBusinessLimit', '100', 'Defines the maximum amount of businesses to be retrieved'),
(3, 'MaxDistanceForNearBy', '0.1', 'Defines the maximum value of distance (KM) between User and business in the near my location screen');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `user_id` int(10) unsigned NOT NULL,
  `push_notification` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'define if user gets push notifications',
  `user_level` int(11) unsigned NOT NULL DEFAULT '0',
  `business_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=no business',
  PRIMARY KEY (`user_id`),
  KEY `user_level` (`user_level`),
  KEY `business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COMMENT='store some data over a user';

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `push_notification`, `user_level`, `business_id`) VALUES
(30, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
  `user_level_id` int(11) unsigned NOT NULL COMMENT '0-regular, 1- business_owner, 2- sysadmin',
  `level_name` varchar(64) NOT NULL,
  PRIMARY KEY (`user_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=hebrew COMMENT='user levels';

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`user_level_id`, `level_name`) VALUES
(0, 'regular'),
(1, 'business_owner'),
(2, 'sysadmin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_types`
--
ALTER TABLE `business_types`
  ADD CONSTRAINT `business_types_ibfk_4` FOREIGN KEY (`typeid`) REFERENCES `businesstype` (`id`),
  ADD CONSTRAINT `business_types_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `business_types_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `businesstype` (`id`),
  ADD CONSTRAINT `business_types_ibfk_3` FOREIGN KEY (`businessid`) REFERENCES `business` (`id`);

--
-- Constraints for table `businesslines`
--
ALTER TABLE `businesslines`
  ADD CONSTRAINT `businesslines_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`);

--
-- Constraints for table `businessphoto`
--
ALTER TABLE `businessphoto`
  ADD CONSTRAINT `businessphoto_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`);

--
-- Constraints for table `businesssale`
--
ALTER TABLE `businesssale`
  ADD CONSTRAINT `businesssale_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`);

--
-- Constraints for table `businessuser`
--
ALTER TABLE `businessuser`
  ADD CONSTRAINT `businessuser_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `businessuser_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `members` (`id`);

--
-- Constraints for table `businessuserfavorite`
--
ALTER TABLE `businessuserfavorite`
  ADD CONSTRAINT `businessuserfavorite_ibfk_1` FOREIGN KEY (`BusinessID`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `businessuserfavorite_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `members` (`id`);

--
-- Constraints for table `businessuserrating`
--
ALTER TABLE `businessuserrating`
  ADD CONSTRAINT `businessuserrating_ibfk_1` FOREIGN KEY (`businessID`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `businessuserrating_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `members` (`id`);

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `user_data_ibfk_2` FOREIGN KEY (`user_level`) REFERENCES `user_level` (`user_level_id`),
  ADD CONSTRAINT `user_data_ibfk_3` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
