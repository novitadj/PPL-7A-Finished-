-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 05:44 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `capaian`
--

CREATE TABLE `capaian` (
  `id_capaian` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Banyaknya` int(11) NOT NULL,
  `Gaji` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capaian`
--

INSERT INTO `capaian` (`id_capaian`, `Tanggal`, `Banyaknya`, `Gaji`, `id_pegawai`) VALUES
(1, '2019-11-22', 70, 70000, 4),
(2, '2019-11-22', 65, 65000, 5),
(3, '2019-11-22', 70, 70000, 6),
(4, '2019-11-22', 55, 55000, 7),
(5, '2019-11-22', 60, 60000, 8),
(6, '2019-11-22', 65, 65000, 18),
(7, '2019-11-22', 55, 55000, 20),
(8, '2019-11-22', 45, 45000, 47),
(9, '2019-11-23', 70, 70000, 4),
(10, '2019-11-23', 70, 70000, 5),
(11, '2019-11-23', 50, 50000, 6),
(12, '2019-11-23', 70, 70000, 7),
(13, '2019-11-23', 75, 75000, 8),
(14, '2019-11-23', 65, 65000, 18),
(15, '2019-11-23', 70, 70000, 20),
(16, '2019-11-23', 70, 70000, 47),
(17, '2019-11-24', 65, 65000, 4),
(18, '2019-11-24', 50, 50000, 5),
(19, '2019-11-24', 65, 65000, 6),
(20, '2019-11-24', 50, 50000, 7),
(21, '2019-11-24', 70, 70000, 8),
(22, '2019-11-24', 55, 55000, 18),
(23, '2019-11-24', 65, 65000, 20),
(24, '2019-11-24', 55, 55000, 47),
(25, '2019-11-25', 60, 60000, 4),
(26, '2019-11-25', 65, 65000, 5),
(27, '2019-11-25', 60, 60000, 6),
(28, '2019-11-25', 60, 60000, 7),
(29, '2019-11-25', 55, 55000, 8),
(30, '2019-11-25', 60, 60000, 18),
(31, '2019-11-25', 60, 60000, 20),
(32, '2019-11-25', 60, 60000, 47),
(33, '2019-11-26', 65, 65000, 4),
(34, '2019-11-26', 60, 60000, 5),
(35, '2019-11-26', 70, 70000, 6),
(36, '2019-11-26', 65, 65000, 7),
(37, '2019-11-26', 60, 60000, 8),
(38, '2019-11-26', 65, 65000, 18),
(40, '2019-11-26', 65, 65000, 20),
(41, '2019-11-26', 70, 70000, 47),
(42, '2019-11-27', 65, 65000, 4),
(43, '2019-11-27', 65, 65000, 5),
(44, '2019-11-27', 60, 60000, 6),
(45, '2019-11-27', 60, 60000, 7),
(46, '2019-11-27', 65, 65000, 8),
(47, '2019-11-27', 65, 65000, 18),
(48, '2019-11-27', 65, 65000, 20),
(49, '2019-11-27', 65, 65000, 47),
(50, '2019-11-28', 65, 65000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `capaianasap`
--

CREATE TABLE `capaianasap` (
  `id_capaianasap` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Kehadiran` enum('Hadir','Tidak Hadir') NOT NULL,
  `id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capaianasap`
--

INSERT INTO `capaianasap` (`id_capaianasap`, `Tanggal`, `Kehadiran`, `id_pegawai`) VALUES
(1, '2019-11-22', 'Hadir', 3),
(3, '2019-11-22', 'Hadir', 9),
(4, '2019-11-22', 'Hadir', 10),
(5, '2019-11-22', 'Hadir', 14),
(6, '2019-11-22', 'Hadir', 15),
(7, '2019-11-22', 'Hadir', 17),
(8, '2019-11-23', 'Hadir', 3),
(9, '2019-11-23', 'Tidak Hadir', 9),
(10, '2019-11-23', 'Hadir', 10),
(11, '2019-11-23', 'Hadir', 14),
(12, '2019-11-23', 'Hadir', 15),
(13, '2019-11-23', 'Tidak Hadir', 17),
(14, '2019-11-24', 'Hadir', 3),
(15, '2019-11-24', 'Hadir', 9),
(16, '2019-11-24', 'Hadir', 10),
(17, '2019-11-24', 'Hadir', 14),
(18, '2019-11-24', 'Tidak Hadir', 15),
(19, '2019-11-24', 'Hadir', 17),
(20, '2019-11-25', 'Hadir', 3),
(21, '2019-11-25', 'Hadir', 9),
(22, '2019-11-25', 'Hadir', 10),
(23, '2019-11-23', 'Hadir', 14),
(24, '2019-11-25', 'Hadir', 15),
(25, '2019-11-25', 'Hadir', 17),
(26, '2019-11-26', 'Hadir', 3),
(28, '2019-11-26', 'Tidak Hadir', 9),
(29, '2019-11-26', 'Hadir', 10),
(30, '2019-11-26', 'Hadir', 14),
(31, '2019-11-26', 'Hadir', 15),
(32, '2019-11-26', 'Hadir', 17),
(33, '2019-11-27', 'Hadir', 9),
(34, '2019-11-27', 'Hadir', 3),
(35, '2019-11-27', 'Hadir', 10),
(36, '2019-11-27', 'Hadir', 14),
(37, '2019-11-27', 'Hadir', 15),
(38, '2019-11-27', 'Hadir', 17);

-- --------------------------------------------------------

--
-- Table structure for table `capaiankuli`
--

CREATE TABLE `capaiankuli` (
  `id_capaiankuli` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Kehadiran` enum('Hadir','Tidak Hadir') NOT NULL,
  `id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capaiankuli`
--

INSERT INTO `capaiankuli` (`id_capaiankuli`, `Tanggal`, `Kehadiran`, `id_pegawai`) VALUES
(1, '2019-11-22', 'Hadir', 1),
(3, '2019-11-22', 'Hadir', 11),
(4, '2019-11-22', 'Hadir', 12),
(5, '2019-11-22', 'Hadir', 13),
(6, '2019-11-22', 'Hadir', 16),
(7, '2019-11-22', 'Hadir', 19),
(8, '2019-11-22', 'Hadir', 21),
(9, '2019-11-22', 'Hadir', 83),
(10, '2019-11-23', 'Tidak Hadir', 1),
(11, '2019-11-23', 'Hadir', 11),
(12, '2019-11-23', 'Hadir', 12),
(13, '2019-11-23', 'Hadir', 13),
(14, '2019-11-23', 'Tidak Hadir', 16),
(15, '2019-11-23', 'Tidak Hadir', 19),
(16, '2019-11-23', 'Hadir', 21),
(17, '2019-11-23', 'Hadir', 83),
(18, '2019-11-24', 'Hadir', 1),
(19, '2019-11-24', 'Hadir', 11),
(20, '2019-11-24', 'Tidak Hadir', 12),
(21, '2019-11-24', 'Hadir', 13),
(22, '2019-11-24', 'Hadir', 16),
(23, '2019-11-24', 'Hadir', 19),
(24, '2019-11-24', 'Hadir', 21),
(25, '2019-11-24', 'Tidak Hadir', 83),
(26, '2019-11-25', 'Hadir', 1),
(27, '2019-11-25', 'Hadir', 11),
(28, '2019-11-25', 'Hadir', 12),
(29, '2019-11-25', 'Hadir', 13),
(30, '2019-11-25', 'Hadir', 16),
(31, '2019-11-25', 'Hadir', 19),
(32, '2019-11-25', 'Hadir', 21),
(33, '2019-11-25', 'Hadir', 83),
(34, '2019-11-26', 'Hadir', 1),
(36, '2019-11-26', 'Tidak Hadir', 11),
(37, '2019-11-26', 'Tidak Hadir', 12),
(38, '2019-11-26', 'Hadir', 13),
(39, '2019-11-26', 'Hadir', 16),
(40, '2019-11-26', 'Hadir', 19),
(41, '2019-11-26', 'Hadir', 21),
(42, '2019-11-26', 'Hadir', 83),
(43, '2019-11-27', 'Hadir', 1),
(44, '2019-11-27', 'Hadir', 11),
(45, '2019-11-27', 'Hadir', 12),
(46, '2019-11-27', 'Hadir', 13),
(47, '2019-11-27', 'Hadir', 16),
(48, '2019-11-27', 'Hadir', 19),
(49, '2019-11-27', 'Hadir', 21),
(50, '2019-11-27', 'Hadir', 83);

-- --------------------------------------------------------

--
-- Table structure for table `kualitas`
--

CREATE TABLE `kualitas` (
  `id_kualitas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `mutu` enum('TNG','KAK','KOS') NOT NULL,
  `jumlah_kg` int(11) NOT NULL,
  `mt` int(11) NOT NULL,
  `t` int(11) NOT NULL,
  `tt` int(11) NOT NULL,
  `jumlah_lbr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kualitas`
--

INSERT INTO `kualitas` (`id_kualitas`, `tanggal`, `mutu`, `jumlah_kg`, `mt`, `t`, `tt`, `jumlah_lbr`) VALUES
(31, '2019-11-22', 'KAK', 350, 200, 200, 100, 500),
(33, '2019-11-22', 'KOS', 600, 200, 300, 200, 700),
(35, '2019-11-23', 'TNG', 500, 200, 300, 200, 700),
(36, '2019-11-23', 'KOS', 500, 300, 200, 300, 800),
(37, '2019-11-24', 'KAK', 300, 200, 100, 200, 500),
(38, '2019-11-24', 'KOS', 400, 150, 300, 200, 650),
(39, '2019-11-24', 'TNG', 300, 200, 100, 150, 450),
(40, '2019-11-25', 'TNG', 400, 200, 100, 200, 500),
(42, '2019-11-25', 'KOS', 500, 300, 200, 100, 600),
(44, '2019-11-26', 'TNG', 500, 300, 200, 100, 600),
(45, '2019-11-26', 'KAK', 500, 300, 300, 300, 900),
(46, '2019-11-27', 'KAK', 500, 300, 100, 100, 500),
(47, '2019-11-27', 'KOS', 450, 300, 200, 50, 550),
(48, '2019-11-28', 'KAK', 500, 300, 400, 300, 1000),
(49, '2019-11-28', 'KOS', 450, 300, 400, 400, 1100);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Alamat` varchar(20) NOT NULL,
  `Tugas` enum('Kuli','Tukang Asap','Perenteng') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `Nama`, `Alamat`, `Tugas`) VALUES
(1, 'Budi', 'jl. gajah  mada', 'Kuli'),
(3, 'Santoso', 'jl. gajah  mada', 'Tukang Asap'),
(4, 'Sumiati', 'jl. Udang Windu', 'Perenteng'),
(5, 'Siti', 'jl. Udang Windu', 'Perenteng'),
(6, 'Maimunah', 'jl. gajahmada', 'Perenteng'),
(7, 'Munawaroh', 'jl. Udang Windu', 'Perenteng'),
(8, 'marsinah', 'jl. Udang Windu', 'Perenteng'),
(9, 'Kardi', 'jl.Sultan Agung', 'Tukang Asap'),
(10, 'Karsan', 'jl. Udang Windu', 'Tukang Asap'),
(11, 'Agus', 'jl. Bandeng', 'Kuli'),
(12, 'Wiyono', 'jl. Bandeng', 'Kuli'),
(13, 'Suroso', 'jl. Melati', 'Kuli'),
(14, 'Pardi', 'jl. Udang Windu', 'Tukang Asap'),
(15, 'Hari', 'jl. gajah  mada', 'Tukang Asap'),
(16, 'Herman', 'jl. Udang Windu', 'Kuli'),
(17, 'Tumingan', 'jl. Gunungsari', 'Tukang Asap'),
(18, 'Maryam', 'jl. Udang Windu', 'Perenteng'),
(19, 'Purnomo', 'jl.Kebon Agung', 'Kuli'),
(20, 'Rohmah', 'jl. Bandeng', 'Perenteng'),
(21, 'Pujo', 'jl. Udang Windu', 'Kuli'),
(47, 'Mira', 'jl. gajahmada', 'Perenteng'),
(83, 'Joko', 'jl. gajahmada', 'Kuli');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(1, 'Faradila', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Marzuki', 'mandor', '707d803707c87747c71b0e5513ef73a9', 'mandor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `capaian`
--
ALTER TABLE `capaian`
  ADD PRIMARY KEY (`id_capaian`);

--
-- Indexes for table `capaianasap`
--
ALTER TABLE `capaianasap`
  ADD PRIMARY KEY (`id_capaianasap`);

--
-- Indexes for table `capaiankuli`
--
ALTER TABLE `capaiankuli`
  ADD PRIMARY KEY (`id_capaiankuli`);

--
-- Indexes for table `kualitas`
--
ALTER TABLE `kualitas`
  ADD PRIMARY KEY (`id_kualitas`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `capaian`
--
ALTER TABLE `capaian`
  MODIFY `id_capaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `capaianasap`
--
ALTER TABLE `capaianasap`
  MODIFY `id_capaianasap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `capaiankuli`
--
ALTER TABLE `capaiankuli`
  MODIFY `id_capaiankuli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `kualitas`
--
ALTER TABLE `kualitas`
  MODIFY `id_kualitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
