-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 09:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dots`
--

-- --------------------------------------------------------

--
-- Table structure for table `createacc`
--

CREATE TABLE `createacc` (
  `aadhar` int(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  `confirm` varchar(30) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `pincode` int(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createacc`
--

INSERT INTO `createacc` (`aadhar`, `address`, `age`, `blood`, `confirm`, `fullname`, `gender`, `mail`, `mobile`, `nationality`, `pass`, `pincode`, `username`) VALUES
(123456, 'AP', 20, 'opos', 'Bindu@1234', 'Manchikalapudi Bindu Sri', 'Female', 'bindu@gmail.com', 9110271, 'Indian', 'Bindu@1234', 522016, 'Bindu'),
(123456, 'Guntur', 20, 'opos', 'Bindu@12', 'Bindu', 'Female', 'bindu@gmail.com', 9110, 'Indian', 'Bindu@12', 522016, 'Bindu'),
(32423, 'skjdf', 20, 'opos', 'bindu@B12', 'B', 'Female', 'abc@mail.com', 8324, 'Indian', 'bindu@B12', 134, 'Bindu');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dateandtime` datetime NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `category`, `description`, `dateandtime`, `location`) VALUES
(1, 'Sample', 'Webinar', 'Sample one', '2020-06-21 07:06:00', 'XYZ'),
(2, 'Sample2', 'Seminar', 'Sample seminar', '2020-06-21 08:12:00', 'ABC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
