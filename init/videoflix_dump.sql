USE videoflix_db;

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES 
(1,'Action','action'),
(2,'Adventure', 'adventure'),
(3,'Animation', 'animation'),
(4,'Biography', 'biography'),
(5,'Comedy', 'comedy'),
(6,'Crime', 'crime'),
(7,'Drama', 'drama'),
(8,'Horror', 'horror'),
(9,'Music', 'music'),
(10,'Mistery', 'mistery'),
(11,'Romance', 'romance'),
(12,'Thriller', 'thriller'),
(13,'War', 'war');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `released_at` date DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `country` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES 
(1,'Vertigo','vertigo','en',NULL,NULL,128,'1958','1958-08-24',NULL,'GB'),
(2,'The innocents','the-innocents','en',NULL,NULL,100,'1961','1962-02-19',NULL,'GB'),
(3,'The Deer Hunter','the-deer-huntur','en',NULL,NULL,183,'1978','1979-03-08',NULL,'US'),
(4,'Amadeus','amadeus','en',NULL,NULL,160,'1984','1985-01-07',NULL,'GB'),
(5,'Blade Runner','blade-runner', 'en',NULL,NULL,117,'1982','1982-09-09',NULL,'US'),
(6,'Eyes Wide Shut','eyes-wide-shut','en',NULL,NULL,159,'1999','1999-09-09',NULL,'US'),
(7,'The Usual Suspects','the-usual-suspects','en',NULL,NULL,106,'1995','1995-08-25',NULL,'US'),
(8,'Chinatown','chinatown','en',NULL,NULL,130,'1974','1974-08-09',NULL,'IN'),
(9,'Boogie Nights','boogie-nights','en',NULL,NULL,155,'1997','1998-02-16',NULL,'US'),
(10,'Annie Hall','annie-hall','en',NULL,NULL,93,'1977','1977-04-20',NULL,'US'),
(11,'Princess Monoke','princess-monoke','jp',NULL,NULL,134,'1997','2001-10-19',NULL,'JP'),
(12,'The Shawshank Redemption','the-shawshank-redemption','en',NULL,NULL,142,'1994','1995-02-17',NULL,'US'),
(13,'American Beauty','the-american-beauty','en',NULL,NULL,122,'1999','1999-01-23',NULL,'US'),
(14,'Titanic','titanic','en',NULL,NULL,194,'1997','1998-01-23',NULL,'US'),
(15,'Good Will Hunting','good-will-hunting','en',NULL,NULL,126,'1997','1998-06-03',NULL,'US'),
(16,'Deliverance','deliverance','en',NULL,NULL,109,'1972','1982-10-05',NULL,'US'),
(17,'Trainspotting','trainspotting','en',NULL,NULL,94,'1996','1996-02-23',NULL,'US'),
(18,'The prestige','the-prestige','en',NULL,NULL,130,'2006','2006-11-10',NULL,'US'),
(19,'Donnie Darko','donnie-darko','en',NULL,NULL,113,'2001','2001-11-10',NULL,'US'),
(20,'Slumdog Millionaire','slumdog-millionaire','en',NULL,NULL,120,'2008','2009-01-09',NULL,'US'),
(21,'Aliens','aliens','en',NULL,NULL,137,'1986','1986-08-29',NULL,'US'),
(22,'Beyond the sea','beyond-the-sea','en',NULL,NULL,118,'2004','2004-11-26',NULL,'US'),
(23,'Avatar','avatar','en',NULL,NULL,162,'2009','2009-12-17',NULL,'US'),
(24,'Seven Samourai','seven-samourai', 'jp',NULL,NULL,207,'1954','1954-04-26',NULL,'JP'),
(25,'Spirited Away','spirited-away','jp',NULL,NULL,125,'2001','2003-09-12',NULL,'JP'),
(26,'Back to the Future','back-to-the-future', 'en',NULL,NULL,116,'1985','1985-12-04',NULL,'US'),
(27,'Braveheart','braveheart', 'en',NULL,NULL,178,'1995','1995-09-08',NULL,'IS'),
(28,'Lawrence of Arabia','lawrence-of-arabia', 'en',NULL,NULL,216,'1962','1962-12-11',NULL,'US');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles`  JSON DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `country` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES 
(1,'["ROLE_ACTOR"]',NULL,'James','Stewart','M','US'),
(2,'["ROLE_ACTOR"]',NULL,'Deborah','Kerr','F','US'),
(3,'["ROLE_ACTOR"]',NULL,'Peter','OToole','M','US'),
(4,'["ROLE_ACTOR"]',NULL,'Robert','De Niro','M','US'),
(5,'["ROLE_ACTOR"]',NULL,'F. Murray','Abraham','M','US'),
(6,'["ROLE_ACTOR"]',NULL,'Harisson','Ford','M','US'),
(7,'["ROLE_ACTOR"]',NULL,'Nicole','Kidman','F','US'),
(8,'["ROLE_ACTOR"]',NULL,'Stephen','Baldwin','M','US'),
(9,'["ROLE_ACTOR"]',NULL,'Jack','Nicholson','M','US'),
(10,'["ROLE_ACTOR"]',NULL,'Mark','Wahlberg','M','US'),
(11,'["ROLE_ACTOR","ROLE_DIRECTOR"]',NULL,'Woody','Allen','M','US'),
(12,'["ROLE_ACTOR"]',NULL,'Claire','Danes','F','US'),
(13,'["ROLE_ACTOR"]',NULL,'Tim','Robbins','M','US'),
(14,'["ROLE_ACTOR"]',NULL,'Kevin','Spacey','M','US'),
(15,'["ROLE_ACTOR"]',NULL,'Kate','Winslet','F','US'),
(16,'["ROLE_ACTOR"]',NULL,'Robin','Williams','M','US'),
(17,'["ROLE_ACTOR"]',NULL,'Jon','Voight','M','US'),
(18,'["ROLE_ACTOR"]',NULL,'Ewan','McGregor','M','US'),
(19,'["ROLE_ACTOR"]',NULL,'Christian','Bale','M','US'),
(20,'["ROLE_ACTOR"]',NULL,'Maggie','Gyllenhaal','F','US'),
(21,'["ROLE_ACTOR"]',NULL,'Dev','Patel','M','US'),
(22,'["ROLE_ACTOR"]',NULL,'Sigourney','Weaver','F','US'),
(23,'["ROLE_ACTOR"]',NULL,'Gérard','Depardieu','M','FR'),
(24,'["ROLE_ACTOR"]',NULL,'Jean Paul','Belmondo','M','FR'),
(25,'["ROLE_ACTOR"]',NULL,'Alain','Delon','M','FR'),
(26,'["ROLE_ACTOR"]',NULL,'Jean','Dujardin','M','FR'),
(27,'["ROLE_ACTOR"]',NULL,'Catherine','Deneuve','F','FR'),
(28,'["ROLE_ACTOR"]',NULL,'Marion','Dotillard','F','FR'),
(29,'["ROLE_ACTOR"]',NULL,'Omar','Sy','M','FR'),
(30,'["ROLE_ACTOR"]',NULL,'Leila','Bekhti','F','FR'),
(31,'["ROLE_DIRECTOR"]',NULL,'Alfred','Hitchcock','M','US'),
(32,'["ROLE_DIRECTOR"]',NULL,'Jack','Clayton','M','US'),
(33,'["ROLE_DIRECTOR"]',NULL,'David','Lean','M','US'),
(34,'["ROLE_DIRECTOR"]',NULL,'Michael','Cimino','M','US'),
(35,'["ROLE_DIRECTOR"]',NULL,'Milos','Forman','M','US'),
(36,'["ROLE_DIRECTOR"]',NULL,'Ridley','Scott','M','US'),
(37,'["ROLE_DIRECTOR"]',NULL,'Stanley','Kubrick','M','US'),
(38,'["ROLE_DIRECTOR"]',NULL,'Bryan','Singer','M','US'),
(39,'["ROLE_DIRECTOR"]',NULL,'Roman','Polanski','M','US'),
(40,'["ROLE_DIRECTOR"]',NULL,'Paul','Thomas Anderson','M','US'),
(42,'["ROLE_DIRECTOR"]',NULL,'Hayao','Miyazaki','M','US'),
(43,'["ROLE_DIRECTOR"]',NULL,'Frank','Darabont','M','US'),
(44,'["ROLE_DIRECTOR"]',NULL,'Sam','Mendes','M','US'),
(45,'["ROLE_DIRECTOR"]',NULL,'James','Cameron','M','US'),
(46,'["ROLE_DIRECTOR"]',NULL,'Gus','Van Sant','M','US'),
(47,'["ROLE_DIRECTOR"]',NULL,'John','Boorman','M','US'),
(48,'["ROLE_DIRECTOR"]',NULL,'Danny','Boyle','M','US'),
(49,'["ROLE_DIRECTOR"]',NULL,'Christopher','Nolan','M','US'),
(50,'["ROLE_DIRECTOR"]',NULL,'Richard','Kelly','M','US'),
(51,'["ROLE_DIRECTOR"]',NULL,'Kevin','Spacey','M','US'),
(52,'["ROLE_DIRECTOR"]',NULL,'Andrei','Tarkovsky','M','US'),
(53,'["ROLE_DIRECTOR"]',NULL,'Peter','Jackson','M','US');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Righty','Sock','righty.sock@yopmail.com',NULL,'US',NULL),(2,'Jack','Malvern','jack.malvern@yopmail.com',NULL,'US',NULL),(3,'Flagrant','Baronessa','flagrant.baronessa@yopmail.com',NULL,'US',NULL),(4,'Alec','Shaw','alec.shaw@yopmail.com',NULL,'US',NULL),(5,'Victor','Woeltjen','victor.woeltjen@yopmail.com',NULL,'US',NULL),(6,'Simon','Wright','simon.wright@yopmail.com',NULL,'US',NULL),(7,'Neal','Wruck','neal.wruck@yopmail.com',NULL,'US',NULL),(8,'Paul','Monks','paul.monks@yopmail.com',NULL,'US',NULL),(9,'Mike','Salvati','mike.salvati@yopmail.com',NULL,'US',NULL),(10,'Wesley','Walker','wesley.walker@yopmail.com',NULL,'US',NULL),(11,'Sasha','Goldshtein','sasha.goldshtein@yopmail.com',NULL,'US',NULL),(12,'Josh','Cates','josh.cates@yopmail.com',NULL,'US',NULL),(13,'Krug','Stillo','krug.stillo@yopmail.com',NULL,'US',NULL),(14,'Scott','LeBrun','scott.lebrun@yopmail.com',NULL,'US',NULL),(15,'Hannah','Steele','hannah.steele@yopmail.com',NULL,'US',NULL),(16,'Vincent','Cadena','vincent.cadena@yopmail.com',NULL,'US',NULL),(17,'Brandt','Sponseller','brandt.sponseller@yopmail.com',NULL,'US',NULL),(18,'Richard','Adams','richard.adams@yopmail.com',NULL,'US',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `movie_casting`;
CREATE TABLE `movie_casting` (
  `staff_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `starred_as` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_id`,`movie_id`),
  KEY `fk_staff_has_movie_movie1_idx` (`movie_id`),
  KEY `fk_staff_has_movie_staff1_idx` (`staff_id`),
  CONSTRAINT `fk_staff_has_movie_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_has_movie_staff1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movie_casting` WRITE;
/*!40000 ALTER TABLE `movie_casting` DISABLE KEYS */;
INSERT INTO `movie_casting` VALUES (1,1,'John Scottie Ferguson'),(2,2,'Miss Giddens'),(3,4,'T.E. Lawrence'),(4,5,'Michael'),(5,6,'Antonio Salieri'),(6,7,'Rick Deckard'),(7,8,'Alice Harford'),(8,9,'McManus'),(9,10,'J.J. Gittes'),(10,11,'Eddie Adams'),(11,12,'Alvy Singer'),(12,13,'San'),(13,14,'Andy Dufresne'),(14,15,'Lester Burnham'),(14,24,'Bobby Darin'),(15,16,'Rose DeWitt Bukater'),(16,17,'Sean Maguire'),(17,18,'Ed'),(18,19,'Renton'),(19,20,'Alfred Borden'),(20,21,'Elizabeth Darko'),(21,22,'Older Jamal'),(22,23,'Ripley');
/*!40000 ALTER TABLE `movie_casting` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `movie_direction`;
CREATE TABLE `movie_direction` (
  `staff_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`,`movie_id`),
  KEY `fk_staff_has_movie_movie2_idx` (`movie_id`),
  KEY `fk_staff_has_movie_staff2_idx` (`staff_id`),
  CONSTRAINT `fk_staff_has_movie_movie2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_has_movie_staff2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movie_direction` WRITE;
/*!40000 ALTER TABLE `movie_direction` DISABLE KEYS */;
INSERT INTO `movie_direction` VALUES (11,12),(31,1),(32,2),(33,2),(35,5),(36,6),(37,7),(37,8),(38,9),(39,10),(40,11),(42,13),(43,14),(44,15),(45,16),(45,23),(46,17),(47,18),(48,19),(48,22),(49,20),(50,21),(51,24);
/*!40000 ALTER TABLE `movie_direction` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `movie_genre`;
CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `fk_movie_has_genre_genre1_idx` (`genre_id`),
  KEY `fk_movie_has_genre_movie_idx` (`movie_id`),
  CONSTRAINT `fk_movie_has_genre_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_has_genre_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,10),(3,8),(4,2),(5,13),(7,12),(8,10),(9,6),(12,5),(13,3),(14,6),(15,11),(18,2),(19,7),(22,7),(23,1),(24,9),(27,7),(28,10);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `movie_review`;
