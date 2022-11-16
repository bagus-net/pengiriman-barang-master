-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2020 pada 10.13
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `pengiriman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `del_no` varchar(15) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `satuan`, `del_no`, `id_kategori`) VALUES
('BRG0001', 'BRAKE SHOE HONDA ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0002', 'BRAKE SHOE KHARISMA', 'SATUAN 1', 'Box', 'KTG02'),
('BRG0003', 'BRAKE SHOE SUPRA FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0004', 'BRAKE SHOE YAMAHA ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0005', 'PAD SET HONDA BLADE - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0006', 'PAD SET HONDA SUPRA X 125 - AS', 'SATUAN 1', 'BOX', 'KTG01'),
('BRG0007', 'PAD SET SUPRA FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0008', 'PAD SET SUPRA X 125 - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0009', 'PAD SET VIXION ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0010', 'PAD SET JUPITER-MX ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0011', 'PAD SET VEGA-ZR ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0012', 'PAD SET MIO FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0013', 'PAD SET FZR FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0014', 'PAD SET JUPITER-MX FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0015', 'PAD SET VEGA-ZR FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0016', 'PAD SET TORNADO ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0017', 'PAD SET TIGER F ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0018', 'PAD SET THUNDER 125 ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0019', 'PAD SET THUNDER 125 FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0020', 'PAD SET VARIO - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0021', 'PAD SET SPIN - ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0022', 'PAD SET SPIN - FED', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0023', 'SPRING FRONT FORK KHARISMA ASP', 'SATUAN 2', 'Box', 'KTG02'),
('BRG0024', 'SPRING FRONT FORK SUPRA ASP', 'SATUAN 2', 'Box', 'KTG02'),
('BRG0025', 'BOTOL ULTRATEC 0.8L 2016 - RED', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0026', 'BOTOL SUPREME XX 50 0.8L 2016 ', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0027', 'BOTOL AHM OIL 0.8L MPX-1 10W-3', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0028', 'BOTOL MPX-1 0.8L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0029', 'BOTOL SPX1 FEDERAL 0.8L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0030', 'BOTOL SPX1 2014 REPSOL 1.0L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0031', 'BOTOL SPX-1 1.2L 2016', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0032', 'BOTOL SUPREME XX 30 0.8L 2016-', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0033', 'BOTOL FEDERAL YMATIC 0.8L 2016', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0034', 'BOTOL AHM OIL 1.0L MPX-1 10W-3', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0035', 'BOTOL MPX1 AHM 2014 1.0L', 'SATUAN 3', 'PALLET', 'KTG03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengiriman`
--

CREATE TABLE IF NOT EXISTS `detail_pengiriman` (
  `id_detail` int(4) NOT NULL AUTO_INCREMENT,
  `id_pengiriman` varchar(14) NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `qty` int(4) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`id_detail`, `id_pengiriman`, `id_barang`, `qty`) VALUES
(1, 'KRM20160820001', 'BRG0001', 1),
(2, 'KRM20160820001', 'BRG0002', 3),
(3, 'KRM20161015001', 'BRG0006', 1),
(4, 'KRM20161015001', 'BRG0035', 1),
(5, 'KRM20201106001', 'BRG0006', 1),
(6, 'KRM20201106001', 'BRG0005', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `keterangan`) VALUES
('KTG01', 'KATEGORI 1', 'KATEGORI 1'),
('KTG02', 'KATEGORI 2', 'KATEGORI 2'),
('KTG03', 'KATEGORI 3', 'KATEGORI 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE IF NOT EXISTS `kurir` (
  `id_kurir` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama`, `jenis_kelamin`, `telepon`, `alamat`, `password`) VALUES
('KRR01', 'EKO ', 'Laki-Laki', '081385195955', 'Mayang, Jambi', 'ee9cc68e583241dcb548e4217d8c8eb9'),
('KRR02', 'ERIK', 'Laki-Laki', '081284959589', 'Mayang, Jambi', '6faae43d506a230beedcdbff231b478e'),
('KRR03', 'TRIBUDI', 'Laki-Laki', '081219900381', 'Mayang, Jambi', 'b4ae1f68447e3df8a1ce6c4dc3660c5b'),
('KRR04', 'SUMANTA', 'Laki-Laki', '081382630321', 'Mayang, Jambi', 'af7ece06ca8c285657e6a8860e58c44f'),
('KRR05', 'UDRI', 'Laki-Laki', '081210426881', 'Mayang, Jambi', 'a82ae164e11127090055c6c7fbb6a888'),
('KRR06', 'SAEPUL', 'Laki-Laki', '081314485383', 'Mayang, Jambi', '1cdb001697052dcdf055da6b82124bc3'),
('KRR07', 'yanto', 'Laki-Laki', '081284213311', 'Mayang, Jambi', '81dc9bdb52d04dc20036dbd8313ed055'),
('KRR08', 'SUJONO', 'Laki-Laki', '0812345678', 'Mayang, Jambi', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `telepon`, `alamat`) VALUES
('CST0001', 'ASTRA OTOPART', '021-4603550', 'Mayang, Jambi'),
('CST0002', 'Idemitsu Lube Indonesia', '021-8911 4611', 'Kota Baru, Jambi'),
('CST0003', 'Federal Karyatama', '021-4613583', 'Simpang Rimbo, Jambi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id_pengiriman` varchar(14) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(7) NOT NULL,
  `id_kurir` varchar(5) NOT NULL,
  `no_kendaraan` varchar(8) NOT NULL,
  `no_po` varchar(15) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `tanggal`, `id_pelanggan`, `id_kurir`, `no_kendaraan`, `no_po`, `keterangan`, `penerima`, `photo`, `status`) VALUES
('KRM20201106001', '2020-11-06', 'CST0001', 'KRR04', 'BH 576t7', 'PO2335434', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
('USR01', 'admin', '1a1dc91c907325c69271ddf0c944bc72', 1),
('USR02', 'finance', '1a1dc91c907325c69271ddf0c944bc72', 2),
('USR03', 'gudang', '1a1dc91c907325c69271ddf0c944bc72', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
