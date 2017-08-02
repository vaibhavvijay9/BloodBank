/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - peoplebloodbank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`peoplebloodbank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `peoplebloodbank`;

/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `username` varchar(50) default NULL,
  `date` date default NULL,
  `venue` varchar(250) default NULL,
  `status` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `appointments` */

insert  into `appointments`(`username`,`date`,`venue`,`status`) values ('vaibhavvijay9@gmail.com','2017-08-27','People\'s Blood Bank','donated'),('hgautam265@gmail.com','2017-12-22','Adarsh Nagar,Jaipur','donated'),('vaibhavvijay9@gmail.com','2017-12-29','People\'s Blood Bank','not_donated');

/*Table structure for table `bloodgroups` */

DROP TABLE IF EXISTS `bloodgroups`;

CREATE TABLE `bloodgroups` (
  `bloodgroup` varchar(3) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bloodgroups` */

insert  into `bloodgroups`(`bloodgroup`) values ('A+'),('A-'),('B+'),('B-'),('O+'),('O-'),('AB+'),('AB-');

/*Table structure for table `camps` */

DROP TABLE IF EXISTS `camps`;

CREATE TABLE `camps` (
  `date` date default NULL,
  `name` varchar(150) default NULL,
  `venue` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `camps` */

insert  into `camps`(`date`,`name`,`venue`) values ('2017-12-22','Volunteer Blood Donation Camp','Green Park ,Adarsh Nagar ,Jaipur'),('2017-08-15','Independence Day Blood Donation','Sachivalaya Vihar ,Community Hall ,Jaipur'),('2017-08-23','Rotary Club Blood Donation Camp','Mansarovar Community Hall,Jaipur'),('2017-09-08','Lioness Club Blood Donation Camp','JAI CLUB LAWN, C-SCHEME, JAIPUR'),('2017-08-10','Lions Club Blood Donation Camp','403, ROYAL ABODE, VIJAY PATH, JAIPUR');

/*Table structure for table `donations` */

DROP TABLE IF EXISTS `donations`;

CREATE TABLE `donations` (
  `username` varchar(50) default NULL,
  `donation_date` date default NULL,
  `venue` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `donations` */

insert  into `donations`(`username`,`donation_date`,`venue`) values ('vaibhavvijay9@gmail.com','2017-02-22','People\'s Blood Bank'),('vaibhavvijay9@gmail.com','2017-08-27','People\'s Blood Bank'),('patniritik@gmail.com','2017-08-10','People\'s Blood Bank');

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `username` varchar(50) default NULL,
  `feedback` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`username`,`feedback`) values ('vaibhavvijay9@gmail.com','It is a very good service by PPB. It helps many people and also people get a place to donate their blood.\r\nThank You');

/*Table structure for table `inquiries` */

DROP TABLE IF EXISTS `inquiries`;

CREATE TABLE `inquiries` (
  `date` date default NULL,
  `name` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(10) default NULL,
  `message` varchar(350) default NULL,
  `status` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inquiries` */

insert  into `inquiries`(`date`,`name`,`email`,`phone`,`message`,`status`) values ('2017-07-28','Vaibhav Vijay','vaibhavvijay9@gmail.com','8104410870','Sir, I want to donate blood but I don\'t know how to donate at your blood bank.So, kindly tell me how to do so.','resolved'),('2017-07-28','Himanshu Gautam','hgautam265@gmail.com','9772292196','Sir, I want to donate blood but I don\'t know how to donate at your blood bank.So, kindly tell me how to do so.','unresolved'),('2017-07-29','Ritik Patni','patniritik@gmail.com','8742827523','Sir I want blood from your blood bank, so please tell me how to request blood.','unresolved');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `usertype` varchar(5) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`usertype`) values ('hgautam265@gmail.com','qwerty123','user'),('patniritik@gmail.com','technext','user'),('vaibhavvijay97@gmail.com','vaibhavv','admin'),('vaibhavvijay9@gmail.com','vaibhav12345','user'),('vaibhavvijayvargiyar@gmail.com','vaibhavvijay','admin');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `username` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `gender` varchar(6) default NULL,
  `birthdate` date default NULL,
  `address` varchar(200) default NULL,
  `phone` varchar(10) default NULL,
  `bloodgroup` varchar(3) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`username`,`name`,`gender`,`birthdate`,`address`,`phone`,`bloodgroup`) values ('vaibhavvijay9@gmail.com','Vaibhav Vijay','Male','1997-05-09','95,Adarsh Nagar, Jaipur Road, Malpura (Tonk)','8104410870','AB+'),('patniritik@gmail.com','Ritik Patni','Male','1996-09-30','B-21 Ramanagariya Jagatpura Jaipur-302017','8742827523','B+'),('hgautam265@gmail.com','Himanshu Gautam','Male','1996-10-04','mahadev nagar jaipur\r\n','9772292196','O+'),('vaibhavvijay97@gmail.com','Ajay Kumar','Male','2017-10-16','Type 3,CSWRI,Avikanagar','9004512544','A+'),('vaibhavvijayvargiyar@gmail.com','Vaibhav Vijay Vargiya','Male','1997-08-09','jaipur','9638527418','A+');

/*Table structure for table `requests` */

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `username` varchar(50) default NULL,
  `patient_name` varchar(50) default NULL,
  `required_date` date default NULL,
  `units` int(10) default NULL,
  `bloodgroup` varchar(3) default NULL,
  `hospital_name` varchar(100) default NULL,
  `status` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requests` */

insert  into `requests`(`username`,`patient_name`,`required_date`,`units`,`bloodgroup`,`hospital_name`,`status`) values ('vaibhavvijay9@gmail.com','Arjun','2017-08-07',7,'A+','SDMH Jaipur','Confirmed'),('hgautam265@gmail.com','deepak choudhary','2017-08-04',5,'AB-','fortis jaipur','Confirm'),('vaibhavvijay9@gmail.com','Jai','2017-08-05',6,'B+','SMS','Provided');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(10) NOT NULL auto_increment,
  `bloodgroup` varchar(3) default NULL,
  `units` int(10) default NULL,
  `expiry_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`id`,`bloodgroup`,`units`,`expiry_date`) values (1,'A+',0,'2050-08-01'),(2,'A-',0,'2050-08-01'),(3,'B+',0,'2050-08-01'),(4,'B-',0,'2050-08-01'),(5,'O+',0,'2050-08-01'),(6,'O-',0,'2050-08-01'),(7,'AB+',0,'2050-08-01'),(8,'AB-',0,'2050-08-01'),(10,'A+',5,'2017-07-31'),(12,'A+',9,'2017-10-30'),(13,'AB+',5,'2017-10-30'),(16,'O+',2,'2017-06-21'),(17,'AB-',3,'2017-10-30'),(18,'A+',6,'2017-11-25'),(19,'A-',6,'2017-08-02'),(22,'B+',5,'2017-08-11');

/*Table structure for table `stories` */

DROP TABLE IF EXISTS `stories`;

CREATE TABLE `stories` (
  `username` varchar(50) default NULL,
  `story` varchar(500) default NULL,
  `status` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stories` */

insert  into `stories`(`username`,`story`,`status`) values ('patniritik@gmail.com',' I Am A B+ Blood Donor. I Have Donated Blood Two Times.First Time A Accident Case In SMS And 2nd Time Rajiv Gandhi Jyanti.I Feel Proud To Help A Needy And Save A Precious Life. So Dear Friends Share A Little, Care A Little ? Donate Blood.','Approved'),('hgautam265@gmail.com',' I Am O+ Blood Donor. I Have Donated Blood 18 Times Since 1990.Dear Friends It Is Liquid Love So Share This Love As Many Times As You Can.One Drop Of Blood Can Not Be Produced In Factory Even After Spending Crores Of Rupees.It Is Only Possible In Our Body.So Donate Blood.','Pending'),('vaibhavvijay9@gmail.com',' I Am Educated Member Of Society And I Think We Have To Donate As Much We Can.So Its My Request To All My Friends To Come Forward To Help Others And Trust Me There Is No Effect On Health .Even I Feel More Positivity In Myself I Donated 16 Time And I Will Continue My This Habit Up To My Last Breath .','Approved');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
