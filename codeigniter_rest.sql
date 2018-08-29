-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2018 at 01:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, '0gw8gcwcwg848o844s0gsk4gg4g8c88k484w0ckk', 1, 1, 0, NULL, 1535527235),
(2, 0, 'sks4cckwk08socg800cscgwgo0sc0ww8w44ko080', 1, 1, 0, NULL, 1535527362);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, '', 'get', NULL, '', '::1', 1535524838, 0.945035, '1', 0),
(2, 'users/user', 'get', NULL, '', '::1', 1535524908, 1.01102, '1', 200),
(3, 'users/user', 'post', 'a:1:{s:8:\"username\";s:7:\"Pradeep\";}', '', '::1', 1535525112, 0.901723, '1', 0),
(4, 'users/user', 'post', 'a:1:{s:8:\"username\";s:7:\"Pradeep\";}', '', '::1', 1535525153, 0.904949, '1', 0),
(5, 'users/user', 'post', 'a:3:{s:4:\"name\";s:19:\"Pradeep Vishwakarma\";s:8:\"username\";s:15:\"pradeepvish1213\";s:8:\"password\";s:11:\"pradeepvish\";}', '', '::1', 1535525662, 0.560595, '1', 0),
(6, 'users/user', 'post', 'a:3:{s:4:\"name\";s:19:\"Pradeep Vishwakarma\";s:8:\"username\";s:15:\"pradeepvish1213\";s:8:\"password\";s:11:\"pradeepvish\";}', '', '::1', 1535525679, 1.04686, '1', 200),
(7, 'users/user', 'post', 'a:3:{s:4:\"name\";s:19:\"Pradeep Vishwakarma\";s:8:\"username\";s:15:\"pradeepvish1213\";s:8:\"password\";s:11:\"pradeepvish\";}', '', '::1', 1535525737, 0.981379, '1', 200),
(8, 'users', 'get', NULL, '', '::1', 1535525983, 1.02288, '1', 200),
(9, 'users', 'get', NULL, '', '::1', 1535526256, 1.09861, '1', 200),
(10, 'users', 'get', NULL, '', '::1', 1535526716, 0.984821, '1', 200),
(11, 'users', 'get', NULL, '', '::1', 1535526725, 0.940982, '1', 200),
(12, 'users', 'get', NULL, '', '::1', 1535527142, 0.925579, '1', 200),
(13, 'api/key', 'put', NULL, '', '::1', 1535527235, 0.276127, '1', 201),
(14, 'api/key', 'put', NULL, '', '::1', 1535527362, 0.267098, '1', 201),
(15, '', 'get', NULL, '', '::1', 1535527553, 0.90413, '1', 0),
(16, '', 'get', NULL, '', '::1', 1535527567, 0.856903, '1', 0),
(17, '', 'get', NULL, '', '::1', 1535527953, 0.926225, '1', 0),
(18, '', 'get', NULL, '', '::1', 1535527993, 0.980365, '1', 0),
(19, '', 'get', NULL, '', '::1', 1535528029, 0.883735, '1', 0),
(20, 'users', 'get', NULL, '', '::1', 1535528031, 0.927881, '1', 200),
(21, '', 'get', NULL, '', '::1', 1535528214, 0.902921, '1', 0),
(22, 'users', 'get', NULL, '', '::1', 1535528216, 1.20899, '1', 200),
(23, '', 'get', NULL, '', '::1', 1535528225, 0.850139, '1', 0),
(24, 'users', 'get', NULL, '', '::1', 1535528227, 1.13431, '1', 200),
(25, '', 'get', NULL, '', '::1', 1535528356, 0.992059, '1', 0),
(26, 'users', 'get', NULL, '', '::1', 1535528358, 1.43239, '1', 200),
(27, '', 'get', NULL, '', '::1', 1535528452, 0.996201, '1', 0),
(28, 'users', 'get', NULL, '', '::1', 1535528454, 1.41669, '1', 200),
(29, '', 'get', NULL, '', '::1', 1535528477, 1.09345, '1', 0),
(30, 'users', 'get', NULL, '', '::1', 1535528480, 1.14401, '1', 200),
(31, '', 'get', NULL, '', '::1', 1535528541, 0.92829, '1', 0),
(32, 'users', 'get', NULL, '', '::1', 1535528544, 0.973229, '1', 200),
(33, '', 'get', NULL, '', '::1', 1535528563, 1.00242, '1', 0),
(34, 'users', 'get', NULL, '', '::1', 1535528565, 0.973454, '1', 200),
(35, '', 'get', NULL, '', '::1', 1535528576, 1.25156, '1', 0),
(36, 'users', 'get', NULL, '', '::1', 1535528579, 1.71641, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `updated_date`) VALUES
(1, 'Pradeep Vishwakarma', 'pradeepvish1213', '7274945c23eb2fe9b407ba84b023bf3097094026', '2018-08-29 06:54:39'),
(2, 'Pradeep Vishwakarma', 'pradeepvish1213', '7274945c23eb2fe9b407ba84b023bf3097094026', '2018-08-29 06:55:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
