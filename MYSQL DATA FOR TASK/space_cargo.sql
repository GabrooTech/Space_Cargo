-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `space_cargo`
--

-- --------------------------------------------------------

--
-- Table structure for table `amanati`
--

CREATE TABLE `amanati` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trackCode` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amanati`
--

INSERT INTO `amanati` (`id`, `created_at`, `updated_at`, `trackCode`, `price`, `amount`, `address`, `comment`) VALUES
(1, '2023-12-08 08:09:14', '2023-12-08 08:09:39', 'dsdasd', 222241, 14, 'დიდი დიღომი, 4000 მესხის ქუჩა N7', 'reeeeggq');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `details` longtext DEFAULT NULL,
  `userType` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext DEFAULT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `referer` longtext DEFAULT NULL,
  `methodType` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `details`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 07:34:02', '2023-12-08 07:34:02', NULL),
(2, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'POST', '2023-12-08 07:34:53', '2023-12-08 07:34:53', NULL),
(3, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:34:53', '2023-12-08 07:34:53', NULL),
(4, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:37:03', '2023-12-08 07:37:03', NULL),
(5, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:38:16', '2023-12-08 07:38:16', NULL),
(6, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:39:04', '2023-12-08 07:39:04', NULL),
(7, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:39:12', '2023-12-08 07:39:12', NULL),
(8, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:40:01', '2023-12-08 07:40:01', NULL),
(9, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:41:11', '2023-12-08 07:41:11', NULL),
(10, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:42:12', '2023-12-08 07:42:12', NULL),
(11, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:43:28', '2023-12-08 07:43:28', NULL),
(12, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:44:34', '2023-12-08 07:44:34', NULL),
(13, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:44:43', '2023-12-08 07:44:43', NULL),
(14, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/register', 'GET', '2023-12-08 07:44:50', '2023-12-08 07:44:50', NULL),
(15, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:11:56', '2023-12-08 08:11:56', NULL),
(16, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:15:00', '2023-12-08 08:15:00', NULL),
(17, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:16:49', '2023-12-08 08:16:49', NULL),
(18, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:17:09', '2023-12-08 08:17:09', NULL),
(19, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:17:10', '2023-12-08 08:17:10', NULL),
(20, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:19:58', '2023-12-08 08:19:58', NULL),
(21, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:20:04', '2023-12-08 08:20:04', NULL),
(22, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:22:20', '2023-12-08 08:22:20', NULL),
(23, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:23:44', '2023-12-08 08:23:44', NULL),
(24, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:27:40', '2023-12-08 08:27:40', NULL),
(25, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:33:25', '2023-12-08 08:33:25', NULL),
(26, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:34:07', '2023-12-08 08:34:07', NULL),
(27, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:34:35', '2023-12-08 08:34:35', NULL),
(28, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:41:21', '2023-12-08 08:41:21', NULL),
(29, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:41:21', '2023-12-08 08:41:21', NULL),
(30, 'Viewed activity', NULL, 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:42:32', '2023-12-08 08:42:32', NULL),
(31, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:42:43', '2023-12-08 08:42:43', NULL),
(32, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:42:44', '2023-12-08 08:42:44', NULL),
(33, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:42:53', '2023-12-08 08:42:53', NULL),
(34, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:44:19', '2023-12-08 08:44:19', NULL),
(35, 'Viewed /', NULL, 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2023-12-08 08:55:29', '2023-12-08 08:55:29', NULL),
(36, 'Logged Out', NULL, 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/dashboard', 'POST', '2023-12-08 09:12:29', '2023-12-08 09:12:29', NULL),
(37, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:12:35', '2023-12-08 09:12:35', NULL),
(38, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:12:39', '2023-12-08 09:12:39', NULL),
(39, 'Failed Login Attempt', NULL, 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:13:07', '2023-12-08 09:13:07', NULL),
(40, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:13:17', '2023-12-08 09:13:17', NULL),
(41, 'Logged Out', NULL, 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/dashboard', 'POST', '2023-12-08 09:14:34', '2023-12-08 09:14:34', NULL),
(42, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:15:21', '2023-12-08 09:15:21', NULL),
(43, 'Logged Out', NULL, 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/dashboard', 'POST', '2023-12-08 09:39:40', '2023-12-08 09:39:40', NULL),
(44, 'Logged In', NULL, 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2023-12-08 09:39:49', '2023-12-08 09:39:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(13, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2023_12_04_173756_create_sessions_table', 1),
(17, '2023_12_04_190327_create_parcels_table', 1),
(18, '2023_12_04_192937_create_amanati_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hdvXu2ppMiKl6wDczYTgG5JYPloDOe8yd9qWI8y7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTlhuNW8xOHJBYlowYnVtNFRuYmpIQmdoeVVqYkJRZnNWcWg0b1lRWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbWFuYXRpIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRKZDllbG91bEZiUDFHYldoUURsc3l1cnpCWExVYnVaQi8zVlRHc01uVTl5cy9NNm1QdDc4SyI7fQ==', 1702042790);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'გიორგი', 'g.gabriadze23@sangu.edu.ge', NULL, '$2y$12$Jd9eloulFbP1GbWhQDlsyurzBXLUbuZB/3VTGsMnU9ys/M6mPt78K', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-08 07:34:53', '2023-12-08 07:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amanati`
--
ALTER TABLE `amanati`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amanati_trackcode_unique` (`trackCode`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `amanati`
--
ALTER TABLE `amanati`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
