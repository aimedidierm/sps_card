-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2023 at 01:05 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sps_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `names`, `phone`, `address`, `password`, `time`) VALUES
(1, 'admin@gmail.com', 'Hagabimana', '0788750979', 'Huye, Rwanda', '3b081fd5426c134088a9b1466ff4c224', '2022-06-17 13:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `pending_withdraw`
--

CREATE TABLE `pending_withdraw` (
  `id` int NOT NULL,
  `seller` int NOT NULL,
  `amount` int NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pending_withdraw`
--

INSERT INTO `pending_withdraw` (`id`, `seller`, `amount`, `time`) VALUES
(1, 1, 500, '2022-06-25 21:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `email`, `names`, `phone`, `address`, `password`, `time`) VALUES
(1, 'iprchuye@gmail.com', 'IPRC Huye', '0788750979', 'Huye, Rwanda', '3b081fd5426c134088a9b1466ff4c224', '2022-06-17 13:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `machine_id` varchar(255) DEFAULT NULL,
  `balance` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `email`, `names`, `phone`, `address`, `machine_id`, `balance`, `password`, `time`) VALUES
(1, 'seller@gmail.com', 'Bosco', '0788750979', 'Huye, Rwanda', '202203256', '-200', '202cb962ac59075b964b07152d234b70', '2022-06-17 13:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int NOT NULL,
  `names` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '0',
  `balance` int NOT NULL,
  `school` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `names`, `card`, `email`, `phone`, `balance`, `school`, `password`, `time`) VALUES
(1, 'Charles', 'E3 DA 21 AB', 'habimanacharles2019@gmail.com', '0788750979', 850, 1, '123', '2022-06-25 22:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `debit` int NOT NULL DEFAULT '0',
  `credit` int NOT NULL DEFAULT '0',
  `seller` int DEFAULT NULL,
  `student` int DEFAULT NULL,
  `school` int DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `debit`, `credit`, `seller`, `student`, `school`, `time`) VALUES
(1, 1000, 0, 1, NULL, NULL, '2022-06-24 15:20:03'),
(2, 10, 0, NULL, 1, 1, '2022-06-25 22:21:05'),
(3, 1000, 0, NULL, 1, 1, '2022-07-01 15:39:13'),
(4, 0, 1000, NULL, 1, 1, '2022-07-01 15:45:39'),
(5, 0, 1, NULL, 1, 1, '2022-07-29 08:43:22'),
(6, 0, 2, NULL, 1, NULL, '2022-09-05 15:53:10'),
(7, 0, 200, NULL, 1, NULL, '2022-12-04 19:15:23'),
(8, 0, 200, NULL, 1, NULL, '2022-12-04 20:04:33'),
(9, 0, 100, NULL, 1, NULL, '2022-12-04 20:06:24'),
(10, 0, 200, NULL, 1, NULL, '2022-12-04 20:07:40'),
(11, 0, 200, NULL, 1, NULL, '2022-12-04 20:10:07'),
(12, 0, 100, NULL, 1, NULL, '2022-12-04 20:28:22'),
(13, 0, 200, NULL, 1, NULL, '2022-12-04 20:38:46'),
(14, 100, 0, NULL, 1, NULL, '2022-12-04 21:16:09'),
(15, 200, 0, NULL, 1, NULL, '2022-12-04 21:17:31'),
(16, 200, 0, NULL, 1, NULL, '2022-12-04 21:19:03'),
(17, 100, 0, NULL, 1, NULL, '2022-12-04 21:19:26'),
(18, 0, 200, NULL, 1, NULL, '2022-12-07 02:08:36'),
(19, 0, 200, NULL, 1, NULL, '2022-12-07 02:15:50'),
(20, 0, 0, NULL, 1, NULL, '2022-12-07 02:19:57'),
(21, 0, 0, NULL, 1, NULL, '2022-12-07 02:21:12'),
(22, 0, 0, NULL, 1, NULL, '2022-12-07 02:22:21'),
(23, 0, 0, NULL, 1, NULL, '2022-12-07 02:23:36'),
(24, 0, 150, NULL, 1, NULL, '2022-12-07 02:24:01'),
(25, 0, 150, NULL, 1, NULL, '2022-12-07 02:25:26'),
(26, 0, 0, NULL, 1, NULL, '2022-12-07 02:26:55'),
(27, 0, 0, NULL, 1, NULL, '2022-12-07 02:28:02'),
(28, 0, 0, NULL, 1, NULL, '2022-12-07 02:29:52'),
(29, 0, 100, NULL, 1, NULL, '2022-12-07 02:30:16'),
(30, 0, 0, NULL, 1, NULL, '2022-12-07 02:31:58'),
(31, 0, 0, NULL, 1, NULL, '2022-12-07 02:32:18'),
(32, 0, 0, NULL, 1, NULL, '2022-12-07 02:32:57'),
(33, 0, 150, NULL, 1, NULL, '2022-12-07 02:33:20'),
(34, 100, 0, NULL, 1, NULL, '2022-12-07 02:44:32'),
(35, 100, 0, NULL, 1, NULL, '2022-12-07 02:45:15'),
(36, 200, 0, NULL, 1, NULL, '2022-12-07 02:46:55'),
(37, 0, 0, NULL, 1, NULL, '2022-12-07 02:47:51'),
(38, 0, 200, 1, NULL, NULL, '2022-12-11 00:45:45'),
(39, 0, 1000, 1, NULL, NULL, '2022-12-11 00:46:00'),
(40, 100, 0, NULL, 1, NULL, '2022-12-21 03:40:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pending_withdraw`
--
ALTER TABLE `pending_withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller` (`seller`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `card` (`card`),
  ADD KEY `school` (`school`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller` (`seller`),
  ADD KEY `student` (`student`),
  ADD KEY `school` (`school`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pending_withdraw`
--
ALTER TABLE `pending_withdraw`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
