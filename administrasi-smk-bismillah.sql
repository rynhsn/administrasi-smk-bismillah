-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 05:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrasi-smk-bismillah`
--

-- --------------------------------------------------------

--
-- Table structure for table `dok_absensi`
--

CREATE TABLE `dok_absensi` (
  `id_absen` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ta1` int(4) NOT NULL,
  `ta2` int(4) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_absensi`
--

INSERT INTO `dok_absensi` (`id_absen`, `kelas_id`, `jurusan_id`, `mapel_id`, `ta1`, `ta2`, `semester`, `file`, `pegawai_id`, `upload_at`) VALUES
(1, 1, 1, 1, 2020, 2021, 'Ganjil', 'test.pdf', 104, 1624003495),
(3, 1, 1, 3, 2020, 2021, 'Ganjil', '5d9643473309a75cd95bb29da2d06366.pdf', 100, 1624086926),
(4, 1, 1, 2, 2020, 2021, 'Ganjil', '9a8309c601197b431c3da3855fda2ccf.pdf', 100, 1624086959);

-- --------------------------------------------------------

--
-- Table structure for table `dok_arsip`
--

CREATE TABLE `dok_arsip` (
  `id_arsip` int(11) NOT NULL,
  `file` varchar(128) NOT NULL,
  `ket1` varchar(128) NOT NULL,
  `ket2` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_arsip`
--

INSERT INTO `dok_arsip` (`id_arsip`, `file`, `ket1`, `ket2`, `pegawai_id`, `upload_at`) VALUES
(1, 'test.pdf', 'Keterangan 1', 'Keterangan 2', 100, 1624188994),
(2, 'f87d0317931333012eaaca3ee5d92344.pdf', 'Ket 1', 'Ket 2', 100, 1624188547);

-- --------------------------------------------------------

--
-- Table structure for table `dok_lpj`
--

CREATE TABLE `dok_lpj` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(128) NOT NULL,
  `tahun` int(4) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_lpj`
--

INSERT INTO `dok_lpj` (`id`, `nama_kegiatan`, `tahun`, `file`, `pegawai_id`, `upload_at`) VALUES
(11, 'Perpisahan Kelas 12', 2020, '01999e6ddf9adfd40a9b6a7f3b9f23eb.pdf', 100, 1624077649),
(12, 'HUT SMK', 2021, '1b92ae5f50cc1b1c8e8619daa0bd6aab.pdf', 100, 1624188855);

-- --------------------------------------------------------

--
-- Table structure for table `dok_pelajaran`
--

CREATE TABLE `dok_pelajaran` (
  `id_pel` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `file` varchar(50) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_pelajaran`
--

INSERT INTO `dok_pelajaran` (`id_pel`, `kelas_id`, `jurusan_id`, `mapel_id`, `file`, `pegawai_id`, `upload_at`) VALUES
(21, 1, 1, 1, 'c8892563e1cacb13b572e930f514b3b0.pdf', 100, 1624084511),
(23, 1, 1, 2, 'e2c96e1993b493f6948bacd234a02081.pdf', 103, 1624171105),
(24, 1, 1, 3, '7e2e3338eb3e031a02b827e201f60eb9.pdf', 103, 1624171113),
(25, 1, 2, 1, '88f79e4152b1ca861991b883f11832a2.pdf', 103, 1624171124),
(26, 1, 2, 2, '427f7eab18fce097dafcd75ab06ca2f6.pdf', 103, 1624171139);

-- --------------------------------------------------------

--
-- Table structure for table `dok_pkl`
--

