-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2012 at 07:05 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_faktur`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('f1556fd4b25b6341d79d44877f8b8b59', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:15.0) Gecko/20100101 Firefox/15.0.1', 1349765867, 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";s:13:"yesGetMeLogin";s:8:"username";s:11:"gedelumbung";s:13:"nama_pengguna";s:12:"Gede Lumbung";s:4:"stts";s:5:"admin";s:13:"cart_contents";a:5:{s:32:"0e6aea1e426b94dab9152bec1f5ee5fa";a:7:{s:5:"rowid";s:32:"0e6aea1e426b94dab9152bec1f5ee5fa";s:2:"id";s:6:"BR0001";s:3:"qty";s:2:"10";s:5:"price";s:5:"10000";s:4:"name";s:14:"Kopi Kapal Api";s:7:"options";a:1:{s:11:"QtyTerkirim";s:1:"0";}s:8:"subtotal";i:100000;}s:32:"685a1c2b12483342eab60ddef3cecd86";a:7:{s:5:"rowid";s:32:"685a1c2b12483342eab60ddef3cecd86";s:2:"id";s:6:"BR0008";s:3:"qty";s:2:"17";s:5:"price";s:4:"8600";s:4:"name";s:27:"Chitato Keju Balado 90 gram";s:7:"options";a:1:{s:11:"QtyTerkirim";s:1:"0";}s:8:"subtotal";i:146200;}s:32:"e3f8b02a56f440298a753b5371b8e6e6";a:7:{s:5:"rowid";s:32:"e3f8b02a56f440298a753b5371b8e6e6";s:2:"id";s:6:"BR0005";s:3:"qty";s:1:"5";s:5:"price";s:4:"4500";s:4:"name";s:26:"Pasta Gigi Pepsodent 300ml";s:7:"options";a:1:{s:11:"QtyTerkirim";s:1:"0";}s:8:"subtotal";i:22500;}s:11:"total_items";i:3;s:10:"cart_total";i:268700;}}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `harga_barang` int(10) NOT NULL,
  `stok` int(10) NOT NULL,
  `keterangan` tinytext NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`, `harga_barang`, `stok`, `keterangan`) VALUES
