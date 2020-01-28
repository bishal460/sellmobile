-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 04:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilesell`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'hello', '$2y$10$GkyTBLsw9.raElhc8rN0Qu7V1cyqAh6GGCL9yGl1o67B/aMUOhh16', '2020-01-16 18:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `bid_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`id`, `email`, `post_id`, `bid_amount`) VALUES
(4, 'rabin.gurung707@gmail.com', '2', '980'),
(5, 'rabin.gurung707@gmail.com', '8', '321'),
(6, 'leon.ken029@gmail.com', '10', '450'),
(7, 'rabin.gurung707@gmail.com', '7', '450');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `mobile_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `condition1` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `imei` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `mobile_name`, `description`, `price`, `condition1`, `cpu`, `ram`, `weight`, `os`, `latitude`, `longitude`, `gpu`, `mobile_image`, `imei`, `user`) VALUES
(2, 'Iphone', ' Good Phone', '1000', ' used for1 year', 'A12', '2 gb', '123g', 'IOS', '27.748867528403338', '85.32631415873766', 'PowerVR', '347f3b24633abec407649542f3eb8762._AC_SX679_.jpg', '54478899251', 'leon.ken029@gmail.com'),
(7, 'Pixel phone', ' This is the flagship phone of google.', '1000', 'Used for 2 month', 'Snapdragon', '6GB', '200', 'Android', '27.711665164050924', '85.29305811971426', 'PowerVR', '560360c6da64c184319e5fa27e6276d4.jpg', '54478899251', 'leon.ken029@gmail.com'),
(8, 'Nokia', ' Old but good phone', '100', 'Good condition', '1.2ghz', '1gb', '280', 'Symbian', '27.731115', '85.29305811971426', '128mb', 'e3c116c8e51e3b23347efc6df1d02c29.png', '54478899251', 'leon.ken029@gmail.com'),
(10, 'rog phone', ' Gaming Phone', '680', 'screen is cracked.', 'Snapdragon 855', '8gb', '146g', 'Android', '27.668630007209412', '85.32751540297576', 'PowerVR', '7cb9f3e797b20461263eb08feea2542d.jpg', '781144568', 'rabin.gurung707@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(20, 'leon.ken029@gmail.com', '$2y$10$mHw3anuGP4.x1guDJniC5.ncTFEyu4sgkNgMVu6aU2BKiN4kqD8Jq', '2020-01-16 14:36:38'),
(21, 'rabin.gurung707@gmail.com', '$2y$10$GkyTBLsw9.raElhc8rN0Qu7V1cyqAh6GGCL9yGl1o67B/aMUOhh16', '2020-01-16 15:46:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
