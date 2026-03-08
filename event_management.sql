-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 05:39 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event management`
--

-- --------------------------------------------------------

--
-- Table structure for table `event group`
--

CREATE TABLE `event group` (
  `group id` int(20) NOT NULL,
  `user id` int(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event invitation`
--

CREATE TABLE `event invitation` (
  `event id` int(20) NOT NULL,
  `user id` int(40) DEFAULT NULL,
  `send date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event post`
--

CREATE TABLE `event post` (
  `event_id` int(10) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `create_user` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invitation response time`
--

CREATE TABLE `invitation response time` (
  `id` int(10) NOT NULL,
  `accept` varchar(20) DEFAULT NULL,
  `reject` varchar(6) DEFAULT NULL,
  `maybe` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event group`
--
ALTER TABLE `event group`
  ADD PRIMARY KEY (`group id`);

--
-- Indexes for table `event invitation`
--
ALTER TABLE `event invitation`
  ADD PRIMARY KEY (`event id`);

--
-- Indexes for table `invitation response time`
--
ALTER TABLE `invitation response time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event group`
--
ALTER TABLE `event group`
  MODIFY `group id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitation response time`
--
ALTER TABLE `invitation response time`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
