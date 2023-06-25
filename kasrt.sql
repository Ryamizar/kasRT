-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2023 pada 07.06
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
-- Database: `kasrt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datajenisiuran`
--

CREATE TABLE `datajenisiuran` (
  `ID_Iuran` int(11) NOT NULL,
  `Nama_Iuran` varchar(30) DEFAULT NULL,
  `Jumlah_Iuran` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datawarga`
--

CREATE TABLE `datawarga` (
  `ID_Warga` int(11) NOT NULL,
  `Nama` varchar(25) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_KK` varchar(20) DEFAULT NULL,
  `Kelamin` varchar(10) DEFAULT NULL,
  `Nomor_Telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporantransaksi`
--

CREATE TABLE `laporantransaksi` (
  `ID_Laporan` int(11) NOT NULL,
  `ID_Transaksi` int(11) DEFAULT NULL,
  `Tanggal_Laporan` date DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksipembayaraniuran`
--

CREATE TABLE `transaksipembayaraniuran` (
  `ID_Transaksi` int(11) NOT NULL,
  `ID_Warga` int(11) DEFAULT NULL,
  `ID_Iuran` int(11) DEFAULT NULL,
  `Tanggal_Transaksi` date DEFAULT NULL,
  `Jumlah_Pembayaran` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datajenisiuran`
--
ALTER TABLE `datajenisiuran`
  ADD PRIMARY KEY (`ID_Iuran`);

--
-- Indeks untuk tabel `datawarga`
--
ALTER TABLE `datawarga`
  ADD PRIMARY KEY (`ID_Warga`);

--
-- Indeks untuk tabel `laporantransaksi`
--
ALTER TABLE `laporantransaksi`
  ADD PRIMARY KEY (`ID_Laporan`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`);

--
-- Indeks untuk tabel `transaksipembayaraniuran`
--
ALTER TABLE `transaksipembayaraniuran`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Warga` (`ID_Warga`),
  ADD KEY `ID_Iuran` (`ID_Iuran`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laporantransaksi`
--
ALTER TABLE `laporantransaksi`
  ADD CONSTRAINT `laporantransaksi_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `transaksipembayaraniuran` (`ID_Transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksipembayaraniuran`
--
ALTER TABLE `transaksipembayaraniuran`
  ADD CONSTRAINT `transaksipembayaraniuran_ibfk_1` FOREIGN KEY (`ID_Warga`) REFERENCES `datawarga` (`ID_Warga`),
  ADD CONSTRAINT `transaksipembayaraniuran_ibfk_2` FOREIGN KEY (`ID_Iuran`) REFERENCES `datajenisiuran` (`ID_Iuran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
