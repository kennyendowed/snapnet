-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2020 at 06:08 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoris_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `name`, `key`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yorisapi', 'brVImSIU63ONVRFnXME6BF3i0onBdHvace5t4iJlDUsgBqexitA77i5upXTXQlfS', 1, '2020-11-18 13:21:55', '2020-11-18 13:21:55', NULL);

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
(1, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:41:05', '2020-11-20 03:41:05'),
(2, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:44:35', '2020-11-20 03:44:35'),
(3, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:46:01', '2020-11-20 03:46:01'),
(4, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:46:23', '2020-11-20 03:46:23'),
(5, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:46:41', '2020-11-20 03:46:41'),
(6, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:47:32', '2020-11-20 03:47:32'),
(7, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:52:12', '2020-11-20 03:52:12'),
(8, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:55:26', '2020-11-20 03:55:26'),
(9, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 03:57:20', '2020-11-20 03:57:20'),
(10, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:00:05', '2020-11-20 04:00:05'),
(11, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:02:18', '2020-11-20 04:02:18'),
(12, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:03:56', '2020-11-20 04:03:56'),
(13, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:13:07', '2020-11-20 04:13:07'),
(14, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:14:58', '2020-11-20 04:14:58'),
(15, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:17:17', '2020-11-20 04:17:17'),
(16, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:18:37', '2020-11-20 04:18:37'),
(17, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:20:21', '2020-11-20 04:20:21'),
(18, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:22:14', '2020-11-20 04:22:14'),
(19, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:31:32', '2020-11-20 04:31:32'),
(20, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:32:22', '2020-11-20 04:32:22'),
(21, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:50:14', '2020-11-20 04:50:14'),
(22, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 04:50:27', '2020-11-20 04:50:27'),
(23, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 05:03:21', '2020-11-20 05:03:21'),
(24, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signUp', '2020-11-20 05:05:28', '2020-11-20 05:05:28');

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

--
-- Dumping data for table `api_key_admin_events`
--

INSERT INTO `api_key_admin_events` (`id`, `api_key_id`, `ip_address`, `event`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'created', '2020-11-18 13:21:55', '2020-11-18 13:21:55');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_12_28_111110_create_api_keys_table', 1),
(4, '2016_12_28_111111_create_api_key_access_events_table', 1),
(5, '2016_12_28_111112_create_api_key_admin_events_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_11_18_134502_create_sender_details_table', 1),
(8, '2020_11_18_135940_create_recievers_details_table', 1),
(9, '2020_11_18_140508_create_transactions_table', 1),
(10, '2020_11_18_141021_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_number_id` bigint(20) NOT NULL,
  `content_of_goods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature_of_goods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmbkg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_details` json NOT NULL,
  `reciever_details` json NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logistics_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `recievers_details`
--

CREATE TABLE `recievers_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `sender_details` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sender_details`
--

CREATE TABLE `sender_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_details` json NOT NULL,
  `tracking_number_id` bigint(20) NOT NULL,
  `courer_company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_of_goods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature_of_goods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode_of_transportation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logistics_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_permission` tinyint(4) NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `phonenumber`, `country`, `otp_verify`, `address`, `dob`, `is_permission`, `ip_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 6262, 'peace', 'Akpan', 'kenneyg50@gmail.com', NULL, '$2y$10$uHYge2bc6f0MaZ28kTT0pOsnhme01Posy2zKi/Q6VRwKwmbUM1LIK', '08031877312', 'nigerian', '$2y$10$RmjQwCzen53XBZWLyzPWp.PIK.1IqQ0rnOqBTnqoT4h45mFFOLmM.', 'rolex road north west road', '1977-08-25', 3, '127.0.0.1', NULL, '2020-11-20 05:05:33', '2020-11-20 05:05:33');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recievers_details`
--
ALTER TABLE `recievers_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sender_details`
--
ALTER TABLE `sender_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recievers_details`
--
ALTER TABLE `recievers_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sender_details`
--
ALTER TABLE `sender_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
