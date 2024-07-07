-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 08:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(1, 'fad', 'gfd@gmail.com', '$2y$10$sqSb4nakWykMa05xm7EUTOmSE9Db3r9WLRjbps16SXUZxFzUtscte'),
(2, 'Rohini', 'rohini@gmail.com', '$2y$10$uEQqtmLYvAiT70OSsk5qkON5Cr8D.nBkM9Z2.XD66P9P64kCy.LuK'),
(5, 'sheetal', 'sheetal@gmail.com', '$2y$10$LrlFRF6u7yjxWENoeGf2muoKV8OtTo3bTr3X9yZ1wxqSYBfdNjQW.'),
(8, 'taniya', 'taniya@gmail.com', '$2y$10$zsKH1qM2A2sk70z.QtwsNu3orYvvHyQ9ynhKHQSpBy5XPfvcTWERi'),
(9, 'rashmi', 'rashmi@gmail.com', '$2y$10$.mSpNtQZIwiDCSBydSvI7O2BYzrjQ/UQGzD4M7n8p8JBwPB1qoFii'),
(10, 'rahul', 'rahul@gmail.com', '$2y$10$xdO9eLSzHe8JSpmHlSNIRuTevPC95ExI0uS.0yGOSZfJLrn0ucd4O'),
(11, 'heli', 'helil@gmail.com', '$2y$10$hRozkV667c1BvNdNO9UutOyo2xpuYseG4dIpYYdQkkn.xSONcwQ3i'),
(14, 'hii', 'hiil@gmail.com', '$2y$10$DcxaPknokng2ZDXwHm6L6exgnqm/.fdxaWyMEWBvksirAQ1xkQR4e'),
(15, 'hello', 'hello@gmail.com', '$2y$10$OtWvdKERq2I/TqO63A32s.Sx5TeJd6FKvOTKbzpzCrSHj6TVbnspq'),
(16, 'vibha', 'vibha@gmail.com', '$2y$10$7YNJEC8NXUDS6/NqpvC6zu6Te2ri8MzBf0JsMXMCLE0bKfqGQ6ACa'),
(17, 'nikita', 'nikita@gmail.com', '$2y$10$z8ORQUO.Shw2KqqrQ8xeAuSdORrl4OBde9WSMfZX6Kj5dIBqQ7SUq'),
(18, '{$name}', '{$email}', '{$password}'),
(20, 'hema', 'hema@gmail.com', '1234'),
(22, 'khan', 'khan@gmail.com', '$2y$10$OoDqU3p43Xnvn75HljH1iummzJsCkR5cPJpfO1dkGBInYkcw8UYJ2'),
(23, 'kareena', 'kareena@gmail.com', '$2y$10$2wr5hIEWA3do5Xlo/jriD.ZhQQFU36kKRfTvdiBQ7W6Ax4OEz/yG2'),
(25, 'pranali', 'pranali@gmail.com', '$2y$10$p2fWprx9npCZehAc4gHPmegSOelbrEwKvYUOc8rWPHRFKNI/gBTg6'),
(26, 'newperson', 'newperson@gmail.com', '$2y$10$VbQ.RDcgDAteUFRl.oR2pOCIAs9aXfp4wbNpgpBT.4Q55UkmVkdzS'),
(28, 'newpersona', 'newpersona@gmail.com', '$2y$10$Y9oucfeds0Qks4tPrEF9l.9p94w1ystfKZcSO2LUXGyXCNHSbWuqq'),
(29, 'prapti', 'prapti@gmail.com', '$2y$10$gYO0dHGqN7PFaVC8m62snOLoazHcQtbv.fSi6g4wZDcQzSUwTCCSG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
