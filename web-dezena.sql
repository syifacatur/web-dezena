-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2025 pada 13.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-dezena`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `Id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_admin` varchar(255) DEFAULT NULL,
  `role_user` varchar(255) DEFAULT NULL,
  `id_user` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`Id`, `email`, `password`, `nama_admin`, `role_user`, `id_user`) VALUES
(2, 'admin@gmail.com', '$2y$10$AIxith3klXwMIMT/t3CpHOasClDF8l1JWV66U1zob78mXT4wksaJq', 'Dezena', '0', NULL),
(33, 'jena@gmail.com', '$2y$10$4vdsl.x/O9zsfDuIuyMbkOejc.prXtp8Aiyxr4HaDBg7aP3yg0G1G', 'jena', '0', NULL),
(34, 'siswa@gmail.com', '$2y$10$cPoXOZGBeo/4Ynn7Lf18F.7tgnzZ2hzugN075b8e6AE6glFvWHu.2', '', '1', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cicilan_pendaftaran`
--

CREATE TABLE `cicilan_pendaftaran` (
  `Id` int(11) NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `tanggal_pembayaran` varchar(255) DEFAULT NULL,
  `status_cicilan` int(11) NOT NULL,
  `cicilan_ke` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cicilan_pendaftaran`
--

INSERT INTO `cicilan_pendaftaran` (`Id`, `bukti_pembayaran`, `id_detail_pendaftaran`, `nominal`, `tanggal_pembayaran`, `status_cicilan`, `cicilan_ke`) VALUES
(57, '09-02-06WhatsApp Image 2024-05-15 at 22.06.36_0be643cc.jpg', 19, 0, '2025-02-12', 1, 1),
(58, '09-02-03WhatsApp Image 2024-05-15 at 22.06.36_0be643cc.jpg', 19, 0, '2025-02-12', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pendaftaran`
--

CREATE TABLE `detail_pendaftaran` (
  `Id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `metode_pembayaran_pendaftaran` varchar(255) DEFAULT NULL COMMENT 'metode_pembayaran',
  `kelas` varchar(255) DEFAULT NULL,
  `usia` varchar(255) DEFAULT NULL,
  `status_pendaftaran` varchar(255) DEFAULT NULL,
  `status_kegiatan` int(11) NOT NULL DEFAULT 0,
  `biaya_kegiatan` int(11) DEFAULT 0,
  `tanggal_kegiatan` date DEFAULT NULL,
  `bukti_konfirmasi_pembayaran_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `detail_pendaftaran`
--

INSERT INTO `detail_pendaftaran` (`Id`, `id_user`, `id_admin`, `tanggal_daftar`, `metode_pembayaran_pendaftaran`, `kelas`, `usia`, `status_pendaftaran`, `status_kegiatan`, `biaya_kegiatan`, `tanggal_kegiatan`, `bukti_konfirmasi_pembayaran_kegiatan`) VALUES
(19, 20, 33, '2025-02-12', NULL, 'Tata Busana', '16 tahun 1 bulan', '3', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `Id` int(11) NOT NULL,
  `nip` varchar(100) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `Id` int(11) NOT NULL,
  `nama_hari` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`Id`, `nama_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'PR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_hari` int(11) DEFAULT NULL,
  `id_mapel` varchar(255) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_hari`, `id_mapel`, `kelas`) VALUES
(1, 1, 'P0002', 'A'),
(2, 1, 'P0003', 'A'),
(3, 1, 'P0004', 'A'),
(4, 1, 'P0005', 'A'),
(5, 1, 'P0006', 'A'),
(7, 1, 'P0008', 'A'),
(8, 1, 'P0002', 'B'),
(9, 1, 'P0003', 'B'),
(10, 1, 'P0004', 'B'),
(11, 1, 'P0005', 'B'),
(12, 1, 'P0006', 'B'),
(14, 1, 'P0007', 'B'),
(15, 2, 'P0009', 'B'),
(16, 2, 'P0005', 'B'),
(17, 2, 'P0010', 'B'),
(18, 2, 'P0011', 'B'),
(19, 2, 'P0006', 'B'),
(21, 2, 'P0007', 'B'),
(22, 1, 'P0008', 'B'),
(23, 2, 'P0008', 'B'),
(24, 3, 'P0012', 'B'),
(25, 3, 'P0013', 'B'),
(26, 3, 'P0014', 'B'),
(28, 3, 'P0006', 'B'),
(30, 3, 'P0007', 'B'),
(31, 3, 'P0008', 'B'),
(32, 4, 'P0003', 'B'),
(33, 4, 'P0005', 'B'),
(34, 4, 'P0011', 'B'),
(35, 4, 'P0004', 'B'),
(36, 4, 'P0006', 'B'),
(38, 4, 'P0007', 'B'),
(39, 4, 'P0008', 'B'),
(40, 5, 'P0009', 'B'),
(41, 5, 'P0010', 'B'),
(43, 5, 'P0006', 'B'),
(44, 5, 'P0007', 'B'),
(45, 5, 'P0008', 'B'),
(47, 6, 'P0004', 'B'),
(49, 6, 'P0011', 'B'),
(51, 6, 'P0010', 'B'),
(52, 2, 'P0015', 'A'),
(53, 5, 'P0016', 'A'),
(54, 2, 'P0015', 'A'),
(55, 3, 'P0014', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel_kegiatan` char(5) NOT NULL DEFAULT '',
  `nama_mapel_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kode_mapel_kegiatan`, `nama_mapel_kegiatan`) VALUES
('P0001', 'Matematika'),
('P0002', 'Pendidikan Agama dan Budi Pekerti'),
('P0003', 'Pendidikan Pancasila dan Kewarganegaraan'),
('P0004', 'Bahasa Indonesia'),
('P0005', 'Sejarah Indonesia'),
('P0006', 'Istirahat'),
('P0007', 'Bahasa Inggris dan Bahasa Asing Lainnya'),
('P0008', 'Seni Budaya'),
('P0009', 'Pendidikan Jasmani, Olahraga, dan Kesehatan'),
('P0010', 'Pemodelan Perangkat Lunak'),
('P0011', 'Basis Data'),
('P0012', 'Pemrograman Berorientasi Obyek'),
('P0013', 'Pemrograman Web dan Perangkat Bergerak'),
('P0014', 'Produk Kreatif dan Kewirausahaan'),
('P0015', 'Desain Busana'),
('P0016', 'Pembuatan Hiasan Busana'),
('P0017', 'Pembuatan Busana Custom Made'),
('P0018', 'Pembuatan Busana Industri'),
('P0019', 'Teknologi Menjahit'),
('P0020', 'Pengetahuan Bahan Tekstil'),
('P0021', 'Keamanan Pangan (Sanitasi, Higienis dan Keselamatan Kerja)'),
('P0022', 'Pengetahuan Bahan Makanan'),
('P0023', 'Boga Dasar'),
('P0024', 'Ilmu Gizi'),
('P0025', 'Simulasi dan Komunikasi Digital'),
('P0026', 'IPA Terapan'),
('P0027', 'Kepariwisataan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_spp`
--

CREATE TABLE `pembayaran_spp` (
  `Id` int(11) NOT NULL,
  `tanggal_pembayaran_spp` date DEFAULT NULL,
  `cicilan_ke` int(11) NOT NULL,
  `status_spp` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembayaran_spp`
--

INSERT INTO `pembayaran_spp` (`Id`, `tanggal_pembayaran_spp`, `cicilan_ke`, `status_spp`, `user_id`) VALUES
(40, '2024-11-26', 1, 1, '14'),
(41, '2024-11-26', 2, 1, '14'),
(42, '2024-11-26', 1, 0, '2'),
(43, '2025-02-02', 1, 1, '18'),
(44, '2025-02-02', 1, 1, '17'),
(45, '2025-02-02', 1, 1, '17'),
(46, '2025-02-07', 1, 1, '17'),
(47, '2025-02-07', 1, 1, '17'),
(48, '2025-02-07', 1, 1, '17'),
(49, '2025-02-07', 2, 1, '18'),
(50, '2025-02-07', 3, 1, '18'),
(51, '2025-02-07', 1, 1, '19'),
(52, '2025-02-07', 2, 1, '19'),
(53, '2025-02-07', 3, 1, '19'),
(54, '2025-02-12', 1, 1, '20'),
(55, '2025-02-12', 2, 1, '20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `Id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `jumlah_saudara` int(11) DEFAULT NULL,
  `di_jakarta_ikut` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `agama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `agama_ibu` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `upload_akte` varchar(255) DEFAULT NULL,
  `upload_kartu_keluarga` varchar(255) DEFAULT NULL,
  `foto_anak` varchar(255) DEFAULT NULL,
  `foto_keluarga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`Id`, `nama`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `anak_ke`, `jumlah_saudara`, `di_jakarta_ikut`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `pendidikan_terakhir_ayah`, `pekerjaan_ayah`, `agama_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `pendidikan_terakhir_ibu`, `pekerjaan_ibu`, `agama_ibu`, `telp`, `upload_akte`, `upload_kartu_keluarga`, `foto_anak`, `foto_keluarga`) VALUES
(14, 'dezena auxiliadora', 'Dezena', 'Dili', '2007-12-31', '', 3, 3, 'Semarang', 'bejo', 'semarang', '1980-01-01', 'smk', 'wiraswasta', 'islam', 'harwati', 'semarang', '1980-01-01', 's1', 'ibu rumah tangga ', 'islam', '08828182182', '01-11-17download.jpeg', '01-11-17Wallpaper Dekstop.jpeg', '01-11-43wallpaperr.jpg', '01-11-43wall.jpeg'),
(20, 'siswa', 'siswa', 'semarang', '2009-01-01', 'L', 3, 2, 'Semarang', 'siswa', 'semarang', '1980-01-01', 'smk', 'wiraswasta', 'islam', 'siswa', 'semarang', '1980-01-01', 's1', 'ibu rumah tangga ', 'islam', '71527152712', '09-02-49WhatsApp Image 2024-05-16 at 01.48.29_fa2a99fc.jpg', '09-02-49WhatsApp Image 2024-05-15 at 22.06.36_0be643cc.jpg', '09-02-27WhatsApp Image 2024-05-15 at 22.06.36_0be643cc.jpg', '09-02-27WhatsApp Image 2024-05-16 at 10.31.00_9da4337f.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(6) NOT NULL DEFAULT '0',
  `kelas` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `kelas`, `id_detail_pendaftaran`, `nama`) VALUES
('250001', 'Rekayasa Perangkat Lunak', 17, 'catur'),
('250002', 'Tata Busana', 16, 'catur'),
('250003', 'Tata Busana', 16, 'catur'),
('250004', 'Tata Busana', 16, 'catur'),
('250005', 'Tata Busana', 16, 'catur'),
('250006', 'Tata Busana', 16, 'catur'),
('250007', 'Tata Busana', 19, 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indeks untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_detail_pendaftaran` (`id_detail_pendaftaran`);

--
-- Indeks untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_hari` (`id_hari`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel_kegiatan`);

--
-- Indeks untuk tabel `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD CONSTRAINT `cicilan_pendaftaran_ibfk_1` FOREIGN KEY (`id_detail_pendaftaran`) REFERENCES `detail_pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD CONSTRAINT `detail_pendaftaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pendaftaran_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `akun` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`kode_mapel_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_hari`) REFERENCES `hari` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
