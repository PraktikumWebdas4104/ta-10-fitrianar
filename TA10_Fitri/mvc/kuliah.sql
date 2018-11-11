-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Nov 2018 pada 04.44
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama` text NOT NULL,
  `angkatan` text NOT NULL,
  `fakultas` text NOT NULL,
  `prodi` text NOT NULL,
  `genre` varchar(35) NOT NULL,
  `wisata` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `angkatan`, `fakultas`, `prodi`, `genre`, `wisata`) VALUES
(42855456, 'No Name', '2015', 'Ilmu Terapan', 'D3 Sistem Informasi', 'Horror, Action, Animasi', 'Bali, Raja Ampat'),
(1234567890, 'fitri', '2017', 'Ilmu Terapan', 'D3 Sistem Informasi', 'Action, Anime', 'Bali, Bangka Belitung, Labuan Bajo'),
(2147483647, 'Sri Fitriana Ramadhini', '2017', 'Ilmu Terapan', 'D3 Sistem Informasi', 'Horror, Thriller, Animasi', 'Raja Ampat, Pulau Derawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
