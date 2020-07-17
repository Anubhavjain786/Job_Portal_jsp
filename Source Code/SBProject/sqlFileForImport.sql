create database sb_test_project;
use sb_test_project;
 create table job_seekers(
 `js_id` int(11) NOT NULL AUTO_INCREMENT,
 `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  PRIMARY KEY (`js_id`)
 
 );
 
 insert into job_seekers values(1,'Anubhav','Jain','1997-08-08',7014899167,'anubhavJ660@gmail.com','anu','bikaner','bikaner','RJ');
 
 
 create table jobs(
 `job_id` int(11) NOT NULL AUTO_INCREMENT,
 `short_des` varchar(100) NOT NULL,
  `long_desc` varchar(15000) NOT NULL,
  `publish_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_vacancy` varchar(50) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `job_position` varchar(50) NOT NULL,
  PRIMARY KEY (`job_id`)
 
 );
 
 
 create table recruiters(
 `recru_id` int(11) NOT NULL AUTO_INCREMENT,
 `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
   `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
    PRIMARY KEY (`recru_id`)
 
 );
 insert into recruiters values(1,'SquareBoat', "pvt. ltd.","8929063221","squareboat.com","SB","SquareBoat Solutions Private Limited","Delhi");
 
 create table applying_jobs(
 `applying_id` int(11) NOT NULL AUTO_INCREMENT,
 `recru_id` int NOT NULL,
 `job_id` int NOT NULL,
 `js_id` int NOT NULL,
 PRIMARY KEY (`applying_id`),
 FOREIGN KEY (`recru_id`) REFERENCES recruiters(`recru_id`),
 FOREIGN KEY (`job_id`) REFERENCES jobs(`job_id`),
 FOREIGN KEY (`js_id`) REFERENCES job_seekers(`js_id`)
 );
 