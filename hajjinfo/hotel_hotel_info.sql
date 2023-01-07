-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 01:07 PM
-- Server version: 10.4.22-MariaDB-log
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hajjinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hotel_info`
--

CREATE TABLE `hotel_hotel_info` (
  `id` bigint(20) NOT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `available` int(11) NOT NULL,
  `owner_id` char(32) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_hotel_info`
--

INSERT INTO `hotel_hotel_info` (`id`, `hotel_name`, `banner`, `state`, `city`, `country`, `price`, `available`, `owner_id`, `room_id`, `slug`) VALUES
(1, 'blue sky', 'hotel/2.jpg', 'chakaria', 'cox\'sbazar', 'BD', '10.00', 2, 'ddb8dfdb7cce45c8919df33218608ed2', 1, 'blue-sky');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `owner_id` (`owner_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `Hotel_hotel_info_hotel_name_0265159a_uniq` (`hotel_name`),
  ADD KEY `Hotel_hotel_info_room_id_ad7a5db1_fk_Hotel_room_id` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  ADD CONSTRAINT `Hotel_hotel_info_owner_id_cd43e27b_fk_Hotel_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `hotel_owner` (`id`),
  ADD CONSTRAINT `Hotel_hotel_info_room_id_ad7a5db1_fk_Hotel_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
