-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2019 at 06:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Election`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE IF NOT EXISTS `Admin` (
  `Admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`Admin_id`, `Username`, `Password`) VALUES
(2, 'Tangeni', '4299');

-- --------------------------------------------------------

--
-- Table structure for table `Candidate`
--

DROP TABLE IF EXISTS `Candidate`;
CREATE TABLE IF NOT EXISTS `Candidate` (
  `CandidateName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `Photo` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Candidate`
--

INSERT INTO `Candidate` (`CandidateName`, `Email`, `Mobile`, `Address`, `Description`, `Photo`) VALUES
('Tangeni', 't95kwedhi@gmail.com', 813457111, 'Po Box 1453, Grootfontein, Namibia', ' Down to earth', 'CanPhoto/adminlogin.jpg'),
('gghg', 't95kwedhi@gmail.com', 813457111, 'Po Box 1453, Grootfontein, Namibia', ' ', 'CanPhoto/'),
('klk', 't95kwedhi@gmail.com', 679255788, '408 1st Ave, Bredell AH, Kempton Park', ' ', 'CanPhoto/'),
('kklklk', 't95kwedhi@gmail.com', 813457111, 'Po Box 1453, Grootfontein, Namibia', ' ', 'CanPhoto/'),
('uou', 't95kwedhi@gmail.com', 813457111, 'Po Box 1453, Grootfontein, Namibia', ' ', 'CanPhoto/');

-- --------------------------------------------------------

--
-- Table structure for table `SetEC`
--

DROP TABLE IF EXISTS `SetEC`;
CREATE TABLE IF NOT EXISTS `SetEC` (
  `Electionid` int(32) NOT NULL,
  `ElectionTitle` varchar(256) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Cann1` varchar(256) NOT NULL,
  `Cann2` varchar(256) NOT NULL,
  `Cann3` varchar(256) NOT NULL,
  `Cann4` varchar(256) NOT NULL,
  `Cann5` varchar(256) NOT NULL,
  KEY `Electionid` (`Electionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SetEC`
--

INSERT INTO `SetEC` (`Electionid`, `ElectionTitle`, `StartDate`, `EndDate`, `Cann1`, `Cann2`, `Cann3`, `Cann4`, `Cann5`) VALUES
(1, 'Accomodation', '2019-05-08', '2019-05-10', 'Tangeni', 'Select Candidate-2', 'Select Candidate-3', 'Select Candidate-4', 'Select Candidate-5'),
(1, 'Rec', '2019-05-08', '2019-05-10', 'gghg', 'kklklk', 'klk', 'Tangeni', 'uou'),
(2, 'Accomodation', '1995-10-10', '1996-10-10', 'gghg', 'kklklk', 'Tangeni', 'uou', 'klk'),
(2, 'Accomodation', '1995-10-10', '1996-10-10', 'gghg', 'kklklk', 'Tangeni', 'uou', 'klk'),
(2, 'Accomodation', '1995-05-08', '1996-05-08', 'gghg', 'kklklk', 'klk', 'Tangeni', 'uou'),
(3, 'REC', '2019-01-23', '2019-02-23', 'gghg', 'kklklk', 'klk', 'Tangeni', 'uou'),
(4, 'rec', '2019-09-09', '3333-02-09', 'gghg', 'kklklk', 'klk', 'Tangeni', 'uou'),
(3, 'Accomodation', '1995-10-10', '2000-11-10', 'gghg', 'kklklk', 'klk', 'Tangeni', 'uou');

-- --------------------------------------------------------

--
-- Table structure for table `Vote`
--

DROP TABLE IF EXISTS `Vote`;
CREATE TABLE IF NOT EXISTS `Vote` (
  `ElectionID` int(64) NOT NULL,
  `ElectionName` varchar(256) NOT NULL,
  `CandidateName` varchar(256) NOT NULL,
  `TotVote` int(32) NOT NULL,
  PRIMARY KEY (`ElectionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Vote`
--

INSERT INTO `Vote` (`ElectionID`, `ElectionName`, `CandidateName`, `TotVote`) VALUES
(3, 'Accomodation', 'gghg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Voter`
--

DROP TABLE IF EXISTS `Voter`;
CREATE TABLE IF NOT EXISTS `Voter` (
  `VoterName` text NOT NULL,
  `VoterUserName` varchar(30) NOT NULL,
  `Password` varchar(52) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mobile` int(15) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Voter`
--

INSERT INTO `Voter` (`VoterName`, `VoterUserName`, `Password`, `Email`, `Mobile`, `DOB`, `Gender`, `Address`, `Photo`) VALUES
('Tangeni', 'superT', '4299', 'tangeni.kwedhi95@gmail.com', 813457111, '1995-05-08', 'Male', 'Po Box 1453, Grootfontein, Namibia', 'Photo/'),
('TangeniKwedhi', 'Tangeni', '12345', 'tangeni.kwedhi@yahoo.com', 679255788, '1994-05-08', 'Male', '408 1st Ave, Bredell AH, Kempton Park', 'Photo/unam1.jpg'),
('fgfg', 'gffg', '6787', 't95kwedhi@gmail.com', 813457111, '1223-08-07', 'Female', 'Po Box 1453, Grootfontein, Namibia', 'Photo/');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