CREATE TABLE `movie_review` (
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stars` double DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`user_id`),
  KEY `fk_movie_has_reviewer_reviewer1_idx` (`user_id`),
  KEY `fk_movie_has_reviewer_movie1_idx` (`movie_id`),
  CONSTRAINT `fk_movie_has_reviewer_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_has_reviewer_reviewer1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movie_review` WRITE;
/*!40000 ALTER TABLE `movie_review` DISABLE KEYS */;
INSERT INTO `movie_review` VALUES (1,1,8.4,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(2,2,7.9,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(4,3,8.3,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(7,5,8.2,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(10,8,5.6,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(11,9,3,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(12,10,8.1,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(13,11,8.4,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(15,13,7,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(16,1,7.7,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(17,14,4,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(19,16,5,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(21,17,8.1,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(22,18,8,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(23,18,8.4,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(24,17,6.7,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(25,7,8.6,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39'),(26,15,7.7,NULL,'2020-11-23 01:09:39','2020-11-23 01:09:39');
/*!40000 ALTER TABLE `movie_review` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `movie_watch`;
CREATE TABLE `movie_watch` (
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `time_watched` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`movie_id`, `created_at`),
  KEY `fk_user_has_movie_movie1_idx` (`movie_id`),
  KEY `fk_user_has_movie_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_movie_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_movie_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movie_watch` WRITE;
/*!40000 ALTER TABLE `movie_watch` DISABLE KEYS */;
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 3, '2021-04-13 00:38:36', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 19, '2021-05-13 02:29:44', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2019-08-04 17:45:33', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 13, '2021-04-15 18:43:10', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 2, '2019-06-12 11:34:30', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 26, '2021-05-20 17:10:21', 98);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 13, '2020-03-24 02:10:21', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 27, '2020-12-02 04:08:39', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 14, '2020-09-02 13:52:37', 18);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 26, '2020-12-29 18:06:28', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 19, '2020-05-08 09:50:30', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 20, '2020-10-25 08:59:41', 35);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 5, '2019-08-10 05:12:35', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 2, '2020-01-05 07:48:41', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 5, '2020-08-24 06:51:21', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 15, '2021-04-06 13:30:18', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 12, '2020-02-03 15:14:40', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 10, '2021-01-13 01:09:23', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 13, '2020-10-25 13:14:11', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 4, '2020-07-17 20:49:09', 99);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 28, '2021-02-11 23:39:57', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 19, '2019-08-11 23:30:55', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 2, '2021-01-14 16:03:43', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 8, '2020-07-18 23:31:19', 71);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 5, '2021-06-04 23:21:12', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 2, '2020-08-19 03:07:36', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 10, '2019-11-06 13:23:50', 53);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 22, '2021-04-05 05:50:34', 71);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 22, '2019-07-23 13:36:02', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 5, '2019-02-23 04:17:22', 6);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 27, '2019-07-07 13:03:05', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 5, '2019-11-04 08:56:58', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 16, '2020-05-22 05:10:18', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 15, '2019-03-12 20:56:44', 32);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 4, '2019-06-18 02:38:32', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 26, '2021-03-27 01:08:12', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 8, '2019-02-06 11:05:55', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 23, '2020-01-04 20:21:41', 71);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 26, '2019-09-13 21:18:48', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 22, '2019-03-02 10:39:04', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 24, '2021-05-21 19:21:05', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 18, '2019-12-20 09:17:00', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 28, '2020-12-22 15:31:45', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 28, '2019-02-08 02:53:30', 89);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 27, '2019-06-18 02:04:01', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 1, '2019-12-08 18:51:47', 47);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 22, '2020-08-31 16:55:15', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 26, '2020-04-23 03:46:06', 79);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 2, '2019-07-23 20:21:16', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 22, '2020-08-06 10:45:19', 79);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 20, '2021-03-02 04:33:54', 85);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 15, '2020-01-26 20:13:36', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 23, '2020-12-10 15:38:14', 19);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 10, '2020-04-24 06:49:28', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 9, '2019-02-23 01:19:09', 85);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 26, '2021-03-27 20:12:42', 55);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 19, '2021-04-06 09:19:09', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 3, '2021-04-10 03:08:37', 84);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 2, '2019-06-01 11:58:52', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 26, '2019-02-04 16:05:27', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 22, '2020-11-27 06:43:59', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 8, '2020-11-24 07:19:20', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 15, '2019-12-25 11:49:20', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 1, '2021-05-12 07:00:42', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 11, '2021-04-23 13:20:53', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 12, '2020-05-18 20:58:39', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 15, '2021-05-26 02:27:10', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 17, '2019-06-30 10:20:12', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 26, '2020-10-03 04:29:51', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 26, '2020-10-03 18:11:59', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 19, '2020-01-30 10:07:13', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 28, '2020-12-22 02:34:32', 19);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 22, '2020-12-27 21:13:48', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 1, '2020-08-18 00:21:08', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 11, '2019-05-20 22:04:30', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 28, '2019-08-07 09:39:01', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 4, '2019-07-17 01:25:56', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 14, '2019-11-21 21:20:45', 8);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 20, '2020-10-06 18:10:44', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 26, '2020-12-09 22:24:06', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 3, '2019-06-03 05:15:56', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2020-03-27 12:35:09', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 9, '2019-04-11 07:36:38', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 14, '2019-06-16 06:20:58', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 24, '2020-11-02 22:16:20', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 22, '2019-06-23 21:02:07', 84);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 16, '2019-05-02 00:40:56', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 26, '2020-12-29 19:10:33', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 14, '2019-12-02 04:26:31', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 20, '2020-01-19 17:15:35', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 24, '2020-11-01 20:20:32', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 1, '2020-12-15 19:02:35', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 20, '2021-04-16 16:00:18', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 11, '2020-12-24 18:39:26', 23);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 19, '2021-04-02 14:44:23', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 21, '2019-11-15 11:41:29', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 12, '2020-08-25 13:23:22', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 6, '2021-05-26 07:30:29', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 1, '2020-05-02 08:10:10', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 15, '2020-05-07 21:42:55', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 6, '2019-06-08 09:20:38', 18);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 21, '2019-11-12 19:08:06', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 23, '2019-05-16 14:30:55', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 12, '2019-06-22 21:36:55', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 15, '2020-01-22 22:57:08', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2020-01-31 10:14:06', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 28, '2020-03-07 12:36:51', 5);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 16, '2020-01-16 19:14:23', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 1, '2019-05-16 02:33:27', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 4, '2019-12-30 05:35:26', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 18, '2019-08-17 05:20:08', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 13, '2020-06-25 09:43:54', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 28, '2020-04-02 10:46:40', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 12, '2020-08-08 17:56:51', 70);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 10, '2019-02-02 15:29:23', 4);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 11, '2020-11-12 10:19:09', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 20, '2019-04-24 17:05:08', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 25, '2020-04-30 17:36:23', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 22, '2020-05-08 13:31:43', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 8, '2019-12-28 23:56:31', 16);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 6, '2020-09-01 11:57:42', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 28, '2020-11-11 18:28:20', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 18, '2020-10-23 01:19:06', 7);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 11, '2020-10-06 14:03:45', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 18, '2019-09-04 10:13:18', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 3, '2019-06-27 05:53:21', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 22, '2020-08-13 17:46:34', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 7, '2021-04-16 19:35:39', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 20, '2021-04-01 22:45:05', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 26, '2020-10-27 09:53:23', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 16, '2019-06-19 12:54:37', 7);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 4, '2019-06-21 03:04:14', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 13, '2020-02-27 13:59:08', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 15, '2021-01-31 22:24:52', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 11, '2019-02-27 00:18:06', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 16, '2020-01-11 02:58:50', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 14, '2019-09-29 04:18:37', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 4, '2019-09-06 18:12:45', 70);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 20, '2019-08-17 20:48:31', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 10, '2020-08-11 11:56:43', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 25, '2019-09-12 17:10:29', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 20, '2019-06-25 07:41:08', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 8, '2019-03-24 15:12:09', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 22, '2019-11-18 15:55:14', 32);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 19, '2020-03-04 00:09:20', 24);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 11, '2020-04-23 03:28:21', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 14, '2021-04-28 08:55:00', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 26, '2019-09-27 14:08:04', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 4, '2020-11-30 07:14:53', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 5, '2021-02-24 09:23:52', 4);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 14, '2021-03-21 15:18:28', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 20, '2020-09-05 14:29:06', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 10, '2019-12-26 08:07:30', 19);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 23, '2021-05-31 17:30:09', 7);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 15, '2020-09-14 07:40:43', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 14, '2019-05-23 14:50:17', 53);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 21, '2019-11-17 03:54:07', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 2, '2021-03-03 05:44:35', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 14, '2021-02-05 11:44:19', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 15, '2021-02-16 03:24:09', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 27, '2020-11-10 08:35:46', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 4, '2020-04-08 11:29:39', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 16, '2020-01-09 13:23:16', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 1, '2020-03-19 22:55:32', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 11, '2019-08-07 12:14:01', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 9, '2020-03-02 13:18:41', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 25, '2020-11-23 11:00:43', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 13, '2019-04-15 07:15:08', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 27, '2020-04-07 20:18:49', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 25, '2021-03-28 01:29:05', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 3, '2019-11-13 14:38:58', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 16, '2019-07-07 19:34:40', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 10, '2019-06-15 13:34:27', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 19, '2021-01-16 12:51:44', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 9, '2021-01-25 07:01:05', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 12, '2019-07-01 08:55:08', 24);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 28, '2020-05-28 13:28:59', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 8, '2020-12-09 08:34:10', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 25, '2019-08-10 01:20:43', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 4, '2020-05-28 17:12:58', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 14, '2020-10-04 00:34:08', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 17, '2019-06-01 14:16:59', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 10, '2019-11-20 12:40:53', 57);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 6, '2019-08-10 00:30:25', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 2, '2021-05-14 02:08:53', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 26, '2020-07-20 08:21:20', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 7, '2020-12-18 00:37:50', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 15, '2020-07-06 12:59:10', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 18, '2021-01-12 18:14:46', 8);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 15, '2019-05-04 12:34:17', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 13, '2020-04-09 09:54:36', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 13, '2019-11-07 01:10:35', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 11, '2021-03-15 09:20:51', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 6, '2019-05-05 14:09:42', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 26, '2020-04-26 01:17:39', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 28, '2021-02-21 09:27:47', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 26, '2020-03-26 17:38:55', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 10, '2021-04-24 21:46:02', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 14, '2020-05-12 22:47:08', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 2, '2020-04-17 07:17:51', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 1, '2019-06-04 05:46:26', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 15, '2019-03-23 01:20:59', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 8, '2020-09-01 15:13:15', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 23, '2019-03-07 06:41:32', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 16, '2019-08-31 08:12:32', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 27, '2019-05-23 14:35:47', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 4, '2020-01-22 18:18:48', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 22, '2020-11-13 23:00:17', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 14, '2020-02-08 21:34:04', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 19, '2021-06-03 20:37:58', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 11, '2021-06-02 01:35:18', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 12, '2021-05-06 06:28:42', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 17, '2019-10-05 01:56:28', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 24, '2021-04-05 08:32:45', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2020-02-23 12:51:28', 33);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 17, '2019-09-25 08:47:03', 57);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 17, '2020-04-29 21:43:18', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 16, '2021-05-23 00:42:06', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 8, '2020-05-25 13:47:49', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 27, '2019-06-09 19:32:09', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 22, '2019-09-06 14:05:18', 85);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 8, '2019-08-16 18:38:49', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 24, '2019-07-19 08:58:16', 23);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 4, '2020-08-27 18:44:57', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 27, '2020-10-01 07:44:02', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 13, '2020-10-31 01:15:14', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 20, '2019-07-19 07:03:38', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 26, '2020-03-27 18:05:09', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 15, '2019-09-24 04:45:43', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 15, '2021-01-24 22:33:03', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 7, '2019-06-29 13:24:11', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 26, '2019-08-15 08:35:35', 99);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 4, '2020-05-13 05:18:29', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 19, '2020-10-29 15:38:27', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 5, '2021-01-22 02:15:24', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 16, '2020-07-02 11:35:24', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 12, '2020-11-26 21:05:54', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 2, '2019-08-12 20:16:26', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 11, '2021-05-07 05:34:13', 12);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 6, '2020-03-24 22:41:36', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 17, '2020-11-13 18:35:58', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 24, '2021-02-13 13:33:44', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 26, '2019-07-30 14:21:51', 35);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 25, '2020-03-17 06:38:03', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 23, '2019-04-14 17:38:20', 19);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 9, '2019-12-11 02:44:40', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 18, '2020-05-29 14:36:11', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 18, '2020-03-21 03:42:54', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 12, '2019-09-18 07:11:29', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 21, '2019-08-23 09:26:29', 24);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 3, '2020-09-26 00:18:02', 53);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 25, '2019-07-12 15:59:12', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 2, '2020-09-07 15:52:40', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 24, '2020-01-17 15:01:32', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 25, '2020-12-08 04:03:30', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 25, '2020-10-15 12:12:26', 46);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 8, '2020-02-12 09:32:29', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 10, '2019-09-05 09:34:55', 70);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 5, '2019-09-17 09:58:33', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 16, '2019-08-26 20:19:58', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 6, '2020-04-25 23:57:53', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 19, '2019-09-11 13:38:14', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 8, '2020-10-05 05:22:06', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 18, '2019-02-13 15:58:33', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 4, '2020-05-25 20:46:06', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 4, '2019-10-19 16:59:41', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 17, '2019-04-26 10:49:44', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 4, '2019-03-15 04:01:08', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 16, '2019-04-23 11:45:59', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 28, '2019-06-25 08:10:04', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 3, '2020-10-21 10:06:00', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 25, '2020-10-12 04:09:18', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 9, '2019-06-19 08:21:17', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 1, '2020-01-14 18:29:29', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 10, '2020-10-31 10:07:48', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 15, '2020-05-10 05:20:32', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 15, '2021-04-15 20:09:10', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 4, '2020-03-15 09:13:17', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 21, '2019-03-23 03:04:03', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 14, '2020-05-01 12:38:10', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 16, '2019-02-07 01:14:31', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 10, '2020-02-16 12:35:01', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 26, '2019-02-15 13:15:58', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 20, '2020-08-21 02:32:33', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 26, '2019-10-27 13:23:26', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 5, '2020-04-05 15:38:25', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 20, '2020-10-11 00:26:55', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 23, '2021-05-12 20:11:45', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 15, '2019-05-17 12:46:10', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 25, '2019-09-21 03:39:25', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 19, '2020-08-05 01:52:04', 71);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 20, '2020-08-06 17:07:19', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 9, '2021-03-31 13:48:54', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 19, '2019-08-06 22:59:42', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 18, '2019-03-02 08:06:55', 4);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 27, '2020-03-05 22:12:06', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 5, '2020-02-08 06:24:30', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 10, '2019-08-30 00:12:48', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 4, '2019-08-30 06:49:58', 80);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 9, '2019-04-03 00:31:53', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 5, '2020-11-21 03:01:35', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 26, '2019-08-26 09:24:21', 89);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 21, '2021-04-28 10:28:35', 33);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 11, '2020-05-24 02:58:07', 55);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 24, '2019-07-10 04:50:45', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 23, '2019-05-27 11:31:58', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 25, '2020-08-29 05:42:47', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 24, '2021-05-21 01:26:00', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 1, '2021-05-03 16:08:56', 6);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 12, '2020-02-14 17:12:14', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 7, '2020-12-30 09:07:22', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 24, '2019-07-09 06:25:51', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 18, '2020-06-17 09:25:48', 56);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 17, '2020-12-29 01:42:13', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 15, '2020-12-16 03:55:15', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 16, '2021-01-04 01:56:22', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 26, '2021-02-17 15:04:38', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 16, '2020-05-18 02:00:45', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2020-01-11 23:56:25', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 6, '2021-05-23 13:09:18', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 7, '2021-01-18 03:51:44', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 1, '2021-05-31 01:10:59', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 1, '2019-05-09 12:37:48', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 1, '2019-04-14 10:26:37', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 5, '2020-03-29 04:47:21', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 27, '2021-03-08 18:22:56', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 20, '2020-11-20 14:23:38', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 3, '2020-07-16 09:45:16', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 25, '2019-06-18 11:05:23', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 21, '2021-02-10 03:45:19', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 15, '2019-08-20 06:02:44', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 15, '2020-07-09 10:10:10', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 1, '2020-12-09 08:06:09', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 7, '2020-10-26 10:34:22', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 12, '2021-05-26 10:41:54', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 10, '2019-04-09 14:05:14', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 26, '2021-05-04 18:05:02', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 23, '2020-08-06 21:24:03', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 20, '2021-01-16 11:06:48', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 16, '2020-07-27 19:05:21', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 6, '2020-09-19 20:49:09', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 26, '2021-01-07 11:29:13', 79);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 25, '2019-02-22 23:35:09', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 21, '2021-05-17 22:46:54', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 1, '2019-10-24 07:13:56', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 7, '2019-09-29 01:32:25', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 17, '2020-04-30 13:42:20', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 24, '2020-02-15 17:25:59', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 24, '2019-09-06 23:25:00', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 28, '2020-06-05 15:12:45', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 28, '2019-10-26 08:11:08', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 21, '2021-04-24 12:27:04', 55);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 21, '2019-05-31 00:12:13', 47);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 18, '2019-07-13 10:52:33', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 7, '2020-10-24 21:39:35', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 17, '2020-07-10 04:21:03', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 13, '2021-01-15 21:32:05', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 7, '2020-07-28 11:42:18', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 3, '2021-02-13 10:20:40', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 13, '2020-06-29 05:27:43', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 28, '2019-11-06 02:17:32', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 9, '2019-06-29 23:18:14', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 28, '2021-02-05 08:00:19', 4);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 11, '2019-08-25 00:55:27', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 13, '2020-10-02 18:55:23', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 18, '2020-07-10 06:33:00', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 16, '2019-03-20 15:15:30', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 22, '2020-07-27 06:56:23', 46);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 9, '2020-11-27 08:42:49', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 16, '2020-09-28 12:11:49', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 25, '2021-05-23 09:05:36', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 16, '2019-08-29 04:05:33', 33);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 1, '2019-02-22 19:19:44', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 26, '2019-12-15 15:49:44', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 9, '2020-07-04 05:58:07', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 20, '2021-02-02 11:28:32', 47);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 4, '2019-08-14 08:48:52', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 27, '2020-10-17 11:37:24', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 6, '2020-04-28 21:31:37', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 20, '2019-05-29 14:53:37', 19);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 23, '2020-02-02 10:05:20', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 7, '2020-03-14 22:44:31', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 8, '2021-01-28 18:06:45', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 14, '2019-06-29 13:04:35', 89);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 16, '2019-12-06 06:15:08', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 12, '2020-11-19 23:45:07', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 6, '2019-08-01 03:32:29', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 22, '2020-08-13 06:48:15', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 6, '2020-06-03 19:27:36', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 2, '2020-11-13 05:20:40', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 17, '2020-08-02 21:52:44', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 25, '2019-11-09 17:57:14', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 28, '2020-08-26 04:59:06', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 6, '2020-07-12 19:59:04', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 1, '2021-03-17 18:13:37', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 24, '2020-10-19 10:32:36', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 27, '2020-08-20 06:45:28', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 7, '2020-01-29 23:12:00', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 22, '2019-04-11 07:51:56', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 8, '2019-12-16 12:19:51', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 26, '2020-06-05 21:37:08', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 20, '2020-07-13 09:49:57', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 25, '2021-02-20 08:46:23', 89);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 3, '2019-11-02 19:49:18', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 24, '2019-10-12 08:48:42', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 10, '2021-05-12 20:47:52', 98);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 14, '2020-11-25 02:09:44', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 16, '2020-11-05 18:33:45', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 28, '2020-10-11 13:21:12', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 19, '2019-10-07 10:21:04', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 5, '2020-10-30 15:47:34', 84);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 5, '2019-06-05 23:15:27', 7);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2019-09-09 08:07:15', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 8, '2020-02-07 06:01:22', 16);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 23, '2020-05-10 07:43:46', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 18, '2019-08-29 17:23:33', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 16, '2019-06-29 19:18:42', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 2, '2021-05-13 00:21:29', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 21, '2019-08-22 10:34:29', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 27, '2020-07-26 11:25:22', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 6, '2019-09-18 02:10:43', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 7, '2021-01-19 02:14:50', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 17, '2020-09-28 21:07:27', 79);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 3, '2020-03-29 16:21:32', 35);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 24, '2019-08-15 09:10:30', 99);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 17, '2021-06-01 18:17:56', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 8, '2020-07-27 01:24:33', 8);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 5, '2021-01-13 23:56:17', 46);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 19, '2019-06-24 22:40:17', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 21, '2020-09-26 08:53:09', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 21, '2020-05-17 09:41:01', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 17, '2020-09-01 04:34:48', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 9, '2019-08-30 10:38:09', 84);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 16, '2020-08-19 18:45:34', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 16, '2021-04-01 09:22:47', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 14, '2019-02-28 03:54:58', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 1, '2020-08-11 22:25:57', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 20, '2019-10-18 21:43:27', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 25, '2020-10-04 21:50:05', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 11, '2020-12-20 05:28:30', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 15, '2020-06-01 00:41:49', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 5, '2019-04-22 02:00:48', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 3, '2020-06-13 11:03:29', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 14, '2020-07-22 13:03:49', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 20, '2019-09-03 13:52:15', 32);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 25, '2020-11-27 18:19:24', 16);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 3, '2021-05-11 17:21:23', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 21, '2021-03-15 03:27:26', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 28, '2021-03-23 05:30:51', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 26, '2019-05-30 08:07:09', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 27, '2021-05-11 19:16:13', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 4, '2019-06-05 01:18:54', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2021-01-21 03:01:29', 35);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 22, '2019-10-09 08:36:33', 32);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 2, '2020-05-29 16:31:55', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 1, '2021-04-22 08:01:24', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 27, '2020-12-31 15:26:19', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 24, '2020-03-04 11:38:20', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 10, '2019-06-05 13:52:47', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 19, '2020-04-30 03:09:40', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 28, '2021-01-10 21:28:23', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 27, '2020-08-17 10:26:00', 7);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 16, '2020-11-17 11:02:33', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 2, '2021-04-13 23:50:25', 80);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 8, '2019-05-22 01:23:15', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 27, '2019-05-21 22:42:33', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 21, '2020-04-02 04:58:57', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 14, '2019-04-16 15:02:50', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 6, '2020-03-02 20:22:06', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 5, '2021-01-15 12:11:30', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 6, '2019-06-16 12:38:43', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 7, '2019-08-12 21:36:02', 14);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 18, '2021-01-23 02:06:32', 23);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 26, '2019-06-01 05:41:18', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 3, '2020-12-10 01:21:12', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 6, '2019-06-12 17:03:47', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 19, '2020-12-30 17:36:43', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 21, '2019-03-30 07:33:55', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 21, '2019-09-14 07:53:16', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 9, '2021-01-21 18:50:31', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 14, '2019-07-18 12:42:15', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 7, '2019-06-18 05:44:31', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 18, '2020-11-16 22:13:15', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 14, '2020-10-13 01:51:00', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 2, '2020-01-10 02:55:14', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 12, '2020-05-03 07:48:16', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 27, '2019-04-02 03:31:48', 93);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 5, '2020-12-01 21:22:26', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 22, '2019-05-10 01:32:05', 56);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 5, '2019-06-08 04:31:08', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 10, '2019-09-22 16:47:29', 57);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 19, '2021-02-18 09:58:36', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 27, '2019-03-05 21:46:22', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 6, '2021-04-07 03:52:29', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 27, '2020-02-05 21:23:46', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 24, '2020-07-19 14:24:20', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 16, '2019-12-16 22:28:17', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 16, '2020-09-20 04:50:37', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 7, '2019-12-18 18:40:16', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 10, '2021-01-22 17:28:51', 56);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 7, '2019-11-28 18:02:53', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 24, '2020-07-12 21:03:51', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 15, '2019-08-16 03:55:01', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 20, '2021-02-06 14:30:56', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 20, '2019-07-15 07:39:14', 57);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 16, '2021-02-28 00:04:41', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 3, '2019-04-28 18:57:32', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 24, '2020-06-01 22:44:28', 99);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 19, '2019-06-25 08:05:49', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 1, '2019-05-27 03:37:29', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 23, '2019-10-25 04:30:56', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 28, '2020-09-04 02:42:27', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 9, '2021-05-11 00:54:34', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 9, '2020-08-06 01:52:12', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 22, '2019-02-18 18:53:21', 78);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 17, '2021-04-01 09:50:15', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 12, '2021-04-28 22:37:14', 12);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 7, '2021-03-03 17:59:20', 34);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 25, '2020-07-02 00:11:30', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 24, '2021-05-22 15:29:12', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 15, '2020-02-21 20:32:19', 23);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 22, '2019-07-13 08:05:43', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 27, '2020-11-19 12:21:02', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 6, '2021-05-15 12:32:08', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 11, '2019-08-13 22:43:35', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 21, '2019-07-28 09:07:44', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 2, '2020-03-02 01:33:21', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 18, '2020-05-17 15:10:08', 12);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 27, '2020-05-15 17:50:41', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 13, '2019-09-05 02:50:41', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2020-05-02 10:03:50', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 9, '2019-08-18 21:33:06', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 9, '2019-04-22 02:46:00', 32);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 27, '2020-07-09 17:40:04', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 7, '2021-05-11 01:16:17', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 23, '2020-04-18 19:01:24', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 6, '2021-03-23 22:42:23', 8);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 22, '2021-05-20 23:59:18', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 8, '2019-08-20 14:06:23', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 25, '2020-12-02 02:59:57', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 4, '2021-04-08 23:16:26', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 15, '2020-03-29 15:12:35', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 7, '2019-08-06 17:50:05', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 15, '2020-02-20 16:47:13', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 23, '2019-09-09 15:14:58', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 11, '2020-09-03 22:26:27', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 24, '2020-05-08 03:36:17', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 13, '2019-07-14 13:21:57', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 15, '2020-02-06 21:22:23', 89);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 19, '2021-04-05 15:27:54', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2020-09-25 04:39:41', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 21, '2019-12-11 23:42:56', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 1, '2021-05-13 10:37:54', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 17, '2020-08-02 10:38:42', 86);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 19, '2019-10-04 02:38:10', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 6, '2019-06-24 15:07:41', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 16, '2019-03-19 05:18:26', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 11, '2020-02-09 06:22:54', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 3, '2019-11-29 11:24:29', 57);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 4, '2020-10-22 10:00:08', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 6, '2020-12-16 08:20:36', 70);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 10, '2021-01-28 10:17:17', 15);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 9, '2019-04-13 06:33:15', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 3, '2021-04-21 08:32:50', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 15, '2020-08-26 13:35:37', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 26, '2019-10-14 23:24:58', 87);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 27, '2019-12-22 05:56:34', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 24, '2021-05-11 12:11:44', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 11, '2019-10-19 13:08:48', 48);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 22, '2020-07-11 11:06:35', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 11, '2019-06-30 12:20:14', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 19, '2020-05-08 21:03:14', 24);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 25, '2020-06-28 00:48:43', 53);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 24, '2021-04-13 13:10:25', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 8, '2020-07-31 17:16:00', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 27, '2021-03-03 22:02:33', 81);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 19, '2020-09-01 11:03:12', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 3, '2019-08-25 17:18:14', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 12, '2019-11-30 12:13:52', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 4, '2021-03-27 02:38:52', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 28, '2020-06-23 22:37:26', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 12, '2020-08-03 00:50:21', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 13, '2020-11-12 06:46:15', 12);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 3, '2021-04-09 10:44:14', 73);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 10, '2020-12-25 22:11:57', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 7, '2019-12-21 05:33:22', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 6, '2019-06-01 05:53:56', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 5, '2020-10-20 07:44:48', 5);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 21, '2021-04-18 01:48:53', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2020-12-19 23:56:45', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 24, '2021-03-22 18:09:31', 98);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 7, '2019-08-01 11:18:56', 70);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 24, '2020-02-11 22:30:40', 18);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 5, '2019-10-14 06:02:35', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 24, '2019-02-16 11:52:59', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 25, '2019-08-27 04:49:45', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 23, '2019-03-04 08:39:47', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 15, '2019-06-07 11:56:49', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 9, '2020-07-25 10:31:44', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 1, '2021-05-08 07:00:26', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 11, '2020-10-19 01:49:17', 4);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 20, '2019-11-09 16:06:25', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 23, '2021-01-17 14:00:00', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 13, '2020-04-15 16:03:28', 23);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 27, '2019-05-13 01:50:09', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 8, '2021-02-24 08:27:10', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 8, '2020-11-16 03:46:35', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 7, '2019-07-05 22:06:12', 37);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 26, '2019-04-14 02:12:32', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 25, '2019-11-17 16:41:03', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 18, '2019-02-11 20:08:51', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 17, '2020-10-09 19:13:50', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 27, '2019-08-05 14:50:34', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 2, '2020-11-20 16:41:49', 46);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 16, '2020-06-03 03:01:37', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 21, '2019-10-27 03:33:01', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 28, '2021-02-05 07:29:57', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 12, '2021-03-18 08:28:54', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 26, '2019-02-08 05:09:19', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 13, '2020-06-27 14:29:51', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 9, '2020-02-29 09:00:28', 3);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 16, '2020-06-21 06:44:07', 90);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 2, '2020-06-24 22:52:39', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 28, '2020-06-19 06:44:48', 56);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 9, '2020-04-02 00:57:57', 80);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 14, '2021-01-06 17:47:44', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 8, '2019-08-16 12:09:41', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 5, '2020-09-21 22:56:13', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 7, '2021-01-01 13:58:33', 76);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 2, '2021-03-24 11:09:32', 100);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 10, '2019-09-27 21:01:05', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 9, '2019-04-21 20:42:14', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 18, '2019-02-24 19:20:17', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 1, '2021-05-09 05:59:12', 8);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 2, '2020-02-10 21:55:10', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 28, '2020-02-16 15:29:56', 24);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 4, '2019-07-20 06:54:22', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 26, '2019-03-02 09:35:28', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 26, '2020-04-22 05:50:50', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 25, '2021-01-21 09:34:28', 64);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 16, '2021-01-24 10:50:55', 40);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 21, '2019-07-04 04:33:55', 21);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 28, '2020-09-19 02:28:39', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 25, '2020-05-31 00:29:00', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 20, '2020-09-10 06:23:02', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 10, '2020-12-16 21:54:23', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 5, '2020-04-16 12:57:19', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 9, '2020-08-20 05:10:35', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 24, '2020-06-05 21:14:40', 35);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 17, '2019-06-29 21:38:49', 68);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 15, '2021-01-27 00:44:22', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 21, '2019-11-14 03:11:37', 85);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 15, '2021-05-15 23:30:12', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 27, '2021-06-02 18:21:39', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 28, '2020-01-12 15:31:34', 52);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 6, '2020-07-21 04:47:26', 71);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 6, '2020-04-13 06:51:40', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 5, '2021-05-30 11:04:25', 77);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 5, '2019-12-24 22:09:51', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 8, '2020-01-23 17:38:48', 22);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 14, '2019-08-27 11:25:28', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 17, '2019-03-13 01:54:30', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 15, '2019-08-31 09:12:51', 61);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 1, '2020-04-15 11:15:35', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 15, '2019-10-03 02:37:36', 67);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 5, '2020-06-03 11:00:34', 25);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 3, '2019-07-10 17:33:17', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 4, '2020-07-08 14:43:43', 92);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 4, '2021-04-04 23:18:15', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 1, '2020-11-08 23:23:19', 30);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 20, '2020-02-05 02:47:10', 41);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 15, '2020-11-06 10:25:39', 60);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 18, '2021-02-22 23:54:46', 99);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 12, '2020-08-24 18:32:42', 62);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 19, '2020-09-03 02:04:20', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 26, '2020-06-22 10:59:09', 43);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 27, '2019-05-13 23:53:02', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 25, '2019-02-23 15:13:39', 97);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 9, '2019-10-23 09:19:45', 59);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 27, '2021-01-01 14:02:17', 66);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 28, '2019-10-29 15:20:49', 28);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (3, 8, '2021-01-12 02:36:16', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 19, '2019-10-02 21:40:44', 11);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 9, '2020-04-19 00:58:07', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (12, 12, '2019-07-23 04:28:59', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 20, '2020-03-25 19:02:34', 44);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 28, '2019-09-30 05:15:49', 36);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 20, '2019-07-26 21:35:04', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 15, '2019-11-11 07:40:59', 55);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 17, '2020-09-23 10:23:33', 55);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 8, '2020-06-24 03:21:16', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 4, '2019-08-21 05:36:30', 65);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 2, '2019-05-31 05:59:16', 83);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 3, '2019-02-03 21:27:29', 45);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 7, '2020-07-04 22:33:21', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 22, '2020-06-19 18:58:11', 42);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 23, '2020-06-06 10:39:07', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 6, '2020-01-03 09:14:49', 49);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 5, '2020-12-26 22:23:37', 74);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 4, '2021-01-14 22:21:17', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 2, '2019-04-08 04:57:27', 20);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 2, '2020-07-09 22:46:36', 84);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 28, '2020-07-23 09:53:07', 54);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 20, '2020-08-01 11:53:28', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 8, '2020-05-23 01:49:29', 2);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 21, '2020-09-20 04:55:21', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 11, '2019-12-27 03:05:08', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 24, '2020-02-21 03:45:23', 91);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 11, '2020-11-17 04:32:15', 63);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (7, 21, '2019-08-30 20:39:06', 29);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 1, '2019-03-08 04:08:43', 26);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (5, 24, '2019-10-16 14:30:03', 1);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (8, 20, '2019-10-21 06:38:42', 51);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 6, '2020-11-05 14:18:29', 13);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 27, '2020-10-10 13:21:24', 39);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 8, '2021-02-23 13:33:03', 69);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 27, '2019-02-04 02:37:49', 94);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 18, '2021-04-06 21:01:29', 50);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (6, 24, '2020-11-03 08:08:46', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 18, '2020-06-16 12:52:32', 9);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (10, 25, '2020-11-23 00:09:18', 88);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (17, 6, '2020-07-22 13:27:41', 38);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 4, '2020-12-05 16:48:11', 58);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (14, 18, '2021-03-27 17:30:39', 96);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 6, '2020-06-07 07:59:30', 79);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 17, '2019-05-27 14:31:37', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 20, '2019-02-25 04:37:22', 82);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 7, '2020-01-23 18:01:24', 72);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (9, 1, '2020-10-17 23:54:38', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (4, 28, '2019-03-02 03:11:39', 17);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 20, '2020-05-25 23:44:03', 31);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 9, '2020-02-04 00:36:07', 27);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (2, 18, '2019-11-07 17:40:07', 75);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 25, '2020-05-07 13:52:53', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (13, 17, '2020-08-19 02:25:12', 53);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (1, 2, '2021-04-13 05:53:29', 95);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (16, 11, '2020-01-06 00:31:22', 10);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (18, 26, '2020-08-23 21:08:09', 18);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (11, 4, '2019-08-28 17:33:15', 18);
insert into movie_watch (user_id, movie_id, created_at, time_watched) values (15, 20, '2019-07-31 10:30:47', 93);
/*!40000 ALTER TABLE `movie_watch` ENABLE KEYS */;
UNLOCK TABLES;