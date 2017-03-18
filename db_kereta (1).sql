-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Mar 2017 pada 03.56
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kereta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(12) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', 'admin'),
('selin', 'experto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `nama` varchar(50) NOT NULL,
  `noid` int(50) NOT NULL,
  `awal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `jumlah` int(25) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `waktu` varchar(10) NOT NULL,
  `seat` varchar(10) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`nama`, `noid`, `awal`, `tujuan`, `jumlah`, `tanggal`, `jenis`, `waktu`, `seat`, `harga`) VALUES
('yuhu', 23343, 'bwi', 'jkt', 1, '2017-03-24', 'Eksekutif', '05.00 PM', 'Gerbong 1', 150000),
('Dini', 34565, 'Malang', 'Yogyakarta', 2, '2017-08-25', 'Bisnis', '11.00 PM', 'Gerbong 2', 240000),
('Selin', 45876, 'sub', 'diy', 6, '2020-03-07', 'Eksekutif', '05.00 PM', 'Gerbong 1', 678900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`noid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
