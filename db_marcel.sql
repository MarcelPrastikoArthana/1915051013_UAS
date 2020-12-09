-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 05:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_marcel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`, `level`, `foto`) VALUES
(1, 'marcelprastiko99', 'prastiko99', 'admin', 'marcel.jpg'),
(38, 'marcel', 'marcel123', 'admin', 'marcel.jpg'),
(42, 'MPrastikoA', 'MprastikoA1799', 'admin', 'marcel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(20) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `alamat_siswa` varchar(50) NOT NULL,
  `pp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama_siswa`, `alamat_siswa`, `pp`) VALUES
(25, 'I Made Bhisma Putra', 'Jl. Kaswari, No. 4 Singaraja', '3709485940.png'),
(26, 'Josephine Imannuel', 'Jl. Arjuna No. 12 Singaraja', '25023735-2056116194623325-8203181535843581952-n-86d65031adfffa2ca7f83c1c3e9d081e.jpg'),
(27, 'Lysandra Simamora', 'Jl. Arjuna No. 15 A, Singaraja', 'classy.gorgeous_94771191_173640543790338_5529334089513385468_n-545x681.jpg'),
(28, 'Gede Satriadi Utama', 'Jl. Melur, No. 1 Singaraja', 'Biodata-Billy-Davidson.jpg'),
(29, 'Made Edi Irawan', 'Jl. Serma Karma, No. 20 Panji', '76815_7-penyanyi-cowok-indonesia-yang-enggak-cuma-keren-tapi-juga-punya-suara-bagus.jpg'),
(30, 'Komang Adi Pradana', 'Jl. Pulau Komodo, No. 1 Banyuning', 'ang-7-b0320d02875569af202f0d12ff09d3ce_600x400.jpg'),
(31, 'Marcel Prastiko Arth', 'Gg. Durian, No. 1 Sambangan', 'Foto Asli.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
