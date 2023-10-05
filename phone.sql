-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 02:40 PM
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
-- Database: `phone`
--

-- --------------------------------------------------------

--
-- Table structure for table `phonespecs`
--

CREATE TABLE `phonespecs` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `display_size` decimal(4,2) DEFAULT NULL,
  `camera_resolution` varchar(20) DEFAULT NULL,
  `battery_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phonespecs`
--

INSERT INTO `phonespecs` (`id`, `brand`, `model`, `display_size`, `camera_resolution`, `battery_capacity`) VALUES
(1, 'Apple', 'iPhone 12', 6.10, '12 MP', 2815),
(2, 'Samsung', 'Galaxy S21', 6.20, '12 MP', 4000),
(3, 'Google', 'Pixel 6', 6.40, '16 MP', 3800),
(4, 'OnePlus', '9 Pro', 6.70, '48 MP', 4500),
(5, 'Xiaomi', 'Mi 11', 6.81, '108 MP', 4600),
(6, 'Sony', 'Xperia 1 III', 6.50, '12 MP', 4000),
(7, 'Samsung', 'Galaxy Note 20', 6.70, '64 MP', 4300),
(8, 'Apple', 'iPhone 13', 6.10, '12 MP', 3095),
(9, 'Google', 'Pixel 5', 6.00, '12.2 MP', 4080),
(10, 'OnePlus', '8 Pro', 6.78, '48 MP', 4510),
(11, 'Samsung', 'Galaxy A52', 6.50, '64 MP', 4500),
(12, 'Xiaomi', 'Redmi Note 10', 6.43, '48 MP', 5000),
(13, 'Sony', 'Xperia 5 II', 6.10, '12 MP', 4000),
(14, 'Apple', 'iPhone SE', 4.70, '12 MP', 1821),
(15, 'Samsung', 'Galaxy Z Fold 3', 7.60, '12 MP', 4400),
(16, 'Google', 'Pixel 4a', 5.81, '12.2 MP', 3140),
(17, 'OnePlus', 'Nord 2', 6.43, '50 MP', 4500),
(18, 'Xiaomi', 'Mi 10T Pro', 6.67, '108 MP', 5000),
(19, 'Sony', 'Xperia 10 III', 6.00, '12 MP', 4500),
(20, 'Samsung', 'Galaxy S20 FE', 6.50, '12 MP', 4500),
(21, 'Samsung', 'Galaxy A71', 6.70, '64 MP', 4500),
(22, 'Apple', 'iPhone 11', 6.10, '12 MP', 3110),
(23, 'Google', 'Pixel 4', 5.70, '12.2 MP', 2800),
(24, 'OnePlus', 'Nord', 6.44, '48 MP', 4115),
(25, 'Xiaomi', 'Redmi 9', 6.53, '13 MP', 5020),
(26, 'Sony', 'Xperia 5', 6.10, '12 MP', 3140),
(27, 'Samsung', 'Galaxy S10', 6.10, '12 MP', 3400),
(28, 'Apple', 'iPhone XR', 6.10, '12 MP', 2942),
(29, 'Google', 'Pixel 3a', 5.60, '12.2 MP', 3000),
(30, 'OnePlus', '7T Pro', 6.67, '48 MP', 4085);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phonespecs`
--
ALTER TABLE `phonespecs`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
