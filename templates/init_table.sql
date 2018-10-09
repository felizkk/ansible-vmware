DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

LOCK TABLES `member` WRITE;
INSERT INTO `member` (`firstname`, `surname`) VALUES ('Feliz','Karnadi');
INSERT INTO `member` (`firstname`, `surname`) VALUES ('Grant','Du Preez');
UNLOCK TABLES;

