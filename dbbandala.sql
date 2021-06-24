-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2021 pada 13.54
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbandala`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataadmin`
--

CREATE TABLE `dataadmin` (
  `IdAdmin` int(11) NOT NULL,
  `NamaAdmin` varchar(20) NOT NULL,
  `KeyPass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataadmin`
--

INSERT INTO `dataadmin` (`IdAdmin`, `NamaAdmin`, `KeyPass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datajadwal`
--

CREATE TABLE `datajadwal` (
  `id_Jadwal` char(4) NOT NULL,
  `jam` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `link_Maps` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datajadwal`
--

INSERT INTO `datajadwal` (`id_Jadwal`, `jam`, `tanggal`, `tempat`, `link_Maps`) VALUES
('1000', '11.00-12.00', '10  July 2023', 'Balai Desa-bluri solokuro lamongan', 'https://goo.gl/maps/GPSjzU8DS2P2hjdP9'),
('1004', '11.00-13.00', '12  July 2022', 'dagan lamongan', 'aaysdgayugasuigauils');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datauser`
--

CREATE TABLE `datauser` (
  `IdUser` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `verif_Code` text NOT NULL,
  `is_Verified` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datauser`
--

INSERT INTO `datauser` (`IdUser`, `nama`, `email`, `password`, `verif_Code`, `is_Verified`) VALUES
(10014, 'muhammad fahmi ady susilo', 'asfahmi5@gmail.com', '$2y$10$xKu..Afg/ljDgAPic/suguxFm.EApcNlbjNIx7abjznF0P4S3F2NG', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_input`
--

CREATE TABLE `data_input` (
  `id_input` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `golongan` varchar(5) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomer_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_input`
--

INSERT INTO `data_input` (`id_input`, `nama`, `golongan`, `tanggal`, `alamat`, `nomer_telp`) VALUES
('27063', 'muhammad fahmi ady susilo', 'C+', '10  July 2022', 'bluri solokuro lamongan', '08462746233');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_darah`
--

CREATE TABLE `stok_darah` (
  `id_darah` char(4) NOT NULL,
  `jenis_darah` varchar(5) NOT NULL,
  `jumlah_darah` varchar(10) NOT NULL,
  `warna` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok_darah`
--

INSERT INTO `stok_darah` (`id_darah`, `jenis_darah`, `jumlah_darah`, `warna`) VALUES
('1001', 'A+', '17', 'bg-info'),
('1002', 'A-', '20', 'bg-info'),
('1003', 'B+', '7', 'bg-warning'),
('1004', 'B-', '4', 'bg-warning'),
('1005', 'AB+', '8', 'bg-danger'),
('1006', 'AB-', '2', 'bg-danger'),
('1007', 'O+', '9', 'bg-success'),
('1008', 'O-', '19', 'bg-success');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  ADD PRIMARY KEY (`IdAdmin`);

--
-- Indeks untuk tabel `datajadwal`
--
ALTER TABLE `datajadwal`
  ADD PRIMARY KEY (`id_Jadwal`);

--
-- Indeks untuk tabel `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`IdUser`);

--
-- Indeks untuk tabel `data_input`
--
ALTER TABLE `data_input`
  ADD PRIMARY KEY (`id_input`),
  ADD UNIQUE KEY `id_input` (`id_input`) USING BTREE;

--
-- Indeks untuk tabel `stok_darah`
--
ALTER TABLE `stok_darah`
  ADD PRIMARY KEY (`id_darah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datauser`
--
ALTER TABLE `datauser`
  MODIFY `IdUser` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10015;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
