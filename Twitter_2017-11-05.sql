# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.01 (MySQL 5.7.19)
# Database: Twitter
# Generation Time: 2017-11-05 21:24:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tweets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tweets`;

CREATE TABLE `tweets` (
  `tweet_id` bigint(50) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `tweet` char(140) NOT NULL DEFAULT '',
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;

INSERT INTO `tweets` (`tweet_id`, `user_id`, `tweet`, `date_time`)
VALUES
	(1,1,'The words \"faded Levi\'s\" are very soothing. GOOOOOD MORNING IM HERE ON EARTH AGAIN','2017-10-28 09:42:00'),
	(2,1,'FYI \"My Cousin Rachel\" is the best movie of the year and please understand that Rachel Weisz is the best that there is. Speechless.','2017-10-25 19:47:00'),
	(3,1,'CAN I HAVE A SECRETARY WHO IS A GHOST BUT A NICE ONE WHO I CONFIDE IN','2017-08-25 16:40:00'),
	(4,2,'\"we\'re going to build a wonderwall. and oasis is going to pay for it.\" - 90s trump','2017-09-26 13:39:00'),
	(5,2,'i know it’s reckless but nothing skips on a lake like an iPad','2017-10-26 13:45:00'),
	(6,2,'when the things trying to sync with your bluetooth reaches fifteen, it\'s time to go outside.','2017-10-05 21:14:00'),
	(7,3,'Anytime I see an iPhone, iPad and MacBook next to each other, I say “Good to see the family back together again.” And no one ever laughs.','2017-11-04 13:02:00'),
	(8,3,'When singing, the shower is an Instagram filter for your voice.','2017-10-27 16:24:00'),
	(9,3,'You think you\'re cool? Try drinking water lying down in bed and then get back to me.','2017-10-14 11:30:00');

/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `first_name` char(20) NOT NULL DEFAULT '',
  `last_name` char(20) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL DEFAULT '',
  `picture` text NOT NULL,
  `bio` char(140) NOT NULL DEFAULT '',
  `url` char(100) NOT NULL DEFAULT '',
  `location` char(50) NOT NULL DEFAULT '',
  `joined` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `picture`, `bio`, `url`, `location`, `joined`)
VALUES
	(1,'Jenny','Slate','jennyslate@gmail.com','@jennyslate','slatejenny','https://pbs.twimg.com/profile_images/550719630/5380_100606229067_828469067_1975257_6012291_n_400x400.jpg','I\'m an Animaniac. My instagram is jennyslate. I\'m glad to be here and I love tons of stuff.','http://www.imdb.com/name/nm2809577/','Los Angeles','2009-11-20'),
	(2,'Pete','Holmes','peteholmes@gmail.com','@peteholmes','holmespete','https://pbs.twimg.com/profile_images/481269537862471681/hUxgx3P1_400x400.jpeg','Comedian Pete Holmes. The Pete Holmes Show. You Made It Weird podcast. HBO series Crashing airs Sunday nights at 10:30pm!','http://www.peteholmes.com','Los Angeles','2009-02-15'),
	(3,'Ben','Schwartz','benschwartz@gmail.com','@rejectedjokes','jokesrejected','https://pbs.twimg.com/profile_images/923564277591457792/9ngu_5Kb_400x400.jpg','Jean-Ralphio on Parks, Clyde on HOL, Dewey on Ducktales, Leo on TMNT, Josh on Earliest Show, UCB. Instagram-Rejectedjokes.','http://www.rejectedjokes.com','Los Angeles','2009-03-02');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
