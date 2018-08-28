-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2018 at 08:48 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.20

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
(1, 0, 'o8488s4c44ccccg4sscsco0ks808w0k00gkkk80w', 1, 1, 0, NULL, 1535481691),
(2, 0, '880wsg044kowow8cswwk84so0gggsso4kg8s4k0s', 1, 1, 0, NULL, 1535481720),
(3, 0, 'kc0c0g408wwgkc88wk8gcsck4wws4gcwg8oosk0w', 1, 1, 0, NULL, 1535481724);

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
(1, '', 'get', NULL, '', '::1', 1535481034, 0.0432639, '0', 403),
(2, '', 'get', NULL, '', '::1', 1535481095, 0.0285881, '0', 403),
(3, '', 'get', NULL, '', '::1', 1535481183, 0.0185239, '0', 403),
(4, '', 'get', NULL, '', '::1', 1535481203, 0.028543, '0', 403),
(5, '', 'get', NULL, '', '::1', 1535481220, 0.01882, '0', 403),
(6, '', 'get', NULL, '', '::1', 1535481263, 0.0145152, '0', 403),
(7, 'api/key', 'get', NULL, '', '::1', 1535481527, 0.0224781, '0', 403),
(8, 'api/key', 'get', NULL, '', '::1', 1535481531, 0.0252099, '0', 403),
(9, 'api/key', 'put', NULL, '', '::1', 1535481547, 0.015651, '0', 403),
(10, 'api/key', 'put', NULL, '', '::1', 1535481593, 0.0166392, '0', 403),
(11, 'api/key', 'put', NULL, '', '::1', 1535481605, 0.0150001, '0', 403),
(12, 'api/key', 'put', NULL, '', '::1', 1535481656, 0.00949502, '1', 0),
(13, 'api/key', 'put', NULL, '', '::1', 1535481681, 0.0856581, '1', 0),
(14, 'api/key', 'put', NULL, '', '::1', 1535481691, 0.042345, '1', 201),
(15, 'api/key', 'put', NULL, '', '::1', 1535481720, 0.022089, '1', 201),
(16, 'api/key', 'put', NULL, '', '::1', 1535481724, 0.030653, '1', 201),
(17, 'welcome/users', 'get', NULL, '', '::1', 1535481795, 0.0303741, '1', 200),
(18, 'welcome/users', 'get', NULL, '', '::1', 1535481819, 0.0156982, '1', 200),
(19, 'welcome/users', 'get', NULL, '', '::1', 1535481896, 0.0152171, '1', 200),
(20, '', 'get', NULL, '', '::1', 1535481918, 0.0349379, '1', 0),
(21, '', 'get', NULL, '', '::1', 1535482027, 0.00944495, '1', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
