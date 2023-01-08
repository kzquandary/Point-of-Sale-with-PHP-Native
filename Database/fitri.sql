-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 03:37 PM
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
-- Database: `fitri`
--

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id` int(3) NOT NULL,
  `no_pengiriman` int(3) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id`, `no_pengiriman`, `harga`, `tanggal`) VALUES
(1, 1, '70000', '2022-12-25'),
(2, 2, '280000', '2022-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(10) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `varian` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Lunas','Belum Bayar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `customer`, `qty`, `harga`, `varian`, `tanggal`, `status`) VALUES
(1, 'Leonita', 10, '130000', '1 Moring Pedas', '2022-12-25', 'Lunas'),
(2, 'Meli Amelia', 2, '25000', 'original', '2022-03-01', 'Lunas'),
(3, 'Bintang', 3, '36000', 'original dan pedas', '2023-01-01', 'Lunas'),
(4, 'Nazwa', 1, '13000', 'original', '2022-12-28', 'Lunas'),
(5, 'Memei', 2, '28000', 'pedas', '2023-01-06', 'Lunas'),
(6, 'Tria Marcella', 2, '18000', 'original dan pedas', '2023-01-06', 'Lunas'),
(7, 'Kang Adam', 6, '81000', 'original dan pedas', '2023-01-06', 'Lunas'),
(8, 'Neng Ai', 1, '6000', 'pedas', '2023-01-06', 'Lunas'),
(9, 'adzky', 2, '30000', 'pedas', '2023-01-07', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
