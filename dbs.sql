-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbs
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `header` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `post_by` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.','','Fusce nec nisl nec sem ornare rutrum. Suspendisse vestibulum hendrerit orci in laoreet. Nam semper dui in felis efficitur imperdiet. Aliquam quis magna felis.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec nisl nec sem ornare rutrum. Suspendisse vestibulum hendrerit orci in laoreet. Nam semper dui in felis efficitur imperdiet. Aliquam quis magna felis. Aenean at dolor eget ligula aliquam pharetra sed nec velit. Nunc eget augue ac lectus condimentum gravida fringilla in risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed aliquam, urna non fringilla aliquet, turpis lacus hendrerit nulla, vitae feugiat nibh ligula at magna. Ut ultrices est in lectus rutrum posuere. Donec et mauris bibendum, gravida nisi ac, pulvinar risus. Sed est urna, feugiat ac mattis rhoncus, molestie in urna. Mauris lacinia mollis tempor. Duis eu turpis lectus. Vivamus eu condimentum libero, non tincidunt lacus. Nam placerat auctor felis.\r\n\r\n\r\n\r\nLorem Ipsum','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'admin','some comment','filenameasd','dateoftoday'),(2,'admin','adf','Test+requirements.doc','2019/09/22'),(4,'admin','adf','Test+requirements.doc','2019/09/22'),(5,'','','Remote+relay+control.doc','2019/09/22'),(6,'e1500959','Comment','The challenge.drawio','2019/09/22'),(7,'e1500959','Comment','The challenge.drawio','2019/09/22'),(9,'e1500959','Comment','The challenge.drawio','2019/09/22'),(10,'e1500959','Comment','The challenge.drawio','2019/09/22'),(11,'hola','Hello','Backtrack al flowchart.drawio','2019/09/22'),(12,'holahoop','Hello2','Test+requirements.doc','2019/09/22'),(13,'hola','Hello','Backtrack al flowchart.drawio','2019/09/22'),(14,'quangnamle23@gmail.com','Nice stuff','A&C teams.png','2019/09/23'),(15,'quangnamle23@gmail.com','Nice stuff','A&C teams.png','2019/09/23'),(16,'quangnamle23@gmail.com','Nice stuff','A&C teams.png','2019/09/23'),(17,'quangnamle23@gmail.com','Nice stuff','A&C teams.png','2019/09/23'),(18,'Cool','Cool comment','A&C teams.png','2019/09/23'),(19,'Cool','Cool comment','A&C teams.png','2019/09/23');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stem` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_extension` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'1','images/products/','chocolateroll','jpg'),(2,'1_slide','images/products/','chocolateroll','jpg'),(3,'1_thumb','images/products/','chocolateroll','jpg'),(4,'2','images/products/','gato','jpg'),(5,'2_slide','images/products/','gato','jpg'),(6,'2_thumb','images/products/','gato','jpg'),(7,'3','images/products/','butterbean','jpg'),(8,'3_slide','images/products/','butterbean','jpg'),(9,'3_thumb','images/products/','butterbean','jpg'),(10,'4','images/products/','mansikka','jpg'),(11,'4_slide','images/products/','mansikka','jpg'),(12,'4_thumb','images/products/','mansikka','jpg'),(13,'5','images/products/','kitty','jpg'),(14,'5_slide','images/products/','kitty','jpg'),(15,'5_thumb','images/products/','kitty','jpg'),(16,'6','images/products/','birthdaycake','jpg'),(17,'6_slide','images/products/','birthdaycake','jpg'),(18,'6_thumb','images/products/','birthdaycake','jpg'),(19,'7','images/products/','chocolate11','jpg'),(20,'7_slide','images/products/','chocolate11','jpg'),(21,'7_thumb','images/products/','chocolate11','jpg'),(22,'8','images/products/','creampie','jpg'),(23,'8_slide','images/products/','creampie','jpg'),(24,'8_thumb','images/products/','creampie','jpg'),(25,'9','images/products/','bird','jpg'),(26,'9_slide','images/products/','bird','jpg'),(27,'9_thumb','images/products/','bird','jpg'),(28,'10','images/products/','mansikkatutti','jpg'),(29,'10_slide','images/products/','mansikkatutti','jpg'),(30,'10_thumb','images/products/','mansikkatutti','jpg'),(31,'11','images/products/','minion','jpg'),(32,'11_slide','images/products/','minion','jpg'),(33,'11_thumb','images/products/','minion','jpg'),(34,'12','images/products/','roll','jpg'),(35,'12_slide','images/products/','roll','jpg'),(36,'12_thumb','images/products/','roll','jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `full_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prd_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prd_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prd_quan` int(50) DEFAULT NULL,
  `prd_cost` int(50) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'1','socola','Vaasa','12345','3','Cake',2,4,0),(2,'2','Nam Le','Ahventie','0465672627','3','Pancake',5,16,0),(3,'','Julia Malmberg','Siuntio','0400395507','10','Gato',3,13,0),(4,'3','Cajsa','Helsinki','0412345678','11','Cup',6,9,0),(5,'3','Cajsa','Helsinki','0412345678','10','Panadol',4,18,0),(6,'','Julia Malmberg','Siuntio','0400395507','10','Gato',3,15,0),(7,'','James Bond','Manchester England','007','11','Cup Minions',6,9,0),(8,NULL,'Songoku','Earth','1234567','12','Batik',2,10,0),(11,NULL,'Nam','Vaasa','465672627','1','Batik cake',1,10,0),(13,'2','Nam Le Quang','Ahventie','0465672627','1','Batik cake',4,40,0),(14,NULL,'Cyka','Lahti','987654321','4','Applesauce cake',1,4,0),(15,'3','Julia Malmberg','Siuntio','0400395507','7','Bara brith',1,9,0),(16,'3','Julia Malmberg','Siuntio','0400395507','10','Cake is good',1,10,0),(17,'8','great','helsinki','01234','12','Banoffee pie',60,480,0),(18,NULL,'Cajsa','Siuntio','123456','4','Applesauce cake',5,20,0),(19,'3','Julia Malmberg','Siuntio','0400395507','10','Cake is good',1,10,0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `ingredient` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `stem` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stem_slide` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stem_thumb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Batik cake','Cake','Corn flour, butter, sugar, and vanilla','This round double layer cherry cake is designed with a seashell theme in pink, vivid orange, and dark turquoise.','Sponge cake, cream',10,'1','1_slide','1_thumb'),(2,'Superman cake','Cake','Corn flour, butter, sugar, and vanilla','This rectangular triple-tier strawberry cake is done in a fairytale motif in colors that remind you of a candy store.','Sponge cake, cream',10,'2','2_slide','2_thumb'),(3,'Apple cake','Cake','Apple, caramel icing','This square single-tier chocolate cake is designed in an old-fashioned style in colors that remind you of a cup of mocha.','Sponge cake, cream',1,'3','3_slide','3_thumb'),(4,'Applesauce cake','Cake','Prepared using apple sauce, flour and sugar as primary ingredients','This square double layer chocolate cake is designed in an old-fashioned style in colors that remind you of marigolds.','Sponge cake, cream',4,'4','4_slide','4_thumb'),(5,'Aranygaluska','Cake','A cake with yeasty dough and vanilla custard','This square double-tier vanilla cake is done in a princess motif in colors that remind you of a candy store.','Sponge cake, cream',7,'5','5_slide','5_thumb'),(6,'Avocado cake','Cake','Prepared using avocado as a primary ingredient','This square triple-tier chocolate cake is done in a rose theme in colors that remind you of spring flowers.','Sponge cake, cream',6,'6','6_slide','6_thumb'),(9,'Some random cake','Cake','Corn flour, butter, sugar, and vanilla','This rectangular double layer chocolate cake is done with a fruit theme in vivid pink, dark orange, and vivid turquoise.','Sponge cake, cream',9,'9','9_slide','9_thumb'),(10,'Cake is good','Cake','Corn flour, butter, sugar, and vanilla','This round triple-tier coffee cake is done in a princess motif in colors that remind you of marigolds.','Sponge cake, cream',10,'10','10_slide','10_thumb'),(11,'Boston cream pie','Cup','Prepared using banana as a primary ingredient','This square double-tier berry cake is designed in an old-fashioned style in colors that remind you of blossoming violets.','Sponge cake, cream',5,'11','11_slide','11_thumb'),(12,'Banoffee pie','Cup','	Flour, sugar, ghee (clarified butter), coconut milk, egg yolk','This rectangular triple-tier pineapple cake is designed with a cat theme in colors that remind you of an ice cream sundae.','Sponge cake, cream',8,'12','12_slide','12_thumb'),(7,'Bara brith','Cup','	Chocolate or yellow cake, sugar mixture, various fillings','This rectangular double layer pineapple cake is designed with an animal theme in warm colors.','Sponge cake, cream',9,'7','7_slide','7_thumb'),(8,'Battenberg cake','Cup','Egg custard, chocolate','Angel food cake, or angel cake, is a type of sponge cake made with egg whites, flour, and sugar. A whipping agent, such as cream of tartar is commonly added. It differs from other cakes because it uses no butter. Its structure comes from whipped egg whites known as a protein foam. ','Sponge cake, cream',3,'8','8_slide','8_thumb');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(10) DEFAULT '0',
  `full_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `purchased` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','superman0203',1,'Admin','Ahventie, Vaasa','0465672627',0),(2,'namle','superman0203',0,'Nam Le Quang','Ahventie','0465672627',0),(3,'juliamalmberg','malmbergjulia',0,'Julia Malmberg','Siuntio','0400395507',0),(4,'$newUser','$newPass1Enc',0,'$newFullName','$newAddr','$newPhone',0),(5,'blabla','123',0,'','','',0),(6,'name','superman0203',0,'namle','Ahventie','04001010234',NULL),(7,'thisisaname','superman0203',0,'Nam LÃª','Vaasa','465672627',NULL),(8,'all','superman0203',0,'great','helsinki','01234',NULL),(9,'n','superman0203',0,'namle','lahti','465672627',NULL),(10,'another','superman0203',0,'Heiho','Vaasa','1223564897899',NULL),(11,'anotherone','123456789',0,'Nam','Vaasa','123456789',NULL),(12,'abc','superman0203',0,'Nam Le','123asdewgffg','54984896165',NULL),(13,'Timo','superman0203',0,'Timo K','Vaasa','123256645',NULL),(14,'T','superman0203',0,'T','Vaasa, ','4578761095',NULL),(15,'Hello','superman0203',0,'Tas','Bas','5645648',NULL);
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

-- Dump completed on 2019-09-23 15:54:13
