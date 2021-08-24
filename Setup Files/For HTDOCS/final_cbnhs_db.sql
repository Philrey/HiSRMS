-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 06:55 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_cbnhs_db`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getLastDay` (`dateEntered` DATE) RETURNS VARCHAR(25) CHARSET latin1 RETURN LAST_DAY(dateEntered)$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getStartingDay` (`dateEntered` DATE) RETURNS VARCHAR(25) CHARSET latin1 RETURN DAYNAME(dateEntered)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT 'Present',
  `dateAdded` datetime NOT NULL,
  `notes` varchar(1000) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `studentId`, `sectionId`, `subjectId`, `status`, `dateAdded`, `notes`) VALUES
(28, 6, 7, 52, 'Absent', '2020-02-10 17:52:45', 'Notes'),
(29, 3, 7, 52, 'Present', '2020-02-10 17:52:45', 'Notes'),
(30, 5, 7, 52, 'Absent', '2020-02-10 17:52:45', 'Notes'),
(31, 8, 7, 52, 'Present', '2020-02-10 17:52:45', 'Notes'),
(32, 7, 7, 52, 'Present', '2020-02-10 17:52:45', 'Notes'),
(33, 6, 8, 53, 'Present', '2020-02-11 16:40:58', 'Notes'),
(34, 4, 8, 53, 'Present', '2020-02-11 16:40:58', 'Notes'),
(35, 1, 8, 53, 'Present', '2020-02-11 16:40:58', 'Notes'),
(36, 6, 8, 27, 'Absent', '2020-02-11 16:56:46', 'Notes'),
(37, 4, 8, 27, 'Present', '2020-02-11 16:56:46', 'Notes'),
(38, 1, 8, 27, 'Present', '2020-02-11 16:56:46', 'Notes'),
(40, 3, 7, 13, 'Present', '2020-02-12 15:30:12', 'Notes'),
(41, 5, 7, 13, 'Present', '2020-02-12 15:30:12', 'Notes'),
(42, 8, 7, 13, 'Present', '2020-02-12 15:30:12', 'Notes'),
(43, 7, 7, 13, 'Present', '2020-02-12 15:30:12', 'Notes'),
(44, 6, 8, 53, 'Present', '2020-02-14 10:41:00', 'Notes'),
(45, 4, 8, 53, 'Absent', '2020-02-14 10:41:00', 'Notes'),
(46, 1, 8, 53, 'Tardy', '2020-02-14 10:41:00', 'Arrived 20 minutes Late'),
(47, 6, 7, 52, 'Tardy', '2020-02-10 07:31:00', 'Notes'),
(48, 6, 7, 52, 'Tardy', '2020-02-11 10:51:38', 'Notes'),
(49, 3, 7, 52, 'Tardy', '2020-02-11 10:51:38', 'LC:Late by 20 minutes from the sound of the bell. Lol Hahaha'),
(50, 5, 7, 52, 'Absent', '2020-02-11 10:51:38', 'Notes'),
(51, 8, 7, 52, 'Present', '2020-02-11 10:51:38', 'Notes'),
(52, 7, 7, 52, 'Absent', '2020-02-11 10:51:38', 'Notes'),
(53, 6, 7, 52, 'Absent', '2020-02-12 12:34:46', 'Notes'),
(54, 3, 7, 52, 'Absent', '2020-02-12 12:34:46', 'Gave excuse letter sent by parent.'),
(55, 5, 7, 52, 'Absent', '2020-02-12 12:34:46', 'Notes'),
(56, 8, 7, 52, 'Absent', '2020-02-12 12:34:46', 'Notes'),
(57, 7, 7, 52, 'Absent', '2020-02-12 12:34:46', 'Notes'),
(58, 6, 7, 52, 'Present', '2020-02-13 16:23:42', 'Notes'),
(59, 3, 7, 52, 'Present', '2020-02-13 16:23:42', 'Notes'),
(60, 5, 7, 52, 'Present', '2020-02-13 16:23:42', 'Notes'),
(61, 8, 7, 52, 'Absent', '2020-02-13 16:23:42', 'Notes'),
(62, 7, 7, 52, 'Present', '2020-02-13 16:23:42', 'Notes'),
(78, 1, 7, 52, 'Present', '2020-10-13 08:15:00', 'Cutting Classes'),
(79, 3, 7, 52, 'Present', '2020-10-13 08:15:00', 'Gave Excuse Letter'),
(80, 1, 7, 52, 'Present', '2020-10-12 17:39:55', ' '),
(81, 3, 7, 52, 'Tardy', '2020-10-12 17:39:55', 'LC:Hay nako...Mata pud ug sayo oi..hahahaha'),
(82, 1, 7, 52, 'Present', '2020-11-13 08:30:43', 'Tardy'),
(83, 3, 7, 52, 'Absent', '2020-11-13 08:30:43', 'Tards'),
(84, 1, 7, 52, 'Absent', '2020-11-16 19:00:41', ' '),
(85, 3, 7, 52, 'Present', '2020-11-16 19:00:41', ' '),
(86, 1, 7, 52, 'Absent', '2020-02-17 08:00:00', ' '),
(87, 3, 7, 52, 'Present', '2020-02-17 08:00:00', ' '),
(88, 1, 7, 52, 'Present', '2020-11-27 10:52:05', ' '),
(89, 3, 7, 52, 'Tardy', '2020-11-27 10:52:05', 'LC: 20 mins late'),
(90, 1, 7, 52, 'Tardy', '2020-11-17 08:15:00', 'CC: Caught Inside Internet Cafe'),
(91, 3, 7, 52, 'Present', '2020-11-17 08:15:00', ' '),
(92, 3, 7, 52, 'Absent', '2021-03-10 16:12:03', ' '),
(93, 1, 7, 52, 'Absent', '2021-03-10 16:12:03', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `bmi`
--

CREATE TABLE `bmi` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `age` varchar(10) NOT NULL DEFAULT 'Unmeasured',
  `weight` int(11) NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `heightSq` varchar(20) NOT NULL DEFAULT '0',
  `bmi` float NOT NULL DEFAULT '0',
  `bmiForAge` varchar(20) NOT NULL DEFAULT 'Unmeasured',
  `heightForAge` varchar(20) NOT NULL DEFAULT 'Unmeasured',
  `dateExamined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmi`
--

INSERT INTO `bmi` (`id`, `studentId`, `sectionId`, `age`, `weight`, `height`, `heightSq`, `bmi`, `bmiForAge`, `heightForAge`, `dateExamined`) VALUES
(1, 1, 7, '15: 10', 40, 1.5, '2.2500', 17.7, 'Normal', 'Stunted', '2020-01-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bmichart_female`
--

