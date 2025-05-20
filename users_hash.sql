-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 30, 2020 at 08:20 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ampjam_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_hash`
--

CREATE TABLE `users_hash` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_hash`
--

INSERT INTO `users_hash` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'groot', 'groot@guardians.com', '$2y$10$CEc6KF7zaYXIPdQrsiILqu8ro9j2UpqPdKtZ3wz3xEQ5LpD626QCG', 1),
(2, 'rocket', 'rocket@guardians.com', '$2y$10$xngf4UYeK7Pbupz5IE21hexBeuLLjXHcyZ3Kj90revx5.6rL8ffeW', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_hash`
--
ALTER TABLE `users_hash`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_hash`
--
ALTER TABLE `users_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
