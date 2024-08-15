DROP DATABASE IF EXISTS olympics;

CREATE DATABASE  IF NOT EXISTS olympics;
USE olympics;


DROP TABLE IF EXISTS olympics.medal;

CREATE TABLE olympics.medal (
  id INT NOT NULL AUTO_INCREMENT,
  medal_name varchar(50) DEFAULT NULL,
  CONSTRAINT pk_medal PRIMARY KEY (id)
);

INSERT INTO olympics.medal (id, medal_name)
VALUES (1,'Gold'),
(2,'Silver'),
(3,'Bronze'),
(4,'NA');