('BR0001', 'Kopi Kapal Api', 10000, 90, ''),
('BR0003', 'Mie Sedap Goreng', 10000, 196, ''),
('BR0004', 'Mie Indomie Kaldu Ayam', 1500, 62, ''),
('BR0005', 'Pasta Gigi Pepsodent 300ml', 4500, 44, ''),
('BR0006', 'Aqua Galon 17 Liter', 14500, 4027, ''),
('BR0007', 'Chitato Sapi Panggang 90 gram', 8500, 1002, ''),
('BR0008', 'Chitato Keju Balado 90 gram', 8600, 167, ''),
('BR0009', 'Shampo Sunsilk 150 ml', 9800, 100111, ''),
('BR0010', 'Shampo Dove 150 ml', 10500, 191, ''),
('BR0011', 'Kit Body and Wash', 1000, 1176, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faktur`
--

CREATE TABLE IF NOT EXISTS `tbl_faktur` (
  `kode_faktur` varchar(10) NOT NULL,
  `tanggal_faktur` int(20) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL,
  `qty_barang_terjual` int(10) NOT NULL,
  `total_barang` int(10) NOT NULL,
  `total_bayar` int(20) NOT NULL,
  `bayar` int(20) NOT NULL,
  `sisa_bayar` int(20) NOT NULL,
  `bayar_hutang` int(15) NOT NULL,
  PRIMARY KEY (`kode_faktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faktur`
--

INSERT INTO `tbl_faktur` (`kode_faktur`, `tanggal_faktur`, `kode_pesanan`, `qty_barang_terjual`, `total_barang`, `total_bayar`, `bayar`, `sisa_bayar`, `bayar_hutang`) VALUES
('FK00000001', 1349744748, 'PS00000001', 9, 9, 19500, 20000, 500, 0),
('FK00000002', 1349747480, 'PS00000001', 6, 6, 18000, 20000, 2000, 0),
('FK00000003', 1349748237, 'PS00000001', 5, 5, 19500, 20000, 500, 0),
('FK00000004', 1349791113, 'PS00000003', 5, 5, 72500, 100000, 27500, 0),
('FK00000005', 1349791135, 'PS00000003', 13, 13, 13000, 20000, 7000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faktur_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_faktur_detail` (
  `kode_faktur` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_terkirim` int(10) NOT NULL,
  `harga_tersimpan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faktur_detail`
--

INSERT INTO `tbl_faktur_detail` (`kode_faktur`, `kode_barang`, `qty`, `qty_terkirim`, `harga_tersimpan`) VALUES
('FK00000001', 'BR0005', 9, 2, 4500),
('FK00000001', 'BR0004', 11, 7, 1500),
('FK00000002', 'BR0005', 9, 3, 4500),
('FK00000002', 'BR0004', 11, 3, 1500),
('FK00000003', 'BR0005', 9, 4, 4500),
('FK00000003', 'BR0004', 11, 1, 1500),
('FK00000004', 'BR0006', 5, 5, 14500),
('FK00000004', 'BR0011', 13, 0, 1000),
('FK00000005', 'BR0011', 13, 13, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `stts` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `nama_pengguna`, `stts`) VALUES
('gedelumbung', '1207f0fc9419e5a352b01dcf67007ed5', 'Gede Lumbung', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelanggan` (
  `kode_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(150) NOT NULL,
  `alamat` tinytext NOT NULL,
  `kota` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `hutang` int(40) NOT NULL,
  `stts` varchar(10) NOT NULL,
  PRIMARY KEY (`kode_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kode_pelanggan`, `nama_pelanggan`, `alamat`, `kota`, `provinsi`, `no_telp`, `hutang`, `stts`) VALUES
('PL00001', 'I Wayan Gede Suma Wijaya', 'Jln. Dewi Madri Gg.V/7, Renon, Denpasar Timur, Bali', 'Denpasar', 'Bali', '083847395705', 0, 'Lancar'),
('PL00002', 'Gede Suma Wijaya', 'Bali', 'Banyuwangi', 'Jawa Timur', '0323920', 0, 'Lancar'),
('PL00003', 'Gede Lumbung', '', '', '', '', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_pesanan_detail` (
  `kode_pesanan` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_terkirim` int(10) NOT NULL,
  `harga_tersimpan` int(10) NOT NULL,
  `stts_pengiriman` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesanan_detail`
--

INSERT INTO `tbl_pesanan_detail` (`kode_pesanan`, `kode_barang`, `qty`, `qty_terkirim`, `harga_tersimpan`, `stts_pengiriman`) VALUES
('PS00000001', 'BR0005', 9, 9, 4500, 'terkirim'),
('PS00000001', 'BR0004', 11, 11, 1500, 'terkirim'),
('PS00000002', 'BR0005', 12, 0, 4500, 'pending'),
('PS00000003', 'BR0006', 5, 5, 14500, 'terkirim'),
('PS00000003', 'BR0011', 13, 13, 1000, 'terkirim'),
('PS00000004', 'BR0001', 10, 0, 10000, 'pending'),
('PS00000004', 'BR0008', 17, 0, 8600, 'pending'),
('PS00000004', 'BR0005', 5, 0, 4500, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan_header`
--

CREATE TABLE IF NOT EXISTS `tbl_pesanan_header` (
  `kode_pesanan` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal_pesanan` int(20) NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `stts` varchar(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesanan_header`
--

INSERT INTO `tbl_pesanan_header` (`kode_pesanan`, `username`, `tanggal_pesanan`, `kode_pelanggan`, `stts`, `jenis`) VALUES
('PS00000001', 'gedelumbung', 1349719459, 'PL00001', 'Ok', 'Pesanan'),
('PS00000002', 'gedelumbung', 1349728324, 'PL00001', 'Ok', 'Pembelian'),
('PS00000003', 'gedelumbung', 1349765908, 'PL00001', 'Ok', 'Pesanan'),
('PS00000004', 'gedelumbung', 1349766147, 'PL00001', 'Pending', 'Pesanan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_jalan`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_jalan` (
  `kode_surat_jalan` varchar(10) NOT NULL,
  `kode_pesanan` varchar(10) NOT NULL,
  `tanggal_surat_jalan` int(20) NOT NULL,
  `kode_faktur` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_surat_jalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_jalan`
--

