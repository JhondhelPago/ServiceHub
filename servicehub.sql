-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 10:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servicehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refreshToken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `phone`, `email`, `username`, `password`, `role`, `refreshToken`) VALUES
('admin1000', 'admin1', 'admin1', '9876543210', 'admin1@gmail.com', 'admin1', '1234', 'regular', NULL),
('admin1002', 'admin2', 'admin2', '9876543210', 'admin2@gmail.com', 'admin2', '1234', 'manager', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_post`
--

CREATE TABLE `event_post` (
  `id` int(11) NOT NULL,
  `creator` varchar(191) NOT NULL,
  `date_created` varchar(191) NOT NULL,
  `time_created` varchar(191) NOT NULL,
  `scheduled_date` varchar(191) NOT NULL,
  `scheduled_time` varchar(191) NOT NULL,
  `location` varchar(191) NOT NULL,
  `event_title` varchar(191) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `imagefiles` varchar(100) NOT NULL,
  `target_group` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_post`
--

INSERT INTO `event_post` (`id`, `creator`, `date_created`, `time_created`, `scheduled_date`, `scheduled_time`, `location`, `event_title`, `description`, `imagefiles`, `target_group`) VALUES
(19, 'admin1000', '2024-4-12', '12:54:48', '2024-04-12', '12:54', 'somewhere else', 'sample title', 'sample description', '[\"event-uploadImages-1712897688275-249390448.jpg\",\"event-uploadImages-1712897688276-195238413.jpg\"]', '[\"Disability 2\",\"Disability 3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `event_post_hist`
--

CREATE TABLE `event_post_hist` (
  `id` int(11) NOT NULL,
  `creator` varchar(191) NOT NULL,
  `date_created` varchar(191) NOT NULL,
  `time_created` varchar(191) NOT NULL,
  `event_title` varchar(191) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `imagefiles` varchar(100) NOT NULL,
  `target_group` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event_registry`
--

CREATE TABLE `event_registry` (
  `registration_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id` int(11) NOT NULL,
  `creator` varchar(191) NOT NULL,
  `date_created` varchar(191) NOT NULL,
  `time_created` varchar(191) NOT NULL,
  `scheduled_date` varchar(191) NOT NULL,
  `scheduled_time` varchar(191) NOT NULL,
  `location` varchar(191) NOT NULL,
  `event_title` varchar(191) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `imagefiles` varchar(100) NOT NULL,
  `target_group` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `creator`, `date_created`, `time_created`, `scheduled_date`, `scheduled_time`, `location`, `event_title`, `description`, `imagefiles`, `target_group`) VALUES
(1, 'admin1000', '2024-4-14', '14:38:50', '2024-04-14', '14:38', 'somewhere else', 'sample job title', 'sample description', '[\"uploadImages-1713076730161-23752116.jpg\",\"uploadImages-1713076730163-77720810.jpg\"]', '[\"Disability 3\",\"Disability 4\"]'),
(2, 'admin1000', '2024-4-14', '15:07:22', '2024-04-14', '14:50', 'somewhere else', 'sample title job', 'sample description', '[\"uploadImages-1713078442967-829626768.png\",\"uploadImages-1713078442982-233619909.jpg\"]', '[\"Disability 3\",\"Disability 4\"]'),
(3, 'admin1000', '2024-4-14', '15:13:17', '2024-04-14', '15:12', 'somewhere else', 'sample job posting', 'sample job description', '\"uploadImages-1713078797165-274242621.jpg,uploadImages-1713078797167-497317249.jpg\"', '\"Disability 2,Disability 4\"'),
(4, 'admin1000', '2024-4-14', '15:16:10', '2024-04-14', '15:15', 'somewhere else', 'sample title job', 'sample description', '\"uploadImages-1713078970925-87319992.jpg,uploadImages-1713078970926-646829224.jpg\"', '\"Disability 4,Disability 5\"');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_hist`
--

CREATE TABLE `job_post_hist` (
  `id` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_createad` varchar(191) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `imgaefiles` varchar(100) NOT NULL,
  `target` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_registry`
--

CREATE TABLE `job_registry` (
  `registration_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) NOT NULL,
  `birthdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthplace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizenship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `houseno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elementary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highschool` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attain1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senior` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attain2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attain3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearEmploy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disability` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_disabled` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specificDevice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specificMedicine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refreshToken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `createdAt`, `firstName`, `middleName`, `lastName`, `suffix`, `age`, `birthdate`, `birthplace`, `gender`, `religion`, `citizenship`, `civil`, `email`, `phone`, `landline`, `houseno`, `street`, `barangay`, `district`, `city`, `province`, `zipcode`, `elementary`, `attain`, `highschool`, `attain1`, `senior`, `attain2`, `college`, `attain3`, `employment`, `occupation`, `yearEmploy`, `skill1`, `skill2`, `blood`, `height`, `weight`, `disability`, `visibility`, `made_disabled`, `status`, `device`, `specificDevice`, `medicine`, `specificMedicine`, `others`, `password`, `refreshToken`, `role`) VALUES
('1000', '2024-03-26 23:02:49.826', 'sample1000', '', '', NULL, 0, '', '', '', '', '', '', 'sample1000@gmail.com', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, '', '1234', NULL, ''),
('1001', '2024-03-27 01:02:43.313', 'Second1001', '', '', NULL, 0, '', '', '', '', '', '', 'second1001@gmail.com', '', NULL, NULL, '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, '', '1234', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_post`
--
ALTER TABLE `event_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post_hist`
--
ALTER TABLE `job_post_hist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_post`
--
ALTER TABLE `event_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
