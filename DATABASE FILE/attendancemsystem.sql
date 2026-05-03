-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 09:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `admin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', '', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classDivId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Id`, `admissionNo`, `classId`, `classDivId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(162, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-01'),
(163, 'HSKSDD', '1', '2', '1', '1', '2020-11-01'),
(164, 'JSLDKJ', '1', '2', '1', '1', '2020-11-01'),
(172, 'HSKDS9EE', '1', '4', '1', '1', '2020-11-01'),
(171, 'JKADA', '1', '4', '1', '0', '2020-11-01'),
(170, 'JSFSKDJ', '1', '4', '1', '1', '2020-11-01'),
(173, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-19'),
(174, 'HSKSDD', '1', '2', '1', '1', '2020-11-19'),
(175, 'JSLDKJ', '1', '2', '1', '1', '2020-11-19'),
(176, 'JSFSKDJ', '1', '4', '1', '0', '2021-07-15'),
(177, 'JKADA', '1', '4', '1', '0', '2021-07-15'),
(178, 'HSKDS9EE', '1', '4', '1', '0', '2021-07-15'),
(179, 'ASDFLKJ', '1', '2', '1', '0', '2021-09-27'),
(180, 'HSKSDD', '1', '2', '1', '1', '2021-09-27'),
(181, 'JSLDKJ', '1', '2', '1', '1', '2021-09-27'),
(182, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-06'),
(183, 'HSKSDD', '1', '2', '1', '0', '2021-10-06'),
(184, 'JSLDKJ', '1', '2', '1', '1', '2021-10-06'),
(185, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-07'),
(186, 'HSKSDD', '1', '2', '1', '0', '2021-10-07'),
(187, 'JSLDKJ', '1', '2', '1', '0', '2021-10-07'),
(188, 'AMS110', '4', '6', '1', '1', '2021-10-07'),
(189, 'AMS133', '4', '6', '1', '0', '2021-10-07'),
(190, 'AMS135', '4', '6', '1', '0', '2021-10-07'),
(191, 'AMS144', '4', '6', '1', '1', '2021-10-07'),
(192, 'AMS148', '4', '6', '1', '0', '2021-10-07'),
(193, 'AMS151', '4', '6', '1', '1', '2021-10-07'),
(194, 'AMS159', '4', '6', '1', '1', '2021-10-07'),
(195, 'AMS161', '4', '6', '1', '1', '2021-10-07'),
(196, 'AMS110', '4', '6', '1', '1', '2022-06-06'),
(197, 'AMS133', '4', '6', '1', '0', '2022-06-06'),
(198, 'AMS135', '4', '6', '1', '0', '2022-06-06'),
(199, 'AMS144', '4', '6', '1', '1', '2022-06-06'),
(200, 'AMS148', '4', '6', '1', '0', '2022-06-06'),
(201, 'AMS151', '4', '6', '1', '1', '2022-06-06'),
(202, 'AMS159', '4', '6', '1', '1', '2022-06-06'),
(203, 'AMS161', '4', '6', '1', '1', '2022-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `class` (`Id`, `className`) VALUES
(1, 'Seven'),
(3, 'Eight'),
(4, 'Nine');

-- --------------------------------------------------------

--
-- Table structure for table `classdIV`
--

CREATE TABLE `classDiv` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classDivName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classDiv`
--

INSERT INTO `classDiv` (`Id`, `classId`, `classDivName`, `isAssigned`) VALUES
(2, '1', 'S1', '1'),
(4, '1', 'S2', '1'),
(5, '3', 'E1', '1'),
(6, '4', 'N1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `classteacher`
--

CREATE TABLE `classteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classDivId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `classteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classDivId`, `dateCreated`) VALUES
(1, 'temp', 'user', 'teacher2@mail.com', '32250170a0dca92d53ec9624f336ca24', '09089898999', '1', '2', '2022-10-31'),
(4, 'Punvesh', 'velip', 'teacher3@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09672002882', '1', '4', '2022-11-01'),
(5, 'Aarth', 'vajander', 'teacher4@mail.com', '32250170a0dca92d53ec9624f336ca24', '7014560000', '3', '5', '2022-10-07'),
(6, 'Anuj', 'Gaude', 'teacher@mail.com', '32250170a0dca92d53ec9624f336ca24', '0100000030', '4', '6', '2022-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `sessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessionterm`
--

INSERT INTO `sessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `students` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classDivId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--
INSERT INTO `students` (`Id`, `firstName`, `lastName`, `admissionNumber`, `password`, `classId`, `classDivId`, `dateCreated`) VALUES
(1, 'Ansh', 'Naik', 'AMS005', '12345', '1', '2', '2022-10-31'),
(3, 'Samuel', 'Fernandes', 'AMS007', '12345', '1', '2', '2022-10-31'),
(4, 'Rohidas', 'Gaonkar', 'AMS011', '12345', '1', '2', '2022-10-31'),
(5, 'Pranav', 'Kerkar', 'AMS012', '12345', '1', '4', '2022-10-31'),
(6, 'Ashden', 'Mascarenhas', 'AMS015', '12345', '1', '4', '2022-10-31'),
(7, 'Sumukh', 'Prabhu',  'AMS017', '12345', '1', '4', '2022-10-31'),
(8, 'Om', 'Parab', 'AMS019', '12345', '3', '5', '2022-10-31'),
(9, 'Jay', 'Rane',  'AMS021', '12345', '3', '5', '2022-10-31'),
(10, 'Jethalal', 'Gada', 'AMS110', '12345', '4', '6', '2022-10-07'),
(11, 'Tarak', 'Mehta','AMS133', '12345', '4', '6', '2022-10-07'),
(12, 'Atamaram', 'Bidhe','AMS135', '12345', '4', '6', '2022-10-07'),
(13, 'Shavan', 'Arlkar','AMS144', '12345', '4', '6', '2022-10-07'),
(14, 'Yash', 'Raikar','AMS148', '12345', '4', '6', '2022-10-07'),
(15, 'James', 'Bond','AMS151', '12345', '4', '6', '2022-10-07'),
(16, 'Virat', 'Kohli','AMS159', '12345', '4', '6', '2022-10-07'),
(17, 'Ms', 'Dhoni', 'AMS161', '12345', '4', '6', '2022-10-07');


-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `classDiv`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `classteacher`
--
ALTER TABLE `classteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sessionterm`
--
ALTER TABLE `sessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `class`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `classDiv`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classteacher`
--
ALTER TABLE `classteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sessionterm`
--
ALTER TABLE `sessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



