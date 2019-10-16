-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2019 at 06:13 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id` int(11) UNSIGNED NOT NULL,
  `provinsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_bsni` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id`, `provinsi`, `p_bsni`) VALUES
(1, 'Aceh', 'ID-AC'),
(2, 'Sumatra Utara', 'ID-SU'),
(3, 'Sumatra Barat', 'ID-SB'),
(4, 'Riau', 'ID-RI'),
(5, 'Jambi', 'ID-JA'),
(6, 'Sumatra Selatan', 'ID-SS'),
(7, 'Bengkulu', 'ID-BE'),
(8, 'Lampung', 'ID-LA'),
(9, 'Kepulauan Bangka Belitung', 'ID-BB'),
(10, 'Kepulauan Riau', 'ID-KR'),
(11, 'Daerah Khusus Ibukota Jakarta', 'ID-JB'),
(12, 'Jawa Barat', 'ID-JB'),
(13, 'Jawa Tengah', 'ID-JT'),
(14, 'Daerah Istimewa Yogyakarta', 'ID-YO'),
(15, 'Jawa Timur', 'ID-JI'),
(16, 'Banten', 'ID-BT'),
(17, 'Bali', 'ID-BA'),
(18, 'Nusa Tenggara Barat', 'ID-NB'),
(19, 'Nusa Tenggara Timur', 'ID-NT'),
(20, 'Kalimantan Barat', 'ID-KB'),
(21, 'Kalimantan Tengah', 'ID-KT'),
(22, 'Kalimantan Selatan', 'ID-KS'),
(23, 'Kalimantan Timur', 'ID-KI'),
(24, 'Kalimantan Utara', 'ID-KU'),
(25, 'Sulawesi Utara', 'ID-SA'),
(26, 'Sulawesi Tengah', 'ID-ST'),
(27, 'Sulawesi Selatan', 'ID-SN'),
(28, 'Sulawesi Tenggara', 'ID-SG'),
(29, 'Gorontalo', 'ID-GO'),
(30, 'Sulawesi Barat', 'ID-SR'),
(31, 'Maluku', 'ID-MA'),
(32, 'Maluku Utara', 'ID-MU'),
(33, 'Papua', 'ID-PA'),
(34, 'Papua Barat', 'ID-PB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
