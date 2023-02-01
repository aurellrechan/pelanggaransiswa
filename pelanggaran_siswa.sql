-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2023 pada 05.59
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelanggaran siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pelanggaran_siswa`
--

CREATE TABLE `detail_pelanggaran_siswa` (
  `id_pelanggaran_siswa` int(11) NOT NULL,
  `id_pelanggaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pelanggaran_siswa`
--

INSERT INTO `detail_pelanggaran_siswa` (`id_pelanggaran_siswa`, `id_pelanggaran`) VALUES
(0, 1),
(0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(300) NOT NULL,
  `poin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `poin`) VALUES
(1, 'tidak  memakai ciput', 30),
(2, 'rambut panjang', 50),
(3, 'telat', 30),
(4, 'bolos', 120),
(5, 'tawuran', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran_siswa`
--

CREATE TABLE `pelanggaran_siswa` (
  `id_pelanggaran_siswa` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggaran_siswa`
--

INSERT INTO `pelanggaran_siswa` (`id_pelanggaran_siswa`, `waktu`, `id_siswa`, `id_user`) VALUES
(4, '2023-02-01', 3, 1),
(5, '2023-02-01', 3, 1),
(6, '2023-02-01', 5, 1),
(14, '2023-02-01', 6, 1),
(15, '2023-02-01', 6, 1),
(16, '2023-02-01', 6, 1),
(17, '2023-02-01', 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(300) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `poin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `kelas`, `poin`) VALUES
(4, '186', 'aurel', 'XI RPL8', 100),
(5, '6', 'Ratih', 'XI RPL 8', 300),
(6, '0987', 'Favian', 'XI RPL 7', 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Bu Ratih', 'buratihhrpl', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pelanggaran_siswa`
--
ALTER TABLE `detail_pelanggaran_siswa`
  ADD KEY `id_pelanggaran` (`id_pelanggaran`),
  ADD KEY `id_pelanggaran_siswa` (`id_pelanggaran_siswa`);

--
-- Indeks untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran`);

--
-- Indeks untuk tabel `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  ADD PRIMARY KEY (`id_pelanggaran_siswa`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pelanggaran_siswa` (`id_pelanggaran_siswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggaran_siswa`
--
ALTER TABLE `pelanggaran_siswa`
  MODIFY `id_pelanggaran_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
