-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2022 pada 05.26
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
-- Database: `simpeg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `password`, `foto`) VALUES
(1, 'Desty Mihabalo', 'desty@gmail.com', 'desty123', 'profile.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tgl_terima` date NOT NULL,
  `gaji_pokok` varchar(500) NOT NULL,
  `tunjangan_kinerja` varchar(500) NOT NULL,
  `tunjangan_pasangan` varchar(500) NOT NULL,
  `tunjangan_anak` varchar(500) NOT NULL,
  `tunjangan_makan` varchar(500) NOT NULL,
  `tunjangan_jabatan` varchar(500) NOT NULL,
  `total` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `id_pegawai`, `tgl_terima`, `gaji_pokok`, `tunjangan_kinerja`, `tunjangan_pasangan`, `tunjangan_anak`, `tunjangan_makan`, `tunjangan_jabatan`, `total`) VALUES
(1, 1, '2022-07-03', '3000000', '5000000', '150000', '75000', '35000', '2000000', '5760000'),
(4, 2, '2022-07-08', '3500000', '200000', '200000', '150000', '200000', '300000', '4550000'),
(5, 3, '2022-07-01', '3300000', '0', '60000', '450000', '40000', '540000', '4390000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tgl_mutasi` date NOT NULL,
  `unit_lama` varchar(300) NOT NULL,
  `unit_baru` varchar(300) NOT NULL,
  `alasan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `id_pegawai`, `tgl_mutasi`, `unit_lama`, `unit_baru`, `alasan`) VALUES
(1, 1, '2022-07-03', 'KEPEGAWAIAN', 'BIRO ORGANISASI', 'Jarak tempuh ke kantor terlalu jauh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `prestasi_kerja` varchar(100) NOT NULL,
  `masa_kerja` varchar(100) NOT NULL,
  `pangkat_tmt_lama` varchar(100) NOT NULL,
  `pangkat_tmt_baru` varchar(100) NOT NULL,
  `gaji_pokok_lama` varchar(500) NOT NULL,
  `sk_pangkat_terakhir` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `id_pegawai`, `prestasi_kerja`, `masa_kerja`, `pangkat_tmt_lama`, `pangkat_tmt_baru`, `gaji_pokok_lama`, `sk_pangkat_terakhir`) VALUES
(1, 1, 'Memuaskan', '4 Tahun 5 Bulan', '2022-07-03', '2023-02-03', '3000000', 'berkas jilid proposal.pdf'),
(2, 3, 'Bagus', '10 Tahun', '2007-04-01', '2019-04-01', '3300000', 'sk terakhir Rongsli.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `gol_pegawai` varchar(100) NOT NULL,
  `status_kawin` varchar(100) NOT NULL,
  `pangkat` varchar(200) NOT NULL,
  `jabatan` varchar(300) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `email` varchar(300) NOT NULL,
  `keterangan` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `jk`, `tempat_lahir`, `tgl_lahir`, `alamat`, `agama`, `pendidikan_terakhir`, `gol_pegawai`, `status_kawin`, `pangkat`, `jabatan`, `telepon`, `foto`, `email`, `keterangan`, `status`) VALUES
(1, 'Julia Mariance N. Fuah, S.Kom', '19750708199825178', 'Perempuan', 'Kupang', '1977-05-14', 'Oebobo', 'Kristen Protestan', 'DIPLOMA IV / STRATA I', 'IIId', 'Kawin', 'Penata Tingkat I', 'Kasubag Kepegawaian', '085111253741', 'pegawai1.jpg', 'julia@gmail.com', '', 'Aktif'),
(3, 'Rongsli N. Holbala', '197804172007011014', 'Laki - Laki', 'Bolok', '1978-04-17', 'RT/02, RW/01 Bolok', 'Kristen Protestan', 'DIPLOMA IV / STRATA I', 'IIIc', 'Kawin', 'Penata', 'Kasubag Kepegawaian', '081138517478', 'kasubag.jpg', 'holbala1978@gmail.com', '', 'Aktif'),
(4, 'desty', '1234567890223', 'Perempuan', 'sabu', '2000-12-31', 'sikumana', 'Kristen Protestan', 'STRATA II', 'IIIb', 'Belum Kawin', 'Pembina Utama Muda', '-', '082234567987', 'absen.jpg', 'desty@gmail.com', '', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pensiun`
--

CREATE TABLE `pensiun` (
  `id_pensiun` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `masa_kerja_golongan` varchar(300) NOT NULL,
  `tgl_pensiun` date NOT NULL,
  `masa_kerja` varchar(300) NOT NULL,
  `sk_pensiun` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pensiun`
--

INSERT INTO `pensiun` (`id_pensiun`, `id_pegawai`, `masa_kerja_golongan`, `tgl_pensiun`, `masa_kerja`, `sk_pensiun`) VALUES
(1, 1, '3 Tahun', '2022-07-03', '4 Tahun 5 Bulan', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `pensiun`
--
ALTER TABLE `pensiun`
  ADD PRIMARY KEY (`id_pensiun`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pensiun`
--
ALTER TABLE `pensiun`
  MODIFY `id_pensiun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
