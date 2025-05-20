-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 08:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `form_responses`
--

INSERT INTO `form_responses` (`id`, `name`, `email`, `comment`, `timestamp`) VALUES
(1, 'Oscar Wilde', 'oscar@wilde.com', 'Be yourself; everyone else is already taken.', '2020-04-19 18:05:09'),
(2, 'Albert Einstein', 'al@emc2.com', 'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.', '2020-04-19 18:05:53'),
(3, 'Frank Zappa', 'z@eatyellowsnow.com', 'So many books, so little time.', '2020-04-19 18:07:22'),
(4, 'Mark Twain', 'mark@twain.com', 'If you tell the truth, you don\'t have to remember anything.', '2020-04-19 18:09:06'),
(5, 'John Lennon', 'John@fabfour.com', 'Life is what happens when you\'re busy making other plans.', '2020-04-19 18:11:45'),
(6, 'Dr. Strangelove', 'strange@love.com', 'Gentlemen, you can\'t fight in here! This is the war room!', '2020-04-19 18:31:42'),
(7, 'Groot', 'groot@guardians.com', 'I am Groot.', '2020-04-19 18:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `item`, `description`, `image`) VALUES
(1, 'Tyrannosaurus Rex', 'Tyrannosaurus, meaning \"tyrant lizard\", from the Ancient Greek tyrannos, \"tyrant\", and sauros, \"lizard\" is a genus of coelurosaurian theropod dinosaur. It also had a tremendous bite force, the strongest of any Dinosaur and living terrestrial animal. Its bite force reached up to 12,800 pounds (roughly 5805 Kilograms).', 't_rex.jpg'),
(2, 'Spinosaurus', 'Spinosaurus is a genus of theropod dinosaur that lived in what now is North Africa, during the lower Albian to lower Cenomanian stages of the Cretaceous period, about 112 to 97 million years ago.', 'spinosaurus.jpg'),
(3, 'Velociraptor', 'Velociraptor is a genus of dromaeosaurid theropod dinosaur that lived approximately 75 to 71 million years ago during the later part of the Cretaceous Period.', 'velociraptor.jpg'),
(4, 'Triceratops', 'Triceratops is a genus of herbivorous ceratopsid dinosaur that first appeared during the late Maastrichtian stage of the late Cretaceous period, about 68 million years ago in what is now North America.', 'triceratops.jpg'),
(5, 'Stegosaurus', 'Stegosaurus is a type of armored dinosaur. Their fossil bones have been found in rocks dated to the Late Jurassic period, between 155 and 150 million years ago, in the western United States and Portugal.', 'stegasaurus.jpg'),
(6, 'Parasaurolophus', 'Parasaurolophus is a genus of ornithopod dinosaur that lived in what is now North America during the Late Cretaceous Period, about 76.5-74.5 million years ago.', 'parasaurolophus.jpg'),
(7, 'Ankylosaurus', 'Ankylosaurus is a genus of armored dinosaur. Fossils of Ankylosaurus have been found in geological formations dating to the very end of the Cretaceous Period, between about 68-66 million years ago, in western North America, making it among the last of the non-avian dinosaurs.', 'ankylosaurus.jpg'),
(8, 'Brachiosaurus', 'Brachiosaurus is a genus of sauropod dinosaur that lived in North America during the Late Jurassic, about 154-153 million years ago.', 'brachiosaurus.jpg'),
(9, 'Carcharodontosaurus', 'Carcharodontosaurus is a genus of carnivorous carcharodontosaurid dinosaurs that existed between 100 and 94 million years ago, during the Cenomanian stages of the mid-Cretaceous Period.', 'carcharodontosaurus.jpg'),
(10, 'Allosaurus', 'Allosaurus is a genus of large theropod dinosaur that lived 155 to 150 million years ago during the late Jurassic period.', 'allosaurus.jpg'),
(11, 'Scientific Dino Name', 'more information about this dino', 'Jen_headshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_log`
--

CREATE TABLE `password_reset_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Indexes for table `form_responses`
--
ALTER TABLE `form_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_log`
--
ALTER TABLE `password_reset_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_hash`
--
ALTER TABLE `users_hash`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_responses`
--
ALTER TABLE `form_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset_log`
--
ALTER TABLE `password_reset_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_hash`
--
ALTER TABLE `users_hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
