-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 08:05 AM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