CREATE TABLE `dok_pkl` (
  `id_pkl` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_pkl`
--

INSERT INTO `dok_pkl` (`id_pkl`, `siswa_id`, `judul`, `file`, `pegawai_id`, `upload_at`) VALUES
(4, 200, 'Dokumen PKL', 'c94f23709413f7fd4f729e19b68fb94d.pdf', 100, 1624191648),
(5, 200, 'test12', 'c42194228c3fbb7f4539233c743b88ee.pdf', 100, 1624192257),
(6, 201, 'Dokumen PKL', 'a6f426db28d0acee06d3b637371fa80d.pdf', 101, 1624193553);

-- --------------------------------------------------------

--
-- Table structure for table `dok_silabus`
--

CREATE TABLE `dok_silabus` (
  `id_silab` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ta1` int(4) NOT NULL,
  `ta2` int(4) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_silabus`
--

INSERT INTO `dok_silabus` (`id_silab`, `kelas_id`, `jurusan_id`, `mapel_id`, `ta1`, `ta2`, `semester`, `file`, `pegawai_id`, `upload_at`) VALUES
(1, 1, 1, 1, 2020, 2021, 'Ganjil', 'test.pdf', 104, 1624003495),
(2, 1, 1, 2, 2020, 2021, 'Ganjil', '738e23b4fdd905978183fdbc752531bd.pdf', 100, 1624084675),
(3, 1, 1, 3, 2020, 2021, 'Ganjil', 'f90c2fb61bd3f5fc08069969a5c6b761.pdf', 100, 1624084589);

-- --------------------------------------------------------

--
-- Table structure for table `dok_tenaga_kepegawaian`
--

CREATE TABLE `dok_tenaga_kepegawaian` (
  `id_tk` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `judul` varchar(32) NOT NULL,
  `file` varchar(128) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dok_tenaga_kepegawaian`
--

INSERT INTO `dok_tenaga_kepegawaian` (`id_tk`, `pegawai_id`, `judul`, `file`, `upload_at`) VALUES
(1, 100, 'Foto', 'af4e93443c047628765963d9e5c88ce2.jpg', 1624084675),
(2, 100, 'Sertifikat', '55a6a252ec2c19df534bec5dad0a13ba.pdf', 1624084675),
(3, 104, 'Sertifikat 2', 'c1b7a5a0b7f88573db5f3f271c854b7c.pdf', 1624132485),
(9, 104, 'SKCK', '9e489b5eff1bbf4acedde9195c40f32f.pdf', 1624158581),
(11, 101, 'Ijazah S1', 'c173be4a57fbcafc778a50d5028808d7.pdf', 1624183118),
(12, 200, 'Dokumen PKL', '9d6bbb0f7350a500c103cf68234cbd9e.pdf', 1624190553),
(13, 202, 'test', '1153ef951648635373d15990a81cef51.pdf', 1624190687);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'Teknik Komputer & Jaringan'),
(2, 'Rekayasa Perangkat Lunak'),
(3, 'Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 10),
(2, 11),
(3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `mapel`) VALUES
(1, 'Kimia'),
(2, 'Matematika'),
(3, 'Fisika');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `id_nilai` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `ta1` int(4) NOT NULL,
  `ta2` int(4) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `latihan` int(11) NOT NULL,
  `tugas` int(11) NOT NULL,
  `pts` int(11) NOT NULL,
  `pas` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_siswa`
--

INSERT INTO `nilai_siswa` (`id_nilai`, `siswa_id`, `mapel_id`, `kelas_id`, `jurusan_id`, `pegawai_id`, `ta1`, `ta2`, `semester`, `latihan`, `tugas`, `pts`, `pas`, `date_created`) VALUES
(1, 200, 1, 1, 1, 0, 2020, 2021, 'Ganjil', 100, 100, 100, 100, 1624178094),
(2, 201, 1, 1, 1, 100, 2020, 2021, 'Ganjil', 50, 50, 50, 50, 1624095355);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `tempat_lahir` varchar(64) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  `pendidikan_terakhir` varchar(32) NOT NULL,
  `status` varchar(16) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(64) NOT NULL,
  `jalan` varchar(128) NOT NULL,
  `desa_kelurahan` varchar(32) NOT NULL,
  `kecamatan` varchar(32) NOT NULL,
  `kab_kota` varchar(32) NOT NULL,
  `provinsi` varchar(32) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `name`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pendidikan_terakhir`, `status`, `no_hp`, `email`, `jalan`, `desa_kelurahan`, `kecamatan`, `kab_kota`, `provinsi`, `kode_pos`, `tahun_masuk`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(100, 'Admin, S.Pd.I', 'Serang', '1992-02-01', 'Laki-laki', 'Sarjana Pendidikan Agama Islam', 'ASN', '08884564', 'malik@gmail.com', 'Jl. A', 'Mekarsari', 'Serang', 'Serang', 'Banten', 53242, 2018, '100.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 1, 1, 1552120268),
(101, 'TU, S.Pd.I', 'Serang', '1992-02-01', 'Laki-laki', 'Sarjana Pendidikan Agama Islam', 'ASN', '08884564', 'malik@gmail.com', 'Jl. A', 'Mekarsari', 'Serang', 'Serang', 'Banten', 53242, 2018, '101.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 2, 1, 1552120268),
(102, 'Kepsek, S.Pd.I', 'Serang', '1992-02-01', 'Laki-laki', 'Sarjana Pendidikan Agama Islam', 'ASN', '08884564', 'malik@gmail.com', 'Jl. A', 'Mekarsari', 'Serang', 'Serang', 'Banten', 53242, 2018, '102.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 3, 1, 1552120268),
(103, 'Kurikulum, S.Pd.I', 'Serang', '1992-02-01', 'Laki-laki', 'Sarjana Pendidikan Agama Islam', 'ASN', '08884564', 'malik@gmail.com', 'Jl. A', 'Mekarsari', 'Serang', 'Serang', 'Banten', 53242, 2018, '103.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 4, 1, 1552120268),
(104, 'Guru, S.Pd.I', 'Serang', '1992-02-01', 'Perempuan', 'Sarjana Pendidikan Agama Islam', 'Honorer', '08884564', 'malik@gmail.com', 'Jl. A', 'Mekarsari', 'Serang', 'Serang', 'Banten', 53242, 2018, '104.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 5, 1, 1552120268),
(105, 'TU, S.T', 'Sukabumi', '2021-06-18', 'Laki-laki', 'S1 Teknik Industri', 'Honorer', '081321321321', 'mahmudin@gmail.com', 'Jl. Raya Syekh Nawawi Albantani', 'Cilaku', 'Curug', 'Serang', 'Banten', 42117, 2018, '105.jpg', '$2y$10$S9DovbgzcRd5CP4QXe1yO.qSIpJtYSw01D7gQkQcDVrYNmb1SFhyC', 2, 1, 1624003495),
(106, 'Guru, S.Kom', 'Lebak', '2021-06-02', 'Perempuan', 'S1 Teknik Industri', 'ASN', '083812653581', 'prismaunbaja2020@gmail.com', 'Jl. Raya Syekh Nawawi Albantani', 'Cilaku', 'Curug', 'serang', 'Banten', 42117, 2000, '106.jpg', '$2y$10$c73o7RMMd138zHpGq6iq1e2uZ94r3ESGcwCctgUKcN8FVntQqGWY2', 5, 1, 1624004215);

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `id_menu` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin` int(1) NOT NULL,
  `guru` int(1) NOT NULL,
  `siswa` int(1) NOT NULL,
  `inbox` int(1) NOT NULL,
  `outbox` int(1) NOT NULL,
  `lpj` int(1) NOT NULL,
  `pelajaran` int(1) NOT NULL,
  `absensi` int(1) NOT NULL,
  `silabus` int(1) NOT NULL,
  `pkl` int(1) NOT NULL,
  `nilai` int(1) NOT NULL,
  `arsip` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`id_menu`, `role_id`, `admin`, `guru`, `siswa`, `inbox`, `outbox`, `lpj`, `pelajaran`, `absensi`, `silabus`, `pkl`, `nilai`, `arsip`) VALUES
(1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(3, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(4, 4, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0),
(6, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `tempat_lahir` varchar(64) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `dari` int(11) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `nama_ayah` varchar(64) NOT NULL,
  `pekerjaan_ayah` varchar(64) NOT NULL,
  `no_hp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(64) NOT NULL,
  `pekerjaan_ibu` varchar(64) NOT NULL,
  `no_hp_ibu` varchar(15) NOT NULL,
  `alamat_orangtua` varchar(256) NOT NULL,
  `nama_wali` varchar(64) NOT NULL,
  `pekerjaan_wali` varchar(64) NOT NULL,
  `no_hp_wali` varchar(15) NOT NULL,
  `alamat_wali` varchar(256) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `name`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `anak_ke`, `dari`, `alamat`, `no_hp`, `nama_ayah`, `pekerjaan_ayah`, `no_hp_ayah`, `nama_ibu`, `pekerjaan_ibu`, `no_hp_ibu`, `alamat_orangtua`, `nama_wali`, `pekerjaan_wali`, `no_hp_wali`, `alamat_wali`, `tahun_masuk`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(200, 'Aurora Setiawati', 'Serang', '2005-12-05', 'Perempuan', 12, 2, 'Jl. Raya A, Serang - Banten', '088122456542', 'Yanda', 'Wiraswasta', '0885156334685', 'Yoyoh', 'Ibu Rumah Tangga', '085556454321', 'Jl. Raya A, Serang - Banten', '-', '-', '', '-', 2021, '200.jpg', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 6, 1, 1552120268),
(201, 'Sugiono', 'Pandeglang', '2005-01-05', 'Laki-laki', 3, 5, 'Jl. B, Serang - Banten', '081122456123', 'Badri', 'Buruh', '0812312321132', 'Ayi', 'Ibu Rumah Tangga', '081231564213', 'Jl. B, Serang - Banten', '-', '-', '', '-', 2019, '201.png', '$2y$10$g2UmY4zz.a3wLSlzNUKr4eObSr0rpu.mON6viXshaTygwbrTcakA6', 6, 1, 1552120268),
(202, 'Andika', 'Serang', '2004-12-31', 'Laki-laki', 5, 5, 'Serang', '08564546654', 'Udin', '', '', 'Ayu', '', '', 'Serang', '', '', '', '', 2020, '202.png', '$2y$10$K3/KzTBXq5XPeWdlfdSfwu07DAX64iVvyAIEb1T17pa7DKP63AElG', 6, 1, 1624170130);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(64) NOT NULL,
  `perihal` varchar(64) NOT NULL,
  `is_approved` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat`, `no_surat`, `perihal`, `is_approved`, `file`, `pegawai_id`, `upload_at`) VALUES
(9, '9876543212', 'Ini Perihal1', '10a38b98970c8c9aa7d504c35fa4ab72.pdf', 'f24aa1696d6df773dd8b827f6159c4f0.pdf', 100, 1624123159),
(10, '12345668', 'Ini Perihal', 'b001221253d3102a4e02f5348f1c15e6.pdf', '4543557a7acb94ec3200da0708bb7e47.pdf', 100, 1624122023),
(11, '13215656', 'Test', '0f1e678d6ed96576b053122102d80e4c.pdf', '0f8e6a2db8ffd18f8bae40a05dd88689.pdf', 100, 1624169924),
(12, '123456789', 'Demo', '', '748681e68b1fad4e5df8a712dfe784cc.pdf', 101, 1624181084);

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(64) NOT NULL,
  `dari` varchar(126) NOT NULL,
  `tgl_terima` date NOT NULL,
  `perihal` varchar(64) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `file` varchar(128) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `upload_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat`, `no_surat`, `dari`, `tgl_terima`, `perihal`, `disposisi`, `file`, `pegawai_id`, `upload_at`) VALUES
(2, '134554654', 'Dinas Pendidikan', '2021-06-12', 'Ini Perihal', 1, '5442bdbffb08c0e0568e67f9bd1fd783.pdf', 100, 1624158185),
(3, '123456', 'Ini Pengirim', '2021-06-19', 'Ini Perihal', 1, '373fd3c5aef6e870bd4d776b53f2f80b.pdf', 100, 1624110071),
(4, '1234566', 'Ini Pengirim', '2021-06-18', 'Ini Perihal', 0, '82c4062d8ec4409cc7876c5aa7633f4e.pdf', 100, 1624110184);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL,
  `menu` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `menu`) VALUES
(1, 'Administrator', 'administrator'),
(2, 'Staff Tata Usaha', 'tu'),
(3, 'Kepala Sekolah', 'kepalasekolah'),
(4, 'Kurikulum', 'kurikulum'),
(5, 'Staff Guru', 'guru'),
(6, 'Siswa', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dok_absensi`
--
ALTER TABLE `dok_absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `dok_arsip`
--
ALTER TABLE `dok_arsip`
  ADD PRIMARY KEY (`id_arsip`);

--
-- Indexes for table `dok_lpj`
--
ALTER TABLE `dok_lpj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dok_pelajaran`
--
ALTER TABLE `dok_pelajaran`
  ADD PRIMARY KEY (`id_pel`);

--
-- Indexes for table `dok_pkl`
--
ALTER TABLE `dok_pkl`
  ADD PRIMARY KEY (`id_pkl`);

--
-- Indexes for table `dok_silabus`
--
ALTER TABLE `dok_silabus`
  ADD PRIMARY KEY (`id_silab`);

--
-- Indexes for table `dok_tenaga_kepegawaian`
--
ALTER TABLE `dok_tenaga_kepegawaian`
  ADD PRIMARY KEY (`id_tk`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dok_absensi`
--
ALTER TABLE `dok_absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dok_arsip`
--
ALTER TABLE `dok_arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dok_lpj`
--
ALTER TABLE `dok_lpj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dok_pelajaran`
--
ALTER TABLE `dok_pelajaran`
  MODIFY `id_pel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dok_pkl`
--
ALTER TABLE `dok_pkl`
  MODIFY `id_pkl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dok_silabus`
--
ALTER TABLE `dok_silabus`
  MODIFY `id_silab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dok_tenaga_kepegawaian`
--
ALTER TABLE `dok_tenaga_kepegawaian`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
