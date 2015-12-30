-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2015 at 06:03 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `fcc_players`
--

CREATE TABLE `fcc_players` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` decimal(10,1) NOT NULL,
  `2015_Score` decimal(10,2) NOT NULL,
  `Score` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fcc_players`
--

INSERT INTO `fcc_players` (`ID`, `Name`, `Value`, `2015_Score`, `Score`) VALUES
(3, 'Asif Iqbal', '10.9', '108.00', '0'),
(4, 'Tom Coulson', '10.7', '1534.00', '0'),
(5, 'Matt Grubb', '8.3', '1209.00', '0'),
(6, 'Peter Monk', '8.0', '1209.00', '0'),
(7, 'Sam Cox', '7.5', '1108.00', '0'),
(8, 'Jamie Griffiths', '7.2', '1066.00', '0'),
(9, 'Mohammed Idress', '7.1', '1050.00', '0'),
(10, 'Alex Richardson', '6.8', '932.00', '0'),
(11, 'Nick Reddish', '6.8', '862.00', '0'),
(12, 'Neil Evans', '6.4', '903.00', '0'),
(13, 'Ryan Humphries', '6.2', '728.00', '0'),
(14, 'Matt Kings', '6.0', '818.00', '0'),
(15, 'Dan Bloomer', '6.0', '643.00', '0'),
(16, 'Jamie Reddish', '5.7', '698.00', '0'),
(17, 'Andrew Apperley', '5.7', '210.00', '0'),
(18, 'Matt Henning', '5.5', '453.00', '0'),
(19, 'Will Davies', '5.4', '476.00', '0'),
(20, 'Josh Stacey', '5.4', '682.00', '0'),
(21, 'Kamran Riaz', '5.3', '195.00', '0'),
(22, 'Ainsley Johnson', '5.2', '572.00', '0'),
(23, 'Frazer Duggan', '4.7', '516.00', '0'),
(24, 'Mohemmed Haroon', '4.7', '46.00', '0'),
(25, 'Paddy Brocklehurst', '4.6', '128.00', '0'),
(26, 'Luke Jackson', '4.5', '475.00', '0'),
(27, 'Andrew Kings', '4.3', '437.00', '0'),
(28, 'Steve Daniels', '4.1', '384.00', '0'),
(29, 'Craig Bird', '3.1', '152.00', '0'),
(30, 'Alex Hardy', '2.4', '109.00', '0'),
(31, 'Ray Mclean', '2.3', '76.00', '0'),
(32, 'Gregg Campbell', '2.2', '91.00', '0'),
(33, 'Tom May', '2.2', '109.00', '0'),
(34, 'Jake Phillips', '2.0', '65.00', '0'),
(35, 'Ben Lester', '2.0', '50.00', '0'),
(36, 'Tom Wormington', '1.7', '50.00', '0'),
(37, 'Rory Grant', '0.8', '12.00', '0'),
(38, 'Alex Robinson', '0.8', '7.00', '0'),
(39, 'Richard East', '0.7', '6.00', '0'),
(40, 'Alex Flangan', '0.6', '-23.00', '0'),
(41, 'Paul Humphries', '0.6', '8.00', '0'),
(42, 'Ross Campbell', '0.5', '5.00', '0'),
(43, 'Patrick Rowe', '0.0', '-12.00', '0'),
(44, 'Carl Richings', '0.0', '-10.00', '0'),
(45, 'Nick Richardson', '0.0', '-10.00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetComplete` varchar(3) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `password`, `email`, `active`, `resetToken`, `resetComplete`) VALUES
(1, '$2y$10$lfE4.pBalP/16yFfEDqtzO6lbtF9/ZYnx4aLs3B9nYSbXUTbhyMki', 'alexfhasdf@sdf.com', 'd344f2c7ebb4fd5cddbf7437aff1e5ec', NULL, 'No'),
(3, '$2y$10$9MExKrU7ehAY357oSLlWW.IlYIZbAXB.O6RNDEy0SC4c3YzjtP81.', 'alexfghardy@gmail.com', 'Yes', '20a7888cf5a0d71f59ba66827d2582a0', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fcc_players`
--
ALTER TABLE `fcc_players`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fcc_players`
--
ALTER TABLE `fcc_players`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
