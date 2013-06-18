-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2013 at 11:55 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slc`
--

-- --------------------------------------------------------

--
-- Table structure for table `desktop`
--

CREATE TABLE IF NOT EXISTS `desktop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `desktop`
--

INSERT INTO `desktop` (`id`, `category`) VALUES
(1, 'Accessories'),
(2, 'Barebone Mini Computers'),
(3, 'Cables'),
(4, 'Cases'),
(5, 'CD DVD Burners Media'),
(6, 'CPUs Processors'),
(7, 'External Enclosures'),
(8, 'Fans & Heatsinks'),
(9, 'Flash Memory & Readers'),
(10, 'Hard Drives'),
(11, 'Input Devices'),
(12, 'Keyboards & Mice'),
(13, 'Media Devices '),
(14, 'Memory'),
(15, 'Monitors'),
(16, 'Motherboards'),
(17, 'Networking'),
(18, 'Power Protection'),
(19, 'Power Supplies'),
(20, 'Printers Scanners & Supplies'),
(21, 'Projectors'),
(22, 'Servers & Workstations'),
(23, 'Service Plans'),
(24, 'Soundcards, Speakers & Headsets'),
(25, 'SSD'),
(26, 'Tools'),
(27, 'Video Cards & Video Devices'),
(28, 'Web Cams');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
