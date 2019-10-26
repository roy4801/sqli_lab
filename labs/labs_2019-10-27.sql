# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 108.61.183.4 (MySQL 5.6.46)
# Database: labs
# Generation Time: 2019-10-26 16:48:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table lovelive
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lovelive`;

CREATE TABLE `lovelive` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `jp_name` varchar(20) NOT NULL DEFAULT '',
  `cv` varchar(20) NOT NULL DEFAULT '',
  `birth_day` char(5) DEFAULT '00/00',
  `group` varchar(15) NOT NULL DEFAULT '',
  `intro` text,
  `is_waifu` tinyint(1) NOT NULL DEFAULT '0',
  `pic_url` text,
  `neso_url` text,
  `flag` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lovelive` WRITE;
/*!40000 ALTER TABLE `lovelive` DISABLE KEYS */;

INSERT INTO `lovelive` (`id`, `name`, `jp_name`, `cv`, `birth_day`, `group`, `intro`, `is_waifu`, `pic_url`, `neso_url`, `flag`)
VALUES
	(1,'高坂穗乃果','高坂穂乃果(こうさか ほのか)','新田惠海','08/03','Printemps',NULL,1,'https://i.schoolido.lu/c/533Honoka.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001101.png','NISRA{Honoka_wa_saiko_daze_51c4dde79082d2ef61023476effbb20b}'),
	(2,'南琴梨','南ことり（みなみ ことり）','內田彩','09/12','Printemps',NULL,0,'https://s.llsif.org/en/cards/886.png?8ce19227','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001102.png',NULL),
	(3,'園田海未','園田海未（そのだ うみ）','三森鈴子','03/05','Lily white',NULL,0,'https://66.media.tumblr.com/459f6c703b60d109dabcc74c1e422497/tumblr_ocsi8qsYe91vz0gj8o1_540.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001103.png',NULL),
	(4,'西木野真姬','西木野真姫（にしきの まき）','Pile','04/19','BiBi',NULL,0,'https://i.schoolido.lu/c/484idolizedMaki.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001104.png',NULL),
	(5,'星空凜','星空凛（ほしぞら りん）','飯田里穗','11/01','Lily white',NULL,0,'https://i.schoolido.lu/c/408idolizedRin.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001105.png',NULL),
	(6,'小泉花陽','小泉花陽（こいずみ はなよ）','久保由利香','01/17','Printemps',NULL,0,'https://i.schoolido.lu/c/556Hanayo.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001106.png',NULL),
	(7,'矢澤日香','矢澤にこ（やざわ にこ）','德井青空','07/22','BiBi',NULL,0,'https://i.schoolido.lu/cards/637idolizedNico.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001107.png',NULL),
	(8,'東條希','東條希（とうじょう のぞみ）','楠田亞衣奈','06/09','Lily white',NULL,0,'https://i.schoolido.lu/c/1575idolizedNozomi.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001108.png',NULL),
	(9,'絢瀨繪里','絢瀬絵里（あやせ えり）','南條愛乃','10/21','BiBi',NULL,0,'https://i.schoolido.lu/cards/262Eli.png','https://puchiguru.loveliv.es/assets/skillcutinimagea/skillcutinimagea10001109.png',NULL);

/*!40000 ALTER TABLE `lovelive` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL DEFAULT '',
  `pass` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `user`, `pass`)
VALUES
	(1,'roy4801','123456789'),
	(2,'guest','guest'),
	(3,'admin','weEOuM8MwflUP39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
