-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2020 at 03:50 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonor`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int(2) NOT NULL,
  `sex` enum('M','F','O') NOT NULL,
  `BLOOD` char(6) NOT NULL,
  `num` bigint(15) NOT NULL,
  `loc` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `age`, `sex`, `BLOOD`, `num`, `loc`) VALUES
(1, 'Aneesh A Kumar', 22, 'M', 'A+', 8113000236, 'nedumudy'),
(2, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(3, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(4, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(5, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(6, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(7, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(8, 'Anoop A Kumar', 26, 'M', 'AB+', 8547540001, 'nedumudy'),
(9, 'aneesh', 46, 'M', 'B-', 8113000236, 'nedumudy'),
(10, 'aneesh', 46, 'M', 'B-', 8113000236, 'nedumudy'),
(11, 'vishnu', 25, 'M', 'B+', 9946565599, 'alappuzha'),
(12, 'joseph', 46, 'M', 'B+', 7387434567, 'kottaram'),
(13, 'joseph', 46, 'M', 'B+', 7387434567, 'kottaram'),
(14, 'aneesh', 54, 'M', 'AB+', 7387434567, 'mnknk'),
(15, 'sujith', 21, 'M', 'AB-', 8888456321, 'nedumudy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