CREATE TABLE `bmichart_female` (
  `id` int(11) NOT NULL,
  `yearMonth` varchar(10) NOT NULL,
  `months` int(11) NOT NULL,
  `swTo` double NOT NULL,
  `wsTo` double NOT NULL,
  `nrmTo` double NOT NULL,
  `ovwTo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmichart_female`
--

INSERT INTO `bmichart_female` (`id`, `yearMonth`, `months`, `swTo`, `wsTo`, `nrmTo`, `ovwTo`) VALUES
(1, '11: 0', 132, 12.7, 13.9, 23.7, 30.2),
(2, '11: 1', 133, 12.8, 13.9, 23.8, 30.3),
(3, '11: 2', 134, 12.8, 14, 23.9, 30.5),
(4, '11: 3', 135, 12.8, 14, 24, 30.6),
(5, '11: 4', 136, 12.9, 14, 24.1, 30.8),
(6, '11: 5', 137, 12.9, 14.1, 24.2, 30.9),
(7, '11: 6', 138, 12.9, 14.1, 24.3, 31.1),
(8, '11: 7', 139, 13, 14.2, 24.4, 31.2),
(9, '11: 8', 140, 13, 14.2, 24.5, 31.4),
(10, '11: 9', 141, 13, 14.3, 24.7, 31.5),
(11, '11: 10', 142, 13.1, 14.3, 24.8, 31.6),
(12, '11: 11', 143, 13.1, 14.3, 24.9, 31.8),
(13, '12: 0', 144, 13.2, 14.4, 25, 31.9),
(14, '12: 1', 145, 13.2, 14.4, 25.1, 32),
(15, '12: 2', 146, 13.2, 14.5, 25.2, 32.2),
(16, '12: 3', 147, 13.3, 14.5, 25.3, 32.3),
(17, '12: 4', 148, 13.3, 14.6, 25.4, 32.4),
(18, '12: 5', 149, 13.3, 14.6, 25.5, 32.6),
(19, '12: 6', 150, 13.4, 14.7, 25.6, 32.7),
(20, '12: 7', 151, 13.4, 14.7, 25.7, 32.8),
(21, '12: 8', 152, 13.5, 14.8, 25.8, 33),
(22, '12: 9', 153, 13.5, 14.8, 25.9, 33.1),
(23, '12: 10', 154, 13.5, 14.8, 26, 33.2),
(24, '12: 11', 155, 13.6, 14.9, 26.1, 33.3),
(25, '13: 0', 156, 13.6, 14.9, 26.2, 33.4),
(26, '13: 1', 157, 13.6, 15, 26.3, 33.6),
(27, '13: 2', 158, 13.7, 15, 26.4, 33.7),
(28, '13: 3', 159, 13.7, 15.1, 26.5, 33.8),
(29, '13: 4', 160, 13.8, 15.1, 26.6, 33.9),
(30, '13: 5', 161, 13.8, 15.2, 26.7, 34),
(31, '13: 6', 162, 13.8, 15.2, 26.8, 34.1),
(32, '13: 7', 163, 13.9, 15.2, 26.9, 34.2),
(33, '13: 8', 164, 13.9, 15.3, 27, 34.3),
(34, '13: 9', 165, 13.9, 15.3, 27.1, 34.4),
(35, '13: 10', 166, 14, 15.4, 27.1, 34.5),
(36, '13: 11', 167, 14, 15.4, 27.2, 34.6),
(37, '14: 0', 168, 14, 15.4, 27.3, 34.7),
(38, '14: 1', 169, 14.1, 15.5, 27.4, 34.7),
(39, '14: 2', 170, 14.1, 15.5, 27.5, 34.8),
(40, '14: 3', 171, 14.1, 15.6, 27.6, 34.9),
(41, '14: 4', 172, 14.1, 15.6, 27.7, 35),
(42, '14: 5', 173, 14.2, 15.6, 27.7, 35.1),
(43, '14: 6', 174, 14.2, 15.7, 27.8, 35.1),
(44, '14: 7', 175, 14.2, 15.7, 27.9, 35.2),
(45, '14: 8', 176, 14.3, 15.7, 28, 35.3),
(46, '14: 9', 177, 14.3, 15.8, 28, 35.4),
(47, '14: 10', 178, 14.3, 15.8, 28.1, 35.4),
(48, '14: 11', 179, 14.3, 15.8, 28.2, 35.5),
(49, '15: 0', 180, 14.4, 15.9, 28.2, 35.5),
(50, '15: 1', 181, 14.4, 15.9, 28.3, 35.6),
(51, '15: 2', 182, 14.4, 15.9, 28.4, 35.7),
(52, '15: 3', 183, 14.4, 16, 28.4, 35.7),
(53, '15: 4', 184, 14.5, 16, 28.5, 35.8),
(54, '15: 5', 185, 14.5, 16, 28.5, 35.8),
(55, '15: 6', 186, 14.5, 16, 28.6, 35.8),
(56, '15: 7', 187, 14.5, 16.1, 28.6, 35.9),
(57, '15: 8', 188, 14.5, 16.1, 28.7, 35.9),
(58, '15: 9', 189, 14.5, 16.1, 28.7, 36),
(59, '15: 10', 190, 14.6, 16.1, 28.8, 36),
(60, '15: 11', 191, 14.6, 16.2, 28.8, 36),
(61, '16: 0', 192, 14.6, 16.2, 28.9, 36.1),
(62, '16: 1', 193, 14.6, 16.2, 28.9, 36.1),
(63, '16: 2', 194, 14.6, 16.2, 29, 36.1),
(64, '16: 3', 195, 14.6, 16.2, 29, 36.1),
(65, '16: 4', 196, 14.6, 16.2, 29, 36.2),
(66, '16: 5', 197, 14.6, 16.3, 29.1, 36.2),
(67, '16: 6', 198, 14.7, 16.3, 29.1, 36.2),
(68, '16: 7', 199, 14.7, 16.3, 29.1, 36.2),
(69, '16: 8', 200, 14.7, 16.3, 29.2, 36.2),
(70, '16: 9', 201, 14.7, 16.3, 29.2, 36.3),
(71, '16: 10', 202, 14.7, 16.3, 29.2, 36.3),
(72, '16: 11', 203, 14.7, 16.3, 29.3, 36.3),
(73, '17: 0', 204, 14.7, 16.4, 29.3, 36.3),
(74, '17: 1', 205, 14.7, 16.4, 29.3, 36.3),
(75, '17: 2', 206, 14.7, 16.4, 29.3, 36.3),
(76, '17: 3', 207, 14.7, 16.4, 29.4, 36.3),
(77, '17: 4', 208, 14.7, 16.4, 29.4, 36.3),
(78, '17: 5', 209, 14.7, 16.4, 29.4, 36.3),
(79, '17: 6', 210, 14.7, 16.4, 29.4, 36.3),
(80, '17: 7', 211, 14.7, 16.4, 29.4, 36.3),
(81, '17: 8', 212, 14.7, 16.4, 29.5, 36.3),
(82, '17: 9', 213, 14.7, 16.4, 29.5, 36.3),
(83, '17: 10', 214, 14.7, 16.4, 29.5, 36.3),
(84, '17: 11', 215, 14.7, 16.4, 29.5, 36.3),
(85, '18: 0', 216, 14.7, 16.4, 29.5, 36.3),
(86, '18: 1', 217, 14.7, 16.5, 29.5, 36.3),
(87, '18: 2', 218, 14.7, 16.5, 29.6, 36.3),
(88, '18: 3', 219, 14.7, 16.5, 29.6, 36.3),
(89, '18: 4', 220, 14.7, 16.5, 29.6, 36.3),
(90, '18: 5', 221, 14.7, 16.5, 29.6, 36.2),
(91, '18: 6', 222, 14.7, 16.5, 29.6, 36.2),
(92, '18: 7', 223, 14.7, 16.5, 29.6, 36.2),
(93, '18: 8', 224, 14.7, 16.5, 29.6, 36.2),
(94, '18: 9', 225, 14.7, 16.5, 29.6, 36.2),
(95, '18: 10', 226, 14.7, 16.5, 29.6, 36.2),
(96, '18: 11', 227, 14.7, 16.5, 29.7, 36.2),
(97, '19: 0', 228, 14.7, 16.5, 29.7, 36.2);

-- --------------------------------------------------------

--
-- Table structure for table `bmichart_male`
--

CREATE TABLE `bmichart_male` (
  `id` int(11) NOT NULL,
  `yearMonth` varchar(10) NOT NULL,
  `months` int(11) NOT NULL,
  `swTo` double NOT NULL,
  `wsTo` double NOT NULL,
  `nrmTo` double NOT NULL,
  `ovwTo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmichart_male`
--

INSERT INTO `bmichart_male` (`id`, `yearMonth`, `months`, `swTo`, `wsTo`, `nrmTo`, `ovwTo`) VALUES
(1, '11: 0', 132, 13.1, 14.1, 22.5, 28),
(2, '11: 1', 133, 13.1, 14.1, 22.5, 28.2),
(3, '11: 2', 134, 13.1, 14.1, 22.6, 28.4),
(4, '11: 3', 135, 13.1, 14.1, 22.7, 28.5),
(5, '11: 4', 136, 13.2, 14.2, 22.8, 28.7),
(6, '11: 5', 137, 13.2, 14.2, 22.9, 28.8),
(7, '11: 6', 138, 13.2, 14.2, 23, 29),
(8, '11: 7', 139, 13.2, 14.3, 23.1, 29.2),
(9, '11: 8', 140, 13.3, 14.3, 23.2, 29.3),
(10, '11: 9', 141, 13.3, 14.3, 23.3, 29.5),
(11, '11: 10', 142, 13.3, 14.4, 23.4, 29.6),
(12, '11: 11', 143, 13.4, 14.4, 23.5, 29.8),
(13, '12: 0', 144, 13.4, 14.5, 23.6, 30),
(14, '12: 1', 145, 13.4, 14.5, 23.7, 30.1),
(15, '12: 2', 146, 13.5, 14.5, 23.8, 30.3),
(16, '12: 3', 147, 13.5, 14.6, 23.9, 30.4),
(17, '12: 4', 148, 13.5, 14.6, 24, 30.6),
(18, '12: 5', 149, 13.6, 14.6, 24.1, 30.7),
(19, '12: 6', 150, 13.6, 14.7, 24.2, 30.9),
(20, '12: 7', 151, 13.6, 14.7, 24.3, 31),
(21, '12: 8', 152, 13.7, 14.8, 24.4, 31.1),
(22, '12: 9', 153, 13.7, 14.8, 24.5, 31.3),
(23, '12: 10', 154, 13.7, 14.8, 24.6, 31.4),
(24, '12: 11', 155, 13.8, 14.9, 24.7, 31.6),
(25, '13: 0', 156, 13.8, 14.9, 24.8, 31.7),
(26, '13: 1', 157, 13.8, 15, 24.9, 31.8),
(27, '13: 2', 158, 13.9, 15, 25, 31.9),
(28, '13: 3', 159, 13.9, 15.1, 25.1, 32.1),
(29, '13: 4', 160, 14, 15.1, 25.2, 32.2),
(30, '13: 5', 161, 14, 15.2, 25.2, 32.3),
(31, '13: 6', 162, 14, 15.2, 25.3, 32.4),
(32, '13: 7', 163, 14.1, 15.2, 25.4, 32.6),
(33, '13: 8', 164, 14.1, 15.3, 25.5, 32.7),
(34, '13: 9', 165, 14.1, 15.3, 25.6, 32.8),
(35, '13: 10', 166, 14.2, 15.4, 25.7, 32.9),
(36, '13: 11', 167, 14.2, 15.4, 25.8, 33),
(37, '14: 0', 168, 14.3, 15.5, 25.9, 33.1),
(38, '14: 1', 169, 14.3, 15.5, 26, 33.2),
(39, '14: 2', 170, 14.3, 15.6, 26.1, 33.3),
(40, '14: 3', 171, 14.4, 15.6, 26.2, 33.4),
(41, '14: 4', 172, 14.4, 15.7, 26.3, 33.5),
(42, '14: 5', 173, 14.5, 15.7, 26.4, 33.5),
(43, '14: 6', 174, 14.5, 15.7, 26.5, 33.6),
(44, '14: 7', 175, 14.5, 15.8, 26.5, 33.7),
(45, '14: 8', 176, 14.6, 15.8, 26.6, 33.8),
(46, '14: 9', 177, 14.6, 15.9, 26.7, 33.9),
(47, '14: 10', 178, 14.6, 15.9, 26.8, 33.9),
(48, '14: 11', 179, 14.7, 16, 26.9, 34),
(49, '15: 0', 180, 14.7, 16, 27, 34.1),
(50, '15: 1', 181, 14.7, 16.1, 27.1, 34.1),
(51, '15: 2', 182, 14.8, 16.1, 27.1, 34.2),
(52, '15: 3', 183, 14.8, 16.1, 27.2, 34.3),
(53, '15: 4', 184, 14.8, 16.2, 27.3, 34.3),
(54, '15: 5', 185, 14.9, 16.2, 27.4, 34.4),
(55, '15: 6', 186, 14.9, 16.3, 27.4, 34.5),
(56, '15: 7', 187, 15, 16.3, 27.5, 34.5),
(57, '15: 8', 188, 15, 16.3, 27.6, 34.6),
(58, '15: 9', 189, 15, 16.4, 27.7, 34.6),
(59, '15: 10', 190, 15, 16.4, 27.7, 34.7),
(60, '15: 11', 191, 15.1, 16.5, 27.8, 34.7),
(61, '16: 0', 192, 15.1, 16.5, 27.9, 34.8),
(62, '16: 1', 193, 15.1, 16.5, 27.9, 34.8),
(63, '16: 2', 194, 15.2, 16.6, 28, 34.8),
(64, '16: 3', 195, 15.2, 16.6, 28.1, 34.9),
(65, '16: 4', 196, 15.2, 16.7, 28.1, 34.9),
(66, '16: 5', 197, 15.3, 16.7, 28.2, 35),
(67, '16: 6', 198, 15.3, 16.7, 28.3, 35),
(68, '16: 7', 199, 15.3, 16.8, 28.3, 35),
(69, '16: 8', 200, 15.3, 16.8, 28.4, 35.1),
(70, '16: 9', 201, 15.4, 16.8, 28.5, 35.1),
(71, '16: 10', 202, 15.4, 16.9, 28.5, 35.1),
(72, '16: 11', 203, 15.4, 16.9, 28.6, 35.2),
(73, '17: 0', 204, 15.4, 16.9, 28.6, 35.2),
(74, '17: 1', 205, 15.5, 17, 28.7, 35.2),
(75, '17: 2', 206, 15.5, 17, 28.7, 35.2),
(76, '17: 3', 207, 15.5, 17, 28.8, 35.3),
(77, '17: 4', 208, 15.5, 17.1, 28.9, 35.3),
(78, '17: 5', 209, 15.6, 17.1, 28.9, 35.3),
(79, '17: 6', 210, 15.6, 17.1, 29, 35.3),
(80, '17: 7', 211, 15.6, 17.1, 29, 35.4),
(81, '17: 8', 212, 15.6, 17.2, 29.1, 35.4),
(82, '17: 9', 213, 15.6, 17.2, 29.1, 35.4),
(83, '17: 10', 214, 15.7, 17.2, 29.2, 35.4),
(84, '17: 11', 215, 15.7, 17.3, 29.2, 35.4),
(85, '18: 0', 216, 15.7, 17.3, 29.2, 35.4),
(86, '18: 1', 217, 15.7, 17.3, 29.3, 35.4),
(87, '18: 2', 218, 15.7, 17.3, 29.3, 35.5),
(88, '18: 3', 219, 15.7, 17.4, 29.4, 35.5),
(89, '18: 4', 220, 15.8, 17.4, 29.4, 35.5),
(90, '18: 5', 221, 15.8, 17.4, 29.5, 35.5),
(91, '18: 6', 222, 15.8, 17.4, 29.5, 35.5),
(92, '18: 7', 223, 15.8, 17.5, 29.5, 35.5),
(93, '18: 8', 224, 15.8, 17.5, 29.6, 35.5),
(94, '18: 9', 225, 15.8, 17.5, 29.6, 35.5),
(95, '18: 10', 226, 15.8, 17.5, 29.6, 35.5),
(96, '18: 11', 227, 15.8, 17.5, 29.7, 35.5),
(97, '19: 0', 228, 15.9, 17.6, 29.7, 35.5);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookCode` varchar(30) NOT NULL,
  `bookName` varchar(500) NOT NULL DEFAULT 'Unnamed',
  `gradeLevel` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookCode`, `bookName`, `gradeLevel`) VALUES
(1, 'ENG32', 'English For You And Me 7', 7),
(2, 'MATH32', 'Mathematics in our Daily Lives', 8),
(3, 'FILIPINO-69', 'Wikang Sariling Atin', 7),
(4, 'MATH31', 'Algebra', 7),
(5, 'AP20', 'Araling Panlipunan', 7),
(6, 'ENG31', 'English For Younglings', 8),
(7, 'AP21', 'Philippine History', 8);

-- --------------------------------------------------------

--
-- Table structure for table `booksissuedreturned`
--

CREATE TABLE `booksissuedreturned` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `dateIssued` varchar(30) NOT NULL,
  `dateReturned` varchar(30) NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booksissuedreturned`
--

INSERT INTO `booksissuedreturned` (`id`, `sectionId`, `studentId`, `bookId`, `dateIssued`, `dateReturned`, `dateUpdated`) VALUES
(1, 7, 1, 1, '2020-11-02', 'FM:LLTR', '2021-01-02 12:55:17'),
(2, 7, 1, 3, '2020-11-02', 'NEG', '2021-01-02 12:55:17'),
(3, 7, 1, 4, '2020-11-02', 'NEG:PTL', '2021-01-02 12:55:17'),
(4, 7, 1, 5, '2020-11-02', '2021-01-02', '2021-01-02 12:55:17'),
(5, 7, 3, 1, '2020-11-03', '2021-01-02', '2021-01-02 12:59:03'),
(6, 7, 3, 3, '2020-11-03', '2021-01-02', '2021-01-02 12:59:03'),
(7, 7, 3, 4, '2020-11-03', '2021-01-02', '2021-01-02 12:59:03'),
(8, 7, 3, 5, '2020-11-03', '2021-01-02', '2021-01-02 12:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `booktemplates`
--

CREATE TABLE `booktemplates` (
  `id` int(11) NOT NULL,
  `templateName` varchar(50) NOT NULL,
  `gradeLevel` int(11) NOT NULL,
  `booksContained` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktemplates`
--

INSERT INTO `booktemplates` (`id`, `templateName`, `gradeLevel`, `booksContained`) VALUES
(1, 'Grade 7 Template', 7, '1:4:3:5:'),
(2, 'Grade 8 Template', 8, '7:6:2:'),
(3, 'Grade 9 Template', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `dateEnrolled` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(1000) NOT NULL DEFAULT ' ! !'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `studentId`, `sectionId`, `dateEnrolled`, `remarks`) VALUES
(5, 3, 7, '2019-11-10 21:28:46', 'Yolo 3_7!T/I: 2020-02-01!'),
(9, 1, 8, '2020-01-18 10:24:25', 'Yolo 1_8!T/I: 2020-02-01!'),
(15, 1, 10, '2020-02-12 13:27:51', 'Yolo 1_10!T/I: 2020-02-01!'),
(17, 1, 7, '2020-09-19 12:00:58', 'YoloNew 1_7!T/I: 2020-02-01!'),
(18, 3, 14, '2020-11-03 10:24:59', 'Yolo 3_14!T/I: 2020-02-01!'),
(19, 3, 9, '2020-11-03 10:26:08', 'Yolo 3_9!T/I: 2020-02-01!');

-- --------------------------------------------------------

--
-- Table structure for table `finalgrades`
--

CREATE TABLE `finalgrades` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `generalAverage` double NOT NULL DEFAULT '0',
  `actionTaken` varchar(30) NOT NULL DEFAULT 'Incomplete',
  `failedSubjects` varchar(1000) NOT NULL DEFAULT ' ',
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finalgrades`
--

INSERT INTO `finalgrades` (`id`, `sectionId`, `studentId`, `generalAverage`, `actionTaken`, `failedSubjects`, `dateUpdated`) VALUES
(1, 7, 1, 87.166, 'Promoted', ' ', '2020-11-27 13:10:58'),
(2, 9, 3, 0, 'Incomplete', ' ', '2020-11-22 00:33:46'),
(3, 7, 3, 70.166, 'Incomplete', 'ENG7, MATH7, SCI7, FIL7, AP7, TLE7, MUS7, PE7, HLT7', '2021-01-03 16:45:47');

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf1_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf1_view` (
`id` int(11)
,`studentId` int(11)
,`sectionId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`bDate` date
,`age` int(11)
,`mTongue` varchar(500)
,`ip` varchar(500)
,`rlgn` varchar(500)
,`houseN` varchar(1000)
,`brgy` varchar(200)
,`mncpl` varchar(200)
,`prvnce` varchar(200)
,`fathersName` varchar(500)
,`mothersName` varchar(500)
,`gName` varchar(500)
,`rltnshp` varchar(100)
,`contact` varchar(20)
,`remarks` varchar(1000)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf2_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf2_view` (
`id` int(11)
,`sectionId` int(11)
,`studentId` int(11)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`dateEnrolled` datetime
,`remarks` varchar(1000)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf3_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf3_view` (
`id` int(11)
,`sectionId` int(11)
,`studentId` int(11)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf5_viewfull`
-- (See below for the actual view)
--
CREATE TABLE `form_sf5_viewfull` (
`id` int(11)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`schoolYear` int(11)
,`gradeLevel` int(11)
,`adviserId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`remarks` varchar(1000)
,`generalAverage` double
,`actionTaken` varchar(30)
,`dateUpdated` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf5_viewminimal`
-- (See below for the actual view)
--
CREATE TABLE `form_sf5_viewminimal` (
`id` int(11)
,`sectionId` int(11)
,`gradeLevel` int(11)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`remarks` varchar(1000)
,`generalAverage` double
,`actionTaken` varchar(30)
,`failedSubjects` varchar(1000)
,`dateUpdated` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf7view_loads`
-- (See below for the actual view)
--
CREATE TABLE `form_sf7view_loads` (
`id` int(11)
,`teacherId` int(11)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`schoolYear` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf7view_teachers`
-- (See below for the actual view)
--
CREATE TABLE `form_sf7view_teachers` (
`id` int(11)
,`employeeNumber` varchar(100)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`fundSource` text
,`position` text
,`nature` text
,`degree` text
,`major` text
,`minor` text
,`user_level` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf8_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf8_view` (
`id` int(11)
,`studentId` int(11)
,`sectionId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`bDate` varchar(10)
,`sex` varchar(10)
,`bmiId` bigint(11)
,`age` varchar(10)
,`weight` bigint(11)
,`height` varchar(22)
,`heightSq` varchar(20)
,`bmi` varchar(12)
,`bmiForAge` varchar(20)
,`heightForAge` varchar(20)
,`dateExamined` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf9_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf9_view` (
`id` int(11)
,`studentId` int(11)
,`sectionId` int(11)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`firstQuarter` varchar(11)
,`secondQuarter` varchar(11)
,`thirdQuarter` varchar(11)
,`fourthQuarter` varchar(11)
,`gwa` varchar(11)
,`status` varchar(100)
,`dateUpdated` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form_sf10_view`
-- (See below for the actual view)
--
CREATE TABLE `form_sf10_view` (
`id` int(11)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`adviserId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`loadId` int(11)
,`loadName` varchar(200)
,`gradeLevel` int(11)
,`subjectsContained` varchar(500)
,`schoolYear` int(11)
,`remarks` varchar(1000)
,`dateEnrolled` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `firstQuarter` varchar(11) NOT NULL DEFAULT '',
  `secondQuarter` varchar(11) NOT NULL DEFAULT '',
  `thirdQuarter` varchar(11) NOT NULL DEFAULT '',
  `fourthQuarter` varchar(11) NOT NULL DEFAULT '',
  `gwa` varchar(11) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'Open:Open:Open:Open:Incomplete',
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `studentId`, `sectionId`, `subjectId`, `firstQuarter`, `secondQuarter`, `thirdQuarter`, `fourthQuarter`, `gwa`, `status`, `dateUpdated`) VALUES
(1, 6, 7, 11, '76', '78', '79', '77', '78', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(2, 3, 7, 11, '80', '90', '86', '89', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(3, 5, 7, 11, '75', '80', '90', '95', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(4, 6, 7, 8, '79', '76', '79', '78', '78', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(5, 3, 7, 8, '90', '', '', '', '22', 'Approved:Open:Open:Open:Incomplete:', '2021-07-25 18:43:07'),
(6, 5, 7, 8, '80', '90', '88', '89', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(7, 6, 7, 14, '79', '78', '80', '79', '79', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(8, 6, 7, 17, '78', '78', '78', '81', '79', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(9, 6, 7, 10, '77', '75', '78', '78', '77', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(10, 6, 7, 13, '80', '80', '81', '78', '80', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(11, 6, 7, 16, '75', '77', '79', '79', '78', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(12, 6, 7, 18, '77', '77', '79', '83', '79', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(13, 6, 7, 9, '77', '77', '76', '77', '77', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(14, 6, 7, 12, '77', '78', '76', '77', '77', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(15, 6, 7, 15, '76', '77', '79', '80', '78', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(16, 6, 8, 19, '80', '90', '75', '80', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(17, 6, 8, 23, '88', '79', '80', '85', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(18, 6, 8, 26, '90', '82', '79', '90', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(19, 6, 8, 29, '88', '77', '90', '85', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(20, 6, 8, 20, '75', '80', '85', '90', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(21, 6, 8, 21, '80', '80', '90', '93', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(22, 6, 8, 24, '87', '86', '85', '90', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(23, 6, 8, 28, '80', '80', '83', '84', '82', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(24, 6, 8, 22, '88', '89', '90', '94', '90', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(25, 6, 8, 25, '79', '86', '87', '96', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(26, 6, 8, 27, '80', '86', '88', '95', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(27, 6, 8, 53, '80', '0', '0', '0', '20', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(28, 8, 7, 8, '80', '69', '74', '99', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(29, 9, 9, 8, '90', '90', '88', '96', '91', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(30, 9, 9, 11, '80', '85', '88', '90', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(31, 9, 9, 15, '90', '87', '99', '76', '88', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(32, 9, 9, 18, '90', '80', '76', '88', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(33, 9, 9, 52, '88', '89', '90', '91', '90', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(34, 9, 9, 10, '88', '89', '75', '78', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(35, 9, 9, 12, '88', '89', '90', '88', '89', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(36, 9, 9, 14, '90', '78', '79', '88', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(37, 9, 9, 16, '80', '89', '90', '95', '89', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(38, 9, 9, 9, '95', '80', '95', '98', '92', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(39, 9, 9, 13, '88', '96', '85', '89', '90', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(40, 9, 9, 17, '88', '89', '75', '89', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(41, 7, 7, 8, '80', '80', '80', '80', '80', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(42, 8, 7, 10, '70', '70', '95', '95', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(43, 3, 7, 10, '78', '88', '88', '88', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(44, 5, 7, 10, '80', '80', '80', '85', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(45, 7, 7, 10, '88', '78', '80', '79', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(46, 8, 7, 11, '88', '87', '84', '81', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(47, 7, 7, 11, '78', '77', '79', '90', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(48, 7, 7, 14, '80', '80', '80', '88', '82', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(49, 5, 7, 14, '90', '86', '88', '81', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(50, 3, 7, 14, '78', '88', '79', '86', '83', 'Submitted:Submitted:Submitted:Submitted:Incomplete:', '2021-03-10 16:30:54'),
(51, 8, 7, 14, '90', '91', '75', '99', '89', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(52, 7, 7, 17, '80', '80', '80', '80', '80', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(53, 5, 7, 17, '90', '90', '90', '90', '90', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(54, 3, 7, 17, '80', '80', '90', '85', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(55, 8, 7, 17, '77', '79', '80', '87', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(56, 7, 7, 9, '80', '90', '77', '88', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(57, 5, 7, 9, '80', '88', '86', '78', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(58, 3, 7, 9, '80', '90', '85', '90', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-20 10:59:03'),
(59, 8, 7, 9, '90', '80', '86', '84', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(60, 7, 7, 12, '70', '78', '88', '86', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(61, 5, 7, 12, '80', '88', '87', '87', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(62, 3, 7, 12, '78', '79', '90', '96', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(63, 8, 7, 12, '80', '96', '84', '87', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(64, 7, 7, 16, '79', '78', '99', '76', '83', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(65, 5, 7, 16, '78', '79', '90', '78', '81', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(66, 3, 7, 16, '89', '88', '90', '76', '85', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 21:37:29'),
(67, 8, 7, 16, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(68, 7, 7, 18, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(69, 5, 7, 18, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(70, 3, 7, 18, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-11-27 13:16:15'),
(71, 8, 7, 18, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(72, 7, 7, 13, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(73, 5, 7, 13, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(74, 3, 7, 13, '90', '77', '78', '80', '81', 'Open:Open:Open:Open:Passed:', '2020-11-26 21:38:44'),
(75, 8, 7, 13, '80', '-1', '-1', '-1', '20', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(76, 7, 7, 15, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(77, 5, 7, 15, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(78, 3, 7, 15, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(79, 8, 7, 15, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(80, 6, 10, 32, '90', '90', '90', '90', '90', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(81, 6, 10, 36, '80', '88', '89', '78', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(82, 6, 10, 38, '80', '90', '88', '90', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(83, 6, 10, 30, '80', '90', '88', '87', '86', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(84, 6, 10, 33, '80', '90', '87', '89', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(85, 6, 10, 35, '80', '90', '80', '77', '82', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(86, 6, 10, 37, '80', '90', '77', '89', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(87, 6, 10, 54, '99', '78', '80', '90', '87', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(88, 6, 10, 31, '80', '90', '78', '89', '84', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(89, 6, 10, 34, '80', '90', '87', '99', '89', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(90, 6, 10, 39, '88', '77', '99', '88', '88', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(91, 6, 10, 40, '90', '80', '90', '80', '85', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(92, 1, 8, 22, '99', '99', '99', '99', '99', 'Open:Open:Open:Open:Passed:', '2021-01-08 20:43:15'),
(93, 4, 8, 22, '-1', '-1', '-1', '-1', '0', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(94, 1, 8, 27, '83', '-1', '-1', '-1', '21', 'Open:Open:Open:Open:Incomplete:', '2020-10-18 13:00:30'),
(95, 1, 7, 9, '80', '99', '89', '79', '86', 'Open:Open:Open:Open:Passed:', '2020-11-20 23:36:35'),
(97, 1, 7, 12, '80', '80', '76', '95', '82', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 21:36:21'),
(98, 1, 7, 16, '98', '90', '88', '89', '91', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 21:37:04'),
(99, 1, 7, 13, '98', '89', '76', '90', '88', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 22:01:07'),
(100, 1, 7, 17, '80', '88', '79', '90', '84', 'Open:Open:Open:Open:Passed:', '2020-11-27 13:06:21'),
(101, 1, 7, 14, '88', '87', '90', '85', '87', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-27 13:04:57'),
(102, 1, 7, 18, '90', '90', '95', '92', '91', 'Open:Open:Open:Open:Passed:', '2020-11-27 13:08:33'),
(103, 1, 7, 11, '89', '86', '90', '88', '88', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 21:51:59'),
(104, 1, 7, 15, '80', '88', '96', '80', '86', 'Open:Open:Open:Open:Passed:', '2020-11-27 13:05:53'),
(105, 1, 7, 10, '89', '90', '96', '80', '88', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-26 21:51:00'),
(106, 1, 7, 8, '89', '90', '86', '88', '88', 'Approved:Submitted:Open:Open:Passed:', '2021-07-24 17:10:03'),
(107, 1, 7, 60, '88', '88', '88', '88', '88', 'Closed:Closed:Closed:Closed:Passed:', '2020-11-27 13:09:43'),
(108, 3, 7, 60, '80', '97', '88', '82', '86', 'Open:Open:Open:Open:Passed:', '2020-11-27 13:09:59'),
(111, 3, 9, 14, '', '', '', '', '', 'Open:Open:Open:Open:Incomplete:', '2021-07-04 19:14:00'),
(112, 3, 9, 8, '90', '', '', '', '22', 'Submitted:Open:Open:Open:Incomplete:', '2021-07-06 17:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `hfachart_female`
--

CREATE TABLE `hfachart_female` (
  `id` int(11) NOT NULL,
  `yearMonth` varchar(10) NOT NULL,
  `months` int(11) NOT NULL,
  `ssTo` double NOT NULL,
  `stTo` double NOT NULL,
  `nrmTo` double NOT NULL,
  `tallTo` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hfachart_female`
--

INSERT INTO `hfachart_female` (`id`, `yearMonth`, `months`, `ssTo`, `stTo`, `nrmTo`, `tallTo`) VALUES
(1, '11: 0', 132, 125.1, 131.7, 158.3, 164.9),
(2, '11: 1', 133, 125.5, 132.2, 158.9, 165.5),
(3, '11: 2', 134, 126, 132.7, 159.4, 166.1),
(4, '11: 3', 135, 126.5, 133.2, 160, 166.7),
(5, '11: 4', 136, 127, 133.7, 160.6, 167.3),
(6, '11: 5', 137, 127.4, 134.2, 161.1, 167.9),
(7, '11: 6', 138, 127.9, 134.7, 161.7, 168.4),
(8, '11: 7', 139, 128.4, 135.2, 162.2, 169),
(9, '11: 8', 140, 128.9, 135.7, 162.8, 169.6),
(10, '11: 9', 141, 129.3, 136.1, 163.3, 170.1),
(11, '11: 10', 142, 129.8, 136.6, 163.9, 170.7),
(12, '11: 11', 143, 130.3, 137.1, 164.4, 171.2),
(13, '12: 0', 144, 130.7, 137.6, 164.9, 171.8),
(14, '12: 1', 145, 131.2, 138, 165.4, 172.3),
(15, '12: 2', 146, 131.6, 138.5, 165.9, 172.8),
(16, '12: 3', 147, 132, 138.9, 166.4, 173.3),
(17, '12: 4', 148, 132.5, 139.3, 166.9, 173.8),
(18, '12: 5', 149, 132.9, 139.8, 167.4, 174.3),
(19, '12: 6', 150, 133.3, 140.2, 167.8, 174.7),
(20, '12: 7', 151, 133.7, 140.6, 168.3, 175.2),
(21, '12: 8', 152, 134.1, 141, 168.7, 175.6),
(22, '12: 9', 153, 134.5, 141.4, 169.1, 176),
(23, '12: 10', 154, 134.8, 141.8, 169.5, 176.4),
(24, '12: 11', 155, 135.2, 142.1, 169.9, 176.8),
(25, '13: 0', 156, 135.6, 142.5, 170.3, 177.2),
(26, '13: 1', 157, 135.9, 142.8, 170.6, 177.6),
(27, '13: 2', 158, 136.2, 143.2, 171, 177.9),
(28, '13: 3', 159, 136.5, 143.5, 171.3, 178.2),
(29, '13: 4', 160, 136.9, 143.8, 171.6, 178.6),
(30, '13: 5', 161, 137.2, 144.1, 171.9, 178.9),
(31, '13: 6', 162, 137.4, 144.4, 172.2, 179.2),
(32, '13: 7', 163, 137.7, 144.7, 172.5, 179.4),
(33, '13: 8', 164, 138, 144.9, 172.7, 179.7),
(34, '13: 9', 165, 138.2, 145.2, 173, 179.9),
(35, '13: 10', 166, 138.5, 145.4, 173.2, 180.2),
(36, '13: 11', 167, 138.7, 145.7, 173.5, 180.4),
(37, '14: 0', 168, 139, 145.9, 173.7, 180.6),
(38, '14: 1', 169, 139.2, 146.1, 173.9, 180.8),
(39, '14: 2', 170, 139.4, 146.3, 174.1, 181),
(40, '14: 3', 171, 139.6, 146.5, 174.2, 181.2),
(41, '14: 4', 172, 139.8, 146.7, 174.4, 181.3),
(42, '14: 5', 173, 140, 146.9, 174.6, 181.5),
(43, '14: 6', 174, 140.1, 147.1, 174.7, 181.6),
(44, '14: 7', 175, 140.3, 147.2, 174.9, 181.8),
(45, '14: 8', 176, 140.5, 147.4, 175, 181.9),
(46, '14: 9', 177, 140.6, 147.5, 175.1, 182),
(47, '14: 10', 178, 140.8, 147.7, 175.2, 182.1),
(48, '14: 11', 179, 140.9, 147.8, 175.3, 182.2),
(49, '15: 0', 180, 141, 147.9, 175.4, 182.3),
(50, '15: 1', 181, 141.2, 148, 175.5, 182.4),
(51, '15: 2', 182, 141.3, 148.1, 175.6, 182.5),
(52, '15: 3', 183, 141.4, 148.2, 175.7, 182.5),
(53, '15: 4', 184, 141.5, 148.3, 175.7, 182.6),
(54, '15: 5', 185, 141.6, 148.4, 175.8, 182.6),
(55, '15: 6', 186, 141.7, 148.5, 175.9, 182.7),
(56, '15: 7', 187, 141.8, 148.6, 175.9, 182.7),
(57, '15: 8', 188, 141.9, 148.7, 176, 182.8),
(58, '15: 9', 189, 141.9, 148.7, 176, 182.8),
(59, '15: 10', 190, 142, 148.8, 176, 182.8),
(60, '15: 11', 191, 142.1, 148.9, 176.1, 182.9),
(61, '16: 0', 192, 142.2, 148.9, 176.1, 182.9),
(62, '16: 1', 193, 142.2, 149, 176.1, 182.9),
(63, '16: 2', 194, 142.3, 149.1, 176.1, 182.9),
(64, '16: 3', 195, 142.3, 149.1, 176.2, 182.9),
(65, '16: 4', 196, 142.4, 149.2, 176.2, 182.9),
(66, '16: 5', 197, 142.4, 149.2, 176.2, 182.9),
(67, '16: 6', 198, 142.5, 149.2, 176.2, 182.9),
(68, '16: 7', 199, 142.5, 149.3, 176.2, 182.9),
(69, '16: 8', 200, 142.6, 149.3, 176.2, 182.9),
(70, '16: 9', 201, 142.6, 149.4, 176.2, 182.9),
(71, '16: 10', 202, 142.7, 149.4, 176.2, 182.9),
(72, '16: 11', 203, 142.7, 149.4, 176.2, 182.9),
(73, '17: 0', 204, 142.8, 149.5, 176.2, 182.9),
(74, '17: 1', 205, 142.8, 149.5, 176.2, 182.9),
(75, '17: 2', 206, 142.9, 149.5, 176.2, 182.9),
(76, '17: 3', 207, 142.9, 149.6, 176.3, 182.9),
(77, '17: 4', 208, 142.9, 149.6, 176.3, 182.9),
(78, '17: 5', 209, 143, 149.6, 176.3, 182.9),
(79, '17: 6', 210, 143, 149.7, 176.3, 182.9),
(80, '17: 7', 211, 143.1, 149.7, 176.3, 182.9),
(81, '17: 8', 212, 143.1, 149.7, 176.3, 182.9),
(82, '17: 9', 213, 143.1, 149.8, 176.3, 182.9),
(83, '17: 10', 214, 143.2, 149.8, 176.3, 182.9),
(84, '17: 11', 215, 143.2, 149.8, 176.3, 182.9),
(85, '18: 0', 216, 143.2, 149.8, 176.3, 182.9),
(86, '18: 1', 217, 143.3, 149.9, 176.3, 182.9),
(87, '18: 2', 218, 143.3, 149.9, 176.3, 182.9),
(88, '18: 3', 219, 143.3, 149.9, 176.3, 182.9),
(89, '18: 4', 220, 143.4, 149.9, 176.3, 182.9),
(90, '18: 5', 221, 143.4, 150, 176.3, 182.9),
(91, '18: 6', 222, 143.4, 150, 176.3, 182.9),
(92, '18: 7', 223, 143.4, 150, 176.3, 182.8),
(93, '18: 8', 224, 143.5, 150, 176.3, 182.8),
(94, '18: 9', 225, 143.5, 150, 176.3, 182.8),
(95, '18: 10', 226, 143.5, 150, 176.3, 182.8),
(96, '18: 11', 227, 143.5, 150.1, 176.2, 182.8),
(97, '19: 0', 228, 143.5, 150.1, 176.2, 182.8);

-- --------------------------------------------------------

--
-- Table structure for table `hfachart_male`
--

CREATE TABLE `hfachart_male` (
  `id` int(11) NOT NULL,
  `yearMonth` varchar(10) NOT NULL,
  `months` int(11) NOT NULL,
  `ssTo` double NOT NULL,
  `stTo` double NOT NULL,
  `nrmTo` double NOT NULL,
  `tallTo` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hfachart_male`
--

INSERT INTO `hfachart_male` (`id`, `yearMonth`, `months`, `ssTo`, `stTo`, `nrmTo`, `tallTo`) VALUES
(1, '11: 0', 132, 122.9, 129.7, 156.6, 163.3),
(7, '11: 1', 133, 123.3, 130.1, 157.1, 163.9),
(8, '11: 2', 134, 123.7, 130.5, 157.6, 164.4),
(9, '11: 3', 135, 124.1, 130.9, 158.2, 165),
(10, '11: 4', 136, 124.5, 131.3, 158.7, 165.6),
(11, '11: 5', 137, 124.9, 131.7, 159.3, 166.1),
(12, '12: 0', 144, 127.8, 134.9, 163.3, 170.3),
(13, '12: 1', 145, 128.3, 135.4, 163.9, 171),
(14, '12: 2', 146, 128.7, 135.9, 164.5, 171.6),
(15, '12: 3', 147, 129.2, 136.4, 165.1, 172.2),
(16, '12: 4', 148, 129.7, 136.9, 165.7, 172.9),
(17, '12: 5', 149, 130.2, 137.4, 166.3, 173.6),
(18, '12: 6', 150, 130.7, 137.9, 167, 174.2),
(19, '12: 7', 151, 131.2, 138.5, 167.6, 174.9),
(20, '12: 8', 152, 131.7, 139, 168.3, 175.6),
(21, '12: 9', 153, 132.2, 139.5, 168.9, 176.3),
(22, '12: 10', 154, 132.7, 140.1, 169.6, 176.9),
(23, '12: 11', 155, 133.2, 140.6, 170.2, 177.6),
(24, '13: 0', 156, 133.8, 141.2, 170.9, 178.3),
(25, '13: 1', 157, 134.3, 141.7, 171.6, 179),
(26, '13: 2', 158, 134.8, 142.3, 172.2, 179.7),
(27, '13: 3', 159, 135.4, 142.9, 172.9, 180.4),
(28, '13: 4', 160, 135.9, 143.4, 173.5, 181.1),
(29, '13: 5', 161, 136.4, 144, 174.2, 181.8),
(30, '13: 6', 162, 137, 144.5, 174.8, 182.4),
(31, '13: 7', 163, 137.5, 145.1, 175.5, 183.1),
(32, '13: 8', 164, 138, 145.7, 176.1, 183.7),
(33, '13: 9', 165, 138.6, 146.2, 176.7, 184.4),
(34, '13: 10', 166, 139.1, 146.7, 177.4, 185),
(35, '13: 11', 167, 139.6, 147.3, 178, 185.6),
(36, '14: 0', 168, 140.1, 147.8, 178.6, 186.3),
(37, '14: 1', 169, 140.6, 148.3, 179.1, 186.9),
(38, '14: 2', 170, 141.1, 148.8, 179.7, 187.4),
(39, '14: 3', 171, 141.6, 149.3, 180.3, 188),
(40, '14: 4', 172, 142.1, 149.8, 180.8, 188.6),
(41, '14: 5', 173, 142.5, 150.3, 181.3, 189.1),
(42, '14: 6', 174, 143, 150.8, 181.8, 189.6),
(43, '14: 7', 175, 143.4, 151.2, 182.3, 190.1),
(44, '14: 8', 176, 143.9, 151.7, 182.8, 190.6),
(45, '14: 9', 177, 144.3, 152.1, 183.3, 191.1),
(46, '14: 10', 178, 144.7, 152.5, 183.7, 191.5),
(47, '14: 11', 179, 145.1, 152.9, 184.1, 191.9),
(48, '15: 0', 180, 145.5, 153.4, 184.6, 192.4),
(49, '15: 1', 181, 145.9, 153.7, 185, 192.8),
(50, '15: 2', 182, 146.3, 154.1, 185.4, 193.2),
(51, '15: 3', 183, 146.7, 154.5, 185.7, 193.5),
(52, '15: 4', 184, 147.1, 154.9, 186.1, 193.9),
(53, '15: 5', 185, 147.4, 155.2, 186.4, 194.2),
(54, '15: 6', 186, 147.7, 155.5, 186.8, 194.6),
(55, '15: 7', 187, 148.1, 155.9, 187.1, 194.9),
(56, '15: 8', 188, 148.4, 156.2, 187.4, 195.2),
(57, '15: 9', 189, 148.7, 156.5, 187.7, 195.4),
(58, '15: 10', 190, 149, 156.8, 187.9, 195.7),
(59, '15: 11', 191, 149.3, 157.1, 188.2, 196),
(60, '16: 0', 192, 149.6, 157.4, 188.4, 196.2),
(61, '16: 1', 193, 149.9, 157.6, 188.7, 196.4),
(62, '16: 2', 194, 150.1, 157.9, 188.9, 196.7),
(63, '16: 3', 195, 150.4, 158.1, 189.1, 196.9),
(64, '16: 4', 196, 150.6, 158.4, 189.3, 197),
(65, '16: 5', 197, 150.9, 158.6, 189.5, 197.2),
(66, '16: 6', 198, 151.1, 158.8, 189.7, 197.4),
(67, '16: 7', 199, 151.3, 159, 189.8, 197.5),
(68, '16: 8', 200, 151.5, 159.2, 190, 197.7),
(69, '16: 9', 201, 151.7, 159.4, 190.1, 197.8),
(70, '16: 10', 202, 151.9, 159.6, 190.2, 197.9),
(71, '16: 11', 203, 152.1, 159.7, 190.3, 198),
(72, '17: 0', 204, 152.2, 159.9, 190.4, 198.1),
(73, '17: 1', 205, 152.4, 160, 190.5, 198.2),
(74, '17: 2', 206, 152.5, 160.2, 190.6, 198.2),
(75, '17: 3', 207, 152.7, 160.3, 190.7, 198.3),
(76, '17: 4', 208, 152.8, 160.4, 190.8, 198.4),
(77, '17: 5', 209, 153, 160.5, 190.8, 198.4),
(78, '17: 6', 210, 153.1, 160.6, 190.9, 198.4),
(79, '17: 7', 211, 153.2, 160.8, 190.9, 198.5),
(80, '17: 8', 212, 153.3, 160.9, 191, 198.5),
(81, '17: 9', 213, 153.4, 160.9, 91, 198.5),
(82, '17: 10', 214, 153.5, 161, 191, 198.5),
(83, '17: 11', 215, 153.6, 161.1, 191.1, 198.6),
(84, '18: 0', 216, 153.7, 161.2, 191.1, 198.6),
(85, '18: 1', 217, 153.8, 161.3, 191.1, 198.6),
(86, '18: 2', 218, 153.9, 161.4, 191.1, 198.6),
(87, '18: 3', 219, 154, 161.4, 191.1, 198.6),
(88, '18: 4', 220, 154.1, 161.5, 191.1, 198.6),
(89, '18: 5', 221, 154.2, 161.6, 191.1, 198.5),
(90, '18: 6', 222, 154.2, 161.6, 191.1, 198.5),
(91, '18: 7', 223, 154.3, 161.7, 191.2, 198.5),
(92, '18: 8', 224, 154.4, 161.7, 191.2, 198.5),
(93, '18: 9', 225, 154.5, 161.8, 191.2, 198.5),
(94, '18: 10', 226, 154.5, 161.8, 191.1, 198.5),
(95, '18: 11', 227, 154.6, 161.9, 191.1, 198.5),
(96, '19: 0', 228, 154.6, 161.9, 191.1, 198.4);

-- --------------------------------------------------------

--
-- Table structure for table `loads`
--

CREATE TABLE `loads` (
  `a_id` int(11) NOT NULL,
  `b_loadName` varchar(200) NOT NULL,
  `c_gradeLevel` int(11) NOT NULL,
  `d_subjectsContained` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loads`
--

INSERT INTO `loads` (`a_id`, `b_loadName`, `c_gradeLevel`, `d_subjectsContained`) VALUES
(8, 'K-12, Grade 7', 7, '9:10:11:8:12:13:14:60:15:16:17:18:52:'),
(9, 'K-12, Grade 8', 8, '19:20:21:22:23:24:25:61:26:27:28:29:53:'),
(10, 'K-12, Grade 9', 9, '30:31:32:33:34:35:36:37:38:39:40:62:54:'),
(11, 'K-12, Grade 10', 10, '41:42:43:44:45:46:47:48:49:50:51:63:55:'),
(12, 'Grade 8 New', 8, ''),
(13, 'Grade 8', 8, ''),
(14, 'Grade 10', 10, ''),
(15, 'Test Load', 7, '8:9:10:11:12:13:14:15:16:17:18:52:60:'),
(16, 'Test Load', 10, '41:42:43:44:45:46:47:48:49:50:51:63:55:');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `id` int(11) NOT NULL,
  `stdId` int(12) NOT NULL,
  `bDate` date NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `mTongue` varchar(500) NOT NULL DEFAULT 'LANGUAGE',
  `ip` varchar(500) NOT NULL DEFAULT 'INDIGENOUS PEOPLE',
  `rlgn` varchar(500) NOT NULL DEFAULT 'RELIGION',
  `houseN` varchar(1000) NOT NULL DEFAULT 'HOUSE NUM',
  `brgy` varchar(200) NOT NULL DEFAULT 'BRGY',
  `mncpl` varchar(200) NOT NULL DEFAULT 'MUNICIPAL',
  `prvnce` varchar(200) NOT NULL DEFAULT 'PROVINCE',
  `fName` varchar(500) NOT NULL DEFAULT 'FATHER NAME',
  `mName` varchar(500) NOT NULL DEFAULT 'MOTHER NAME',
  `gName` varchar(500) DEFAULT 'GUARDIAN NAME',
  `rltnshp` varchar(100) NOT NULL DEFAULT 'RELATIONSHIP',
  `contact` varchar(20) NOT NULL DEFAULT 'CONTACT',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`id`, `stdId`, `bDate`, `age`, `mTongue`, `ip`, `rlgn`, `houseN`, `brgy`, `mncpl`, `prvnce`, `fName`, `mName`, `gName`, `rltnshp`, `contact`, `date`) VALUES
(1, 1, '2006-12-11', 12, 'Mandaya', ' ', 'Roman Catholic', 'Purok 18, Bato St.', 'Central', 'Manay', 'Davao Oriental', 'Enrique C. Paderogao', 'Jocelyn E. Paderogao', ' ', ' ', '09483428056', '2021-02-12 13:17:12'),
(3, 2, '2006-12-11', 20, 'Mandaya', 'Mandaya', 'Roman Catholic', 'Purok 18, Bato St.', 'Central', 'Manay', 'Davao Oriental', 'Enrique C. Paderogao', 'Jocelyn E. Paderogao', 'Joerick E. Paderogao', 'Brother', '09483428056', '2020-09-09 18:37:23'),
(5, 3, '2006-05-13', 13, 'LANGUAGE', 'INDIGENOUS PEOPLE', 'RELIGION', 'HOUSE NUM', 'BRGY', 'MUNICIPAL', 'PROVINCE', 'FATHER NAME', 'MOTHER NAME', 'GUARDIAN NAME', 'RELATIONSHIP', 'CONTACT', '2021-02-12 13:17:11'),
(6, 7, '2005-11-15', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'BANGKAS HEIGHTS', 'DAVAO CITY', 'DAVAO DEL SUR', 'ABANIL, RONIE GUMAPO', 'ARELLANO,ELINITA,ANGGAT,', ' ', ' ', ' ', '2021-03-10 15:37:19'),
(7, 8, '2005-07-06', 14, 'Cebuano', ' ', 'Christianity', ' ', 'BALIOK', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'MULATO,JOSIE,FLORENDO,', ' ', ' ', ' ', '2021-03-10 15:37:19'),
(8, 9, '2004-09-14', 15, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'ANDALES, DIONILO JR TEQUILLO', 'PITAO,TERESITA,DEL ROSARIO,', ' ', ' ', ' ', '2021-03-10 15:37:19'),
(9, 10, '2004-08-22', 15, 'Cebuano', ' ', 'Christianity', ' ', 'LUBOGAN', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'GOMEZ,CATHERINE,,', ' ', ' ', ' ', '2021-03-10 15:37:20'),
(10, 11, '2006-01-10', 14, 'Cebuano', ' ', 'Christianity', ' ', 'BANGKAS HEIGHTS', 'DAVAO CITY', 'DAVAO DEL SUR', 'BATITAY, ESTEBAN', 'SOLEDAD,NORIEJEN,EGAGAMAO,', ' ', ' ', ' ', '2021-03-10 15:37:20'),
(11, 12, '2005-10-19', 14, 'Tagalog', ' ', 'Christianity', ' ', 'BAGO GALLERA', 'DAVAO CITY', 'DAVAO DEL SUR', 'BUSTAMANTE, MILAN PEPITO', 'PEROCILLO,MERCE,PALMA,', ' ', ' ', ' ', '2021-03-10 15:37:20'),
(12, 13, '2005-12-29', 14, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'CALIXTRO,SHIELA MARIE,ACERO,', ' ', ' ', ' ', '2021-03-10 15:37:20'),
(13, 14, '2006-04-05', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Islam', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'COMAGUEL,DAISEREE,CAASI,', ' ', ' ', ' ', '2021-03-10 15:37:21'),
(14, 15, '2006-06-27', 13, 'Cebuano', ' ', 'Christianity', ' ', 'DALIAO', 'DAVAO CITY', 'DAVAO DEL SUR', 'GABRINAO, LUIS JR PANTIG', 'JUDAR,DIANNE MAE,EWAYAN,', ' ', ' ', ' ', '2021-03-10 15:37:21'),
(15, 16, '2005-11-14', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'LIZADA', 'DAVAO CITY', 'DAVAO DEL SUR', 'GEALON, ROLAN ATRAGENIO', 'EMBANG,MERLYN,DAGUINSAL,', ' ', ' ', ' ', '2021-03-10 15:37:21'),
(16, 17, '2006-02-01', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'BALIOK', 'DAVAO CITY', 'DAVAO DEL SUR', 'HIMONGALA, JERRY BANGAY', 'CERNA,CHARON,JUMAWAN,', ' ', ' ', ' ', '2021-03-10 15:37:21'),
(17, 18, '2005-10-26', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'TAGLUNO', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'AYAG,ALICIA,FUENTES,', ' ', ' ', ' ', '2021-03-10 15:37:22'),
(18, 19, '2006-09-06', 13, 'Cebuano', ' ', 'Christianity', ' ', 'BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'JANOPOL, MANNY N', 'LADERA,MARIVIC,E,', ' ', ' ', ' ', '2021-03-10 15:37:22'),
(19, 20, '2005-01-08', 15, 'Cebuano', ' ', 'Christianity', ' ', 'LUBOGAN', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'LUMINGKIT,MA DOLORES,RACAZA,', ' ', ' ', ' ', '2021-03-10 15:37:22'),
(20, 21, '2006-01-11', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'MIER, RODEL AMONCIO', 'DE LEON,JENELL,,', ' ', ' ', ' ', '2021-03-10 15:37:22'),
(21, 22, '2005-03-24', 15, 'Cebuano', ' ', 'Christianity', ' ', 'LUBOGAN', 'DAVAO CITY', 'DAVAO DEL SUR', 'MONFORTE, MICHAEL GORREON', 'LORANA,MARIVIC,CAMACHO,', ' ', ' ', ' ', '2021-03-10 15:37:22'),
(22, 23, '2006-09-23', 13, 'Cebuano / Sinugbuanong Binisay', 'Cebuano', 'Christianity', ' ', 'LUBOGAN', 'DAVAO CITY', 'DAVAO DEL SUR', 'OREJUDOS, BRANDO JIMENEZ', 'BASTASA,RHEA MAY,STA MONICA,', ' ', ' ', ' ', '2021-03-10 15:37:23'),
(23, 24, '2006-05-10', 14, 'Cebuano', ' ', 'Christianity', ' ', 'BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'MAGSIGAY,JOYCEL,PACITES,', ' ', ' ', ' ', '2021-03-10 15:37:23'),
(24, 25, '2005-02-25', 15, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'SABERON,NICA,BALLE,', ' ', ' ', ' ', '2021-03-10 15:37:23'),
(25, 26, '2002-08-14', 17, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'TUAYON, ROGER ABAD', 'BITACURA,AMY,MAPAIT,', ' ', ' ', ' ', '2021-03-10 15:37:24'),
(26, 27, '2003-12-08', 16, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'BATO', 'DAVAO CITY', 'DAVAO DEL SUR', 'VILLEGAS, GERALD OLARTE', 'GUIAMLA,JAMILAH,ABDUL,', ' ', ' ', ' ', '2021-03-10 15:37:24'),
(27, 28, '2005-03-23', 15, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'BANGKAS HEIGHTS', 'DAVAO CITY', 'DAVAO DEL SUR', 'ZAFRA, CIOLEN VILLAPAS', 'GALVEZ,JOANNE,ACEBU,', ' ', ' ', ' ', '2021-03-10 15:37:24'),
(28, 29, '2005-01-20', 15, 'Maranao', 'Maranao', 'Islam', ' ', 'ILIAN', 'BALABAGAN', 'LANAO DEL SUR', 'AYOON, ISMAIL MORO', 'ATANDOR,JONAIMA,SUWAIB,', ' ', ' ', ' ', '2021-03-10 15:37:24'),
(29, 30, '2005-04-30', 15, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'BACUS, OLIVER REMOLIO', 'GETIZO,MYLYN,INAD,', ' ', ' ', ' ', '2021-03-10 15:37:25'),
(30, 31, '2006-08-15', 13, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'ARREGLADO,ANALYN,DELIARTE,', ' ', ' ', ' ', '2021-03-10 15:37:25'),
(31, 32, '2006-01-30', 14, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'BOISER,BOISER,,', ' ', ' ', ' ', '2021-03-10 15:37:25'),
(32, 33, '2006-04-24', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'MA-A', 'DAVAO CITY', 'DAVAO DEL SUR', 'CAMPOREDONDO, JOEL COLETA', 'PARILLO,REA FE,BAZAR,', ' ', ' ', ' ', '2021-03-10 15:37:25'),
(33, 34, '2005-11-05', 14, 'Cebuano', ' ', 'Christianity', ' ', 'MANKILAM', 'CITY OF TAGUM (Capital)', 'DAVAO DEL NORTE', 'CANTILA, RONALD ANI%C3%91ON', 'CAMPOREDONDO,AILEEN,MATUNDAG,', ' ', ' ', ' ', '2021-03-10 15:37:25'),
(34, 35, '2004-03-08', 16, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'CATAYAS, EMMANUEL', 'UGPAT,FLORDELIZA,,', ' ', ' ', ' ', '2021-03-10 15:37:26'),
(35, 36, '2004-09-17', 15, 'Cebuano', ' ', 'Christianity', ' ', 'CATALUNAN PEQUE%C3%91O', 'DAVAO CITY', 'DAVAO DEL SUR', 'CORTEZANO, ROLITO BROCE', 'CUENCO,ADELYN,MAHUSAY,', ' ', ' ', ' ', '2021-03-10 15:37:26'),
(36, 37, '2006-02-18', 14, 'Cebuano', ' ', 'Christianity', ' ', 'TORIL (POB.)', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'PASILAN,DOROTHY,JANE,DIWA', ' ', ' ', ' ', '2021-03-10 15:37:26'),
(37, 38, '2004-06-02', 16, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', 'ESPINA, RODRIGO MADULA', 'QUIZAN,RHEA,NAPITAN,', ' ', ' ', ' ', '2021-03-10 15:37:26'),
(38, 39, '2006-09-04', 13, 'Cebuano', ' ', 'Christianity', ' ', 'BATO', 'DAVAO CITY', 'DAVAO DEL SUR', 'FUERTES, JOVELLE', 'TAN,STEPHANIE,,', ' ', ' ', ' ', '2021-03-10 15:37:27'),
(39, 40, '2005-11-30', 14, 'Cebuano', ' ', 'Christianity', ' ', 'LANAO KURAN', 'ARAKAN', 'NORTH COTABATO', 'HONTIVEROS, RAYMUNDO ALCOSABA', 'SABANAL,MARICEL,CALDERON,', ' ', ' ', ' ', '2021-03-10 15:37:27'),
(40, 41, '2006-08-11', 13, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'LANUZA,MILA,,', ' ', ' ', ' ', '2021-03-10 15:37:27'),
(41, 42, '2004-06-30', 15, 'Maranao', 'Maranao', 'Islam', ' ', 'MARAPANGI', 'DAVAO CITY', 'DAVAO DEL SUR', 'LOMONTOD, ALIMOZAMAN MINCOL', 'TOMANONG,NORHAYA,AMIGOS,', ' ', ' ', ' ', '2021-03-10 15:37:27'),
(42, 43, '2006-09-08', 13, 'Cebuano', ' ', 'Christianity', ' ', 'DUMOY', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'APID,MARILYN,,', ' ', ' ', ' ', '2021-03-10 15:37:27'),
(43, 44, '2006-03-13', 14, 'Cebuano', ' ', 'Christianity', ' ', 'DUMOY', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'GALLENTES,NANCY,LUCERO,', ' ', ' ', ' ', '2021-03-10 15:37:28'),
(44, 45, '2006-06-11', 13, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'LORANA,MARIVIC,CAMACHO,', ' ', ' ', ' ', '2021-03-10 15:37:28'),
(45, 46, '2006-02-17', 14, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'MATINA CROSSING', 'DAVAO CITY', 'DAVAO DEL SUR', 'OCHO, DANILO CADION', 'CALIXTRO,MARY ANN,A,', ' ', ' ', ' ', '2021-03-10 15:37:28'),
(46, 47, '2004-04-15', 16, 'Cebuano / Sinugbuanong Binisay', ' ', 'Christianity', ' ', 'BAGO APLAYA', 'DAVAO CITY', 'DAVAO DEL SUR', 'PAGATPAT, NIEVE ANDRADE', 'BARON,JOYCE,OLEVEROS,', ' ', ' ', ' ', '2021-03-10 15:37:28'),
(47, 48, '2006-10-11', 13, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'ALLANIC,MARILYN,,', ' ', ' ', ' ', '2021-03-10 15:37:29'),
(48, 49, '2007-07-08', 12, 'Cebuano', ' ', 'Christianity', ' ', 'LUBOGAN', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'BANTAYAN,ROGEROSE,,', ' ', ' ', ' ', '2021-03-10 15:37:29'),
(49, 50, '2006-10-06', 13, 'Cebuano', ' ', 'Christianity', ' ', 'DUMOY', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'ULAH,BERNADITH,CHAVEZ,', ' ', ' ', ' ', '2021-03-10 15:37:29'),
(50, 51, '2005-10-08', 14, 'Cebuano', ' ', 'Christianity', ' ', 'CROSSING BAYABAS', 'DAVAO CITY', 'DAVAO DEL SUR', ' ', 'MALNEGRO,MARIE,REBUCAS,', ' ', ' ', ' ', '2021-03-10 15:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `sectionName` varchar(50) NOT NULL,
  `adviserId` int(11) NOT NULL,
  `loadId` int(11) NOT NULL,
  `bookTemplateId` int(11) NOT NULL DEFAULT '-1',
  `schoolYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `sectionName`, `adviserId`, `loadId`, `bookTemplateId`, `schoolYear`) VALUES
(7, 'Grade 7 - Fidelity', 2, 8, 1, 2019),
(8, 'Grade 8 - Cashew', 2, 9, -1, 2020),
(9, 'Grade 7 - Rizal', 1, 8, -1, 2020),
(10, 'Grade 9 - Mabini', 2, 10, 3, 2020),
(11, 'Grade 10 - Strawberry', 3, 11, -1, 2019),
(12, 'Grade 9 - Integrity', 3, 8, -1, 2019),
(13, 'Grade 10 - Unity', 2, 11, -1, 2019),
(14, 'Grade 7 - Oreo', 3, 8, -1, 2019),
(15, 'Grade 9 - Nikko', 8, 10, -1, 2019),
(16, 'Grade 8 - Paderogao', 2, 12, -1, 2020),
(17, 'Grade 10 - Del Pilar', 2, 11, -1, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `lName` varchar(100) NOT NULL,
  `fName` varchar(100) NOT NULL,
  `mName` varchar(100) NOT NULL DEFAULT ' ',
  `sex` varchar(10) NOT NULL,
  `inGr` float NOT NULL DEFAULT '0',
  `curGrLvl` int(11) NOT NULL DEFAULT '0',
  `schoolId` varchar(11) NOT NULL DEFAULT '000000',
  `schoolName` varchar(1000) NOT NULL DEFAULT ' ',
  `schoolAddress` varchar(1000) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `lrn`, `lName`, `fName`, `mName`, `sex`, `inGr`, `curGrLvl`, `schoolId`, `schoolName`, `schoolAddress`) VALUES
(1, '123543457474', 'Paderogao,Jr', 'Phil Rey', 'Estrella', 'Female', 90.1, 7, '000001', 'GMES-1', 'Manay, Davao Oriental'),
(2, '123456789012', 'Paderogao', 'Kerby', 'Estrella', 'Female', 90.2, 0, '000000', 'GMES-1', 'Manay, Davao Oriental'),
(3, '123456789023', 'Rizal', 'Jose', ' ', 'Male', 99, 7, '000000', 'Cuta Elementary School', 'Tarragona, Davao Oriental'),
(4, '129493120101', 'Cabillon', 'Jesthony', ' ', 'Male', 80, 0, '000000', 'GMES-1', 'Manay, Davao Oriental'),
(5, '129679130184', 'Antiga', 'Ariel', 'Socorro', 'Male', 80, 0, '000000', 'GMES-1', 'Manay, Davao Oriental'),
(6, '123546789014', 'Masyedow', 'Marites', 'Supladae', 'Female', 89, 0, '123456', 'Chaka Elementary School', 'Dimakita City'),
(7, '128782110001', 'Abanil', 'Juvanie', 'Arellano', 'Male', 0, 0, '000000', ' ', ' '),
(8, '405459150105', 'Algar', 'Wilhelmn Nash', 'Momo', 'Male', 0, 0, '000000', ' ', ' '),
(9, '129679100013', 'Andales,Jr.', 'Dionilo', 'Pitao', 'Male', 0, 0, '000000', ' ', ' '),
(10, '129688120067', 'Baba', 'Jay Reecarl', ' ', 'Male', 0, 0, '000000', ' ', ' '),
(11, '129682120068', 'Batitay', 'Marvin', 'Soledad', 'Male', 0, 0, '000000', ' ', ' '),
(12, '466108150281', 'Bustamante', 'Clarence', 'Perocillo', 'Male', 0, 0, '000000', ' ', ' '),
(13, '129648120371', 'Calixtro', 'Mark Paulo', 'Acero', 'Male', 0, 0, '000000', ' ', ' '),
(14, '129688110074', 'Comaguel', 'Zaiful', 'Caasi', 'Male', 0, 0, '000000', ' ', ' '),
(15, '129720120256', 'Gabrinao', 'Luis Gabriel', 'Judar', 'Male', 0, 0, '000000', ' ', ' '),
(16, '129622110006', 'Gealon', 'Ian Romer', 'Embang', 'Male', 0, 0, '000000', ' ', ' '),
(17, '129713110039', 'Hemongala', 'John Paul', 'Cerna', 'Male', 0, 0, '000000', ' ', ' '),
(18, '129692110015', 'Hermosa', 'Andrew', 'Bersalona', 'Male', 0, 0, '000000', ' ', ' '),
(19, '127641110029', 'Janopol', 'Edmar Emmanuel', 'Ladera', 'Male', 0, 0, '000000', ' ', ' '),
(20, '405466150183', 'Lumingkit', 'Brian Jesler', ' ', 'Male', 0, 0, '000000', ' ', ' '),
(21, '129688120011', 'Mier', 'Charles', 'De Leon', 'Male', 0, 0, '000000', ' ', ' '),
(22, '129688120213', 'Monforte', 'Vence Cedrec Dew', 'Lora%C3%B1a', 'Male', 0, 0, '000000', ' ', ' '),
(23, '129548120196', 'Orejudos', 'Vince Lenard', 'Bastasa', 'Male', 0, 0, '000000', ' ', ' '),
(24, '129688110202', 'Parilla', 'Rian Jay', 'Magsigay', 'Male', 0, 0, '000000', ' ', ' '),
(25, '129688120077', 'Saberon', 'Rezan', ' ', 'Male', 0, 0, '000000', ' ', ' '),
(26, '129688090297', 'Tuayon', 'Christian Dave', 'Bitacora', 'Male', 0, 0, '000000', ' ', ' '),
(27, '129551100218', 'Villegas', 'Roger', 'Guiamla', 'Male', 0, 0, '000000', ' ', ' '),
(28, '129684120021', 'Zafra', 'Jianlen', 'Galvez', 'Male', 0, 0, '000000', ' ', ' '),
(29, '133569160140', 'Ayoon', 'Pahima', 'Atandor', 'Female', 0, 0, '000000', ' ', ' '),
(30, '129688120115', 'Bacus', 'Pinky Rose', 'Getizo', 'Female', 0, 0, '000000', ' ', ' '),
(31, '129688130652', 'Balicog', 'Roenamie', 'Arreglado', 'Female', 0, 0, '000000', ' ', ' '),
(32, '129679120250', 'Cabarles', 'Eve Marie Virgil', 'Boiser', 'Female', 0, 0, '000000', ' ', ' '),
(33, '129648120040', 'Camporedondo', 'Rojean', 'Parillo', 'Female', 0, 0, '000000', ' ', ' '),
(34, '128778120199', 'Cantila', 'Veve Jane', 'Camporedondo', 'Female', 0, 0, '000000', ' ', ' '),
(35, '129679120176', 'Catayas', 'Marry Stiffany', 'Ugpat', 'Female', 0, 0, '000000', ' ', ' '),
(36, '129697100107', 'Cortezano', 'Angel Mae', 'Cuenco', 'Female', 0, 0, '000000', ' ', ' '),
(37, '129550120284', 'Diwa', 'Chastity Jane', 'Pasilan', 'Female', 0, 0, '000000', ' ', ' '),
(38, '129688100159', 'Espina', 'Ana Godeva', 'Quizan', 'Female', 0, 0, '000000', ' ', ' '),
(39, '129688120021', 'Fuertes', 'Zacharielle Zelene', 'Tan', 'Female', 0, 0, '000000', ' ', ' '),
(40, '129914110019', 'Hontiveros', 'Rhea Mae', 'Sabanal', 'Female', 0, 0, '000000', ' ', ' '),
(41, '129688120045', 'Lagmay', 'Maxene', 'Lanuza', 'Female', 0, 0, '000000', ' ', ' '),
(42, '129684100061', 'Lomontod', 'Habibah', 'Tomanong', 'Female', 0, 0, '000000', ' ', ' '),
(43, '129679120141', 'Luage', 'Lyna Mae', 'Apid', 'Female', 0, 0, '000000', ' ', ' '),
(44, '129720110071', 'Marcellones', 'Maria Katrina', 'Gallentes', 'Female', 0, 0, '000000', ' ', ' '),
(45, '129688120232', 'Monforte', 'Venece', 'Lora%C3%B1a', 'Female', 0, 0, '000000', ' ', ' '),
(46, '129648120425', 'Ocho', 'Danna Mae', 'Calixtro', 'Female', 0, 0, '000000', ' ', ' '),
(47, '129719100055', 'Pagatpat', 'Jovea Jane', 'Baron', 'Female', 0, 0, '000000', ' ', ' '),
(48, '129679120150', 'Ruferos', 'Jennelyn', 'Allanic', 'Female', 0, 0, '000000', ' ', ' '),
(49, '129679120225', 'Sasuta', 'Ashley Kynch', 'Bantayan', 'Female', 0, 0, '000000', ' ', ' '),
(50, '129720120178', 'Suico', 'Grace', 'Ulah', 'Female', 0, 0, '000000', ' ', ' '),
(51, '129688120239', 'Tabada', 'Danica Mae', 'Malnegro', 'Female', 0, 0, '000000', ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subjectCode` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `gradeLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectCode`, `description`, `gradeLevel`) VALUES
(8, 'FIL7', 'Filipino 7', 7),
(9, 'ENG7', 'English 7', 7),
(10, 'MATH7', 'Mathematics 7', 7),
(11, 'SCI7', 'Science 7', 7),
(12, 'AP7', 'Araling Panlipunan 7', 7),
(13, 'ESP7', 'Edukasyon sa Pagpapakatao 7', 7),
(14, 'TLE7', 'Technology and Livelihood Education 7', 7),
(15, 'MUS7', 'Music 7', 7),
(16, 'ART7', 'Arts 7', 7),
(17, 'PE7', 'Physical Education 7', 7),
(18, 'HLT7', 'Health 7', 7),
(19, 'FIL8', 'Filipino 8', 8),
(20, 'ENG8', 'English 8', 8),
(21, 'MATH8', 'Mathematics 8', 8),
(22, 'SCI8', 'Science 8', 8),
(23, 'AP8', 'Araling Panlipunan 8', 8),
(24, 'ESP8', 'Edukasyon sa Pagpapakatao 8', 8),
(25, 'TLE8', 'Technology and Livelihood Education', 8),
(26, 'MUS8', 'Music 8', 8),
(27, 'ART8', 'Arts 8', 8),
(28, 'PE8', 'Physical Education 8', 8),
(29, 'HLT8', 'Health 8', 8),
(30, 'FIL9', 'Filipino 9', 9),
(31, 'ENG9', 'English 9', 9),
(32, 'MATH9', 'Mathematics 9', 9),
(33, 'SCI9', 'Science 9', 9),
(34, 'AP9', 'Araling Panlipunan 9', 9),
(35, 'ESP9', 'Edukasyon sa Pagpapakatao 9', 9),
(36, 'TLE9', 'Technology and Livelihood Education 9', 9),
(37, 'MUS9', 'Music 9', 9),
(38, 'ART9', 'Arts 9', 9),
(39, 'PE9', 'Physical Education 9', 9),
(40, 'HLT9', 'Health 9', 9),
(41, 'FIL10', 'Filipino 10', 10),
(42, 'ENG10', 'English 10', 10),
(43, 'MATH10', 'Mathematics 10', 10),
(44, 'SCI10', 'Science 10', 10),
(45, 'AP10', 'Araling Panlipunan 10', 10),
(46, 'ESP10', 'Edukasyon sa Pagpapakatao 10', 10),
(47, 'TLE10', 'Technology and Livelihood Education 10', 10),
(48, 'MUS10', 'Music 10', 10),
(49, 'ART10', 'Arts 10', 10),
(50, 'PE10', 'Physical Education 10', 10),
(51, 'HLT10', 'Health 10', 10),
(52, 'ADV7', 'Advisory 7', 7),
(53, 'ADV8', 'Advisory 8', 8),
(54, 'ADV9', 'Advisory 9', 9),
(55, 'ADV10', 'Advisory 10', 10),
(56, 'IT410', 'IT Practicum 2', 7),
(57, 'span8', 'Spanish 8', 8),
(58, 'it 411', ';lksdfbvhnlkajsfbg', 7),
(59, 'ANIM7', 'Animation 7', 7),
(60, 'MPH7', 'MAPEH 7', 7),
(61, 'MPH8', 'MAPEH 8', 8),
(62, 'MPH9', 'MAPEH 9', 9),
(63, 'MPH10', 'MAPEH 10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacherloads`
--

CREATE TABLE `teacherloads` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `timeStart` time NOT NULL DEFAULT '07:00:00',
  `timeEnd` time NOT NULL DEFAULT '08:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherloads`
--

INSERT INTO `teacherloads` (`id`, `sectionId`, `teacherId`, `subjectId`, `timeStart`, `timeEnd`) VALUES
(1, 7, 3, 9, '07:00:00', '08:00:00'),
(2, 9, 2, 8, '07:00:00', '08:00:00'),
(3, 9, 3, 9, '07:00:00', '08:00:00'),
(4, 9, 4, 10, '07:00:00', '08:00:00'),
(5, 9, 5, 11, '07:00:00', '08:00:00'),
(6, 9, 7, 12, '07:00:00', '08:00:00'),
(7, 9, 8, 13, '07:00:00', '08:00:00'),
(8, 9, 7, 14, '07:00:00', '08:00:00'),
(9, 9, 10, 15, '07:00:00', '08:00:00'),
(10, 9, 11, 16, '07:00:00', '08:00:00'),
(11, 9, 8, 17, '07:00:00', '08:00:00'),
(12, 9, 4, 18, '07:00:00', '08:00:00'),
(13, 9, 1, 52, '07:00:00', '08:00:00'),
(14, 8, -1, 19, '07:00:00', '08:00:00'),
(15, 8, -1, 20, '07:00:00', '08:00:00'),
(16, 8, -1, 21, '07:00:00', '08:00:00'),
(17, 8, -1, 22, '07:00:00', '08:00:00'),
(18, 8, -1, 23, '07:00:00', '08:00:00'),
(19, 8, -1, 24, '07:00:00', '08:00:00'),
(20, 8, -1, 25, '07:00:00', '08:00:00'),
(21, 8, -1, 26, '07:00:00', '08:00:00'),
(22, 8, -1, 27, '07:00:00', '08:00:00'),
(23, 8, -1, 28, '07:00:00', '08:00:00'),
(24, 8, -1, 29, '07:00:00', '08:00:00'),
(25, 8, 2, 53, '07:00:00', '08:00:00'),
(26, 10, -1, 30, '07:00:00', '08:00:00'),
(27, 10, -1, 31, '07:00:00', '08:00:00'),
(28, 10, -1, 32, '07:00:00', '08:00:00'),
(29, 10, -1, 33, '07:00:00', '08:00:00'),
(30, 10, -1, 34, '07:00:00', '08:00:00'),
(31, 10, -1, 35, '07:00:00', '08:00:00'),
(32, 10, -1, 36, '07:00:00', '08:00:00'),
(33, 10, -1, 37, '07:00:00', '08:00:00'),
(34, 10, -1, 38, '07:00:00', '08:00:00'),
(35, 10, -1, 39, '07:00:00', '08:00:00'),
(36, 10, -1, 40, '07:00:00', '08:00:00'),
(37, 10, 2, 54, '07:00:00', '08:00:00'),
(38, 11, -1, 41, '07:00:00', '08:00:00'),
(39, 11, -1, 42, '07:00:00', '08:00:00'),
(40, 11, -1, 43, '07:00:00', '08:00:00'),
(41, 11, -1, 44, '07:00:00', '08:00:00'),
(42, 11, -1, 45, '07:00:00', '08:00:00'),
(43, 11, -1, 46, '07:00:00', '08:00:00'),
(44, 11, -1, 47, '07:00:00', '08:00:00'),
(45, 11, -1, 48, '07:00:00', '08:00:00'),
(46, 11, -1, 49, '07:00:00', '08:00:00'),
(47, 11, -1, 50, '07:00:00', '08:00:00'),
(48, 11, -1, 51, '07:00:00', '08:00:00'),
(49, 11, -1, 55, '07:00:00', '08:00:00'),
(50, 13, -1, 41, '07:00:00', '08:00:00'),
(51, 13, -1, 42, '07:00:00', '08:00:00'),
(52, 13, -1, 43, '07:00:00', '08:00:00'),
(53, 13, -1, 44, '07:00:00', '08:00:00'),
(54, 13, -1, 45, '07:00:00', '08:00:00'),
(55, 13, -1, 46, '07:00:00', '08:00:00'),
(56, 13, -1, 47, '07:00:00', '08:00:00'),
(57, 13, -1, 48, '07:00:00', '08:00:00'),
(58, 13, -1, 49, '07:00:00', '08:00:00'),
(59, 13, -1, 50, '07:00:00', '08:00:00'),
(60, 13, -1, 51, '07:00:00', '08:00:00'),
(61, 13, -1, 55, '07:00:00', '08:00:00'),
(62, 7, 2, 8, '07:00:00', '08:00:00'),
(63, 7, 3, 10, '07:00:00', '08:00:00'),
(64, 7, 2, 11, '07:00:00', '08:00:00'),
(65, 7, 2, 12, '07:00:00', '08:00:00'),
(66, 7, 2, 13, '07:00:00', '08:00:00'),
(67, 7, 2, 14, '07:00:00', '08:00:00'),
(68, 7, 2, 15, '07:00:00', '08:00:00'),
(69, 7, 2, 16, '07:00:00', '08:00:00'),
(70, 7, 2, 17, '07:00:00', '08:00:00'),
(71, 7, 2, 18, '07:00:00', '08:00:00'),
(72, 7, 2, 52, '07:00:00', '08:00:00'),
(73, 9, -1, 60, '07:00:00', '08:00:00'),
(86, 8, -1, 61, '07:00:00', '08:00:00'),
(99, 10, -1, 62, '07:00:00', '08:00:00'),
(112, 7, 2, 60, '07:00:00', '08:00:00'),
(125, 14, -1, 8, '07:00:00', '08:00:00'),
(126, 14, -1, 9, '07:00:00', '08:00:00'),
(127, 14, -1, 10, '07:00:00', '08:00:00'),
(128, 14, -1, 11, '07:00:00', '08:00:00'),
(129, 14, -1, 12, '07:00:00', '08:00:00'),
(130, 14, -1, 13, '07:00:00', '08:00:00'),
(131, 14, -1, 14, '07:00:00', '08:00:00'),
(132, 14, -1, 15, '07:00:00', '08:00:00'),
(133, 14, -1, 16, '07:00:00', '08:00:00'),
(134, 14, -1, 17, '07:00:00', '08:00:00'),
(135, 14, -1, 18, '07:00:00', '08:00:00'),
(136, 14, -1, 60, '07:00:00', '08:00:00'),
(137, 14, 3, 52, '07:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `employeeNumber` varchar(100) NOT NULL DEFAULT 'TIN NUMBER',
  `fundSource` varchar(1000) NOT NULL DEFAULT 'FUND SOURCE',
  `position` varchar(1000) NOT NULL DEFAULT 'POSITION',
  `nature` varchar(1000) NOT NULL DEFAULT 'NATURE',
  `degree` varchar(1000) NOT NULL DEFAULT 'DEGREE',
  `major` varchar(1000) NOT NULL DEFAULT 'MAJOR',
  `minor` varchar(1000) NOT NULL DEFAULT 'MINOR',
  `managedSubjects` varchar(10000) NOT NULL DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `userId`, `employeeNumber`, `fundSource`, `position`, `nature`, `degree`, `major`, `minor`, `managedSubjects`) VALUES
(3, 1, 'emp', 'Fund', 'Pos', 'Nature\'s Spring Davao Branch', 'Deg', 'Majo', 'Min', '8:9:'),
(4, 2, ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'NONE'),
(5, 5, '12313153463', 'Fund Source', 'Master Teacher IV', 'Spring', 'BED', 'FILIPINO', 'ENGLISH', '8:19:30:41:'),
(6, 3, ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'NONE'),
(7, 4, ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'NONE'),
(8, 6, ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'NONE'),
(9, 7, '12315346-12312313', 'Funds', 'Master Teacher V', 'Nature', 'BEED', 'English', 'Filipino', 'NONE'),
(10, 8, ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'NONE'),
(11, 9, '32165465', 'FSDFG', 'FDFG', 'VXCV', 'XCVA', 'ASZ', 'ZXCZSD', '9:20:31:42:'),
(13, 10, 'TIN NUMBER', 'FUND SOURCE', 'POSITION', 'NATURE', 'DEGREE', 'MAJOR', 'MINOR', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_Lname` varchar(200) NOT NULL,
  `user_Fname` varchar(200) NOT NULL,
  `user_Mname` varchar(200) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_Lname`, `user_Fname`, `user_Mname`, `gender`, `user_name`, `user_password`, `user_level`) VALUES
(1, 'Paderogao', 'Phil Rey', 'Estrella%C3%91', 'Male', 'admin', 'password', 5),
(2, 'Furahashi', 'Fumino', 'Ona', 'Female', 'benkyu', 'password', 1),
(3, 'Paderogao', 'Kerby', 'Estrella', 'Female', 'kerbs', 'pass', 1),
(4, 'Dela Cruz', 'Juan', 'Ponciano', 'Male', 'registrar', 'password', 4),
(5, 'Rizal', 'Jose', 'Protacio', 'Male', 'depheadfil7', 'password', 2),
(6, 'Ramsey', 'Gordon', 'Grant', 'Male', 'currhead', 'password', 3),
(7, 'Sins', 'Jhonny', 'Marcus', 'Male', 'john', 'password', 4),
(8, 'Bulahan', 'Harris', 'Kay', 'Male', 'hbulahan', 'password1', 3),
(9, 'Rezane', 'Warren', 'Dunno', 'Male', 'wrezxaneDH', '1234567', 2),
(10, 'Lname', 'Fname', 'Mname', 'Female', 'admin2', 'password', 3),
(11, 'Lname2', 'Fname2', 'Mname2', 'Female', 'admin3', 'password', 2),
(12, 'Minchin', 'Maria', 'Loti', 'Female', 'minchinxsarah', 'password', 4),
(13, 'Mason', 'Alex', 'Joe', 'Male', 'thenumbers', 'password', 3),
(14, 'Filonzo', 'Ferdinand', 'Wika', 'Male', 'ferdi', 'password', 2),
(15, 'Englard', 'Edgar', 'Poe', 'Male', 'edgar', 'password', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_enrollment`
-- (See below for the actual view)
--
CREATE TABLE `v_enrollment` (
`id` int(11)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`adviserId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`loadId` int(11)
,`b_loadName` varchar(200)
,`c_gradeLevel` int(11)
,`schoolYear` int(11)
,`dateEnrolled` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_enrollment_minimal`
-- (See below for the actual view)
--
CREATE TABLE `v_enrollment_minimal` (
`id` int(11)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`sectionId` int(11)
,`remarks` varchar(1000)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_enrollment_mini_wbdate`
-- (See below for the actual view)
--
CREATE TABLE `v_enrollment_mini_wbdate` (
`id` int(11)
,`studentId` int(11)
,`lrn` varchar(12)
,`lName` varchar(100)
,`fName` varchar(100)
,`mName` varchar(100)
,`sex` varchar(10)
,`bDate` date
,`sectionId` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_grades`
-- (See below for the actual view)
--
CREATE TABLE `v_grades` (
`id` int(11)
,`sectionId` int(11)
,`studentId` int(11)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`gwa` varchar(11)
,`status` varchar(100)
,`dateUpdated` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_managedsubjects`
-- (See below for the actual view)
--
CREATE TABLE `v_managedsubjects` (
`id` int(11)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`schoolYear` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_managedsubjects_wbooktemplate`
-- (See below for the actual view)
--
CREATE TABLE `v_managedsubjects_wbooktemplate` (
`id` int(11)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`schoolYear` int(11)
,`bookTemplateId` int(11)
,`templateName` varchar(50)
,`booksContained` varchar(500)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_managedsubjects_wsubjectscontained`
-- (See below for the actual view)
--
CREATE TABLE `v_managedsubjects_wsubjectscontained` (
`id` int(11)
,`sectionId` int(11)
,`sectionName` varchar(50)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`schoolYear` int(11)
,`loadId` int(11)
,`loadName` varchar(200)
,`subjectsContained` varchar(500)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sections`
-- (See below for the actual view)
--
CREATE TABLE `v_sections` (
`id` int(11)
,`sectionName` varchar(50)
,`adviserId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`loadId` int(11)
,`b_loadName` varchar(200)
,`c_gradeLevel` int(11)
,`schoolYear` int(11)
,`d_subjectsContained` varchar(500)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_teacherloads`
-- (See below for the actual view)
--
CREATE TABLE `v_teacherloads` (
`id` int(11)
,`sectionId` int(11)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_teacherloads_w_time`
-- (See below for the actual view)
--
CREATE TABLE `v_teacherloads_w_time` (
`id` int(11)
,`sectionId` int(11)
,`teacherId` int(11)
,`user_Lname` varchar(200)
,`user_Fname` varchar(200)
,`user_Mname` varchar(200)
,`gender` varchar(12)
,`subjectId` int(11)
,`subjectCode` varchar(200)
,`description` varchar(500)
,`gradeLevel` int(11)
,`timeStart` time
,`timeEnd` time
);

-- --------------------------------------------------------

--
-- Structure for view `form_sf1_view`
--
DROP TABLE IF EXISTS `form_sf1_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf1_view`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`enrollment`.`sectionId` AS `sectionId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`personalinfo`.`bDate` AS `bDate`,`personalinfo`.`age` AS `age`,`personalinfo`.`mTongue` AS `mTongue`,`personalinfo`.`ip` AS `ip`,`personalinfo`.`rlgn` AS `rlgn`,`personalinfo`.`houseN` AS `houseN`,`personalinfo`.`brgy` AS `brgy`,`personalinfo`.`mncpl` AS `mncpl`,`personalinfo`.`prvnce` AS `prvnce`,`personalinfo`.`fName` AS `fathersName`,`personalinfo`.`mName` AS `mothersName`,`personalinfo`.`gName` AS `gName`,`personalinfo`.`rltnshp` AS `rltnshp`,`personalinfo`.`contact` AS `contact`,`enrollment`.`remarks` AS `remarks` from ((`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) left join `personalinfo` on((`enrollment`.`studentId` = `personalinfo`.`stdId`))) order by `enrollment`.`sectionId` desc,`students`.`sex` desc,`students`.`lName`,`students`.`fName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf2_view`
--
DROP TABLE IF EXISTS `form_sf2_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf2_view`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`sectionId` AS `sectionId`,`enrollment`.`studentId` AS `studentId`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`dateEnrolled` AS `dateEnrolled`,`enrollment`.`remarks` AS `remarks` from (`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) order by `enrollment`.`sectionId` desc,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf3_view`
--
DROP TABLE IF EXISTS `form_sf3_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf3_view`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`sectionId` AS `sectionId`,`enrollment`.`studentId` AS `studentId`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex` from (`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) order by `enrollment`.`sectionId` desc,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf5_viewfull`
--
DROP TABLE IF EXISTS `form_sf5_viewfull`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf5_viewfull`  AS  select `finalgrades`.`id` AS `id`,`finalgrades`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`sections`.`schoolYear` AS `schoolYear`,`loads`.`c_gradeLevel` AS `gradeLevel`,`sections`.`adviserId` AS `adviserId`,`users`.`user_Lname` AS `user_Lname`,`users`.`user_Fname` AS `user_Fname`,`users`.`user_Mname` AS `user_Mname`,`finalgrades`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`remarks` AS `remarks`,`finalgrades`.`generalAverage` AS `generalAverage`,`finalgrades`.`actionTaken` AS `actionTaken`,`finalgrades`.`dateUpdated` AS `dateUpdated` from (((((`finalgrades` left join `sections` on((`finalgrades`.`sectionId` = `sections`.`id`))) left join `users` on((`sections`.`adviserId` = `users`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) left join `students` on((`finalgrades`.`studentId` = `students`.`id`))) left join `enrollment` on(((`enrollment`.`studentId` = `finalgrades`.`studentId`) and (`enrollment`.`sectionId` = `finalgrades`.`sectionId`)))) order by `loads`.`c_gradeLevel`,`finalgrades`.`sectionId`,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf5_viewminimal`
--
DROP TABLE IF EXISTS `form_sf5_viewminimal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf5_viewminimal`  AS  select `finalgrades`.`id` AS `id`,`sections`.`id` AS `sectionId`,`loads`.`c_gradeLevel` AS `gradeLevel`,`finalgrades`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`remarks` AS `remarks`,`finalgrades`.`generalAverage` AS `generalAverage`,`finalgrades`.`actionTaken` AS `actionTaken`,`finalgrades`.`failedSubjects` AS `failedSubjects`,`finalgrades`.`dateUpdated` AS `dateUpdated` from ((((`finalgrades` left join `sections` on((`finalgrades`.`sectionId` = `sections`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) left join `students` on((`finalgrades`.`studentId` = `students`.`id`))) left join `enrollment` on(((`enrollment`.`studentId` = `finalgrades`.`studentId`) and (`enrollment`.`sectionId` = `finalgrades`.`sectionId`)))) order by `loads`.`c_gradeLevel`,`finalgrades`.`sectionId`,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf7view_loads`
--
DROP TABLE IF EXISTS `form_sf7view_loads`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf7view_loads`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`teacherId` AS `teacherId`,`teacherloads`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`sections`.`schoolYear` AS `schoolYear` from ((`teacherloads` left join `sections` on((`teacherloads`.`sectionId` = `sections`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) order by `teacherloads`.`teacherId` desc,`subjects`.`gradeLevel`,`sections`.`schoolYear`,`sections`.`sectionName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf7view_teachers`
--
DROP TABLE IF EXISTS `form_sf7view_teachers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf7view_teachers`  AS  select `users`.`id` AS `id`,ifnull(`userdetails`.`employeeNumber`,' ') AS `employeeNumber`,`users`.`user_Lname` AS `user_Lname`,`users`.`user_Fname` AS `user_Fname`,`users`.`user_Mname` AS `user_Mname`,`users`.`gender` AS `gender`,ifnull(`userdetails`.`fundSource`,' ') AS `fundSource`,ifnull(`userdetails`.`position`,' ') AS `position`,ifnull(`userdetails`.`nature`,' ') AS `nature`,ifnull(`userdetails`.`degree`,' ') AS `degree`,ifnull(`userdetails`.`major`,' ') AS `major`,ifnull(`userdetails`.`minor`,' ') AS `minor`,`users`.`user_level` AS `user_level` from (`users` left join `userdetails` on((`users`.`id` = `userdetails`.`userId`))) order by `users`.`user_Lname`,`users`.`user_Fname`,`users`.`user_Mname` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf8_view`
--
DROP TABLE IF EXISTS `form_sf8_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf8_view`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`enrollment`.`sectionId` AS `sectionId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,date_format(`personalinfo`.`bDate`,'%m/%d/%Y') AS `bDate`,`students`.`sex` AS `sex`,ifnull(`bmi`.`id`,-(1)) AS `bmiId`,ifnull(`bmi`.`age`,'0: 0') AS `age`,ifnull(`bmi`.`weight`,0) AS `weight`,ifnull(`bmi`.`height`,'0.0') AS `height`,ifnull(`bmi`.`heightSq`,'0.0000') AS `heightSq`,ifnull(`bmi`.`bmi`,'0.0') AS `bmi`,ifnull(`bmi`.`bmiForAge`,'No Record') AS `bmiForAge`,ifnull(`bmi`.`heightForAge`,'No Record') AS `heightForAge`,ifnull(`bmi`.`dateExamined`,now()) AS `dateExamined` from (((`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) left join `personalinfo` on((`enrollment`.`studentId` = `personalinfo`.`stdId`))) left join `bmi` on(((`enrollment`.`studentId` = `bmi`.`studentId`) and (`enrollment`.`sectionId` = `bmi`.`sectionId`)))) order by `enrollment`.`sectionId`,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf9_view`
--
DROP TABLE IF EXISTS `form_sf9_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf9_view`  AS  select `grades`.`id` AS `id`,`grades`.`studentId` AS `studentId`,`grades`.`sectionId` AS `sectionId`,`grades`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`grades`.`firstQuarter` AS `firstQuarter`,`grades`.`secondQuarter` AS `secondQuarter`,`grades`.`thirdQuarter` AS `thirdQuarter`,`grades`.`fourthQuarter` AS `fourthQuarter`,`grades`.`gwa` AS `gwa`,`grades`.`status` AS `status`,`grades`.`dateUpdated` AS `dateUpdated` from (`grades` left join `subjects` on((`subjects`.`id` = `grades`.`subjectId`))) order by `grades`.`sectionId` desc,`grades`.`studentId` ;

-- --------------------------------------------------------

--
-- Structure for view `form_sf10_view`
--
DROP TABLE IF EXISTS `form_sf10_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_sf10_view`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`sections`.`adviserId` AS `adviserId`,`users`.`user_Lname` AS `user_Lname`,`users`.`user_Fname` AS `user_Fname`,`users`.`user_Mname` AS `user_Mname`,`users`.`gender` AS `gender`,`sections`.`loadId` AS `loadId`,`loads`.`b_loadName` AS `loadName`,`loads`.`c_gradeLevel` AS `gradeLevel`,`loads`.`d_subjectsContained` AS `subjectsContained`,`sections`.`schoolYear` AS `schoolYear`,`enrollment`.`remarks` AS `remarks`,`enrollment`.`dateEnrolled` AS `dateEnrolled` from ((((`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) left join `sections` on((`enrollment`.`sectionId` = `sections`.`id`))) left join `users` on((`sections`.`adviserId` = `users`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) order by `enrollment`.`studentId` desc,`loads`.`c_gradeLevel`,`sections`.`schoolYear`,`enrollment`.`dateEnrolled` ;

-- --------------------------------------------------------

--
-- Structure for view `v_enrollment`
--
DROP TABLE IF EXISTS `v_enrollment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enrollment`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`sections`.`adviserId` AS `adviserId`,`users`.`user_Lname` AS `user_Lname`,`users`.`user_Fname` AS `user_Fname`,`users`.`user_Mname` AS `user_Mname`,`sections`.`loadId` AS `loadId`,`loads`.`b_loadName` AS `b_loadName`,`loads`.`c_gradeLevel` AS `c_gradeLevel`,`sections`.`schoolYear` AS `schoolYear`,`enrollment`.`dateEnrolled` AS `dateEnrolled` from ((((`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) left join `sections` on((`enrollment`.`sectionId` = `sections`.`id`))) left join `users` on((`sections`.`adviserId` = `users`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_enrollment_minimal`
--
DROP TABLE IF EXISTS `v_enrollment_minimal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enrollment_minimal`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`enrollment`.`sectionId` AS `sectionId`,`enrollment`.`remarks` AS `remarks` from (`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) order by `enrollment`.`sectionId` desc,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `v_enrollment_mini_wbdate`
--
DROP TABLE IF EXISTS `v_enrollment_mini_wbdate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enrollment_mini_wbdate`  AS  select `enrollment`.`id` AS `id`,`enrollment`.`studentId` AS `studentId`,`students`.`lrn` AS `lrn`,`students`.`lName` AS `lName`,`students`.`fName` AS `fName`,`students`.`mName` AS `mName`,`students`.`sex` AS `sex`,`personalinfo`.`bDate` AS `bDate`,`enrollment`.`sectionId` AS `sectionId` from ((`enrollment` left join `students` on((`enrollment`.`studentId` = `students`.`id`))) left join `personalinfo` on((`enrollment`.`studentId` = `personalinfo`.`stdId`))) order by `enrollment`.`sectionId` desc,`students`.`sex` desc,`students`.`lName`,`students`.`fName`,`students`.`mName` ;

-- --------------------------------------------------------

--
-- Structure for view `v_grades`
--
DROP TABLE IF EXISTS `v_grades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_grades`  AS  select `grades`.`id` AS `id`,`grades`.`sectionId` AS `sectionId`,`grades`.`studentId` AS `studentId`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`grades`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`grades`.`gwa` AS `gwa`,`grades`.`status` AS `status`,`grades`.`dateUpdated` AS `dateUpdated` from (((`grades` left join `teacherloads` on((`grades`.`subjectId` = `teacherloads`.`subjectId`))) left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`subjects`.`id` = `grades`.`subjectId`))) order by `grades`.`sectionId`,`grades`.`subjectId`,`grades`.`studentId` ;

-- --------------------------------------------------------

--
-- Structure for view `v_managedsubjects`
--
DROP TABLE IF EXISTS `v_managedsubjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_managedsubjects`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`sections`.`schoolYear` AS `schoolYear` from (((`teacherloads` left join `sections` on((`teacherloads`.`sectionId` = `sections`.`id`))) left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) order by `sections`.`schoolYear` desc,`subjects`.`gradeLevel`,`sections`.`sectionName`,`users`.`user_Lname`,`users`.`user_Fname` ;

-- --------------------------------------------------------

--
-- Structure for view `v_managedsubjects_wbooktemplate`
--
DROP TABLE IF EXISTS `v_managedsubjects_wbooktemplate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_managedsubjects_wbooktemplate`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`sections`.`schoolYear` AS `schoolYear`,`sections`.`bookTemplateId` AS `bookTemplateId`,ifnull(`booktemplates`.`templateName`,'None') AS `templateName`,ifnull(`booktemplates`.`booksContained`,'None') AS `booksContained` from ((((`teacherloads` left join `sections` on((`teacherloads`.`sectionId` = `sections`.`id`))) left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) left join `booktemplates` on((`sections`.`bookTemplateId` = `booktemplates`.`id`))) order by `sections`.`schoolYear` desc,`subjects`.`gradeLevel`,`sections`.`sectionName`,`users`.`user_Lname`,`users`.`user_Fname` ;

-- --------------------------------------------------------

--
-- Structure for view `v_managedsubjects_wsubjectscontained`
--
DROP TABLE IF EXISTS `v_managedsubjects_wsubjectscontained`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_managedsubjects_wsubjectscontained`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`sectionId` AS `sectionId`,`sections`.`sectionName` AS `sectionName`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`sections`.`schoolYear` AS `schoolYear`,`loads`.`a_id` AS `loadId`,`loads`.`b_loadName` AS `loadName`,`loads`.`d_subjectsContained` AS `subjectsContained` from ((((`teacherloads` left join `sections` on((`teacherloads`.`sectionId` = `sections`.`id`))) left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) order by `sections`.`schoolYear` desc,`subjects`.`gradeLevel`,`sections`.`sectionName`,`users`.`user_Lname`,`users`.`user_Fname` ;

-- --------------------------------------------------------

--
-- Structure for view `v_sections`
--
DROP TABLE IF EXISTS `v_sections`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sections`  AS  select `sections`.`id` AS `id`,`sections`.`sectionName` AS `sectionName`,`sections`.`adviserId` AS `adviserId`,`users`.`user_Lname` AS `user_Lname`,`users`.`user_Fname` AS `user_Fname`,`users`.`user_Mname` AS `user_Mname`,`users`.`gender` AS `gender`,`sections`.`loadId` AS `loadId`,`loads`.`b_loadName` AS `b_loadName`,`loads`.`c_gradeLevel` AS `c_gradeLevel`,`sections`.`schoolYear` AS `schoolYear`,`loads`.`d_subjectsContained` AS `d_subjectsContained` from ((`sections` left join `users` on((`sections`.`adviserId` = `users`.`id`))) left join `loads` on((`sections`.`loadId` = `loads`.`a_id`))) order by `sections`.`schoolYear` desc,`loads`.`c_gradeLevel`,`sections`.`sectionName` ;

-- --------------------------------------------------------

--
-- Structure for view `v_teacherloads`
--
DROP TABLE IF EXISTS `v_teacherloads`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_teacherloads`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`sectionId` AS `sectionId`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel` from ((`teacherloads` left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_teacherloads_w_time`
--
DROP TABLE IF EXISTS `v_teacherloads_w_time`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_teacherloads_w_time`  AS  select `teacherloads`.`id` AS `id`,`teacherloads`.`sectionId` AS `sectionId`,`teacherloads`.`teacherId` AS `teacherId`,ifnull(`users`.`user_Lname`,'None') AS `user_Lname`,ifnull(`users`.`user_Fname`,'None') AS `user_Fname`,ifnull(`users`.`user_Mname`,'None') AS `user_Mname`,ifnull(`users`.`gender`,'None') AS `gender`,`teacherloads`.`subjectId` AS `subjectId`,`subjects`.`subjectCode` AS `subjectCode`,`subjects`.`description` AS `description`,`subjects`.`gradeLevel` AS `gradeLevel`,`teacherloads`.`timeStart` AS `timeStart`,`teacherloads`.`timeEnd` AS `timeEnd` from ((`teacherloads` left join `users` on((`teacherloads`.`teacherId` = `users`.`id`))) left join `subjects` on((`teacherloads`.`subjectId` = `subjects`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmi`
--
ALTER TABLE `bmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmichart_female`
--
ALTER TABLE `bmichart_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmichart_male`
--
ALTER TABLE `bmichart_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booksissuedreturned`
--
ALTER TABLE `booksissuedreturned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktemplates`
--
ALTER TABLE `booktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finalgrades`
--
ALTER TABLE `finalgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hfachart_female`
--
ALTER TABLE `hfachart_female`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hfachart_male`
--
ALTER TABLE `hfachart_male`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loads`
--
ALTER TABLE `loads`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherloads`
--
ALTER TABLE `teacherloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `bmi`
--
ALTER TABLE `bmi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bmichart_female`
--
ALTER TABLE `bmichart_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `bmichart_male`
--
ALTER TABLE `bmichart_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booksissuedreturned`
--
ALTER TABLE `booksissuedreturned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booktemplates`
--
ALTER TABLE `booktemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `finalgrades`
--
ALTER TABLE `finalgrades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `hfachart_female`
--
ALTER TABLE `hfachart_female`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `hfachart_male`
--
ALTER TABLE `hfachart_male`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `loads`
--
ALTER TABLE `loads`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personalinfo`
--
ALTER TABLE `personalinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `teacherloads`
--
ALTER TABLE `teacherloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
