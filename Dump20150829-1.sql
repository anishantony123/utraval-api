-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: web
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `userVendorInfo`
--

DROP TABLE IF EXISTS `userVendorInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userVendorInfo` (
  `crdUserId` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `vendorKeyCheck` tinyint(1) DEFAULT NULL,
  `vendorLogin` varchar(255) DEFAULT NULL,
  `vendorPassword` varchar(255) DEFAULT NULL,
  `vendorHashKey` varchar(255) DEFAULT 'Null',
  `vendorAccountNo` varchar(255) DEFAULT NULL,
  `vendorAccountNo2` varchar(255) DEFAULT NULL,
  `vendorAccountNo3` varchar(255) DEFAULT NULL,
  `vendorAPI` varchar(255) DEFAULT NULL,
  `vendorAPI2` varchar(255) DEFAULT NULL,
  `availableCash` decimal(10,2) DEFAULT NULL,
  `InvestorId` int(11) DEFAULT NULL,
  `accruedInterest` decimal(10,2) DEFAULT NULL,
  `outstandingPrncp` decimal(10,2) DEFAULT NULL,
  `accountTotal` decimal(10,2) DEFAULT NULL,
  `totalNotes` int(11) DEFAULT NULL,
  `totalPortfolios` int(11) DEFAULT NULL,
  `inFundingBalance` decimal(10,2) DEFAULT NULL,
  `receivedInterest` decimal(10,2) DEFAULT NULL,
  `receivedPrncp` decimal(10,2) DEFAULT NULL,
  `receivedLateFees` decimal(10,2) DEFAULT NULL,
  `vendorOther` varchar(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`crdUserId`,`vendorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userVendorInfo`
--

LOCK TABLES `userVendorInfo` WRITE;
/*!40000 ALTER TABLE `userVendorInfo` DISABLE KEYS */;
INSERT INTO `userVendorInfo` (`crdUserId`, `vendorId`, `vendorKeyCheck`, `vendorLogin`, `vendorPassword`, `vendorHashKey`, `vendorAccountNo`, `vendorAccountNo2`, `vendorAccountNo3`, `vendorAPI`, `vendorAPI2`, `availableCash`, `InvestorId`, `accruedInterest`, `outstandingPrncp`, `accountTotal`, `totalNotes`, `totalPortfolios`, `inFundingBalance`, `receivedInterest`, `receivedPrncp`, `receivedLateFees`, `vendorOther`, `updatedAt`, `createdAt`) VALUES (171,1,NULL,'abhishek101@gmail.com','/9kpfeGgk29E','rIXJrQ7T1bT1yz+Wcgixsg==','13667356',NULL,NULL,'zsYze7uWm2g1m4dTx3CQ2GMXHAw=',NULL,878.51,13667356,5.95,638.38,1514.30,34,2,0.00,71.94,166.93,0.00,NULL,'2015-08-27 13:38:01','2015-08-25 05:53:06');
INSERT INTO `userVendorInfo` (`crdUserId`, `vendorId`, `vendorKeyCheck`, `vendorLogin`, `vendorPassword`, `vendorHashKey`, `vendorAccountNo`, `vendorAccountNo2`, `vendorAccountNo3`, `vendorAPI`, `vendorAPI2`, `availableCash`, `InvestorId`, `accruedInterest`, `outstandingPrncp`, `accountTotal`, `totalNotes`, `totalPortfolios`, `inFundingBalance`, `receivedInterest`, `receivedPrncp`, `receivedLateFees`, `vendorOther`, `updatedAt`, `createdAt`) VALUES (172,1,NULL,'abhishek102@gmail.com','4ff8001c3a6afdf3b5','77T1BHycY9SgcXF3yP/RwA==','13667356',NULL,NULL,'zsYze7uWm2g1m4dTx3CQ2GMXHAw=Removed',NULL,975.21,NULL,5.79,560.45,1535.66,28,2,0.00,62.93,141.27,0.00,NULL,'2015-07-17 14:20:05','2015-07-17 14:20:05');
INSERT INTO `userVendorInfo` (`crdUserId`, `vendorId`, `vendorKeyCheck`, `vendorLogin`, `vendorPassword`, `vendorHashKey`, `vendorAccountNo`, `vendorAccountNo2`, `vendorAccountNo3`, `vendorAPI`, `vendorAPI2`, `availableCash`, `InvestorId`, `accruedInterest`, `outstandingPrncp`, `accountTotal`, `totalNotes`, `totalPortfolios`, `inFundingBalance`, `receivedInterest`, `receivedPrncp`, `receivedLateFees`, `vendorOther`, `updatedAt`, `createdAt`) VALUES (186,1,NULL,'sarithakannam@yahoo.com','+jQR7de26PpwPrjk2xgaT8mueVkJYRxKv68juw7JbD6/AGBOihxND7yu+06QYRHrdj38g7QaeV0JfqNw12a8RA==','5Mo69emIR4Ou9PEBUHVfRg==','59764309',NULL,NULL,'YJ7YdWWxpJ14fCm6iz35EjqpRp4=',NULL,0.00,NULL,0.81,675.00,2000.00,80,0,1325.00,0.00,0.00,0.00,NULL,'2015-08-07 05:19:03','2015-08-07 05:19:03');
INSERT INTO `userVendorInfo` (`crdUserId`, `vendorId`, `vendorKeyCheck`, `vendorLogin`, `vendorPassword`, `vendorHashKey`, `vendorAccountNo`, `vendorAccountNo2`, `vendorAccountNo3`, `vendorAPI`, `vendorAPI2`, `availableCash`, `InvestorId`, `accruedInterest`, `outstandingPrncp`, `accountTotal`, `totalNotes`, `totalPortfolios`, `inFundingBalance`, `receivedInterest`, `receivedPrncp`, `receivedLateFees`, `vendorOther`, `updatedAt`, `createdAt`) VALUES (192,1,NULL,'swatig4@gmail.com','ypO5wkd/6HY=','khJqkincY9xr4PFlDxiAOA==','28712619',NULL,NULL,'X8CTSN51GREcv4QKJtZFvaIPVTQ=',NULL,375.50,NULL,1.14,124.68,500.18,5,1,0.00,0.18,0.32,0.00,NULL,'2015-08-25 05:58:10','2015-08-25 05:58:10');
/*!40000 ALTER TABLE `userVendorInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `crdUserId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hashKey` varchar(255) DEFAULT NULL,
  `newUser` tinyint(1) DEFAULT NULL,
  `vendorKeyCheck` tinyint(1) DEFAULT NULL,
  `userRecommend` tinyint(1) DEFAULT NULL,
  `dataLoadSuccess` tinyint(1) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`crdUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`crdUserId`, `userName`, `email`, `password`, `hashKey`, `newUser`, `vendorKeyCheck`, `userRecommend`, `dataLoadSuccess`, `updatedAt`, `createdAt`) VALUES (1,'Sangam','user@croudify.com','ZE1XyhssS9OPAgQJus5Wm96S074P2C1LPVoJzLMkYFMih/e2Q1CX80tzvJFmTtF53ukAr0oKtc8rinFXLmh85A==','gnAvCpkE2ZcGGRSbCgMqbw==',0,0,1,1,'2015-08-07 12:18:52','2015-01-22 06:11:47');
INSERT INTO `users` (`crdUserId`, `userName`, `email`, `password`, `hashKey`, `newUser`, `vendorKeyCheck`, `userRecommend`, `dataLoadSuccess`, `updatedAt`, `createdAt`) VALUES (171,'Abhishek','abhishek101@gmail.com','mIbIJ9/Nt3tEK9iozQCvoBOB+IfpnUwFWexSYL/zJioVMn9w/NdGMvGfpZA7+vDygUd7y91O2cTMjXCCsLmkig==','rInfpvZ2UOR81uiSuIAsJQ==',0,0,0,0,'2015-08-27 13:38:01','2015-07-17 14:19:34');
INSERT INTO `users` (`crdUserId`, `userName`, `email`, `password`, `hashKey`, `newUser`, `vendorKeyCheck`, `userRecommend`, `dataLoadSuccess`, `updatedAt`, `createdAt`) VALUES (186,'Anish Antony','anish.antony@nibodha.com','GBIKmr1VsnVyX6bk5HeE7IbVTj/EKX+8U2A6n9s8sZVBg7R++Y/Cin+fOt0yDsGbHSSZqkNp00d88EhPjfrolQ==','F8niLxLFItgwj6p7XXV4oA==',0,0,0,0,'2015-08-07 05:18:44','2015-08-07 05:18:44');
INSERT INTO `users` (`crdUserId`, `userName`, `email`, `password`, `hashKey`, `newUser`, `vendorKeyCheck`, `userRecommend`, `dataLoadSuccess`, `updatedAt`, `createdAt`) VALUES (192,'Swati Agarwal','abhishek@prediken.com','qtVYqrejKw2XUZqM2nmC+rKnwwkm3iE/Fr1JRPrGxJpM6e2tyBJfCISdtFx/cjpH8DDrgtJ5YqCg90btt6O18Q==','wblxeotXYoUSEx4Dzc41pQ==',0,0,0,0,'2015-08-27 12:57:32','2015-08-25 05:52:00');
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

-- Dump completed on 2015-08-29  9:30:03
