-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 11:23 AM
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
-- Database: `revminder`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `nama_pemilik` text NOT NULL,
  `no_pol` varchar(30) NOT NULL,
  `nama_kendaraan` varchar(40) NOT NULL,
  `merek` text NOT NULL,
  `model` varchar(40) NOT NULL,
  `transmisi` varchar(25) NOT NULL,
  `tahun` int(11) NOT NULL,
  `warna` text NOT NULL,
  `jenis` text NOT NULL,
  `produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id`, `nama_pemilik`, `no_pol`, `nama_kendaraan`, `merek`, `model`, `transmisi`, `tahun`, `warna`, `jenis`, `produk`) VALUES
(1, 'Budi', 'A 6969 IO', 'Alphard', 'TESLA', 'AI', 'Matic', 2012, 'RED', 'LISTIRIK', 'PLN'),
(2, 'Bang Ade', 'a 6969 LO', 'Tesla', 'Ai', 'Ml', 'LIstrik', 9090, 'pelangi', 'bensin', 'pertalite');

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `id` int(11) NOT NULL,
  `nama_pemilik` text NOT NULL,
  `no_pol` varchar(30) NOT NULL,
  `nama_kendaraan` char(40) NOT NULL,
  `merek` text NOT NULL,
  `model` char(20) NOT NULL,
  `transmisi` varchar(30) NOT NULL,
  `tahun` int(11) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`id`, `nama_pemilik`, `no_pol`, `nama_kendaraan`, `merek`, `model`, `transmisi`, `tahun`, `warna`, `jenis`, `produk`) VALUES
(1, 'Zaenab', 'T 8881 OP', 'Vario', 'Satria', 'Kawasaki', 'Manual', 2007, 'Merah', 'Bensin', 'Pertalite');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `motor`
--
ALTER TABLE `motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
