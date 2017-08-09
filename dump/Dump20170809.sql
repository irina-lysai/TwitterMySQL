-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: twitter
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tweet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tweet_id` (`tweet_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'some comments 1','2017-03-12 13:05:42',1,2),(2,'some comments 2','2017-07-25 12:05:42',1,2),(3,'some comments 3','2017-08-25 12:05:42',2,6),(4,'some comments 4','2017-02-12 13:05:42',3,7),(5,'some comments 5','2017-01-12 13:05:42',7,9),(6,'some comments 6','2017-03-19 13:05:42',7,2),(7,'some comments 7','2017-03-10 13:05:15',5,1),(8,'some comments 8','2017-03-15 13:05:42',11,1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (1,1,'I live for moments like this @ultra @KhoMha @BullySongs','2017-04-12 10:05:42'),(2,2,'Enjoy my playlist including Sunny Days, the @wildstylez remix of Great Spirit & more!','2017-01-12 11:05:42'),(3,3,'You can listen to all of my tracks in my personal playlist! Including the new @wildstylez remix of Great Spirit!','2017-02-12 11:05:42'),(4,5,'Some ssserious uplifting in Miami!Find the Communication remix','2017-03-12 11:05:42'),(5,6,'Wow! 25 million streams and still counting Thank you all for the support for I Need You','2017-03-12 13:05:42'),(6,7,'Some twit','2017-04-19 10:05:42'),(7,7,'What a great week! Thanks Ibiza, Tel Aviv, Malta and Norway for all your energy! ','2017-04-17 10:05:42'),(8,8,'Ibiza are you ready for round 3?! See you tonight at @hiibizaofficial! #HiIbiza #ClubWithUs','2017-04-01 10:05:42'),(9,10,'Tickets are selling fast for #FSOE500EGY with @arminvanbuuren @rubenderonde @djpaulthomas! Grab yours here: http://bit.ly/FSOE500EGY-TIX ','2017-04-23 10:05:42'),(10,7,'Updated! Watch my full remastered EDC set now on YouTube with high-quality audio!','2017-04-28 10:05:42'),(11,2,'Tune in to #ASOT821 on http://facebook.com/arminvanbuuren ','2017-06-22 10:05:42'),(12,11,'Ibiza are you ready for round 3?! See you tonight at @hiibizaofficial! #HiIbiza #ClubWithUs','2017-01-24 11:05:42'),(13,6,'Tickets are selling fast for #FSOE500EGY with @arminvanbuuren @rubenderonde @djpaulthomas! Grab yours here: http://bit.ly/FSOE500EGY-TIX ','2017-02-19 11:05:42'),(14,7,'Updated! Watch my full remastered EDC set now on YouTube with high-quality audio!','2017-04-13 10:05:42'),(15,10,'Thank you @sensation for letting me be part of the first and the last one!','2017-04-27 10:05:42'),(16,11,'The long awaited special guest finally takes the stage... .@tiesto ! #SensationWhite','2017-04-09 10:05:42'),(17,2,'Most amazing moment on our trip to New York @tiesto waving our flag of the USA with flamed sparkles cascading behind him.','2017-04-14 10:05:42'),(18,3,'In my own world, where I actually live, theres a town called... @tiesto ','2017-05-12 10:05:42'),(19,7,'Thank you @sensation for letting me be part of the first and the last one!','2017-05-10 10:05:42'),(20,1,'Tune in to #ASOT821 on http://facebook.com/arminvanbuuren ','2017-05-24 10:05:42'),(21,5,'The long awaited special guest finally takes the stage... .@tiesto ! #SensationWhite','2017-03-23 11:05:42'),(22,8,'In my own world, where I actually live, theres a town called... @tiesto','2017-03-08 11:05:42'),(23,7,'In my own world, where I actually live, theres a town called... @tiesto','2017-03-09 11:05:42'),(24,10,'Thank you @sensation for letting me be part of the first and the last one!','2017-02-07 11:05:42'),(25,11,'Most amazing moment on our trip to New York @tiesto waving our flag of the USA with flamed sparkles cascading behind him.','2017-04-13 10:05:42'),(26,7,'Most amazing moment on our trip to New York @tiesto waving our flag of the USA with flamed sparkles cascading behind him.','2017-04-17 10:05:42'),(27,3,'Ibiza are you ready for round 3?! See you tonight at @hiibizaofficial! #HiIbiza #ClubWithUs','2017-04-15 10:05:42'),(28,2,'What a great week! Thanks Ibiza, Tel Aviv, Malta and Norway for all your energy! ','2017-04-29 10:05:42');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_followers_map`
--

DROP TABLE IF EXISTS `user_followers_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_followers_map` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`follower_id`),
  KEY `follower_id` (`follower_id`),
  CONSTRAINT `user_followers_map_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_followers_map_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_followers_map`
--

LOCK TABLES `user_followers_map` WRITE;
/*!40000 ALTER TABLE `user_followers_map` DISABLE KEYS */;
INSERT INTO `user_followers_map` VALUES (2,1),(3,1),(4,1),(1,2),(10,2),(3,4),(5,6),(7,6),(8,6),(11,7),(11,8),(9,10),(9,11);
/*!40000 ALTER TABLE `user_followers_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `middle_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rose','rose@stage.com','Rosalie','','Kuff',18),(2,'David','david@stage.com','David','','Lee',21),(3,'joan','joan@stage.com','Joan','Ivanov','Solomon',19),(4,'michele','michele@stage.com','Michele','','Shapiro',14),(5,'sarina','sarina@stage.com','Sarina','Petrova','Kimel',35),(6,'sara','sara@stage.com','Sara','Brodsky','',26),(7,'Jake','jake@stage.com','Jake','Petrov','Scott',24),(8,'Jeremy','jeremy@stage.com','Jeremy','','Varon',40),(9,'Alison','alison@stage.com','Alison','','Cai',17),(10,'Bibi','Bibi@stage.com','Bibi','Petrov','Pike',20),(11,'Barbara','barbara@stage.com','Barbara','','Fanaoff',29);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-09 23:47:54
