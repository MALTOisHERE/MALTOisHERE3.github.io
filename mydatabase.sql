-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 11:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `city`, `password`) VALUES
(1, 'John Doe', 25, 'New York', 'mypassword'),
(2, 'Jane Smith', 30, 'Los Angeles', 'mypassword'),
(3, 'Alice Johnson', 22, 'Chicago', 'mypassword'),
(4, 'Bob Thompson', 28, 'San Francisco', 'mypassword'),
(5, 'Charlie Brown', 35, 'Dallas', 'mypassword'),
(6, 'David Lee', 31, 'Seattle', 'mypassword'),
(7, 'Eve Roberts', 27, 'Miami', 'mypassword'),
(8, 'Frank Wilson', 24, 'Boston', 'mypassword'),
(9, 'Grace Davis', 26, 'Philadelphia', 'mypassword'),
(10, 'Henry Taylor', 29, 'Houston', 'mypassword'),
(11, 'Isabella Martinez', 23, 'Denver', 'mypassword'),
(12, 'Jack Harris', 32, 'Atlanta', 'mypassword'),
(13, 'Karen Turner', 33, 'Phoenix', 'mypassword'),
(14, 'Liam Thompson', 36, 'Detroit', 'mypassword'),
(15, 'Mia Clark', 34, 'Portland', 'mypassword'),
(16, 'Nathan Scott', 37, 'San Diego', 'mypassword'),
(17, 'Olivia Anderson', 38, 'Austin', 'mypassword'),
(18, 'Peter Davis', 39, 'San Antonio', 'mypassword'),
(19, 'Quincy Adams', 40, 'Las Vegas', 'mypassword'),
(20, 'Rachel Miller', 41, 'Orlando', 'mypassword');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
