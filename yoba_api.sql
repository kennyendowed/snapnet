-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2020 at 05:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoba_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountmaster`
--

CREATE TABLE `accountmaster` (
  `id` int(11) NOT NULL,
  `accounttype` varchar(25) NOT NULL,
  `prefix` varchar(11) NOT NULL,
  `minbalance` double(12,2) NOT NULL,
  `interest` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountmaster`
--

INSERT INTO `accountmaster` (`id`, `accounttype`, `prefix`, `minbalance`, `interest`) VALUES
(2, 'Current', 'Cu', 2000.00, 10.00),
(6, 'Dsaved', 'Dd', 1000.00, 10.00),
(11, 'Saving', 'Sa', 1000.00, 15.50);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accstatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountbalance` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `name`, `key`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yoba-api', 'BdkhZ2nxDCr9jGDR2ZYvCtVEu0hSoiz4RZXaBKR5gpI2s2wXdKMgaeVNfXDkwG2j', 1, '2020-06-07 14:59:12', '2020-06-07 14:59:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_key_access_events`
--

CREATE TABLE `api_key_access_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_access_events`
--

INSERT INTO `api_key_access_events` (`id`, `api_key_id`, `ip_address`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/clear', '2020-06-08 07:23:33', '2020-06-08 07:23:33'),
(2, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/clear', '2020-06-08 07:40:22', '2020-06-08 07:40:22'),
(3, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/clear', '2020-06-08 07:41:44', '2020-06-08 07:41:44'),
(4, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:11:39', '2020-06-08 15:11:39'),
(5, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:11:57', '2020-06-08 15:11:57'),
(6, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:12:43', '2020-06-08 15:12:43'),
(7, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:12:53', '2020-06-08 15:12:53'),
(8, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:13:00', '2020-06-08 15:13:00'),
(9, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:13:30', '2020-06-08 15:13:30'),
(10, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:13:52', '2020-06-08 15:13:52'),
(11, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:15:25', '2020-06-08 15:15:25'),
(12, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:16:27', '2020-06-08 15:16:27'),
(13, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/payload', '2020-06-08 15:16:54', '2020-06-08 15:16:54'),
(14, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:17:01', '2020-06-08 15:17:01'),
(15, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:17:13', '2020-06-08 15:17:13'),
(16, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:30:00', '2020-06-08 15:30:00'),
(17, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:30:09', '2020-06-08 15:30:09'),
(18, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:31:09', '2020-06-08 15:31:09'),
(19, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:33:27', '2020-06-08 15:33:27'),
(20, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:33:45', '2020-06-08 15:33:45'),
(21, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-08 15:41:01', '2020-06-08 15:41:01'),
(22, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:41:31', '2020-06-08 15:41:31'),
(23, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/me', '2020-06-08 15:58:15', '2020-06-08 15:58:15'),
(24, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/customer/cards', '2020-06-08 15:58:47', '2020-06-08 15:58:47'),
(25, 1, '129.205.124.16', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-11 05:19:45', '2020-06-11 05:19:45'),
(26, 1, '184.147.15.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-16 03:55:20', '2020-06-16 03:55:20'),
(27, 1, '184.147.15.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-16 03:55:33', '2020-06-16 03:55:33'),
(28, 1, '184.147.15.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-16 03:56:59', '2020-06-16 03:56:59'),
(29, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-21 20:01:55', '2020-06-21 20:01:55'),
(30, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-21 20:03:14', '2020-06-21 20:03:14'),
(31, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-21 20:06:29', '2020-06-21 20:06:29'),
(32, 1, '129.205.124.29', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-22 08:23:26', '2020-06-22 08:23:26'),
(33, 1, '129.205.124.29', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-22 08:37:49', '2020-06-22 08:37:49'),
(34, 1, '129.205.124.29', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-22 08:46:07', '2020-06-22 08:46:07'),
(35, 1, '206.189.180.4', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-23 12:26:52', '2020-06-23 12:26:52'),
(36, 1, '206.189.180.4', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-23 12:27:30', '2020-06-23 12:27:30'),
(37, 1, '206.189.180.4', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-23 12:28:27', '2020-06-23 12:28:27'),
(38, 1, '129.205.124.30', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-23 17:25:01', '2020-06-23 17:25:01'),
(39, 1, '129.205.124.30', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-23 17:29:12', '2020-06-23 17:29:12'),
(40, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-27 22:47:16', '2020-06-27 22:47:16'),
(41, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?password=1111111&userName=kenneyg50%40gmail.com', '2020-06-27 22:47:47', '2020-06-27 22:47:47'),
(42, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-27 22:48:21', '2020-06-27 22:48:21'),
(43, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin?dob=2019%2F11%2F11&email=a%40s.com&firstName=Edem&lastName=Ek&password=Password%40123&phoneNumber=1234567890', '2020-06-27 22:49:50', '2020-06-27 22:49:50'),
(44, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-27 22:49:58', '2020-06-27 22:49:58'),
(45, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:51:18', '2020-06-27 22:51:18'),
(46, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:52:56', '2020-06-27 22:52:56'),
(47, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:53:09', '2020-06-27 22:53:09'),
(48, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:55:47', '2020-06-27 22:55:47'),
(49, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:58:23', '2020-06-27 22:58:23'),
(50, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:59:17', '2020-06-27 22:59:17'),
(51, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 22:59:30', '2020-06-27 22:59:30'),
(52, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:00:08', '2020-06-27 23:00:08'),
(53, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:00:28', '2020-06-27 23:00:28'),
(54, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:00:50', '2020-06-27 23:00:50'),
(55, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:01:25', '2020-06-27 23:01:25'),
(56, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:01:37', '2020-06-27 23:01:37'),
(57, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:02:22', '2020-06-27 23:02:22'),
(58, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:03:50', '2020-06-27 23:03:50'),
(59, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:03:57', '2020-06-27 23:03:57'),
(60, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-27 23:05:08', '2020-06-27 23:05:08'),
(61, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-27 23:09:02', '2020-06-27 23:09:02'),
(62, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-27 23:09:13', '2020-06-27 23:09:13'),
(63, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-27 23:10:38', '2020-06-27 23:10:38'),
(64, 1, '184.147.12.254', 'https://app.expertdiplomaticservice.com/api/signin', '2020-06-27 23:13:16', '2020-06-27 23:13:16'),
(65, 1, '129.205.124.39', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-28 01:27:38', '2020-06-28 01:27:38'),
(66, 1, '129.205.124.39', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-28 01:27:55', '2020-06-28 01:27:55'),
(67, 1, '129.205.124.39', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-06-28 01:28:18', '2020-06-28 01:28:18'),
(68, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:25:36', '2020-07-07 19:25:36'),
(69, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:26:11', '2020-07-07 19:26:11'),
(70, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:26:25', '2020-07-07 19:26:25'),
(71, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:26:52', '2020-07-07 19:26:52'),
(72, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:27:50', '2020-07-07 19:27:50'),
(73, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:27:59', '2020-07-07 19:27:59'),
(74, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:28:46', '2020-07-07 19:28:46'),
(75, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:29:50', '2020-07-07 19:29:50'),
(76, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:30:25', '2020-07-07 19:30:25'),
(77, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:30:45', '2020-07-07 19:30:45'),
(78, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:31:19', '2020-07-07 19:31:19'),
(79, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:31:41', '2020-07-07 19:31:41'),
(80, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:32:11', '2020-07-07 19:32:11'),
(81, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:33:55', '2020-07-07 19:33:55'),
(82, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:35:36', '2020-07-07 19:35:36'),
(83, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:37:01', '2020-07-07 19:37:01'),
(84, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:40:21', '2020-07-07 19:40:21'),
(85, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:40:30', '2020-07-07 19:40:30'),
(86, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:40:53', '2020-07-07 19:40:53'),
(87, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:42:48', '2020-07-07 19:42:48'),
(88, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:43:50', '2020-07-07 19:43:50'),
(89, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:44:29', '2020-07-07 19:44:29'),
(90, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:47:21', '2020-07-07 19:47:21'),
(91, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:47:35', '2020-07-07 19:47:35'),
(92, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:47:56', '2020-07-07 19:47:56'),
(93, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:49:05', '2020-07-07 19:49:05'),
(94, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:49:41', '2020-07-07 19:49:41'),
(95, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signUp', '2020-07-07 19:52:38', '2020-07-07 19:52:38'),
(96, 1, '102.89.2.154', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-07 19:55:18', '2020-07-07 19:55:18'),
(97, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-07 19:56:11', '2020-07-07 19:56:11'),
(98, 1, '102.89.3.126', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-07 19:57:37', '2020-07-07 19:57:37'),
(99, 1, '102.89.3.216', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-07 20:36:19', '2020-07-07 20:36:19'),
(100, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:09:05', '2020-07-08 00:09:05'),
(101, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:10:16', '2020-07-08 00:10:16'),
(102, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-08 00:11:13', '2020-07-08 00:11:13'),
(103, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-08 00:11:44', '2020-07-08 00:11:44'),
(104, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/signin', '2020-07-08 00:11:51', '2020-07-08 00:11:51'),
(105, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:12:18', '2020-07-08 00:12:18'),
(106, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:13:13', '2020-07-08 00:13:13'),
(107, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:14:13', '2020-07-08 00:14:13'),
(108, 1, '197.210.28.151', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 00:14:48', '2020-07-08 00:14:48'),
(109, 1, '197.210.64.190', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-08 17:14:22', '2020-07-08 17:14:22'),
(110, 1, '197.210.64.173', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-09 01:58:25', '2020-07-09 01:58:25'),
(111, 1, '197.210.64.173', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-09 01:58:45', '2020-07-09 01:58:45'),
(112, 1, '197.210.64.173', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-09 01:58:50', '2020-07-09 01:58:50'),
(113, 1, '197.210.64.173', 'https://app.expertdiplomaticservice.com/api/customer/profile', '2020-07-09 02:04:07', '2020-07-09 02:04:07'),
(114, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 08:06:59', '2020-09-11 08:06:59'),
(115, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 08:08:39', '2020-09-11 08:08:39'),
(116, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 08:10:28', '2020-09-11 08:10:28'),
(117, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 15:08:44', '2020-09-11 15:08:44'),
(118, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 15:10:52', '2020-09-11 15:10:52'),
(119, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 15:11:07', '2020-09-11 15:11:07'),
(120, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 15:13:41', '2020-09-11 15:13:41'),
(121, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-09-11 15:16:27', '2020-09-11 15:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `api_key_admin_events`
--

CREATE TABLE `api_key_admin_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank`, `code`) VALUES
(1, 'Access Bank', '044'),
(2, 'Aso Savinhgs and Loan', '401'),
(3, 'Citi Bank', '023'),
(4, 'Covenant Microfinance Bank', '551'),
(5, 'Diamond Bank', '063'),
(6, 'Eco Bank', '050'),
(7, 'Eco Mobile', '307'),
(8, 'Ekondo Microfinance Bank', '562'),
(9, 'Enterprice Bank', '084'),
(10, 'Equitorial Trust Bank', '040'),
(11, 'Fidelity Bank', '070'),
(12, 'Fidelity Mobile', '318'),
(13, 'Finatrust Microfinance Bank', '608'),
(14, 'First City Monument Bank', '214'),
(15, 'First Inland Bank', '085'),
(16, 'Guarantee Trust Bank', '058'),
(17, 'Heritage Bank', '030'),
(18, 'Jaiz Bank', '301'),
(19, 'Keystone Bank', '082'),
(20, 'Main Street Bank', '014'),
(21, 'PAGA', '327'),
(22, 'Polaris Bank (Skye Bank)', '076'),
(23, 'Stanbic IBTC BAnk', '221'),
(24, 'Stanbic Mobile', '304'),
(25, 'Standard Chartered Bank', '068'),
(26, 'Sterline Bank', '232'),
(27, 'Sterline Mobile', '326'),
(28, 'Sun Trust Bank', '100'),
(29, 'Union Bank of Nigeria', '032'),
(30, 'United Bank For Africa', '033'),
(31, 'Unity Bank', '215'),
(32, 'Wema Bank', '035'),
(33, 'Zenith Bank', '057'),
(34, 'Zenith Mobile', '322'),
(35, 'First Bank of Nigeria Plc', '011'),
(36, 'Access Bank Plc (Diamond)', '063');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `expiry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` bigint(20) DEFAULT NULL,
  `cardType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `comment`) VALUES
(1, 'US Dollar', 'USD', ''),
(2, 'Australian Dollar', 'AUD', ''),
(3, 'Brazilian Real', 'BRL', ''),
(4, 'Canadian Dollar', 'CAD', ''),
(5, 'Czech Koruna', 'CZK', ''),
(6, 'Danish Krone', 'DKK', ''),
(7, 'Euro', 'EUR', ''),
(8, 'Thai Baht', 'THB', ''),
(9, 'Hong Kong Dollar', 'HKD', ''),
(10, 'Hungarian Forint', 'HUF', ''),
(11, 'Israeli New Sheqel', 'ILS', ''),
(12, 'Japanese Yen', 'JPY', ''),
(13, 'Malaysian Ringgit', 'MYR', ''),
(14, 'Mexican Peso', 'MXN', ''),
(15, 'Nigeria Naira', 'NGN', ''),
(16, 'New Zealand Dollar', 'NZD', ''),
(17, 'Philippine Peso', 'PHP', ''),
(18, 'Polish Zloty ', 'PLN', ''),
(19, 'Pound Sterling', 'GBP', ''),
(20, 'Russian Ruble', 'RUB', ''),
(21, 'Singapore Dollar', 'SGD', ''),
(22, 'Swedish Krona', 'SEK', ''),
(23, 'Swiss Franc', 'CHF', ''),
(24, 'Taiwan New Dollar', 'TWD', ''),
(26, 'Turkish Lira', 'TRY', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `accountno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bvn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionPIN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `accstatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customerid`, `accountno`, `firstname`, `lastname`, `middleName`, `email`, `phone`, `dob`, `bvn`, `avatar`, `bankName`, `password`, `transactionPIN`, `accstatus`, `created_at`, `updated_at`) VALUES
(2, 5524, '1234567890', 'peace', 'Akpan', NULL, 'kenneyg50@gmail.com', '08031877312', NULL, NULL, NULL, NULL, 'eyJpdiI6ImZoOVpMXC9idGhnRzNITCtxZDgxUDVnPT0iLCJ2YWx1ZSI6Imd3TW92cENXc0lQMFFYQjVEYWtCNnc9PSIsIm1hYyI6IjhhOGZkYWY5YmJmNDdkY2E5MzgzYzA5ZTE3OTU2NWYyMmUxMjA1ZDkzMTk5N2Q5ZTJlZDcwZTY1YTNhNzkwZjIifQ==', 'eyJpdiI6IkROZndMajVLWEJlcTR6WVhIc1ZIZlE9PSIsInZhbHVlIjoiV1lhUUpDSGdtdmxkMmlWMkhEdVN4Zz09IiwibWFjIjoiY2VlNjY1ZTllYjUwY2Q1NWIwYzM4ZjMxZWI0MWExNjI4YjQ1MzEzY2Y4NzEzODVmN2U2YzFhMGU2NTc0ZjBmOSJ9', 'InActive', '2020-09-11 15:13:44', '2020-09-11 15:13:44'),
(3, 4823, '1234567890', 'kenneth', 'Akpan', NULL, 'kennyendowed@hotmail.com', '08031877312', NULL, NULL, NULL, NULL, 'eyJpdiI6IjVpXC81NzZIdFpsYlFqZk9YSkJ6SXRRPT0iLCJ2YWx1ZSI6IlwvK0VTNVFNZEZTdm5TQ0R0OUkyakxRPT0iLCJtYWMiOiIzMzZmNjc2MjViZWZkOGI4NGI5YzkzOGRjNzFkZmJiYWViOTI1N2U0ZDYyZjYxZTM4ZDgxODAzYWNkZDU0NDQ0In0=', 'eyJpdiI6Ind6SHJxWXJYa0RyaEtQb2ZkUGFISnc9PSIsInZhbHVlIjoiN0J0VHVyUVNBQnJ6UHpiSXdrSDB6QT09IiwibWFjIjoiMzg2ZDNmZGU2YTE3MTM0Nzg1ZWY3MmNkYzYxMDZhMmYzMTc3MGMwNDA0M2E4ODU4ZTM4ZGQyOTBkYjlmYjBlYiJ9', 'InActive', '2020-09-11 15:16:31', '2020-09-11 15:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(6) NOT NULL,
  `customerid` varchar(33) NOT NULL,
  `amount` int(55) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

CREATE TABLE `duration` (
  `id` int(22) NOT NULL,
  `name` varchar(33) NOT NULL,
  `value` int(33) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`id`, `name`, `value`, `status`) VALUES
(1, 'One Month', 30, 1),
(2, 'Two Months', 60, 1),
(3, 'Three Months', 90, 1),
(4, 'Four Months', 120, 1),
(5, 'Five Months', 150, 1),
(6, 'Six Months', 180, 1),
(7, 'Seven Months', 210, 1),
(8, 'Eight Months', 230, 1),
(9, 'Nine Months', 260, 1),
(10, 'Ten Months', 290, 1),
(11, 'Eleven Months', 320, 1),
(12, 'Twelve Months', 365, 1),
(13, 'Two Years', 730, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(10) NOT NULL,
  `loanid` int(10) NOT NULL,
  `loantype` varchar(25) NOT NULL,
  `loanamt` float(10,2) NOT NULL,
  `loannumber` varchar(255) NOT NULL,
  `customerid` int(12) NOT NULL,
  `acctno` varchar(200) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `balance` int(200) DEFAULT 0,
  `total` float(10,2) DEFAULT 0.00,
  `paid` float(10,2) DEFAULT 0.00,
  `startdate` date DEFAULT NULL,
  `status` int(2) DEFAULT 0,
  `signed` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loanpayment`
--

CREATE TABLE `loanpayment` (
  `id` int(11) NOT NULL,
  `customerid` int(33) NOT NULL,
  `loanid` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paidamt` int(10) NOT NULL,
  `principleamt` float(10,2) NOT NULL DEFAULT 0.00,
  `interestamt` float(10,2) NOT NULL DEFAULT 0.00,
  `balance` float(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loantype`
--

CREATE TABLE `loantype` (
  `id` int(10) NOT NULL,
  `loantype` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `maximumamt` float(10,2) NOT NULL,
  `minimumamt` float(10,2) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loantype`
--

INSERT INTO `loantype` (`id`, `loantype`, `prefix`, `maximumamt`, `minimumamt`, `interest`, `status`) VALUES
(1, 'Car Loan', 'CL', 5000.00, 500.00, 15.00, 'active'),
(2, 'Home Loan', 'HL', 50000.00, 500.00, 15.00, 'active'),
(3, 'Land Loan', 'LL', 100000.00, 300.00, 15.00, 'active'),
(4, 'Other Loan', 'OL', 7000.00, 5000.00, 15.00, 'active'),
(5, 'Student Loan', 'SL', 75000.00, 1000.00, 15.00, 'active'),
(6, 'Travel Loan', 'TL', 70000.00, 1000.00, 15.00, 'active'),
(7, 'Family Loan', 'FL', 5000.00, 200.00, 15.00, 'active'),
(8, 'Family Loan', '0845', 5000.00, 200.00, 15.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(47, '2014_10_12_000000_create_users_table', 1),
(48, '2014_10_12_100000_create_password_resets_table', 1),
(49, '2019_08_19_000000_create_failed_jobs_table', 1),
(50, '2019_10_13_050324_create_customers_table', 1),
(51, '2019_10_13_051252_create_accounts_table', 1),
(52, '2020_05_21_023445_create_wallets_table', 1),
(53, '2020_05_21_164222_create_cards_table', 1),
(54, '2020_05_23_092956_create_transactions_table', 2),
(55, '2016_12_28_111110_create_api_keys_table', 3),
(56, '2016_12_28_111111_create_api_key_access_events_table', 3),
(57, '2016_12_28_111112_create_api_key_admin_events_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(6) NOT NULL,
  `name` varchar(33) NOT NULL,
  `gateway_name` varchar(22) NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `name`, `gateway_name`, `public_key`, `secret_key`, `status`) VALUES
(1, 'Paystack', 'Paystack', 'pk_test_3d7d68b858226fd9cbb224aedf329ae559e9ce7c', 'sk_test_097063091bda81d95d02b647e0a3d325e2d62278', 0),
(2, 'Rave', 'Rave', 'FLWPUBK_TEST-a796bd59a7dff674a77e1a033e83d608-X', 'FLWSECK_TEST-8d90633c741abb8ddbbfd8a22c23d498-X', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) NOT NULL,
  `bank_name` varchar(22) NOT NULL,
  `currency` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `theme_color` varchar(55) NOT NULL,
  `status` int(22) NOT NULL,
  `bank_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `bank_name`, `currency`, `email`, `phone`, `theme_color`, `status`, `bank_id`) VALUES
(1, 'Settings Banking', 'NGN', 'khaytech@khaytech.com', '+2348120960876', 'light-style-navyblue.min.css', 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `color` varchar(33) NOT NULL,
  `code` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `color`, `code`) VALUES
(1, 'Purple', 'light-style-1.min.css'),
(2, 'Light blue', 'light-style-blue.min.css'),
(3, 'Navy Blue', 'light-style-navyblue.min.css'),
(4, 'Pink', 'light-style-pink.min.css'),
(5, 'Green', 'light-style-green.min.css'),
(6, 'Red', 'light-style-red.min.css');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `accountNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usdaccounts`
--

CREATE TABLE `usdaccounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customerid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountbalance` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionPIN` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_permission` tinyint(4) DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customerid`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `transactionPIN`, `is_permission`, `ip_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 5524, NULL, 'peace Akpan', NULL, 'kenneyg50@gmail.com', NULL, '$2y$10$BWP3lRxTYNqqb0ZhXcOL4OuNVhGeuYfJHQSMgKE6UorHtlDUNAXbe', '$2y$10$lRYSbCT7ouS89Bj0/.RQLe29I8t86rsb3HNoUL69N0HkjJwWfPXTm', 3, '127.0.0.1', NULL, '2020-09-11 15:13:43', '2020-09-11 15:13:43'),
(3, 4823, NULL, 'kenneth Akpan', NULL, 'kennyendowed@hotmail.com', NULL, '$2y$10$/fAEbIZlltU1dVy6PrsZu.T/o928D3wzmcN2mhnScIbqgoqZETqam', '$2y$10$RQHEL8g2bpuPlyruTCXQFOybt0a/EMfEcuZLhNssIniAmitJdj9Zy', 3, '127.0.0.1', NULL, '2020-09-11 15:16:31', '2020-09-11 15:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inflow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outflow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `customerid`, `type`, `balance`, `inflow`, `outflow`, `created_at`, `updated_at`) VALUES
(1, 9014, 'naira', '0', '0', '0', '2020-09-11 15:11:11', '2020-09-11 15:11:11'),
(2, 9014, 'usd', '0', '0', '0', '2020-09-11 15:11:12', '2020-09-11 15:11:12'),
(3, 9014, 'loan', '0', '0', '0', '2020-09-11 15:11:12', '2020-09-11 15:11:12'),
(4, 5524, 'naira', '0', '0', '0', '2020-09-11 15:13:44', '2020-09-11 15:13:44'),
(5, 5524, 'usd', '0', '0', '0', '2020-09-11 15:13:45', '2020-09-11 15:13:45'),
(6, 5524, 'loan', '0', '0', '0', '2020-09-11 15:13:45', '2020-09-11 15:13:45'),
(7, 4823, 'naira', '0', '0', '0', '2020-09-11 15:16:31', '2020-09-11 15:16:31'),
(8, 4823, 'usd', '0', '0', '0', '2020-09-11 15:16:32', '2020-09-11 15:16:32'),
(9, 4823, 'loan', '0', '0', '0', '2020-09-11 15:16:32', '2020-09-11 15:16:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountmaster`
--
ALTER TABLE `accountmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_keys_name_index` (`name`),
  ADD KEY `api_keys_key_index` (`key`);

--
-- Indexes for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_access_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_access_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_admin_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_admin_events_event_index` (`event`),
  ADD KEY `api_key_admin_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cards_number_unique` (`number`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duration`
--
ALTER TABLE `duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loanpayment`
--
ALTER TABLE `loanpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantype`
--
ALTER TABLE `loantype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usdaccounts`
--
ALTER TABLE `usdaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountmaster`
--
ALTER TABLE `accountmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duration`
--
ALTER TABLE `duration`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loanpayment`
--
ALTER TABLE `loanpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loantype`
--
ALTER TABLE `loantype`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usdaccounts`
--
ALTER TABLE `usdaccounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD CONSTRAINT `api_key_access_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD CONSTRAINT `api_key_admin_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
