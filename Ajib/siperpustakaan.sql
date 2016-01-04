-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2015 at 02:58 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siperpustakaan`
--
CREATE DATABASE IF NOT EXISTS `siperpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `siperpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `kode_buku` int(11) NOT NULL,
  `nama_buku` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `nama_penerbit` varchar(40) NOT NULL,
  `jumlah_buku` int(10) NOT NULL,
  PRIMARY KEY (`kode_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `nama_buku`, `kategori`, `tahun_terbit`, `nama_penerbit`, `jumlah_buku`) VALUES
(96001, 'MVCprogramming', 'paket', '2009-12-10', 'Pyin Tuar', 2),
(96002, 'Masakan Nusantara', 'Kuliner', '2012-07-17', 'Shun Kyun Shay', 10),
(96003, 'Merancang mesin', 'Otomotif', '2015-07-14', 'Crosses Mandellow', 2),
(96004, 'Doa Setelah Sholat ', 'Religi', '2015-03-30', 'Syafei', 7),
(96005, 'PHPpemula', 'Pemrograman', '2015-10-02', 'Imam Baidhowi', 5),
(96006, 'Masakan Padang', 'Kuliner', '2015-10-04', 'M kambali', 5),
(96007, 'Sejarah', 'Pengetahuan', '2015-11-08', 'Sug Lie', 7),
(96009, 'Masakan Bali', 'Kuliner', '2015-07-21', 'Ikhsan', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(50) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_level` int(10) NOT NULL,
  `user_status` int(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(2, 'Paman', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 1),
(3, 'user', 'uncle', 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
