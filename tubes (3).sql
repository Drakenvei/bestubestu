-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 05:02 AM
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
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `email`, `password`, `username`, `phone`, `role`) VALUES
(12, 'nicholaskensurya1@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'arig', '08952313123', 'admin'),
(13, 'asu@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'adminweb123', '08123', 'user'),
(14, '123@123', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'adminweb', '123123', 'user'),
(17, 'nicholaskensurya@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '123123', '123123', 'user'),
(18, 'nicholas@gmail.com', '6baad6f126fa53233f5120dd32225d4a9eeaea26dce58789f0b3b6efcdb0dadb', 'adminweb', '12345', 'user'),
(20, 'asdads@adsda.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'adminweba', '12345', 'user'),
(21, 'nicholas@gmai1l.com', 'b822bb93905a9bd8b3a0c08168c427696436cf8bf37ed4ab8ebf41a07642ed1c', 'dasdasd', '123123', 'user'),
(22, 'nicholaskensurya123@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'adminweb12', '12345', 'user'),
(23, '122123123@123123', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'sadasdasdaasd', '9090', 'user'),
(24, 'nicholas2@gmail.com1', '170c1c3850adb035a49bb6b1826aac5b7346fdde47c1939351cadf21c5a88049', '123123123', '3123123', 'user'),
(25, 'anjn@asdnads', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'adminweb12312', '123123', 'user'),
(26, 'asdsadd@da123123', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '12312312312', '123123', 'user'),
(27, 'asdads@adsda123', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'ari123', '12345', 'user'),
(28, 'nicho123laskensurya2@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'adminweb123', '12345', 'user'),
(29, '12313212@123123', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'adminweb1213', '12345', 'user'),
(30, 'asu123123@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'adminweb123123', '12345', 'user'),
(31, 'ari123@gamil', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '12341231232313', '123123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `pembayara`
--

CREATE TABLE `pembayara` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `paket` varchar(30) NOT NULL,
  `nama_pembelian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `tglpergi` date NOT NULL,
  `tglpulang` date NOT NULL,
  `destinasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama`, `phone`, `tglpergi`, `tglpulang`, `destinasi`) VALUES
(98, 'Budi', '12345', '0000-00-00', '0000-00-00', 'medan'),
(99, 'Iwan', '12345', '0000-00-00', '0000-00-00', 'sibolangit'),
(100, '1', '12345', '0000-00-00', '0000-00-00', 'tarutung'),
(101, '1', '12345', '0000-00-00', '0000-00-00', 'sibayak'),
(102, 'Budi', '', '0000-00-00', '0000-00-00', 'medan'),
(103, 'Budi', '123123', '2023-11-30', '2023-11-29', 'sibayak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pembayara`
--
ALTER TABLE `pembayara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pembayara`
--
ALTER TABLE `pembayara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
