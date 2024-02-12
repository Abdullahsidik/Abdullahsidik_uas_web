-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 12:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_abdulahsidik`
--

-- --------------------------------------------------------

--
-- Table structure for table `datacofe`
--

CREATE TABLE `datacofe` (
  `no` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `rating` int(6) NOT NULL,
  `hargasaatini` double NOT NULL,
  `hargadiskon` double NOT NULL,
  `status` enum('coffee','machines','sweets','') NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `datacofe`
--

INSERT INTO `datacofe` (`no`, `nama`, `rating`, `hargasaatini`, `hargadiskon`, `status`, `foto`) VALUES
(51, 'abc', 5, 50, 60, 'coffee', 'uploads/picture-3.png'),
(54, 'mesin susu', 5, 20, 15, 'machines', 'uploads/m1.png'),
(55, 'good day', 6, 20, 15, 'sweets', 'uploads/i34.png'),
(56, 'contoh', 6, 100, 80, 'coffee', 'uploads/picture-2.png'),
(57, '2', 2, 20, 10, 'coffee', 'uploads/picture-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(59) NOT NULL,
  `password` varchar(59) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status_user` varchar(255) NOT NULL,
  `foto` varchar(222) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telpon` int(30) NOT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `id_kirim` varchar(49) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama`, `status_user`, `foto`, `email`, `no_telpon`, `session_token`, `id_kirim`) VALUES
('1', '356a192b7913b04c54574d18c28d46e6395428ab', 'abdul', 'admin', 'test.png', 'abdulah@gmail.com', 88383743, '991f3e51a677f8c630592eec6f45ef3e', ''),
('abdulah', 'd24aeef31d42dd91ffecc389cf898047901832b8', '23', 'user', '', '21', 2, '4be499c10f7cbb0cfcba687ace855b32', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datacofe`
--
ALTER TABLE `datacofe`
  ADD PRIMARY KEY (`no`,`nama`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datacofe`
--
ALTER TABLE `datacofe`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
