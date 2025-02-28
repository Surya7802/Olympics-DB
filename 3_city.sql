DROP TABLE IF EXISTS olympics.city;

CREATE TABLE olympics.city (
  id INT NOT NULL AUTO_INCREMENT,
  city_name varchar(200) DEFAULT NULL,
  CONSTRAINT pk_city PRIMARY KEY (id)
);



INSERT INTO olympics.city (id, city_name) VALUES
(1,'Barcelona'),
(2,'London'),
(3,'Antwerpen'),
(4,'Paris'),
(5,'Calgary'),
(6,'Albertville'),
(7,'Lillehammer'),
(8,'Los Angeles'),
(9,'Salt Lake City'),
(10,'Helsinki'),
(11,'Lake Placid'),
(12,'Sydney'),
(13,'Atlanta'),
(14,'Stockholm'),
(15,'Sochi'),
(16,'Nagano'),
(17,'Torino'),
(18,'Beijing'),
(19,'Rio de Janeiro'),
(20,'Athina'),
(21,'Squaw Valley'),
(22,'Innsbruck'),
(23,'Sarajevo'),
(24,'Mexico City'),
(25,'Munich'),
(26,'Seoul'),
(27,'Berlin'),
(28,'Oslo'),
(29,'Cortina d\'Ampezzo'),
(30,'Melbourne'),
(31,'Roma'),
(32,'Amsterdam'),
(33,'Montreal'),
(34,'Moskva'),
(35,'Tokyo'),
(36,'Vancouver'),
(37,'Grenoble'),
(38,'Sapporo'),
(39,'Chamonix'),
(40,'St. Louis'),
(41,'Sankt Moritz'),
(42,'Garmisch-Partenkirchen');
