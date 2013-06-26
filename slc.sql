-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2013 at 10:23 AM
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
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Case Material` varchar(50) NOT NULL,
  `With Power Supply` tinyint(1) NOT NULL,
  `Power Supply` varchar(50) NOT NULL,
  `Side Panel Window` tinyint(1) NOT NULL,
  `PSU Mount` varchar(11) NOT NULL,
  `Ext 3.5 Bays` int(11) NOT NULL,
  `Ext 5.25 Bays` int(11) NOT NULL,
  `Int 3.5 Bays` int(11) NOT NULL,
  `Int 5.25 Bays` int(11) NOT NULL,
  `80mm Fans` int(11) NOT NULL,
  `120mm Fans` int(11) NOT NULL,
  `250mm Fans` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`ID`, `Type`, `Price`, `Manufacturer`, `Color`, `Case Material`, `With Power Supply`, `Power Supply`, `Side Panel Window`, `PSU Mount`, `Ext 3.5 Bays`, `Ext 5.25 Bays`, `Int 3.5 Bays`, `Int 5.25 Bays`, `80mm Fans`, `120mm Fans`, `250mm Fans`) VALUES
(1, 'ATX', 40, 'Antec', 'Blk', 'Alluminum', 1, 'Corsair CS500', 1, 'Bottom', 0, 0, 5, 3, 2, 1, 0);

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
(27, 'Video Cards'),
(28, 'Web Cams');

-- --------------------------------------------------------

--
-- Table structure for table `hard drives`
--

CREATE TABLE IF NOT EXISTS `hard drives` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRICE` int(11) NOT NULL,
  `MANUFACTURER` varchar(50) NOT NULL,
  `INTERFACE` varchar(50) NOT NULL,
  `RPM SPEED` int(11) NOT NULL,
  `CACHE` int(11) NOT NULL,
  `FORM FACTOR` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `video cards`
--

CREATE TABLE IF NOT EXISTS `video cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Chipset` varchar(50) NOT NULL,
  `Form Factor` varchar(50) NOT NULL,
  `RAM Type` varchar(50) NOT NULL,
  `Interface` varchar(50) NOT NULL,
  `GPU` varchar(50) NOT NULL,
  `Memory Interface` int(11) NOT NULL,
  `Direct X` int(11) NOT NULL,
  `Low Profile Bracket Included` tinyint(1) NOT NULL,
  `DVI` varchar(50) NOT NULL,
  `HDMI` varchar(50) NOT NULL,
  `DSUB` varchar(50) NOT NULL,
  `Display Port` varchar(50) NOT NULL,
  `TV Out` varchar(50) NOT NULL,
  `Crossfire X Support` tinyint(1) NOT NULL,
  `SLI Support` tinyint(1) NOT NULL,
  `Cooler` tinyint(1) NOT NULL,
  `HDCP Ready` tinyint(1) NOT NULL,
  `Tuner` tinyint(1) NOT NULL,
  `Max Resolution` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
