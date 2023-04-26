-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 12:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(23) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel convention 2022', '', ''),
(2, 'Laravel convention 2024', '', ''),
(3, 'React convention 2024', '', ''),
(4, 'Laravel convention 2022', '', ''),
(5, 'Laravel convention 2024', '', ''),
(6, 'React convention 2024', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` varchar(0) DEFAULT NULL,
  `uuid` varchar(0) DEFAULT NULL,
  `connection` varchar(0) DEFAULT NULL,
  `queue` varchar(0) DEFAULT NULL,
  `payload` varchar(0) DEFAULT NULL,
  `exception` varchar(0) DEFAULT NULL,
  `failed_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(36) DEFAULT NULL,
  `parent_id` varchar(2) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'All events', '/events', '', '', ''),
(2, 'Laracon', '/events/laracon', '1', '', ''),
(3, 'Illuminate your knowledge of the laravel code base', '/events/laracon/workshops/illuminate', '2', '', ''),
(4, 'The new Eloquent - load more with less', '/events/laracon/workshops/eloquent', '2', '', ''),
(5, 'Reactcon', '/events/reactcon', '1', '', ''),
(6, '#NoClass pure functional programming', '/events/reactcon/workshops/noclass', '5', '', ''),
(7, 'Navigating the function jungle', '/events/reactcon/workshops/jungle', '5', '', ''),
(8, 'All events', '/events', '', '', ''),
(9, 'Laracon', '/events/laracon', '8', '', ''),
(10, 'Illuminate your knowledge of the laravel code base', '/events/laracon/workshops/illuminate', '9', '', ''),
(11, 'The new Eloquent - load more with less', '/events/laracon/workshops/eloquent', '9', '', ''),
(12, 'Reactcon', '/events/reactcon', '8', '', ''),
(13, '#NoClass pure functional programming', '/events/reactcon/workshops/noclass', '12', '', ''),
(14, 'Navigating the function jungle', '/events/reactcon/workshops/jungle', '12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `migration` varchar(46) DEFAULT NULL,
  `batch` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_19_093349_bootstrap_test_database', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(10) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('migrations', 4),
('events', 6),
('workshops', 10),
('menu_items', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `email_verified_at` varchar(0) DEFAULT NULL,
  `password` varchar(0) DEFAULT NULL,
  `remember_token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` tinyint(4) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `event_id` tinyint(4) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `start`, `end`, `event_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2021-11-21 09:00:00', '2021-11-21 17:00:00', 1, 'Illuminate your knowledge of the laravel code base', '', ''),
(2, '2022-11-21 15:00:00', '2022-11-21 17:00:00', 2, 'The new Eloquent - load more with less', '', ''),
(3, '2022-10-21 17:00:00', '2022-10-21 19:00:00', 2, 'AutoEx - handles exceptions 100% automatic', '', ''),
(4, '2021-01-21 07:00:00', '2021-01-21 12:00:00', 3, '#NoClass pure functional programming', '', ''),
(5, '2022-05-21 17:00:00', '2021-05-21 21:00:00', 3, 'Navigating the function jungle', '', ''),
(6, '2023-11-21 17:00:00', '2023-11-23 17:00:00', 4, 'Illuminate your knowledge of the laravel code base', '', ''),
(7, '2024-11-21 17:00:00', '2024-11-25 17:00:00', 5, 'The new Eloquent - load more with less', '', ''),
(8, '2023-09-21 17:00:00', '2023-09-23 17:00:00', 5, 'AutoEx - handles exceptions 100% automatic', '', ''),
(9, '2024-10-21 17:00:00', '2024-10-23 17:00:00', 6, '#NoClass pure functional programming', '', ''),
(10, '2023-12-21 13:00:00', '2023-12-21 20:00:00', 6, 'Navigating the function jungle', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
