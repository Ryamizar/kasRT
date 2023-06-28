-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 07.36
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok7`
--

--
-- Dumping data untuk tabel `datawarga`
--

INSERT INTO `datawarga` (`id_warga`, `nama`, `alamat`, `no_kk`, `no_telp`) VALUES
('DW1', 'John Doe', 'Jl.ABC No.13', '1234567890', '0812345678'),
('DW2', 'Pevita', 'Jl.ABC No.12', '10802323', '0821345678'),
('DW3', 'Anita', 'Jl.ABC No.16', '1080123498', '0821345679'),
('DW4', 'Bernard', 'Jl.ABC No.14', '10801234876', '0821345675'),
('DW5', 'Eren sama', 'Jl.ABC No.19', '1080123475', '0821345674');

--
-- Dumping data untuk tabel `jenis_iuran`
--

INSERT INTO `jenis_iuran` (`id_iuran`, `nama_iuran`, `jumlah_iuran`) VALUES
('JI1', 'Iuran Kebersihan', '10000'),
('JI2', 'Iuran Keamanan', '15000'),
('JI3', 'Iuran kurban', '150000');

--
-- Dumping data untuk tabel `laporan_transaksi`
--

INSERT INTO `laporan_transaksi` (`id_laporan`, `id_transaksi`, `tgl_laporan`, `keterangan`) VALUES
('L1', 'T1', '2023-06-01', 'Iuran Kebersihan'),
('L2', 'T2', '2023-06-02', 'Iuran Keamanan'),
('L3', 'T3', '2023-06-03', 'Iuran Kurban'),
('L4', 'T4', '2023-06-04', 'Iuran Kurban'),
('L5', 'T5', '2023-06-05', 'Iuran Keamanan'),
('L6', 'T6', '2023-06-06', 'Iuran Kebersihan');

--
-- Dumping data untuk tabel `transaksi_iuran`
--

INSERT INTO `transaksi_iuran` (`id_transaksi`, `id_warga`, `id_iuran`, `tgl_transaksi`, `jumlah_pembayaran`) VALUES
('T1', 'DW1', 'JI1', '2023-06-01', '10000'),
('T2', 'DW2', 'JI2', '2023-06-02', '15000'),
('T3', 'DW3', 'JI3', '2023-06-03', '150000'),
('T4', 'DW4', 'JI3', '2023-06-04', '150000'),
('T5', 'DW5', 'JI2', '2023-06-05', '15000'),
('T6', 'DW1', 'JI1', '2023-06-06', '10000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
