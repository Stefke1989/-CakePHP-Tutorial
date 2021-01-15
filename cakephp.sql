-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 04:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(1, 'Prvi', 'Prvi pokusaj', '2021-01-14 12:01:24', '2021-01-15 11:15:37', NULL),
(2, 'Drugi', 'Drugi pokusaj izmenjen', '2021-01-14 12:01:25', '2021-01-15 13:03:57', NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2021-01-14 12:01:25', NULL, NULL),
(4, 'Cetvrti', 'Ubacivanje novog', '2021-01-15 13:03:31', '2021-01-15 13:03:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'Stefan', '$2y$10$of/vG9kbz/5vfnpmqd9TL.S0/Nw2RV8ZO/WmCRqd8uzewy83ov03a', 'admin', '2021-01-15 14:23:25', '2021-01-15 14:23:25'),
(3, 'Marko', '$2a$10$CFWze796HzrSiQ6W8XHKd.FF7u.GBpst6hUIJZ5V3GFlj3uwMO472', 'author', '2021-01-15 15:51:42', '2021-01-15 15:51:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
