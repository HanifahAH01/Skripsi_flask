-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tskrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `no` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`no`, `nip`, `email`, `password`) VALUES
(1, '20020102022024092002', 'hanifah2024@upi.edu', '$2b$12$6FltW0PnbtPxrJqtKvrZ1OJ3LjgCqDcbTf4LTQbx/UHrk7WJkx4Ke'),
(2, '123456789', '12345@gmail.com', '$2b$12$PR5uFVC8xti/G8IBlxXc4ebpdYIVm5L3s0eWsR5bjFgqtdvtAA1Jy');

-- --------------------------------------------------------

--
-- Table structure for table `booking_ruangan`
--

CREATE TABLE `booking_ruangan` (
  `no` int(11) NOT NULL,
  `nama_pemohon` varchar(255) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_awal` varchar(255) NOT NULL,
  `waktu_akhir` varchar(255) NOT NULL,
  `tujuan_boking` varchar(255) NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_ruangan`
--

INSERT INTO `booking_ruangan` (`no`, `nama_pemohon`, `nama_ruangan`, `hari`, `tanggal`, `waktu_awal`, `waktu_akhir`, `tujuan_boking`, `jumlah_peserta`, `status`, `Keterangan`) VALUES
(1, 'Nadya Amelia', 'B-301', 'Jumat', '2024-06-07', '09:30', '12:00', 'Kelas pengganti geometri analitik', 43, NULL, NULL),
(2, 'Desti Nursaleh', 'B-303', 'Jumat', '2024-06-07', '07:00', '09:30', 'Perkuliahan pengawet bahan pangan', 10, NULL, NULL),
(3, 'Desti Nursaleh', 'E-405', 'Jumat', '2024-06-07', '07:00', '09:30', 'perkuliahan regulasi pangan', 0, NULL, NULL),
(4, 'Ratih Pitria Nurazizah', 'E-405', 'Rabu', '2024-06-06', '09:30', '12:00', 'UAS program linear', 34, NULL, NULL),
(5, 'Afrizal', 'E-406', 'Selasa', '2024-06-04', '07:00', '08:40', 'Responsi fisdas II', 40, NULL, NULL),
(6, 'Afrizal', 'C-102', 'Selasa', '2024-06-06', '14:40', '18:00', 'Responsi fisdas IIk', 40, NULL, NULL),
(7, 'Afrizal', 'C-103', 'Selasa', '2024-06-06', '14:40', '18:00', 'Ujian fisdas II', 40, NULL, NULL),
(8, 'Irham M Faqqih', 'C-304', 'Kamis', '2024-06-06', '13:00', '15:30', 'UAS matematika diskrit', 38, NULL, NULL),
(9, 'Ade Maulana', 'S-302', 'Jumat', '2024-06-07', '13:00', '15:30', 'UAS program linear', 36, NULL, NULL),
(10, 'Ade Maulana', 'S-303', 'Jumat', '2024-06-07', '13:00', '15:30', 'UAS program linear', 43, NULL, NULL),
(11, 'M. Agafi Putra S.', 'S-303', 'Jumat', '2024-06-07', '08:00', '10:30', 'UAS teori grap', 26, NULL, NULL),
(12, 'M. Agafi Putra S.', 'S-303', 'Rabu', '2024-06-12', '08:00', '10:30', 'UAS evaluasi pembelajaran mat', 19, NULL, NULL),
(13, 'Pak Alfi', 'S-303', 'Kamis', '2024-06-06', '07:00', '09:30', 'UAS', 43, NULL, NULL),
(14, 'Rifa Rafifah Salsabila', 'E-405', 'Jumat', '2024-06-07', '13:00', '15:00', 'UAS kimia fisika 2', 30, NULL, NULL),
(15, 'Anisa Fitriani', 'E-406', 'Senin', '2024-06-10', '13:00', '15:00', 'Acara webinar pend fisika dan fisika', 70, NULL, NULL),
(16, 'Rahma Meilani N', 'B-405', 'Jumat', '2024-06-07', '08:40', '11:10', 'UAS kimfis 1', 37, NULL, NULL),
(17, 'Ali Zainal Abidin Z.', 'B-301', 'Selasa', '2024-06-11', '09:30', '12:00', 'UAS struktur data', 0, NULL, NULL),
(18, 'Alvi Sahrini', 'E-406', 'Selasa', '2024-06-11', '13:00', '16:00', 'Auiensi kurkad', 38, NULL, NULL),
(19, 'M Syukri ', 'E-406', 'Selasa', '2024-06-11', '07:00', '09:30', 'Uas BU Erna (Struktur data)', 0, NULL, NULL),
(20, 'Fira Auli', 'B-301', 'Jumat', '2024-06-14', '07:00', '08:40', 'Evaluasi pembelajaran biogi', 2, NULL, NULL),
(21, 'Mat', 'E-405', 'Rabu', '2024-06-17', '09:00', '14:00', 'Acara prodi', 0, NULL, NULL),
(22, 'Prodi kimia', 'E-405', 'Senin', '2024-06-24', '08:00', '12:00', 'Pengarahan kegiatan', 0, NULL, NULL),
(23, 'Prodi kimia', 'E-405', 'Selasa', '2024-06-25', '08:00', '12:00', 'Kompetensi', 0, NULL, NULL),
(24, 'BEM HIU', 'E-406', 'Senin', '2024-06-24', '14:00', '16:00', 'Proker BEM', 20, NULL, NULL),
(25, 'BEM HIU', 'E-406', 'Senin', '2024-06-24', '17:00', '18:00', 'Proker BEM', 20, NULL, NULL),
(26, 'Hashfi Aufar T', 'E-405', 'Kamis', '2024-06-27', '10:20', '12:00', 'Tol mekanika SP', 57, NULL, NULL),
(27, 'Hashfi Aufar T', 'E-405', 'Senin', '2024-07-01', '10:20', '12:00', 'Kuliah mekanika SP', 57, NULL, NULL),
(28, 'Matematika', 'E-405', 'Rabu', '2024-07-03', '09:30', '12:00', 'NULL', 0, NULL, NULL),
(29, 'HMF', 'E-406', 'Jumat', '2024-07-26', '13:00', '15:00', 'Milad HMBF', 50, NULL, NULL),
(30, 'Dede Fitriani', 'B-301', 'Jumat', '2024-06-14', '08:40', '11:00', 'Ujian susulan Tering', 2, NULL, NULL),
(31, 'Ruthfi Aallyah', 'E-405', 'Jumat', '2024-06-14', '14:00', '16:00', 'Gladi bersih + ratek', 60, NULL, NULL),
(32, 'Hanifah', 'B-106', 'Senin', '2024-08-12', '09:30', '10:20', 'BEM', 4, 1, 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `no` int(11) NOT NULL,
  `nama_gedung` varchar(255) NOT NULL,
  `jumlah_total_ruangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`no`, `nama_gedung`, `jumlah_total_ruangan`) VALUES
(1, 'FPMIPA B', 30),
(2, 'Gedung JICA FPMIPA A', 30),
(3, 'FPMIPA C', 25),
(4, 'Bangunan Praktek Botani', 3);

-- --------------------------------------------------------

--
-- Table structure for table `heatmap`
--

CREATE TABLE `heatmap` (
  `No` int(11) NOT NULL,
  `Span` varchar(255) DEFAULT NULL,
  `Total_Senin` varchar(255) DEFAULT NULL,
  `Total_Selasa` varchar(255) DEFAULT NULL,
  `Total_Rabu` varchar(255) DEFAULT NULL,
  `Total_Kamis` varchar(255) DEFAULT NULL,
  `Total_Jumat` varchar(255) DEFAULT NULL,
  `Total_Sabtu` varchar(255) DEFAULT NULL,
  `Total_Minggu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `heatmap`
--

INSERT INTO `heatmap` (`No`, `Span`, `Total_Senin`, `Total_Selasa`, `Total_Rabu`, `Total_Kamis`, `Total_Jumat`, `Total_Sabtu`, `Total_Minggu`) VALUES
(1, 'Lab Pembelajaran Kimia B 106', '2', '2', '2', '2', '0', '0', '0'),
(2, 'Lab Komputer Matematika 1 E 305', '3', '1', '3', '1', '3', '0', '0'),
(3, 'Lab Komputer Matematika 2 E 306', '2', '1', '3', '3', '1', '0', '0'),
(4, 'Lab Komputer Matematika 3 C 104', '1', '3', '3', '0', '1', '0', '0'),
(5, 'Lab Praktikum C 201', '0', '0', '0', '0', '0', '0', '0'),
(6, 'Lab Kecerdasan Artifisial C 202', '1', '0', '0', '0', '0', '0', '0'),
(7, 'Lab. Sistem Jaringan dan Teknik Komputer C 203', '0', '2', '0', '0', '0', '0', '0'),
(8, 'Lab Umum C 204', '1', '1', '0', '0', '0', '0', '0'),
(9, 'Lab Digital', '0', '0', '0', '0', '0', '0', '0'),
(10, 'Lab Smart learning Environment C 206', '0', '0', '0', '0', '0', '0', '0'),
(11, 'Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '0', '1', '0', '0', '0', '0', '0'),
(12, 'Lab Multimedia Ilkom C 306', '2', '2', '1', '0', '0', '0', '0'),
(13, 'Lab Struktur Tumbuhan N', '2', '3', '3', '3', '0', '0', '0'),
(14, 'Lab Struktur Tumbuhan', '0', '0', '0', '0', '0', '0', '0'),
(15, 'Lab Fisiologi N 118', '0', '2', '0', '2', '0', '0', '0'),
(16, 'Lab Fisiologi N 118', '0', '0', '0', '0', '0', '0', '0'),
(17, 'Lab Struktur Hewan N 205', '0', '3', '2', '2', '0', '0', '0'),
(18, 'Lab Microbiologi N 210', '0', '3', '3', '2', '0', '0', '0'),
(19, 'Lab Bumi Antariksa N 220', '2', '3', '4', '3', '1', '0', '0'),
(20, 'Lab Elektronika N 305', '1', '2', '1', '0', '2', '0', '0'),
(21, 'Lab Fisika Dasar N 309', '1', '0', '2', '3', '1', '0', '0'),
(22, 'Lab Fisika Lanjut N 313', '0', '0', '2', '2', '0', '0', '0'),
(23, 'Lab Fisika Material N 318', '0', '0', '2', '2', '0', '0', '0'),
(24, 'Lab Pengajaran Matematika E 302', '1', '0', '0', '1', '0', '0', '0'),
(25, 'Lab Kimia dasar dan Analiktik N 405', '2', '0', '0', '2', '0', '0', '0'),
(26, 'Lab Proses Belajar dan Mengajar Kimia N 410', '2', '2', '0', '0', '0', '0', '0'),
(27, 'Lab Kimia Fisik Dan Anorganik N 505', '2', '0', '0', '1', '1', '0', '0'),
(28, 'Lab Kimia Organik Dan Bio KIMIA N 509', '2', '0', '0', '2', '0', '0', '0'),
(29, 'Lab Kimia Instrumen N 519', '0', '2', '0', '2', '0', '0', '0'),
(30, 'Lab Pembelajaran Fisika B 108', '1', '1', '0', '1', '4', '0', '0'),
(31, 'Lab. Biologi IPSE B 201', '0', '1', '1', '1', '0', '0', '0'),
(32, 'Lab Physics Ipse B', '1', '0', '1', '3', '1', '0', '0'),
(33, 'Lab Multimedia Ipse B 208', '0', '0', '2', '2', '1', '0', '0'),
(34, 'Lab Chemistry ipse B 213', '2', '0', '0', '0', '1', '0', '0'),
(35, 'Lab Riset Bioteknologi 1 B 307', '0', '0', '0', '0', '0', '0', '0'),
(36, 'Lab Riset Bioteknologi 2 B 311', '0', '0', '0', '0', '0', '0', '0'),
(37, 'Lab Pembelajaran Matematika B 314', '0', '0', '0', '0', '0', '0', '0'),
(38, 'Lab Riset Kimia Makanan B 401', '0', '0', '0', '0', '0', '0', '0'),
(39, 'Lab Hayati Kimia B 403', '0', '0', '0', '0', '0', '0', '0'),
(40, 'Lab Riset Unggulan Kimia B 404', '0', '0', '0', '0', '0', '0', '0'),
(41, 'Lab Instrumentasi Fisika B 407', '1', '1', '0', '2', '1', '0', '0'),
(42, 'Lab Komputasi Fisika B 408', '2', '0', '0', '0', '1', '0', '0'),
(43, 'Lab Rekayasa Teknologi Fisika B 410', '1', '1', '1', '1', '0', '0', '0'),
(44, 'Lab Kimia Material dan Hayati B 413', '0', '0', '0', '0', '0', '0', '0'),
(45, 'Lab Riset Kimia Lingkungan B 414', '0', '0', '0', '0', '0', '0', '0'),
(46, 'Ruang Laboratorium Digital C', '0', '0', '0', '0', '0', '0', '0'),
(47, 'Lab Ekologi', '2', '0', '0', '0', '0', '0', '0'),
(48, 'Lab Ekologi', '2', '0', '1', '2', '0', '0', '0'),
(49, 'LaB Botani', '0', '0', '0', '0', '0', '0', '0'),
(50, 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E', '3', '2', '3', '2', '3', '0', '0'),
(51, 'Ruang Kelas E', '3', '1', '2', '2', '1', '0', '1'),
(52, 'Ruang Kelas S', '3', '3', '3', '3', '3', '0', '0'),
(53, 'Ruang Kelas S', '2', '3', '1', '2', '2', '0', '0'),
(54, 'Ruang Kelas S', '1', '1', '1', '1', '1', '1', '1'),
(55, 'Ruang Kelas S', '2', '2', '2', '1', '0', '0', '0'),
(56, 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E', '2', '3', '2', '3', '2', '0', '0'),
(57, 'Ruang Kelas B 113 S2', '3', '3', '2', '2', '2', '0', '0'),
(58, 'Ruang Kelas B 114 S2', '1', '1', '1', '1', '1', '0', '0'),
(59, 'Ruang Kelas B 115 S2', '4', '4', '4', '4', '3', '0', '0'),
(60, 'Ruang Kelas B', '2', '2', '2', '2', '2', '0', '0'),
(61, 'Ruang Kelas B', '3', '3', '2', '2', '2', '0', '0'),
(62, 'Ruang Kelas B 210', '0', '0', '0', '0', '0', '0', '0'),
(63, 'Ruang Kelas B 210', '2', '2', '2', '1', '2', '0', '0'),
(64, 'Ruang Kelas B', '3', '3', '3', '4', '3', '0', '0'),
(65, 'Ruang Kelas B', '3', '3', '2', '2', '1', '0', '0'),
(66, 'Ruang Kelas C', '2', '2', '2', '2', '1', '3', '0'),
(67, 'Ruang Kelas C', '2', '3', '0', '2', '2', '2', '0'),
(68, 'Ruang Kelas C', '3', '2', '3', '2', '2', '0', '0'),
(69, 'Ruang Kelas C', '2', '3', '3', '3', '1', '0', '0'),
(70, 'Ruang Kelas C', '2', '2', '2', '2', '2', '0', '0'),
(71, 'Ruang Kelas C', '2', '2', '2', '2', '4', '1', '0'),
(72, 'Ruang Kelas C', '1', '1', '0', '1', '1', '1', '0'),
(73, 'Ruang Kelas C', '2', '1', '2', '2', '1', '1', '0'),
(74, 'Ruang Kelas C', '3', '2', '3', '1', '2', '0', '0'),
(75, 'Ruang Kelas C', '0', '0', '1', '1', '1', '2', '0'),
(76, 'Ruang Kelas C', '2', '2', '1', '1', '2', '1', '0'),
(77, 'Ruang Kelas C', '4', '4', '3', '4', '2', '2', '0'),
(78, 'Ruang Kelas C', '2', '2', '0', '0', '1', '0', '0'),
(79, 'Microteaching Biologi B 309', '0', '0', '0', '0', '0', '0', '0'),
(80, 'Lab STEAM Model C 208', '0', '0', '0', '0', '0', '0', '0'),
(81, 'Smart Class Fpmipa E 210', '0', '0', '0', '0', '0', '0', '0'),
(82, 'Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '0', '0', '0', '0', '0', '0', '0'),
(83, 'Ruang Smart Classroom NTNU Taiwan', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ruangan`
--

CREATE TABLE `jadwal_ruangan` (
  `No` int(11) NOT NULL,
  `Span` varchar(255) DEFAULT NULL,
  `Senin` varchar(255) DEFAULT NULL,
  `status_senin` int(11) DEFAULT NULL,
  `Selasa` varchar(255) DEFAULT NULL,
  `status_selasa` int(11) DEFAULT NULL,
  `Rabu` varchar(255) DEFAULT NULL,
  `status_rabu` int(11) DEFAULT NULL,
  `Kamis` varchar(255) DEFAULT NULL,
  `status_kamis` int(11) DEFAULT NULL,
  `Jumat` varchar(255) DEFAULT NULL,
  `status_jumat` int(11) DEFAULT NULL,
  `Sabtu` varchar(255) DEFAULT NULL,
  `status_sabtu` int(11) DEFAULT NULL,
  `Minggu` varchar(255) DEFAULT NULL,
  `status_minggu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_ruangan`
--

INSERT INTO `jadwal_ruangan` (`No`, `Span`, `Senin`, `status_senin`, `Selasa`, `status_selasa`, `Rabu`, `status_rabu`, `Kamis`, `status_kamis`, `Jumat`, `status_jumat`, `Sabtu`, `status_sabtu`, `Minggu`, `status_minggu`) VALUES
(1, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '07:00-09:30, DIK KIMIA-S1-4B2, 15/15KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks1411 - Prof. Dr. paed. H. Wahyu Sopandi, M.A.1411 - Prof. Dr. paed. H. Wahyu Sopandi, M.A.1975 - Muhamad Nurul Hana, S.Pd., M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-09:30, DIK KIMIA-S1-4B3, 15/20KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks0933 - Dr. Paed. H. Sjaeful AnwarAngkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-09:30, DIK KIMIA-S1-4B1, 13/15KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks1936 - Prof. Dr. Nahadi, M.Pd., M.Si.1936 - Prof. Dr. Nahadi, M.Pd., M.Si.0932 - Dra. Wiwi Siswaningsih, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(2, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '09:30-10:20', 18, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-12:00, DIK KIMIA-S1-4A3, 12/15KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks1978 - Dr. Wawan Wahyu, M.Pd.1978 - Dr. Wawan Wahyu, M.Pd.2176 - Dr. H. Wiji, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(3, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(4, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '13:00-15:30, DIK KIMIA-S1-4A1, 12/15KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks0736 - Dr. Sri Mulyani, M.Si.0736 - Dr. Sri Mulyani, M.Si.2577 - Tuszie Widhiyanti, M.Pd., Ph.D.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, DIK KIMIA-S1-4A2, 12/15KI329 - PERENCANAAN PEMBELAJARAN KIMIA - 3sks1739 - Dr. Hernani, M.Si.1739 - Dr. Hernani, M.Si.0722 - Drs. Rahmat Setiadi, M.Sc.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-14:40, DIK KIMIA-S1-6AB1, 2/40KI321 - PENGANTAR KIMIA MATERIAL - 2sks1740 - Prof. Dr. rer. nat. H. Ahmad Mudzakir, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(5, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-17:10, DIK KIMIA-S1-6AB, 11/40KI322 - PENGANTAR KIMIA HAYATI - 2sks2188 - Gun Gun Gumilar, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(6, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(7, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(8, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(9, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(10, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '07:00-09:30, MAT-6AB, 21/40MT412 - PROGRAM APLIKASI KOMPUTER MATEMATIKA - 3sks1916 - Hj. Dewi Rachmatin, S.Si., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1, '07:00-09:30, MAT-6CD, 22/30MT412 - PROGRAM APLIKASI KOMPUTER MATEMATIKA - 3sks1916 - Hj. Dewi Rachmatin, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-09:30, MAT-6B, 28/40MT318 - METODE NUMERIK - 3sks0964 - Dr. Dian Usdiyana, M.Si.Angkatan 2020D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, MAT-6CD (TERAPAN), 15/30MT542 - KRIPTOGRAFI - 3sks1405 - Dra. Hj. Rini Marwati, M.S.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(11, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '09:30-12:00, MAT-6AB, 27/40MT412 - PROGRAM APLIKASI KOMPUTER MATEMATIKA - 3sks1916 - Hj. Dewi Rachmatin, S.Si., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '09:30-10:20', 4, '09:30-12:00, MAT-6CD, 12/30MT412 - PROGRAM APLIKASI KOMPUTER MATEMATIKA - 3sks1916 - Hj. Dewi Rachmatin, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-12:00, MAT-6CD (TERAPAN), 3/30MT542 - KRIPTOGRAFI - 3sks1405 - Dra. Hj. Rini Marwati, M.S.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4),
(12, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(13, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '13:00-14:40, MAT-4AB3, 27/30MT325 - ANALISIS DATA PENELITIAN - 2sks1720 - Prof. Dr. H. Dadang Juandi, M.Si.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, MAT-6CD (TERAPAN), 10/30MT523 - MULTIMEDIA - 3sks1405 - Dra. Hj. Rini Marwati, M.S.Angkatan 2021D5051 - Matematika - S1', 17, '13:00-14:40, MAT-2C, 30/40MT313 - ALGORITMA DAN PEMOGRAMAN - 2sks1405 - Dra. Hj. Rini Marwati, M.S.Angkatan 2023D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-14:40, MAT-2D, 18/40MT313 - ALGORITMA DAN PEMOGRAMAN - 2sks1405 - Dra. Hj. Rini Marwati, M.S.Angkatan 2023D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(14, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(15, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(16, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(17, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, MAT-4C, 40/50MT314 - PENGOLAHAN DATA - 3sks1655 - Dr. Dadan Dasari, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-09:30, MAT-6B, 44/44MT318 - METODE NUMERIK - 3sks1653 - Dr. Jarnawi Afgani Dahlan, M.Kes.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, MAT-6CD (STATISTIKA), 1/30MT505 - TEORI SAMPLING - 3sks1089 - Drs. Nar Herrhyanto, M.Pd.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(18, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '09:30-12:00, MAT-6CD (STATISTIKA), 7/30MT529 - EKONOMETRIKA - 3sks2315 - Fitriani Agustina, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-12:00, MAT-4C, 2/50MT314 - PENGOLAHAN DATA - 3sks1655 - Dr. Dadan Dasari, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(19, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(20, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '13:00-15:30, MAT-6CD (STATISTIKA), 3/30MT529 - EKONOMETRIKA - 3sks2315 - Fitriani Agustina, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '13:00-15:30, MAT-4AB2, 27/33MT400 - TEORI GRUP - 3sks0964 - Dr. Dian Usdiyana, M.Si.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, MAT-4D, 32/40MT314 - PENGOLAHAN DATA - 3sks2315 - Fitriani Agustina, S.Si., M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '13:00-15:30, MAT-6CD (TERAPAN), 15/15MT426 - KAPITA SELEKTA MATEMATIKA - 3sks2589 - Dr. Khusnul Novianingsih, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(21, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-18:00, MAT-4D, 10/40MT314 - PENGOLAHAN DATA - 3sks2315 - Fitriani Agustina, S.Si., M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(22, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(23, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(24, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(25, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '07:00-09:30, MAT-6CD (STATISTIKA), 2/30MT532 - ANALISIS DATA UJI HIDUP - 3sks1406 - Dr. Bambang Avip Priatna, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-08:40, MAT-6AB1, 24/25MT432 - PENELITIAN KUANTITATIF - 2sks1720 - Prof. Dr. H. Dadang Juandi, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, MAT-6CD (ANALISIS), 2/20MT536 - TEORI UKURAN DAN INTEGRAL - 3sks2891 - Dr. Al Azhary Masta, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-09:30, MAT-6CD (ALJABAR), 0/20MT533 - TEORI MODUL - 3sks2696 - Imam Nugraha Albania, Ph.D.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(26, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '09:30-10:20', 4, '09:30-12:00, MAT-6CD (STATISTIKA), 13/30MT524 - METODA RUNTUN WAKTU - 3sks1914 - Dr. Entit Puspita, S.Pd., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-12:00, MAT-6CD (ANALISIS), 0/20MT515 - ANALISIS FUNGSIONAL - 3sks1324 - Dra. Encum Sumiaty, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(27, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(28, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '13:00-13:50', 8, '13:00-14:40, MAT-A4, 6/5MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1719 - Dr. H. Cece Kustiawan, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, MAT-6CD (STATISTIKA), 5/30MT508 - METODA STATISTIKA MULTIVARIAT - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(29, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(30, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(31, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(32, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(33, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(34, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(35, '5. 04.4C.02.001 - Lab Praktikum C 201', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(36, '5. 04.4C.02.001 - Lab Praktikum C 201', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(37, '5. 04.4C.02.001 - Lab Praktikum C 201', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(38, '5. 04.4C.02.001 - Lab Praktikum C 201', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(39, '5. 04.4C.02.001 - Lab Praktikum C 201', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(40, '5. 04.4C.02.001 - Lab Praktikum C 201', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(41, '5. 04.4C.02.001 - Lab Praktikum C 201', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(42, '5. 04.4C.02.001 - Lab Praktikum C 201', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(43, '5. 04.4C.02.001 - Lab Praktikum C 201', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(44, '5. 04.4C.02.001 - Lab Praktikum C 201', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(45, '5. 04.4C.02.001 - Lab Praktikum C 201', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(46, '5. 04.4C.02.001 - Lab Praktikum C 201', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(47, '5. 04.4C.02.001 - Lab Praktikum C 201', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(48, '5. 04.4C.02.001 - Lab Praktikum C 201', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(49, '5. 04.4C.02.001 - Lab Praktikum C 201', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(50, '5. 04.4C.02.001 - Lab Praktikum C 201', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(51, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(52, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(53, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(54, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(55, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(56, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(57, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(58, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '13:00-14:40, KOM-6B, 40/40IK271 - ETIKA PROFESI - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(59, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(60, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(61, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(62, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(63, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(64, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(65, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(66, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(67, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(68, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(69, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(70, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(71, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(72, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(73, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '13:00-13:50', 8, '13:00-15:30, KOM-8AB, 43/43IK377 - TATAKELOLA INFORMASI - 3sks2591 - Herbert, S.Kom., M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(74, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '15:30-16:20', 11, '15:30-17:10, PMDSU, 1/2SE708 - TIK DALAM PEMBELAJARAN IPA - 2sks2590 - Dr. Wahyudin, M.T.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(75, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(76, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(77, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(78, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(79, '8. 04.4C.02.005 - Lab Umum C 204', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(80, '8. 04.4C.02.005 - Lab Umum C 204', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(81, '8. 04.4C.02.005 - Lab Umum C 204', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(82, '8. 04.4C.02.005 - Lab Umum C 204', '09:30-12:00, KOM-6AB, 24/40IK328 - DIGITAL PEDAGOGIK - 3sks1713 - Dr. H. Enjang Ali Nurdin, M.Kom.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(83, '8. 04.4C.02.005 - Lab Umum C 204', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(84, '8. 04.4C.02.005 - Lab Umum C 204', '13:00-13:50', 8, '13:00-15:30, KOM-6AB, 14/40IK348 - TEKNOLOGI DESAIN MOTIONGRAFIS - 3sks3241 - Andini Setya Arianti, M.Ds.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(85, '8. 04.4C.02.005 - Lab Umum C 204', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(86, '8. 04.4C.02.005 - Lab Umum C 204', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(87, '8. 04.4C.02.005 - Lab Umum C 204', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(88, '8. 04.4C.02.005 - Lab Umum C 204', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(89, '8. 04.4C.02.005 - Lab Umum C 204', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(90, '8. 04.4C.02.005 - Lab Umum C 204', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(91, '9. 04.4C.02.009 - Lab Digital', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(92, '9. 04.4C.02.009 - Lab Digital', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(93, '9. 04.4C.02.009 - Lab Digital', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(94, '9. 04.4C.02.009 - Lab Digital', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(95, '9. 04.4C.02.009 - Lab Digital', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(96, '9. 04.4C.02.009 - Lab Digital', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(97, '9. 04.4C.02.009 - Lab Digital', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(98, '9. 04.4C.02.009 - Lab Digital', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(99, '9. 04.4C.02.009 - Lab Digital', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(100, '9. 04.4C.02.009 - Lab Digital', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(101, '9. 04.4C.02.009 - Lab Digital', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(102, '9. 04.4C.02.009 - Lab Digital', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(103, '9. 04.4C.02.009 - Lab Digital', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(104, '9. 04.4C.02.009 - Lab Digital', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(105, '9. 04.4C.02.009 - Lab Digital', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(106, '9. 04.4C.02.009 - Lab Digital', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(107, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(108, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(109, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(110, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(111, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(112, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(113, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(114, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(115, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(116, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(117, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(118, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(119, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(120, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(121, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(122, '10. 04.4C.02.010 - Lab Smart learning Environment C 206', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(123, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(124, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(125, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(126, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(127, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(128, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(129, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(130, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '13:00-13:50', 8, '13:00-15:30, KOM-6AB, 30/30IK367 - BUSINESS INTELEGENCE - 3sks2687 - Dr. Budi Laksono Putro, S.Si., M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(131, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(132, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(133, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(134, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(135, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(136, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(137, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '07:00-07:50', 1, '07:00-09:30, KOM-C, 1/50IK543 - MULTIMEDIA PRODUCTION - 3sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2020D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(138, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(139, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '10:20-12:00, KOM-C, 2/50IK503 - TEKNIK AUDIO DAN VIDEO - 2sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2020D5451 - Ilmu Komputer - S1', 17, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(140, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(141, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '13:00-15:30, KOM-6AB, 12/40IK337 - KOMPUTER DAN MASYARAKAT - 3sks2590 - Dr. Wahyudin, M.T.2590 - Dr. Wahyudin, M.T.3241 - Andini Setya Arianti, M.Ds.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-15:30, KOM-6AB, 42/40IK347 - ANALISIS DAN DESAIN ALGORITMA - 3sks2586 - Jajang Kusnendar, S.T., M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-15:30, KELAS B, 20/60MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks1326 - Dr. rer. nat. Omay Sumarna, M.Si.1326 - Dr. rer. nat. Omay Sumarna, M.Si.2809 - Eka Cahya Prima, M.T., Dr.Angkatan 2021D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(142, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(143, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(144, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(145, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(146, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(147, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(148, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '07:00-07:50', 1, '07:00-09:30, BIO-4C, 45/50BI300 - PERKEMBANGAN TUMBUHAN - 3sks1318 - Dr. R. Kusdianti, M.Si.1318 - Dr. R. Kusdianti, M.Si.1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2022D5251 - Biologi - S1', 17, '07:00-09:30, BIO-6B, 0/50BI400 - PROPAGASI TUMBUHAN - 3sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.1745 - Dr. rer. nat. Adi Rahmat, M.Si.3036 - Tri Suwandi, S.Pd., M.Sc.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, BIO-6A, 0/50BI400 - PROPAGASI TUMBUHAN - 3sks1551 - Prof. Dr. Hj. Widi Purwianingsih, M.Si.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(149, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '09:30-12:00, BIO-2A, 19/40BI205 - MORFOLOGI TUMBUHAN - 2sks1092 - Dr. Hj. Sariwulan Diana, M.Si.1092 - Dr. Hj. Sariwulan Diana, M.Si.3036 - Tri Suwandi, S.Pd., M.Sc.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '09:30-12:00, BIO-4A, 39/50BI300 - PERKEMBANGAN TUMBUHAN - 3sks2183 - Dr. Eni Nuraeni, S.Pd., M.Pd.2183 - Dr. Eni Nuraeni, S.Pd., M.Pd.1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '09:30-12:00, BIO-2D, 13/40BI206 - ANATOMI TUMBUHAN - 3sks2174 - Hj. Tina Safaria Nilawati, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '09:30-12:00, BIO-2B, 16/40BI206 - ANATOMI TUMBUHAN - 3sks1069 - Dr. H. Taufik Rahman, M.Pd.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(150, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(151, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '13:00-13:50, BIO-2B, 21/54BI205 - MORFOLOGI TUMBUHAN - 2sks1549 - Dr. Amprasto, M.Si.1549 - Dr. Amprasto, M.Si.3402 - Puti Siswandari, S.Pd., M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '13:00-15:30, BIO-4B, 42/50BI300 - PERKEMBANGAN TUMBUHAN - 3sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.1745 - Dr. rer. nat. Adi Rahmat, M.Si.3036 - Tri Suwandi, S.Pd., M.Sc.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '13:00-15:30, BIO-2C, 13/40BI206 - ANATOMI TUMBUHAN - 3sks1318 - Dr. R. Kusdianti, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-15:30, BIO-2A, 19/40BI206 - ANATOMI TUMBUHAN - 3sks2183 - Dr. Eni Nuraeni, S.Pd., M.Pd.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(152, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(153, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(154, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(155, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(156, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(157, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(158, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(159, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(160, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(161, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(162, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(163, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(164, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(165, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(166, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(167, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(168, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(169, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(170, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(171, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(172, '14. 04.4A.01.012 - Lab Struktur Tumbuhan', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(173, '15. 04.4A.01.013 - Lab Fisiologi N 118', '07:00-07:50', 1, '07:00-09:30, P.BIO-2A, 18/20BI763 - PENGEMBANGAN KEGIATAN LABORATORIUM PENDIDIKAN BIOLOGI - 3sks1915 - Dr. Kusnadi, M.Si.1915 - Dr. Kusnadi, M.Si.1551 - Prof. Dr. Hj. Widi Purwianingsih, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '07:00-07:50', 1, '07:00-09:30, BIO-2B, 2/40BI201 - BIOKIMIA - 3sks1624 - Drs. Suhara, M.Pd.1624 - Drs. Suhara, M.Pd.3402 - Puti Siswandari, S.Pd., M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(174, '15. 04.4A.01.013 - Lab Fisiologi N 118', '09:30-10:20', 4, '09:30-12:00, P.BIO-2B, 18/20BI763 - PENGEMBANGAN KEGIATAN LABORATORIUM PENDIDIKAN BIOLOGI - 3sks1189 - Dr. Bambang Supriatno, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '09:30-10:20', 4, '09:30-12:00, BIO-2A, 17/40BI201 - BIOKIMIA - 3sks1838 - Dr. Mimin Nurjhani Kusumastuti, M.Pd.1838 - Dr. Mimin Nurjhani Kusumastuti, M.Pd.3401 - Hardini Puspitaningrum, S.Si, M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(175, '15. 04.4A.01.013 - Lab Fisiologi N 118', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(176, '15. 04.4A.01.013 - Lab Fisiologi N 118', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(177, '15. 04.4A.01.013 - Lab Fisiologi N 118', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(178, '15. 04.4A.01.013 - Lab Fisiologi N 118', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(179, '15. 04.4A.01.013 - Lab Fisiologi N 118', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(180, '15. 04.4A.01.013 - Lab Fisiologi N 118', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(181, '15. 04.4A.01.013 - Lab Fisiologi N 118', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(182, '15. 04.4A.01.013 - Lab Fisiologi N 118', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(183, '15. 04.4A.01.013 - Lab Fisiologi N 118', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(184, '15. 04.4A.01.013 - Lab Fisiologi N 118', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(185, '16. 04.4A.01.019 - Lab Fisiologi N 118', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(186, '16. 04.4A.01.019 - Lab Fisiologi N 118', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(187, '16. 04.4A.01.019 - Lab Fisiologi N 118', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(188, '16. 04.4A.01.019 - Lab Fisiologi N 118', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(189, '16. 04.4A.01.019 - Lab Fisiologi N 118', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(190, '16. 04.4A.01.019 - Lab Fisiologi N 118', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(191, '16. 04.4A.01.019 - Lab Fisiologi N 118', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(192, '16. 04.4A.01.019 - Lab Fisiologi N 118', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(193, '16. 04.4A.01.019 - Lab Fisiologi N 118', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(194, '16. 04.4A.01.019 - Lab Fisiologi N 118', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(195, '16. 04.4A.01.019 - Lab Fisiologi N 118', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(196, '16. 04.4A.01.019 - Lab Fisiologi N 118', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(197, '16. 04.4A.01.019 - Lab Fisiologi N 118', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(198, '16. 04.4A.01.019 - Lab Fisiologi N 118', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(199, '16. 04.4A.01.019 - Lab Fisiologi N 118', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(200, '16. 04.4A.01.019 - Lab Fisiologi N 118', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(201, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '07:00-07:50', 1, '07:00-09:30, BIO-4B, 20/50BI301 - PERKEMBANGAN HEWAN - 3sks1190 - Dr. H. Saefudin, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-07:50', 1, '07:00-09:30, BIO-2A, 36/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks0717 - Dra. Soesy Asiah Soesilawaty, M.S.0717 - Dra. Soesy Asiah Soesilawaty, M.S.3401 - Hardini Puspitaningrum, S.Si, M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(202, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '09:30-10:20', 4, '09:30-12:00, BIO-4C, 20/50BI301 - PERKEMBANGAN HEWAN - 3sks1972 - Dr. Hernawati, S.Pt., M.Si.Angkatan 2022D5251 - Biologi - S1', 17, '09:30-12:00, BIO-2C, 15/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks1972 - Dr. Hernawati, S.Pt., M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(203, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(204, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '13:00-13:50', 8, '13:00-15:30, BIO-4A, 23/50BI301 - PERKEMBANGAN HEWAN - 3sks1044 - Drs. H. Dadang Machmudin, M.S.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '13:00-15:30, BIO-2D, 14/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks2170 - Dr. Hj. Any Aryani, S.Si., M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-15:30, BIO-2B, 18/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks1044 - Drs. H. Dadang Machmudin, M.S.1044 - Drs. H. Dadang Machmudin, M.S.3402 - Puti Siswandari, S.Pd., M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(205, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(206, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(207, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(208, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(209, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(210, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(211, '18. 04.4A.02.010 - Lab Microbiologi N 210', '07:00-07:50', 1, '07:00-09:30, BIO-4A, 20/50BI304 - MIKROBIOLOGI - 3sks1839 - Dr. Yanti Hamdiyati, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, BIO-4C, 33/50BI305 - BIOLOGI MOLEKULER - 3sks2170 - Dr. Hj. Any Aryani, S.Si., M.Si.Angkatan 2022D5251 - Biologi - S1', 17, '07:00-09:30, BIO-2C, 16/40BI212 - GENETIKA - 3sks1550 - Dr. Hj. Peristiwati, M.Kes.Angkatan 2023D5251 - Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1);
INSERT INTO `jadwal_ruangan` (`No`, `Span`, `Senin`, `status_senin`, `Selasa`, `status_selasa`, `Rabu`, `status_rabu`, `Kamis`, `status_kamis`, `Jumat`, `status_jumat`, `Sabtu`, `status_sabtu`, `Minggu`, `status_minggu`) VALUES
(212, '18. 04.4A.02.010 - Lab Microbiologi N 210', '09:30-10:20', 4, '09:30-12:00, BIO-4B, 22/50BI304 - MIKROBIOLOGI - 3sks1915 - Dr. Kusnadi, M.Si.1915 - Dr. Kusnadi, M.Si.1839 - Dr. Yanti Hamdiyati, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '09:30-12:00, BIO-4A, 20/40BI212 - GENETIKA - 3sks1624 - Drs. Suhara, M.Pd.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '09:30-12:00, BIO-2D, 18/40BI212 - GENETIKA - 3sks2175 - Dr. Hj. Diah Kusumawaty, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(213, '18. 04.4A.02.010 - Lab Microbiologi N 210', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(214, '18. 04.4A.02.010 - Lab Microbiologi N 210', '13:00-13:50', 8, '13:00-15:30, BIO-4C, 48/50BI402 - MIKROBIOLOGI TERAPAN - 3sks1550 - Dr. Hj. Peristiwati, M.Kes.Angkatan 2022D5251 - Biologi - S1', 17, '13:00-15:30, BIO-4B, 26/50BI212 - GENETIKA - 3sks1191 - Prof. Dr. H. Riandi, M.Si.1191 - Prof. Dr. H. Riandi, M.Si.3401 - Hardini Puspitaningrum, S.Si, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(215, '18. 04.4A.02.010 - Lab Microbiologi N 210', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(216, '18. 04.4A.02.010 - Lab Microbiologi N 210', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(217, '18. 04.4A.02.010 - Lab Microbiologi N 210', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(218, '18. 04.4A.02.010 - Lab Microbiologi N 210', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(219, '18. 04.4A.02.010 - Lab Microbiologi N 210', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(220, '18. 04.4A.02.010 - Lab Microbiologi N 210', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(221, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '07:00-09:30, FIS-6C, 2/25FI585 - FISIKA BINTANG - 3sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-09:30, FIS-2C, 33/40FI140 - KONSEP DASAR BUMI DAN ANTARIKSA - 3sks2359 - Nanang Dwi Ardi, S.Si., M.T.Angkatan 2023D5151 - Fisika - S1', 17, '07:00-08:40, FIS-6C, 27/40FI501 - MEKANIKA BENDA LANGIT - 2sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-08:40, FIS-6C, 31/40FI503 - GEOMEKANIKA TANAH DAN BATUAN - 2sks2191 - Dr. Selly Feranie, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(222, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '09:30-10:20', 4, '09:30-12:00, FIS-2D, 33/40FI140 - KONSEP DASAR BUMI DAN ANTARIKSA - 3sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '09:30-12:00, FIS-4C, 11/25FI362 - FISIKA ANTARIKSA - 3sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '09:30-12:00, FIS-4C, 4/25FI565 - ASTROFISIKA - 3sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(223, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(224, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '13:00-15:30, FIS-2A, 35/40FI132 - BUMI DAN ANTARIKSA - 3sks2179 - Dr. Hj. Winny Liliawati, M.Si.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '13:00-15:30, FIS-4C, 9/25FI361 - GEOLOGI GEOFISIKA - 3sks2359 - Nanang Dwi Ardi, S.Si., M.T.Angkatan 2022D5151 - Fisika - S1', 17, '13:00-14:40, FIS-4C, 9/25FI583 - FISIKA PANAS BUMI - 2sks2180 - Dr. Mimin Iryanti, S.Si., M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-15:30, FIS-2B, 36/40FI132 - BUMI DAN ANTARIKSA - 3sks2179 - Dr. Hj. Winny Liliawati, M.Si.2179 - Dr. Hj. Winny Liliawati, M.Si.3398 - Rizki Zakwandi, S.Pd., M.Pd.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(225, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-17:10, FIS-6C, 24/40FI505 - METEOROLOGI DAN CUACA ANTARIKSA - 2sks2359 - Nanang Dwi Ardi, S.Si., M.T.Angkatan 2021D5151 - Fisika - S1', 17, '15:30-17:10, FIS-6C, 0/25FI584 - ASTRONOMI POSISI - 2sks2582 - Dr. Judhistira Aria Utama, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(226, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(227, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(228, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(229, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(230, '20. 04.4A.03.007 - Lab Elektronika N 305', '07:00-07:50', 1, '07:00-08:40, FIS-4AB, 8/20FI435 - ELEKTRONIKA PRAKTIS - 2sks1119 - Drs. Agus Danawan, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, FIS-4C, 33/40FI441 - ELEKTRONIKA DIGITAL - 3sks2583 - Dr. Ahmad Aminudin, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(231, '20. 04.4A.03.007 - Lab Elektronika N 305', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-11:10, FIS-6AB, 17/30FI338 - FISIKA LINGKUNGAN - 2sks1119 - Drs. Agus Danawan, M.Si.1119 - Drs. Agus Danawan, M.Si.3397 - Alfiansah Sandion Prakoso, S.Pd., M.Pd.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(232, '20. 04.4A.03.007 - Lab Elektronika N 305', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(233, '20. 04.4A.03.007 - Lab Elektronika N 305', '13:00-14:40, FIS-2D, 34/40FI123 - STATISTIKA - 2sks1977 - Dr. H. Andhy Setiawan, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-15:30, FIS-6B, 7/20FI573 - FISIKA ZAT PADAT - 3sks2181 - Dr. Hera Novia, M.T.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-15:30, FIS-6C1, 15/20FI581 - SEMINAR FISIKA - 3sks2180 - Dr. Mimin Iryanti, S.Si., M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(234, '20. 04.4A.03.007 - Lab Elektronika N 305', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(235, '20. 04.4A.03.007 - Lab Elektronika N 305', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(236, '20. 04.4A.03.007 - Lab Elektronika N 305', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(237, '20. 04.4A.03.007 - Lab Elektronika N 305', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(238, '20. 04.4A.03.007 - Lab Elektronika N 305', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(239, '20. 04.4A.03.007 - Lab Elektronika N 305', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(240, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '07:00-08:40, FIS-2D1, 15/16FI224 - EKSPERIMEN FISIKA DASAR II - 2sks2191 - Dr. Selly Feranie, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-08:40, FIS-2B1, 14/15FI212 - EKSPERIMEN FISIKA DASAR II - 2sks1737 - Drs. Iyon Suyana, M.Si.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '07:00-08:40, FIS-2C1, 16/16FI224 - EKSPERIMEN FISIKA DASAR II - 2sks2232 - Prof. Dr. Endi Suhendi, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '07:00-08:40, FIS-2B2, 16/20FI212 - EKSPERIMEN FISIKA DASAR II - 2sks1119 - Drs. Agus Danawan, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(241, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(242, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-11:10, FIS-2D2, 17/16FI224 - EKSPERIMEN FISIKA DASAR II - 2sks2191 - Dr. Selly Feranie, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(243, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(244, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-14:40, FIS-2C2, 16/16FI224 - EKSPERIMEN FISIKA DASAR II - 2sks2180 - Dr. Mimin Iryanti, S.Si., M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(245, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-16:20, FIS-2A3, 15/15FI212 - EKSPERIMEN FISIKA DASAR II - 2sks2768 - Dr. Duden Saepuzaman, S.Pd., M.Pd., M.Si.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(246, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(247, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(248, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(249, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(250, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(251, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-08:40, FIS-4C3, 11/15FI462 - EKSPERIMEN FISIKA MODERN - 2sks1811 - Dr. Dadi Rusdiana, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(252, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(253, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-11:10, FIS-4C2, 11/15FI462 - EKSPERIMEN FISIKA MODERN - 2sks1715 - Dr. Moh. Arifin, M.Sc.Angkatan 2022D5151 - Fisika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(254, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(255, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-15:30, FIS-4B2, 14/20FI253 - EVALUASI PEMBELAJARAN FISIKA - 3sks0738 - Drs. H. Harun Imansyah, M.Ed.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '13:00-14:40, FIS-4C1, 14/15FI462 - EKSPERIMEN FISIKA MODERN - 2sks1977 - Dr. H. Andhy Setiawan, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(256, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(257, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(258, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(259, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(260, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(261, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(262, '23. 04.4A.03.010 - Lab Fisika Material N 318', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, FIS-4C, 8/25FI566 - FISIKA PIRANTI SEMIKONDUKTOR - 3sks1810 - Prof. Dr. Andi Suhandi, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '07:00-08:40, FIS-6A, 13/15FI471 - PENGELOLAAN LABORATORIUM FISIKA SEKOLAH - 2sks1119 - Drs. Agus Danawan, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(263, '23. 04.4A.03.010 - Lab Fisika Material N 318', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(264, '23. 04.4A.03.010 - Lab Fisika Material N 318', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-15:30, FIS-4B1, 17/20FI253 - EVALUASI PEMBELAJARAN FISIKA - 3sks1382 - Dr. Muslim, M.Pd.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '13:00-15:30, FIS-6C, 12/25FI587 - PEMROSESAN DAN KARAKTERISASI BAHAN SEMIKONDUKTOR - 3sks1811 - Dr. Dadi Rusdiana, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(265, '23. 04.4A.03.010 - Lab Fisika Material N 318', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(266, '23. 04.4A.03.010 - Lab Fisika Material N 318', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(267, '23. 04.4A.03.010 - Lab Fisika Material N 318', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(268, '23. 04.4A.03.010 - Lab Fisika Material N 318', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(269, '23. 04.4A.03.010 - Lab Fisika Material N 318', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(270, '23. 04.4A.03.010 - Lab Fisika Material N 318', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(271, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '07:00-09:30, MAT-6CD (ALJABAR), 0/20MT510 - ALJABAR LINIER LANJUT - 3sks2313 - Dr. Sumanang Muhtar Gozali, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(272, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-12:00, MAT-6CD (ALJABAR), 0/20MT537 - ALJABAR MATRIKS - 3sks2696 - Imam Nugraha Albania, Ph.D.Angkatan 2021D5051 - Matematika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(273, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(274, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(275, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(276, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(277, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(278, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(279, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(280, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(281, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(282, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(283, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '07:00-12:00, DIK KIMIA-S1-2A, 28/40KI412 - PRAKTIKUM KIMIA ANALITIK 1 - 2sks0931 - Drs. Asep Suryatna, M.Si.0931 - Drs. Asep Suryatna, M.Si.0932 - Dra. Wiwi Siswaningsih, M.Si.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-12:00, KIMIA-S1-2C, 37/40KI406 - PRAKTIKUM KIMIA ANALITIK DASAR - 2sks1562 - Dra. Hj. Zackiyah, M.Si.1562 - Dra. Hj. Zackiyah, M.Si.2076 - Drs. Hokcu Suhanda, M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(284, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(285, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '13:00-18:00, DIK KIMIA-S1-2B, 27/40KI412 - PRAKTIKUM KIMIA ANALITIK 1 - 2sks0932 - Dra. Wiwi Siswaningsih, M.Si.0932 - Dra. Wiwi Siswaningsih, M.Si.0931 - Drs. Asep Suryatna, M.Si.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-18:00, KIMIA-S1-2D, 37/40KI406 - PRAKTIKUM KIMIA ANALITIK DASAR - 2sks1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.2076 - Drs. Hokcu Suhanda, M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(286, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(287, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(288, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(289, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '07:00-12:00, DIK KIMIA-S1-6AB3, 0/40KI402 - PRAKTIKUM KIMIA SEKOLAH - 2sks1978 - Dr. Wawan Wahyu, M.Pd.1978 - Dr. Wawan Wahyu, M.Pd.0931 - Drs. Asep Suryatna, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '07:00-12:00, DIK KIMIA-S1-2A, 28/40KI416 - PRAKTIKUM PEMROGRAMAN MULTIMEDIA - 2sks1975 - Muhamad Nurul Hana, S.Pd., M.Pd.1975 - Muhamad Nurul Hana, S.Pd., M.Pd.3400 - Miarti Khikmatun Nais, S.Pd., M.Pd.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(290, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(291, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '13:00-14:40, DIK KIMIA-S1-6AB, 12/40KI505 - KIMIA POLIMER - 2sks3243 - Triannisa Rahmawati, M.SiAngkatan 2021D0451 - Pendidikan Kimia - S1', 17, '13:00-18:00, DIK KIMIA-S1-2B, 27/40KI416 - PRAKTIKUM PEMROGRAMAN MULTIMEDIA - 2sks0722 - Drs. Rahmat Setiadi, M.Sc.0722 - Drs. Rahmat Setiadi, M.Sc.2188 - Gun Gun Gumilar, M.Si.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(292, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(293, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(294, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(295, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '07:00-12:00, DIK KIMIA-S1-4A, 40/45KI408 - PRAKTIKUM KIMIA ANORGANIK - 2sks1742 - Drs. Ali Kusrijadi, M.Si.1742 - Drs. Ali Kusrijadi, M.Si.1414 - Dr. H. Asep Supriatna, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-12:00, KIMIA-S1-4C, 37/40KI405 - PRAKTIKUM KIMIA FISIKA - 2sks2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.2185 - Dr. Galuh Yuliani, M.Si., Ph.D.Angkatan 2022D5351 - Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(296, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(297, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '13:00-18:00, KIMIA-S1-4D, 36/40KI405 - PRAKTIKUM KIMIA FISIKA - 2sks1327 - Dr. Hendrawan, M.Si.1327 - Dr. Hendrawan, M.Si.1326 - Dr. rer. nat. Omay Sumarna, M.Si.Angkatan 2022D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-18:00, DIK KIMIA-S1-4B, 38/40KI408 - PRAKTIKUM KIMIA ANORGANIK - 2sks1414 - Dr. H. Asep Supriatna, M.Si.1414 - Dr. H. Asep Supriatna, M.Si.1742 - Drs. Ali Kusrijadi, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(298, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(299, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(300, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(301, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '07:00-12:00, KIMIA-S1-2C, 37/40KI407 - PRAKTIKUM PEMURNIAN DAN IDENTIFIKASI SENYAWA ORGANIK - 2sks3239 - Amelinda Pratiwi, M.Si.3239 - Amelinda Pratiwi, M.Si.3321 - Vidia Afina Nurani, S.Si., M.Sc.Angkatan 2023D5351 - Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-12:00, DIK KIMIA-S1-2A, 28/40KI414 - PRAKTIKUM KIMIA ORGANIK 1 - 2sks3239 - Amelinda Pratiwi, M.Si.3239 - Amelinda Pratiwi, M.Si.3321 - Vidia Afina Nurani, S.Si., M.Sc.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(302, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(303, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '13:00-18:00, KIMIA-S1-2D, 38/40KI407 - PRAKTIKUM PEMURNIAN DAN IDENTIFIKASI SENYAWA ORGANIK - 2sks3321 - Vidia Afina Nurani, S.Si., M.Sc.3321 - Vidia Afina Nurani, S.Si., M.Sc.3239 - Amelinda Pratiwi, M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-18:00, DIK KIMIA-S1-2B, 28/40KI414 - PRAKTIKUM KIMIA ORGANIK 1 - 2sks3321 - Vidia Afina Nurani, S.Si., M.Sc.3321 - Vidia Afina Nurani, S.Si., M.Sc.3239 - Amelinda Pratiwi, M.Si.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(304, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(305, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(306, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(307, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '07:00-07:50', 1, '07:00-12:00, DIK KIMIA-S1-4A, 39/40KI413 - PRAKTIKUM KIMIA ANALITIK 2 - 2sks2076 - Drs. Hokcu Suhanda, M.Si.2076 - Drs. Hokcu Suhanda, M.Si.0931 - Drs. Asep Suryatna, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-12:00, KIMIA-S1-4C, 37/40KI410 - PRAKTIKUM KIMIA PEMISAHAN DAN PENGUKURAN - 2sks1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.0931 - Drs. Asep Suryatna, M.Si.Angkatan 2022D5351 - Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(308, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(309, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '13:00-13:50', 8, '13:00-18:00, DIK KIMIA-S1-4B, 39/40KI413 - PRAKTIKUM KIMIA ANALITIK 2 - 2sks2176 - Dr. H. Wiji, M.Si.2176 - Dr. H. Wiji, M.Si.0932 - Dra. Wiwi Siswaningsih, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-18:00, KIMIA-S1-4D, 37/40KI410 - PRAKTIKUM KIMIA PEMISAHAN DAN PENGUKURAN - 2sks1562 - Dra. Hj. Zackiyah, M.Si.1562 - Dra. Hj. Zackiyah, M.Si.3321 - Vidia Afina Nurani, S.Si., M.Sc.Angkatan 2022D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(310, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(311, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(312, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(313, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '07:00-07:50', 1, '07:00-08:40, 2R-B, 12/26FI718 - DESAIN PENELITIAN PENDIDIKAN FISIKA - 2sks0734 - Dr. Taufik Ramlan Ramalis, M.Si.Angkatan 2024P2761 - Pendidikan Fisika - S2', 17, '07:00-07:50', 1, '07:00-08:40, 1R-A, 11/20PS702 - FILSAFAT ILMU - 2sks0734 - Dr. Taufik Ramlan Ramalis, M.Si.0734 - Dr. Taufik Ramlan Ramalis, M.Si.2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.Angkatan 2024P2761 - Pendidikan Fisika - S2', 17, '07:00-08:40, FIS-6B, 2/20FI433 - TIK DALAM PEMBELAJARAN FISIKA - 2sks3398 - Rizki Zakwandi, S.Pd., M.Pd.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(314, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '08:40-10:20, 2R-B, 13/20FI719 - ASESMEN PEMBELAJARAN FISIKA - 2sks2572 - Dr. Ridwan Efendi, M.Pd.Angkatan 2022P2761 - Pendidikan Fisika - S2', 17, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30, FIS-6AB, 12/20KM417 - PRAKTIK MENGAJAR - 8sks1737 - Drs. Iyon Suyana, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '08:40-09:30', 3, '08:40-09:30', 3),
(315, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(316, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50, FIS-6AB, 8/20KM418 - PENGEMBANGAN BAHAN AJAR DAN MEDIA PENDIDIKAN - 4sks1716 - Prof. Dr. Ida Kaniawati, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(317, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40, FIS-6AB, 7/10KM418 - PENGEMBANGAN BAHAN AJAR DAN MEDIA PENDIDIKAN - 4sks0734 - Dr. Taufik Ramlan Ramalis, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:50-14:40', 9, '13:50-14:40', 9),
(318, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(319, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(320, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(321, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(322, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(323, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(324, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(325, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(326, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '07:50-08:40', 2, '07:50-08:40, IPA-4, 13/50SE306 - GENETICS - 2sks2766 - Dr. Lilit Rusyati, S.Pd., M.Pd.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:50-08:40', 2, '07:50-09:30, IPA-6, 32/50SE509 - BIOTECHNOLOGY - 2sks2766 - Dr. Lilit Rusyati, S.Pd., M.Pd.Angkatan 2021D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(327, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(328, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50, IPA-2, 14/50SE315 - BIODIVERSITY - 2sks2766 - Dr. Lilit Rusyati, S.Pd., M.Pd.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(329, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(330, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(331, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(332, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(333, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(334, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(335, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(336, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(337, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-08:40, IPA-2, 27/50SE300 - MECHANICS AND FLUIDS - 3sks2810 - Dr. Nanang Winarno, S.Pd., S.Si., M.Pd.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(338, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-12:00, IPA-2, 3/50SE300 - MECHANICS AND FLUIDS - 3sks2810 - Dr. Nanang Winarno, S.Pd., S.Si., M.Pd.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(339, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(340, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '13:00-14:40, IPA-2, 14/50SE319 - EARTH AND SPACE SCIENCE - 3sks2809 - Eka Cahya Prima, M.T., Dr.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-13:50', 8, '13:00-14:40, IPA-6, 26/50SE520 - SCIENTIFIC WRITING AND PUBLICATION - 2sks2810 - Dr. Nanang Winarno, S.Pd., S.Si., M.Pd.Angkatan 2021D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-15:30, IPA-2, 30/50SE104 - MATHEMATICS FOR SCIENCE - 3sks2809 - Eka Cahya Prima, M.T., Dr.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-14:40, IPA-4, 10/50SE304 - WAVES AND OPTICS - 3sks2810 - Dr. Nanang Winarno, S.Pd., S.Si., M.Pd.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(341, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(342, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(343, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(344, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, REG I, 12/20SE802 - PENGEMBANGAN PROGRAM PENDIDIKAN IPA - 3sks0508 - Prof. Dr. Hj. Nuryani Rustaman, M.Pd.0508 - Prof. Dr. Hj. Nuryani Rustaman, M.Pd.0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahua', 17, '07:00-08:40, IPA-4, 22/50SE313 - TRENDS IN SCIENCE EDUCATION - 2sks1741 - Prof. Dr. Hj. Diana Rochintaniawati, M.Ed.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(345, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(346, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-15:30, IPA-4, 22/50SE316 - TEACHING MEDIA AND ICT LITERACY - 3sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-15:30, IPA-4, 22/50SE318 - TEACHING PREPARATION - 3sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-14:40, IPA-2, 30/50SE400 - READING AND WRITING - 2sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.Angkatan 2023D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(347, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(348, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(349, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(350, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(351, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(352, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(353, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '07:00-09:30, IPA-6, 10/50SE320 - INORGANIC CHEMISTRY - 3sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.Angkatan 2021D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-08:40, IPA-6, 11/50SE320 - INORGANIC CHEMISTRY - 3sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.Angkatan 2021D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(354, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(355, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '13:00-15:30, IPA-6, 0/40SE320 - INORGANIC CHEMISTRY - 3sks2767 - Dr. Rika Rafikah Agustin, S.Pd., M.Pd.Angkatan 2021D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(356, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(357, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(358, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(359, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(360, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(361, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(362, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(363, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(364, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(365, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(366, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(367, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(368, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(369, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(370, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(371, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(372, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(373, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(374, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(375, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(376, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(377, '35. 04.4B.03.006 - Lab Riset Bioteknologi 1 B 307', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(378, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(379, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(380, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(381, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(382, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(383, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(384, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(385, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(386, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(387, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(388, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(389, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(390, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(391, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(392, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(393, '36. 04.4B.03.012 - Lab Riset Bioteknologi 2 B 311', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(394, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(395, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(396, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(397, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(398, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(399, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(400, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(401, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(402, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(403, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(404, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(405, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(406, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(407, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14);
INSERT INTO `jadwal_ruangan` (`No`, `Span`, `Senin`, `status_senin`, `Selasa`, `status_selasa`, `Rabu`, `status_rabu`, `Kamis`, `status_kamis`, `Jumat`, `status_jumat`, `Sabtu`, `status_sabtu`, `Minggu`, `status_minggu`) VALUES
(408, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(409, '37. 04.4B.03.015 - Lab Pembelajaran Matematika B 314', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(410, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(411, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(412, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(413, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(414, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(415, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(416, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(417, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(418, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(419, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(420, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(421, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(422, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(423, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(424, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(425, '38. 04.4B.04.001 - Lab Riset Kimia Makanan B 401', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(426, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(427, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(428, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(429, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(430, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(431, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(432, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(433, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(434, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(435, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(436, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(437, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(438, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(439, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(440, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(441, '39. 04.4B.04.002 - Lab Hayati Kimia B 403', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(442, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(443, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(444, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(445, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(446, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(447, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(448, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(449, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(450, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(451, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(452, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(453, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(454, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(455, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(456, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(457, '40. 04.4B.04.003 - Lab Riset Unggulan Kimia B 404', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(458, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '07:00-09:30, FIS-4C, 1/25FI567 - SISTEM INSTRUMENTASI - 3sks2583 - Dr. Ahmad Aminudin, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '07:00-08:40, FIS-6C, 28/40FI506 - INSTRUMENTASI MEDIS - 2sks2583 - Dr. Ahmad Aminudin, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-09:30, FIS-4C, 6/25FI364 - METROLOGI DAN KALIBRASI - 3sks2583 - Dr. Ahmad Aminudin, M.Si.Angkatan 2022D5151 - Fisika - S1', 17, '07:00-07:50, FIS-6AB, 15/20KM417 - PRAKTIK MENGAJAR - 8sks0724 - Dr. Didi Teguh Chandra, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(459, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(460, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-12:00, FIS-4B3, 10/10FI334 - TERMODINAMIKA DAN GELOMBANG OPTIK UNTUK SEKOLAH - 2sks2181 - Dr. Hera Novia, M.T.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(461, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(462, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(463, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(464, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(465, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(466, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(467, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(468, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(469, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(470, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(471, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-08:40, FIS-6C, 0/0FI461 - FISIKA KOMPUTASI - 4sks2232 - Prof. Dr. Endi Suhendi, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(472, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(473, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '09:30-12:00, FIS-6C, 41/50FI242 - ALGORITMA DAN PEMROGRAMAN - 3sks2191 - Dr. Selly Feranie, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(474, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(475, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '13:00-15:30, FIS-6C, 34/40FI481 - PEMODELAN DAN SIMULASI FISIKA - 3sks2169 - Prof. Dr. Lilik Hasanah, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(476, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(477, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(478, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(479, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(480, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(481, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(482, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(483, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(484, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-10:20, FIS-6C, 34/40FI508 - KONSTRUKSI MEDIA PEMBELAJARAN FISIKA - 2sks1811 - Dr. Dadi Rusdiana, M.Si.Angkatan 2021D5151 - Fisika - S1', 17, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(485, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '10:20-11:10', 5, '10:20-12:00, FIS-6AB, 16/30FI355 - SEJARAH FISIKA - 2sks2019 - Drs. Dedi Sasmita, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '10:20-11:10', 5, '10:20-12:00, FIS-6AB, 1/25FI431 - TEKNOLOGI DAN REKAYASA DALAM PENDIDIKAN FISIKA - 2sks0724 - Dr. Didi Teguh Chandra, M.Si.0724 - Dr. Didi Teguh Chandra, M.Si.2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(486, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(487, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(488, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(489, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '14:40-17:10, FIS-4B, 39/40FI571 - FISIKA KUANTUM - 3sks2019 - Drs. Dedi Sasmita, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(490, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(491, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(492, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(493, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(494, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(495, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(496, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(497, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(498, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(499, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(500, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(501, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(502, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(503, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(504, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(505, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(506, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(507, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(508, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(509, '44. 04.4B.04.013 - Lab Kimia Material dan Hayati B 413', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(510, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(511, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(512, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(513, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(514, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(515, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(516, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(517, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(518, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(519, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(520, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(521, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(522, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(523, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(524, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(525, '45. 04.4B.04.014 - Lab Riset Kimia Lingkungan B 414', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(526, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(527, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(528, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(529, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(530, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(531, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(532, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(533, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(534, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(535, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(536, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(537, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(538, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(539, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(540, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(541, '46. 04.4C.01.001 - Ruang Laboratorium Digital C - 101 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(542, '47. 04.4C.03.013 - Lab Ekologi', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(543, '47. 04.4C.03.013 - Lab Ekologi', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(544, '47. 04.4C.03.013 - Lab Ekologi', '08:40-09:30, BIO-2D, 16/40BI205 - MORFOLOGI TUMBUHAN - 2sks1318 - Dr. R. Kusdianti, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(545, '47. 04.4C.03.013 - Lab Ekologi', '09:30-12:00, BIO-2D, 13/40BI205 - MORFOLOGI TUMBUHAN - 2sks1318 - Dr. R. Kusdianti, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(546, '47. 04.4C.03.013 - Lab Ekologi', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(547, '47. 04.4C.03.013 - Lab Ekologi', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(548, '47. 04.4C.03.013 - Lab Ekologi', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(549, '47. 04.4C.03.013 - Lab Ekologi', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(550, '47. 04.4C.03.013 - Lab Ekologi', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(551, '47. 04.4C.03.013 - Lab Ekologi', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(552, '47. 04.4C.03.013 - Lab Ekologi', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(553, '47. 04.4C.03.013 - Lab Ekologi', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(554, '47. 04.4C.03.013 - Lab Ekologi', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(555, '47. 04.4C.03.013 - Lab Ekologi', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(556, '48. 04.4D.01.001 - Lab Ekologi', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, BIO-6C, 18/40BI317 - BIOLOGI TERESTRIAL - 3sks2174 - Hj. Tina Safaria Nilawati, M.Si.2174 - Hj. Tina Safaria Nilawati, M.Si.2190 - Dr. Wahyu Surakusumah, M.T.Angkatan 2021D5251 - Biologi - S1', 17, '07:00-09:30, BIO-6C, 18/40BI316 - BIOLOGI LAUT - 3sks2174 - Hj. Tina Safaria Nilawati, M.Si.Angkatan 2021D5251 - Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(557, '48. 04.4D.01.001 - Lab Ekologi', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-12:00, BIO-4C, 24/50BI302 - EKOLOGI - 3sks2174 - Hj. Tina Safaria Nilawati, M.Si.2174 - Hj. Tina Safaria Nilawati, M.Si.3402 - Puti Siswandari, S.Pd., M.Si.Angkatan 2022D5251 - Biologi - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(558, '48. 04.4D.01.001 - Lab Ekologi', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(559, '48. 04.4D.01.001 - Lab Ekologi', '13:00-13:50, BIO-2C, 21/40BI205 - MORFOLOGI TUMBUHAN - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(560, '48. 04.4D.01.001 - Lab Ekologi', '13:50-16:20, BIO-2C, 12/40BI205 - MORFOLOGI TUMBUHAN - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(561, '48. 04.4D.01.001 - Lab Ekologi', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(562, '48. 04.4D.01.001 - Lab Ekologi', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(563, '48. 04.4D.01.001 - Lab Ekologi', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(564, '48. 04.4D.01.001 - Lab Ekologi', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(565, '48. 04.4D.01.001 - Lab Ekologi', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(566, '49. 04.4D.01.002 - LaB Botani', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(567, '49. 04.4D.01.002 - LaB Botani', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(568, '49. 04.4D.01.002 - LaB Botani', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(569, '49. 04.4D.01.002 - LaB Botani', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(570, '49. 04.4D.01.002 - LaB Botani', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(571, '49. 04.4D.01.002 - LaB Botani', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(572, '49. 04.4D.01.002 - LaB Botani', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(573, '49. 04.4D.01.002 - LaB Botani', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(574, '49. 04.4D.01.002 - LaB Botani', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(575, '49. 04.4D.01.002 - LaB Botani', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(576, '49. 04.4D.01.002 - LaB Botani', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(577, '49. 04.4D.01.002 - LaB Botani', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(578, '49. 04.4D.01.002 - LaB Botani', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(579, '49. 04.4D.01.002 - LaB Botani', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(580, '49. 04.4D.01.002 - LaB Botani', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(581, '49. 04.4D.01.002 - LaB Botani', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(582, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '07:00-09:30, KOM-C2, 46/80IK170 - SISTEM BASIS DATA - 3sks2808 - Dr. Rani Megasari, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-08:40, BIO-2A, 20/40BI103 - STATISTIKA - 3sks2182 - Rini Solihat, Dr., M.Si.2182 - Rini Solihat, Dr., M.Si.3401 - Hardini Puspitaningrum, S.Si, M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, KOM-6B, 40/40IK357 - INTERAKSI MANUSIA DAN KOMPUTER - 3sks2590 - Dr. Wahyudin, M.T.2590 - Dr. Wahyudin, M.T.3241 - Andini Setya Arianti, M.Ds.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, KOM-C, 36/50IK566 - BUSINESS INTELLIGENCE - 2sks3240 - Ani Anisyah, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(583, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '09:30-12:00, KOM-C2, 49/80IK270 - REKAYASA PERANGKAT LUNAK - 3sks2398 - Dr. Asep Wahyudin, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '09:30-12:00, BIO-6C, 41/50BI408 - BIOTEKNOLOGI - 3sks1973 - Prof. Topik Hidayat, S.Pd., M.Si., Ph.D.Angkatan 2021D5251 - Biologi - S1', 17, '09:30-11:10, DIK KIMIA-S1-4AB, 20/100KI201 - KEWIRAUSAHAAN - 2sks0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '09:30-10:20', 4, '09:30-11:10, MAT-2B, 49/50MT319 - KEWIRAUSAHAAN - 2sks1719 - Dr. H. Cece Kustiawan, M.Si.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4),
(584, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(585, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '13:00-15:30, KELAS C, 15/25MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks1716 - Prof. Dr. Ida Kaniawati, M.Si.1716 - Prof. Dr. Ida Kaniawati, M.Si.2762 - Prof. Dr. Eng. H. Asep Bayu Dani Nandiyanto, S.T., M.Eng.Angkatan 2021D5251 - Biologi - S1', 17, '13:00-15:30, KELAS C MBKM, 18/25MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks2577 - Tuszie Widhiyanti, M.Pd., Ph.D.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50, BIO-4C, 18/50BI413 - BIOMODELING - 2sks2175 - Dr. Hj. Diah Kusumawaty, M.Si.2175 - Dr. Hj. Diah Kusumawaty, M.Si.2190 - Dr. Wahyu Surakusumah, M.T.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-14:40, BIO-2D, 14/40BI212 - GENETIKA - 3sks2170 - Dr. Hj. Any Aryani, S.Si., M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-14:40, MAT-4C, 45/50MT427 - KEWIRAUSAHAAN - 2sks1914 - Dr. Entit Puspita, S.Pd., M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(586, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(587, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(588, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(589, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '07:00-09:30, S3PMAT&BYRESEARCH, 6/7MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1720 - Prof. Dr. H. Dadang Juandi, M.Si.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-07:50', 1, '07:00-09:30, S3PMAT2A1, 5/5MT827 - KAJIAN TENTANG PENDIDIKAN MATEMATIKA BERBANTUAN ICT - 3sks1406 - Dr. Bambang Avip Priatna, M.Si.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, MAT-6CD (ALJABAR), 0/20MT426 - KAPITA SELEKTA MATEMATIKA - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-10:20, DIK KIMIA-S1-6-P3K, 0/15KM416 - MODUL NUSANTARA - 4sks3102 - ABDUL AZIS, S.Pd., M.Pd.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17),
(590, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(591, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '13:00-15:30, S2PMAT-2B, 18/20MT870 - PSIKOLOGI PERKEMBANGAN KOGNITIF DALAM PEMBELAJARAN MATEMATIKA - 3sks0962 - Prof. Turmudi, M.Ed., M.Sc., Ph.D.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '13:00-15:30, MAT-4AB1, 34/34MT400 - TEORI GRUP - 3sks2314 - Ririn Sispiyati, S.Si., M.Si.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, S3PMAT1A1, 4/15MT820 - PENDIDIKAN MATEMATIKA KONTEMPORER - 3sks0518 - Prof. Dr. H. Darhim, M.Si.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '13:00-14:40, S3PMAT1A2, 6/10MT833 - KAJIAN KONSEP-KONSEP ESENSIAL MATEMATIKA - 2sks1653 - Dr. Jarnawi Afgani Dahlan, M.Kes.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, MAT-6CD (ALJABAR), 0/20MT543 - ALJABAR GRAF - 3sks2771 - Isnie Yusnitha, S.Si., M.Ed.Angkatan 2021D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(592, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '15:30-18:00, KELAS B MBKM, 2/20MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(593, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(594, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(595, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(596, '52. 04.4A.03.018 - Ruang Kelas S- 306', '07:00-08:40, KOM-2A, 37/50IK231 - PARADIGMA BERPIKIR KOMPUTASI - 2sks2657 - Harsa Wara Prabawa, S.Si., M.Pd.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, KIMIA-S1-4C, 38/55KI313 - METABOLISME BIOMOLEKUL DAN INFORMASI GENETIKA - 2sks0735 - Prof. Dr. Florentina Maria Titin Supriyanti, M.Si.Angkatan 2022D5351 - Kimia - S1', 17, '07:00-08:40, KIMIA-S1-4C/D, 76/80KI323 - KIMIA INTI DAN RADIOKIMIA - 2sks1976 - Dr. H. Budiman Anwar, S.Si., M.Si.Angkatan 2022D5351 - Kimia - S1', 17, '07:00-09:30, BIO-2D, 12/40BI103 - STATISTIKA - 3sks2173 - Prof. Dr. Yayan Sanjaya, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '07:00-08:40, BIO-6C, 6/10BI429 - METABOLOMIK - 2sks1318 - Dr. R. Kusdianti, M.Si.Angkatan 2021D5251 - Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(597, '52. 04.4A.03.018 - Ruang Kelas S- 306', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(598, '52. 04.4A.03.018 - Ruang Kelas S- 306', '13:00-15:30, FIS-4A, 40/40FI571 - FISIKA KUANTUM - 3sks1134 - Prof. Dr. Parlindungan Sinaga, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '13:00-14:40, KOM-C1, 48/50IK310 - KRIPTOGRAFI - 2sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, KELAS C MBKM, 12/20MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks2809 - Eka Cahya Prima, M.T., Dr.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-14:40, MAT-2C, 5/40MT311 - ALJABAR LINIER - 4sks2696 - Imam Nugraha Albania, Ph.D.Angkatan 2023D5051 - Matematika - S1', 17, '13:00-15:30, KIMIA-S1-6C/D MATERIAL, 11/40KI529 - SINTESIS DAN KARAKTERISASI MATERIAL - 3sks1326 - Dr. rer. nat. Omay Sumarna, M.Si.Angkatan 2021D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(599, '52. 04.4A.03.018 - Ruang Kelas S- 306', '15:30-17:10, FIS-2A, 38/40FI113 - FISIKA DASAR II - 4sks2768 - Dr. Duden Saepuzaman, S.Pd., M.Pd., M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '15:30-18:00, KOM-C1, 43/50IK400 - METODOLOGI PENELITIAN - 3sks2147 - Prof. Dr. Munir, M.IT.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '15:30-17:10, KOM-C1, 43/50IK545 - BIG DATA PLATFORMS - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '15:30-17:10, MAT-6AB1, 35/35MT544 - PENDIDIKAN MATEMATIKA INKLUSI - 2sks2350 - Dr. Hj. Aan Hasanah, M.Pd.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '15:30-18:00, MAT-4A2, 8/20MT501 - EVALUASI PEMBELAJARAN MATEMATIKA - 3sks0962 - Prof. Turmudi, M.Ed., M.Sc., Ph.D.0962 - Prof. Turmudi, M.Ed., M.Sc., Ph.D.3403 - Yusuf Adhitya, S.Pd., M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11),
(600, '52. 04.4A.03.018 - Ruang Kelas S- 306', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(601, '52. 04.4A.03.018 - Ruang Kelas S- 306', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(602, '52. 04.4A.03.018 - Ruang Kelas S- 306', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(603, '53. 04.4A.03.019 - Ruang Kelas S -305', '07:00-09:30, DIK KIMIA-S1-2B, 27/40KI341 - KIMIA FISIKA 1 - 3sks1326 - Dr. rer. nat. Omay Sumarna, M.Si.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-08:40, FIS-2B, 34/40FI113 - FISIKA DASAR II - 4sks1736 - Drs. Saeful Karim, M.Si.1736 - Drs. Saeful Karim, M.Si.3397 - Alfiansah Sandion Prakoso, S.Pd., M.Pd.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '07:00-08:40, 2A, 35/50KU110 - PENDIDIKAN PANCASILA - 2sks1661 - Dra. Hj. Siti Komariah, M.Si., Ph.D.1661 - Dra. Hj. Siti Komariah, M.Si., Ph.D.3104 - DADI MULYADI NUGRAHA, S.Pd., M.Pd.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '07:00-09:30, BIO-4A, 40/50BI318 - PERENCANAAN PEMBELAJARAN BIOLOGI - 3sks1838 - Dr. Mimin Nurjhani Kusumastuti, M.Pd.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-08:40, KOM-C, 21/50IK535 - DATA VISUALIZATION - 2sks2808 - Dr. Rani Megasari, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(604, '53. 04.4A.03.019 - Ruang Kelas S -305', '12:00-13:00', 7, '12:00-13:50, KOM-2B, 39/50IK151 - BAHASA INGGRIS - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.2585 - Prof. Dr. Lala Septem Riza, M.T.3241 - Andini Setya Arianti, M.Ds.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(605, '53. 04.4A.03.019 - Ruang Kelas S -305', '15:30-18:50, KOM-C1, 39/50PT502 - PROYEK KONSULTANSI - 4sks2556 - Eddy Prasetyo Nugroho, M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '15:30-18:00, FIS-4C, 35/40FI563 - METODE RISET DAN PUBLIKASI ILMIAH - 3sks2359 - Nanang Dwi Ardi, S.Si., M.T.Angkatan 2022D5151 - Fisika - S1', 17, '15:30-16:20', 11, '15:30-18:00, MAT-2AB3, 29/35MT322 - ALJABAR LINIER ELEMENTER - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '15:30-17:10, KOM-C1, 6/50IK552 - INTERNET OF THINGS - 2sks2556 - Eddy Prasetyo Nugroho, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11),
(606, '53. 04.4A.03.019 - Ruang Kelas S -305', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(607, '53. 04.4A.03.019 - Ruang Kelas S -305', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(608, '54. 04.4A.03.020 - Ruang Kelas S- 304', '07:00-08:40, BIO-6B, 6/50BI409 - PENGANTAR BIOTEKNOLOGI - 2sks1551 - Prof. Dr. Hj. Widi Purwianingsih, M.Si.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, MAT-6AB, 53/55MT421 - NILAI AWAL DAN SYARAT BATAS - 3sks1404 - Dr. H. Endang Cahya Mulyaning A., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, KOM-C2, 44/50IK220 - SISTEM KONTROL - 3sks2399 - Dr. Muhamad Nursalman, M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, MAT-4A, 46/50MT402 - PERSAMAAN DIFERENSIAL BIASA - 3sks1404 - Dr. H. Endang Cahya Mulyaning A., M.Si.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, BIO-4B, 42/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks0834 - Dr. H. Endang Herawan, M.Pd.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-10:20, DIK KIMIA-S1-6-SI, 6/150KM448 - STRATEGI PENGEMBANGAN DIRI - 4sks2577 - Tuszie Widhiyanti, M.Pd., Ph.D.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '07:00-10:20, DIK KIMIA-S1-6-SI, 6/150KM443 - LITERASI EKONOMI DIGITAL - 4sks2076 - Drs. Hokcu Suhanda, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17),
(609, '54. 04.4A.03.020 - Ruang Kelas S- 304', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(610, '54. 04.4A.03.020 - Ruang Kelas S- 304', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(611, '54. 04.4A.03.020 - Ruang Kelas S- 304', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(612, '55. 04.4A.03.022 - Ruang Kelas S - 302', '07:00-08:40, FIS-4AB, 40/40FI353 - FISIKA MODERN - 4sks1134 - Prof. Dr. Parlindungan Sinaga, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-08:40, BIO-6C, 21/40BI316 - BIOLOGI LAUT - 3sks0731 - Prof. Dr. Hj. RR. Hertien Koosbandiah S., M.Sc.Angkatan 2021D5251 - Biologi - S1', 17, '07:00-08:40, DIK KIMIA-S1-2B, 34/40KI340 - IKATAN KIMIA - 2sks3243 - Triannisa Rahmawati, M.SiAngkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(613, '55. 04.4A.03.022 - Ruang Kelas S - 302', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7);
INSERT INTO `jadwal_ruangan` (`No`, `Span`, `Senin`, `status_senin`, `Selasa`, `status_selasa`, `Rabu`, `status_rabu`, `Kamis`, `status_kamis`, `Jumat`, `status_jumat`, `Sabtu`, `status_sabtu`, `Minggu`, `status_minggu`) VALUES
(614, '55. 04.4A.03.022 - Ruang Kelas S - 302', '13:00-15:30, MAT-6AB, 21/40MT508 - METODA STATISTIKA MULTIVARIAT - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, MAT-6A, 27/32MT433 - PENELITIAN KUALITATIF - 2sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, DIK KIMIA-S1-4B, 26/27KI301 - KIMIA SEKOLAH 1 - 3sks1978 - Dr. Wawan Wahyu, M.Pd.1978 - Dr. Wawan Wahyu, M.Pd.3399 - Atep Rian Nurhadi, S.Pd., M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, MAT-6AB, 18/40MT417 - GEOMETRI TRANSFORMASI - 3sks2695 - Utari Wijayanti, S.Kom., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(615, '55. 04.4A.03.022 - Ruang Kelas S - 302', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(616, '55. 04.4A.03.022 - Ruang Kelas S - 302', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(617, '55. 04.4A.03.022 - Ruang Kelas S - 302', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(618, '56. 04.4A.03.023 - Ruang Kelas S - 301', '07:00-09:30, MAT-4AB3, 30/33MT400 - TEORI GRUP - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, FIS-2D, 35/40FI240 - FISIKA MATEMATIKA II - 4sks1810 - Prof. Dr. Andi Suhandi, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '07:00-09:30, MAT-6A, 11/50MT406 - KALKULUS VEKTOR - 3sks1911 - Dr. Lukman, S.Si., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, MAT-6CD, 31/40MT417 - GEOMETRI TRANSFORMASI - 3sks2891 - Dr. Al Azhary Masta, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-08:40, FIS-6A, 0/20FI433 - TIK DALAM PEMBELAJARAN FISIKA - 2sks2573 - Arif Hidayat, S.Pd., M.Si., Ph.D.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-10:20, DIK KIMIA-S1-6-P3K, 52/150KM415 - PRAKTIK PENILAIAN HASIL BELAJAR - 4sks0736 - Dr. Sri Mulyani, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '07:00-13:50, DIK KIMIA-S1-6-P3K, 133/150KM417 - PRAKTIK MENGAJAR - 8sks0932 - Dra. Wiwi Siswaningsih, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17),
(619, '56. 04.4A.03.023 - Ruang Kelas S - 301', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(620, '56. 04.4A.03.023 - Ruang Kelas S - 301', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(621, '56. 04.4A.03.023 - Ruang Kelas S - 301', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(622, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '07:00-09:30, KOM-C1, 36/50IK250 - SISTEM OPERASI - 3sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, KIMIA-S1-6C/D, 61/65KI319 - PENGANTAR KIMIA LINGKUNGAN - 2sks2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.1410 - Drs. Yaya Sonjaya, M.Si.Angkatan 2021D5351 - Kimia - S1', 17, '07:00-09:30, KOM-2A, 39/50IK141 - STRUKTUR DATA - 3sks2990 - Erna Piantari,S.Kom.,M.T.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-09:30, DIK KIMIA-S1-4A, 41/50KI345 - KIMIA ANALITIK 2 - 3sks2076 - Drs. Hokcu Suhanda, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(623, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '09:30-10:20', 4, '09:30-12:00, KOM-C2, 48/50IK230 - DESIGN DAN PEMROGRAMAN WEB - 3sks2591 - Herbert, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '09:30-10:20', 4, '09:30-12:00, BIO-4A, 40/50BI204 - EVALUASI PEMBELAJARAN BIOLOGI - 3sks2189 - Dr. Ana Ratna Wulan, M.Pd.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '09:30-11:10, 4A, 41/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks1957 - Dr. H. Abubakar, M.Pd.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4),
(624, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(625, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '13:00-14:40, BIO-4A, 21/50BI212 - GENETIKA - 3sks1191 - Prof. Dr. H. Riandi, M.Si.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '13:00-14:40, KOM-C, 27/50IK581 - SOFTWARE QUALITY ASSURANCE - 2sks3138 - Yudi Ahmad Hambali, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '13:00-14:40, BIO-2A, 22/50BI201 - BIOKIMIA - 3sks1838 - Dr. Mimin Nurjhani Kusumastuti, M.Pd.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '13:00-15:30, KELAS D, 23/70MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks2585 - Prof. Dr. Lala Septem Riza, M.T.2585 - Prof. Dr. Lala Septem Riza, M.T.3036 - Tri Suwandi, S.Pd., M.Sc.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '13:00-14:40, KIMIA-S1-6C/D PANGAN, 14/40KI515 - PENGAWETAN BAHAN PANGAN - 2sks3239 - Amelinda Pratiwi, M.Si.Angkatan 2021D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(626, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(627, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(628, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(629, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '07:00-09:30, S3PMAT2A2, 4/5MT827 - KAJIAN TENTANG PENDIDIKAN MATEMATIKA BERBANTUAN ICT - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, AANVULLEN II, 4/20SE763 - STUDI KASUS DALAM PEMBELAJARAN IPA - 3sks1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '07:00-09:30, S3PMAT-2B, 1/15MT787 - PENGEMBANGAN MEDIA PEMBELAJARAN MATEMATIKA BERBASIS TEKNOLOGI - 3sks1408 - Prof. Dr. Dra. Nurjanah, M.Pd.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, S3PMATA1, 0/7MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks0727 - Prof. H. Yaya Sukjaya Kusumah, M.Sc., Ph.D.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, P.BIO-2A, 6/20BI711 - STRUKTUR FUNGSI DAN PERKEMBANGAN - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.1745 - Dr. rer. nat. Adi Rahmat, M.Si.2172 - Dr. Didik Priyandoko, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(630, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(631, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '13:00-15:30, S3PMAT1A, 0/15MT761 - STRATEGI DAN PERENCANAAN PEMBELAJARAN MATEMATIKA - 3sks1187 - Prof. Dr. H. Nanang Priatna, M.Pd.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, S3PMAT-2A, 0/15MT834 - METODE PENELITIAN KUANTITATIF DALAM PENDIDIKAN MATEMATIKA - 3sks0396 - Prof. Dr. H. Wahyudin, M.Pd.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, S3PMAT-2A, 7/15MT837 - KAJIAN DIDAKTIK MATEMATIKA - 3sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, AANVULLEN I, 2/20SE761 - INOVASI PEMBELAJARAN IPA - 3sks1191 - Prof. Dr. H. Riandi, M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '13:00-15:30, S3PMAT-2A, 3/16MT872 - ANALISIS HASIL PENELITIAN INTERNASIONAL PENDIDIKAN MATEMATIKA - 3sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(632, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '15:30-18:00, S3PMAT-2B, 15/15MT831 - TEORI GRUP YANG DIBANGUN SECARA BERHINGGA - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '15:30-18:00, S3PMAT2AB, 15/15MT831 - TEORI GRUP YANG DIBANGUN SECARA BERHINGGA - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(633, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(634, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(635, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(636, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', '07:00-08:40, S3PMAT1A, 21/21PS702 - FILSAFAT ILMU - 2sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, REG I, 5/20PS702 - FILSAFAT ILMU - 2sks1936 - Prof. Dr. Nahadi, M.Pd., M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '07:00-08:40, REG II A, 9/30SE803 - EVALUASI PROGRAM PENDIDIKAN IPA - 2sks1317 - Dr. Hj. Siti Sriyati, M.Si.1317 - Dr. Hj. Siti Sriyati, M.Si.1936 - Prof. Dr. Nahadi, M.Pd., M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '07:00-08:40, REG I, 3/20SE707 - IPBA DALAM KONTEKS PENDIDIKAN IPA - 2sks1810 - Prof. Dr. Andi Suhandi, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '07:00-09:30, S2PMAT2A, 3/15MT773 - INOVASI PENDIDIKAN MATEMATIKA - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(637, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(638, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(639, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '07:00-09:30, DIK KIMIA-S2-ANVULLEN, 1/20KI328 - LITERASI ICT DAN MEDIA PEMBELAJARAN KIMIA - 3sks1131 - Dr. Ijang Rohman, M.Si.Angkatan 2023P2861 - Pendidikan Kimia - S2', 17, '07:00-09:30, S3PMAT1A2, 14/15MT820 - PENDIDIKAN MATEMATIKA KONTEMPORER - 3sks0727 - Prof. H. Yaya Sukjaya Kusumah, M.Sc., Ph.D.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, S3PMAT1A1, 14/15MT830 - PERKEMBANGAN MUTAKHIR DAN ISU-ISU GLOBAL DALAM PENDIDIKAN MATEMATIKA - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, REG II, 3/30SE863 - KAJIAN BAHAN AJAR IPA - 2sks1770 - Prof. Dr. Ida Hamidah, M.Si.1770 - Prof. Dr. Ida Hamidah, M.Si.0933 - Dr. Paed. H. Sjaeful AnwarAngkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '07:00-09:30, S2PMAT-2AB, 3/15MT500 - STRATEGI PEMBELAJARAN MATEMATIKA - 3sks1187 - Prof. Dr. H. Nanang Priatna, M.Pd.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(640, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '09:30-12:00, S3PMAT1A1, 7/10MT836 - KAJIAN PROSES BERPIKIR MATEMATIS - 3sks1800 - Dr. Kusnandi, M.Si.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '09:30-12:00, S3PMAT-2B1, 11/10MT827 - KAJIAN TENTANG PENDIDIKAN MATEMATIKA BERBANTUAN ICT - 3sks0727 - Prof. H. Yaya Sukjaya Kusumah, M.Sc., Ph.D.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '09:30-12:00, S3PMAT-2A, 6/15MT787 - PENGEMBANGAN MEDIA PEMBELAJARAN MATEMATIKA BERBASIS TEKNOLOGI - 3sks0727 - Prof. H. Yaya Sukjaya Kusumah, M.Sc., Ph.D.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '09:30-12:00, S3PMAT1A3, 2/10MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(641, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(642, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '13:00-15:30, S3PMATA2, 3/5MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1652 - Prof. Suhendra, M.Ed., Ph.D.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, S3PMAT1B2, 4/5MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '13:00-15:30, REG I, 12/20PS802 - METODOLOGI PENELITIAN LANJUT - 3sks0513 - Prof. Dr. Liliasari, M.Pd.0513 - Prof. Dr. Liliasari, M.Pd.0734 - Dr. Taufik Ramlan Ramalis, M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '13:00-15:30, S3PMAT2AB1, 17/17MT835 - KAJIAN PARADIGMA PENELITIAN DALAM PENDIDIKAN MATEMATIKA - 3sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '13:00-14:40, KIMIA-S2-2 HAYATI, 2/25KI733 - BIOTRANSFORMASI OBAT DAN MEKANISME MOLEKULAR - 2sks1744 - Prof. Dr. Ratnaningsih Eko Sardjono, M.Si.Angkatan 2023D5361 - Kimia - S2', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(643, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '15:30-17:10, KIMIA-S2-1 M/H, 3/25KI712 - KAPITA SELEKTA KIMIA ANORGANIK - 2sks1740 - Prof. Dr. rer. nat. H. Ahmad Mudzakir, M.Si.Angkatan 2023D5361 - Kimia - S2', 17, '15:30-18:00, DIK KIMIA-S2-ANVULLEN, 0/25KI327 - EVALUASI PEMBELAJARAN KIMIA - 3sks1936 - Prof. Dr. Nahadi, M.Pd., M.Si.Angkatan 2023P2861 - Pendidikan Kimia - S2', 17, '15:30-18:00, S3PMAT1A, 13/15MT870 - PSIKOLOGI PERKEMBANGAN KOGNITIF DALAM PEMBELAJARAN MATEMATIKA - 3sks0934 - Prof. Dr. H. Sufyani Prabawanto, M.Ed.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '15:30-18:00, S3PMAT-AB, 4/5MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks0934 - Prof. Dr. H. Sufyani Prabawanto, M.Ed.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '15:30-18:00, S3PMAT1B3, 5/5MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1187 - Prof. Dr. H. Nanang Priatna, M.Pd.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '15:30-16:20', 11, '15:30-16:20', 11),
(644, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(645, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(646, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(647, '61. 04.4B.02.003 - Ruang Kelas B - 203', '07:00-08:40, BIO-6C, 21/40BI317 - BIOLOGI TERESTRIAL - 3sks2190 - Dr. Wahyu Surakusumah, M.T.2190 - Dr. Wahyu Surakusumah, M.T.2174 - Hj. Tina Safaria Nilawati, M.Si.Angkatan 2021D5251 - Biologi - S1', 17, '07:00-09:30, BIO-2A, 22/40BI103 - STATISTIKA - 3sks2182 - Rini Solihat, Dr., M.Si.2182 - Rini Solihat, Dr., M.Si.3401 - Hardini Puspitaningrum, S.Si, M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, MAT-6B, 23/50MT406 - KALKULUS VEKTOR - 3sks1800 - Dr. Kusnandi, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, DIK KIMIA-S1-2B, 30/50KI342 - KIMIA FISIKA 2 - 2sks1131 - Dr. Ijang Rohman, M.Si.1131 - Dr. Ijang Rohman, M.Si.3399 - Atep Rian Nurhadi, S.Pd., M.Pd.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(648, '61. 04.4B.02.003 - Ruang Kelas B - 203', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(649, '61. 04.4B.02.003 - Ruang Kelas B - 203', '13:00-14:40, FIS-4C, 36/40FI560 - FISIKA KUANTUM - 4sks1125 - Dr. Yuyu Rachmat Tayubi, M.Si.1125 - Dr. Yuyu Rachmat Tayubi, M.Si.1715 - Dr. Moh. Arifin, M.Sc.Angkatan 2022D5151 - Fisika - S1', 17, '13:00-14:40, BIO-2C, 33/40BI203 - BIOLOGI SEL - 2sks1190 - Dr. H. Saefudin, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '13:00-14:40, FIS-2A, 1/0FI113 - FISIKA DASAR II - 4sks2768 - Dr. Duden Saepuzaman, S.Pd., M.Pd., M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '13:00-14:40, BIO-6AB, 11/30BI309 - ILMU PERILAKU HEWAN - 2sks1624 - Drs. Suhara, M.Pd.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '13:00-14:40, BIO-6AB, 0/30BI415 - EKOFISIOLOGI - 2sks1549 - Dr. Amprasto, M.Si.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(650, '61. 04.4B.02.003 - Ruang Kelas B - 203', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-16:20, KIMIA-S1-2D, 37/45KU110 - PENDIDIKAN PANCASILA - 2sks3104 - DADI MULYADI NUGRAHA, S.Pd., M.Pd.Angkatan 2023D5351 - Kimia - S1', 17, '14:40-15:30', 10, '14:40-15:30', 10),
(651, '61. 04.4B.02.003 - Ruang Kelas B - 203', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(652, '61. 04.4B.02.003 - Ruang Kelas B - 203', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(653, '61. 04.4B.02.003 - Ruang Kelas B - 203', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(654, '61. 04.4B.02.003 - Ruang Kelas B - 203', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(655, '62. 04.4B.02.005 - Ruang Kelas B - 205', '07:00-08:40, BIO-6A, 0/50BI409 - PENGANTAR BIOTEKNOLOGI - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '07:00-08:40, KOM-2A, 36/50IK151 - BAHASA INGGRIS - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.2585 - Prof. Dr. Lala Septem Riza, M.T.3244 - Nusuki Syariati Fatimah, M.Pd.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-09:30, KOM-C1, 49/50IK290 - DESAIN DAN PEMROGRAMAN BERORIENTASI OBJEK - 3sks2658 - Rosa Ariani Sukamto, M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, KOM-C2, 37/50IK290 - DESAIN DAN PEMROGRAMAN BERORIENTASI OBJEK - 3sks2658 - Rosa Ariani Sukamto, M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, BIO-2C, 33/40KU110 - PENDIDIKAN PANCASILA - 2sks2907 - Vini Agustiani Hadian,M.Pd.Angkatan 2023D5251 - Biologi - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(656, '62. 04.4B.02.005 - Ruang Kelas B - 205', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(657, '62. 04.4B.02.005 - Ruang Kelas B - 205', '13:00-15:30, KOM-C2, 45/50IK237 - ANALISIS DAN DESAIN ALGORITMA - 3sks2878 - Yaya Wihardi, S.Kom., M.Kom.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, BIO-6C, 38/50BI315 - MIKROBIOM - 3sks1738 - Dr. Hj. Any Fitriani, M.Si.Angkatan 2021D5251 - Biologi - S1', 17, '13:00-15:30, KOM-4B, 41/50IK331 - METODOLOGI PENELITIAN PENDIDIKAN ILMU KOMPUTER - 3sks2147 - Prof. Dr. Munir, M.IT.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-15:30, KIMIA-S1-6C/D LINGKUNGAN, 5/40KI508 - PENGOLAHAN LIMBAH - 3sks1410 - Drs. Yaya Sonjaya, M.Si.Angkatan 2021D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(658, '62. 04.4B.02.005 - Ruang Kelas B - 205', '15:30-18:00, MAT-4B2, 13/20MT501 - EVALUASI PEMBELAJARAN MATEMATIKA - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.1654 - Prof. Dr. H. Tatang Herman, M.Ed.2661 - Dr. Eyus Sudihartinih, M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '15:30-18:00, KOM-C, 10/50IK582 - SPEECH RECOGNITION AND SYNTHESIS - 3sks2878 - Yaya Wihardi, S.Kom., M.Kom.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '15:30-16:20', 11, '15:30-17:10, DIK KIMIA-S1-6AB8, 12/40KI404 - PEMRODUKSIAN VIDEO PEMBELAJARAN KIMIA - 2sks1975 - Muhamad Nurul Hana, S.Pd., M.Pd.1975 - Muhamad Nurul Hana, S.Pd., M.Pd.3400 - Miarti Khikmatun Nais, S.Pd., M.Pd.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(659, '62. 04.4B.02.005 - Ruang Kelas B - 205', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(660, '62. 04.4B.02.005 - Ruang Kelas B - 205', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(661, '62. 04.4B.02.005 - Ruang Kelas B - 205', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(662, '63. 04.4B.02.011 - Ruang Kelas B 210', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(663, '63. 04.4B.02.011 - Ruang Kelas B 210', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(664, '63. 04.4B.02.011 - Ruang Kelas B 210', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(665, '63. 04.4B.02.011 - Ruang Kelas B 210', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(666, '63. 04.4B.02.011 - Ruang Kelas B 210', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(667, '63. 04.4B.02.011 - Ruang Kelas B 210', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(668, '63. 04.4B.02.011 - Ruang Kelas B 210', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(669, '63. 04.4B.02.011 - Ruang Kelas B 210', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(670, '63. 04.4B.02.011 - Ruang Kelas B 210', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(671, '63. 04.4B.02.011 - Ruang Kelas B 210', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(672, '63. 04.4B.02.011 - Ruang Kelas B 210', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(673, '63. 04.4B.02.011 - Ruang Kelas B 210', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(674, '63. 04.4B.02.011 - Ruang Kelas B 210', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(675, '63. 04.4B.02.011 - Ruang Kelas B 210', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(676, '63. 04.4B.02.011 - Ruang Kelas B 210', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(677, '63. 04.4B.02.011 - Ruang Kelas B 210', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(678, '64. 04.4B.02.012 - Ruang Kelas B 210', '07:00-08:40, KOM-C1, 22/50IK420 - SEMINAR - 2sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, 2R-A, 11/26FI718 - DESAIN PENELITIAN PENDIDIKAN FISIKA - 2sks2179 - Dr. Hj. Winny Liliawati, M.Si.Angkatan 2024P2761 - Pendidikan Fisika - S2', 17, '07:00-08:40, 2R-A, 10/26FI719 - ASESMEN PEMBELAJARAN FISIKA - 2sks1382 - Dr. Muslim, M.Pd.Angkatan 2024P2761 - Pendidikan Fisika - S2', 17, '07:00-07:50', 1, '07:00-09:30, DIK KIMIA-S1-2A, 29/40KI341 - KIMIA FISIKA 1 - 3sks1131 - Dr. Ijang Rohman, M.Si.1131 - Dr. Ijang Rohman, M.Si.3399 - Atep Rian Nurhadi, S.Pd., M.Pd.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(679, '64. 04.4B.02.012 - Ruang Kelas B 210', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(680, '64. 04.4B.02.012 - Ruang Kelas B 210', '13:00-15:30, MAT-4A3, 17/20MT501 - EVALUASI PEMBELAJARAN MATEMATIKA - 3sks0396 - Prof. Dr. H. Wahyudin, M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, MAT-6B, 24/25MT433 - PENELITIAN KUALITATIF - 2sks1408 - Prof. Dr. Dra. Nurjanah, M.Pd.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, DIK KIMIA-S1-4A, 27/30KI328 - LITERASI ICT DAN MEDIA PEMBELAJARAN KIMIA - 3sks0722 - Drs. Rahmat Setiadi, M.Sc.0722 - Drs. Rahmat Setiadi, M.Sc.3400 - Miarti Khikmatun Nais, S.Pd., M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-14:40, REG II B, 9/30SE805 - ETNO SAINS - 2sks2179 - Dr. Hj. Winny Liliawati, M.Si.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '13:00-15:30, FIS-6A2, 0/15FI552 - SEMINAR PENDIDIKAN FISIKA - 3sks0738 - Drs. H. Harun Imansyah, M.Ed.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(681, '64. 04.4B.02.012 - Ruang Kelas B 210', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(682, '64. 04.4B.02.012 - Ruang Kelas B 210', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(683, '64. 04.4B.02.012 - Ruang Kelas B 210', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(684, '65. 04.4B.03.001 - Ruang Kelas B - 301', '07:00-09:30, MAT-4D, 56/60MT410 - TEORI DIFERENSIAL FUNGSI REAL - 3sks1404 - Dr. H. Endang Cahya Mulyaning A., M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-09:30, MAT-4C, 39/50MT410 - TEORI DIFERENSIAL FUNGSI REAL - 3sks1913 - Prof. Siti Fatimah, S.Pd., M.Si., Ph.D.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-08:40, DIK KIMIA-S1-6AB, 14/40KI319 - PENGANTAR KIMIA LINGKUNGAN - 2sks2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '07:00-09:30, MAT-2C, 38/50MT307 - KALKULUS INTEGRAL - 3sks1324 - Dra. Encum Sumiaty, M.Si.Angkatan 2023D5051 - Matematika - S1', 17, '07:00-08:40, A, 44/43DK303 - KURIKULUM DAN PEMBELAJARAN - 2sks3224 - Budi Setiawan, M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(685, '65. 04.4B.03.001 - Ruang Kelas B - 301', '10:20-12:00, BIO-6AB, 0/30BI420 - BUDIDAYA TUMBUHAN - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '10:20-11:10', 5, '10:20-12:00, 2B, 28/40KU110 - PENDIDIKAN PANCASILA - 2sks3230 - Pitria Sopianingsih, M.Pd.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '10:20-12:00, FIS-2B, 7/40FI331 - FISIKA MATEMATIKA II - 4sks2019 - Drs. Dedi Sasmita, M.Si.Angkatan 2023D0251 - Pendidikan Fisika - S1', 17, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(686, '65. 04.4B.03.001 - Ruang Kelas B - 301', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(687, '65. 04.4B.03.001 - Ruang Kelas B - 301', '13:00-13:50', 8, '13:00-15:30, MAT-2A, 33/50MT307 - KALKULUS INTEGRAL - 3sks1324 - Dra. Encum Sumiaty, M.Si.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, FIS-2D, 0/0FI122 - FISIKA DASAR II - 4sks2232 - Prof. Dr. Endi Suhendi, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-15:30, MAT-2A, 34/50MT302 - GEOMETRI ANALITIK - 3sks2661 - Dr. Eyus Sudihartinih, M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, FIS-2C, 31/40KU110 - PENDIDIKAN PANCASILA - 2sks2733 - RATNA FITRIA, S.PD.,M.SI.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(688, '65. 04.4B.03.001 - Ruang Kelas B - 301', '15:30-18:00, KOM-4B, 10/40IK314 - TEKNIK PENGOLAHAN AUDIO DAN VIDEO - 3sks2900 - Eki Nugraha, S.Pd., M.Kom.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '15:30-17:10, MAT-2C, 36/50MT311 - ALJABAR LINIER - 4sks2696 - Imam Nugraha Albania, Ph.D.Angkatan 2023D5051 - Matematika - S1', 17, '15:30-16:20', 11, '15:30-17:10, KOM-C, 14/50IK515 - COMPUTATIONAL STATISTICS - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '15:30-17:10, DIK KIMIA-S1-6AB7, 12/40KI403 - PEMRODUKSIAN BAHAN AJAR KIMIA BERBASIS WEB - 2sks1975 - Muhamad Nurul Hana, S.Pd., M.Pd.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11),
(689, '65. 04.4B.03.001 - Ruang Kelas B - 301', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(690, '65. 04.4B.03.001 - Ruang Kelas B - 301', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(691, '65. 04.4B.03.001 - Ruang Kelas B - 301', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(692, '66. 04.4B.03.003 - Ruang Kelas B - 303', '07:00-08:40, BIO-4C, 52/60BI407 - EVOLUSI - 2sks1550 - Dr. Hj. Peristiwati, M.Kes.Angkatan 2022D5251 - Biologi - S1', 17, '07:00-09:30, MAT-4B, 49/50MT402 - PERSAMAAN DIFERENSIAL BIASA - 3sks1719 - Dr. H. Cece Kustiawan, M.Si.1719 - Dr. H. Cece Kustiawan, M.Si.3404 - Fitri Rahmawati, S.Pd., M.Sc.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, KIMIA-S1-2C, 37/55KI337 - STATISTIKA UNTUK KIMIA - 2sks1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '07:00-08:40, FIS-6B, 0/15FI471 - PENGELOLAAN LABORATORIUM FISIKA SEKOLAH - 2sks1737 - Drs. Iyon Suyana, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-08:40, 2A, 33/55KU110 - PENDIDIKAN PANCASILA - 2sks3104 - DADI MULYADI NUGRAHA, S.Pd., M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(693, '66. 04.4B.03.003 - Ruang Kelas B - 303', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(694, '66. 04.4B.03.003 - Ruang Kelas B - 303', '13:00-15:30, DIK KIMIA-S1-2A, 27/40KI348 - KIMIA ANORGANIK 1 - 3sks1414 - Dr. H. Asep Supriatna, M.Si.1414 - Dr. H. Asep Supriatna, M.Si.3400 - Miarti Khikmatun Nais, S.Pd., M.Pd.Angkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, FIS-4A2, 20/20FI253 - EVALUASI PEMBELAJARAN FISIKA - 3sks2179 - Dr. Hj. Winny Liliawati, M.Si.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '13:00-14:40, BIO-6C, 15/20BI433 - KOLEKSI HAYATI - 2sks1973 - Prof. Topik Hidayat, S.Pd., M.Si., Ph.D.Angkatan 2021D5251 - Biologi - S1', 17, '13:00-15:30, MAT-2B, 46/50MT302 - GEOMETRI ANALITIK - 3sks2405 - Dr. Tia Purniati, S.Pd, M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, MAT-4D, 46/50MT427 - KEWIRAUSAHAAN - 2sks1719 - Dr. H. Cece Kustiawan, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(695, '66. 04.4B.03.003 - Ruang Kelas B - 303', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(696, '66. 04.4B.03.003 - Ruang Kelas B - 303', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(697, '66. 04.4B.03.003 - Ruang Kelas B - 303', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(698, '67. 04.4B.03.004 - Ruang Kelas B - 304', '07:00-09:30, KIMIA-S1-2D, 37/40KI305 - KIMIA ANALITIK DASAR - 3sks1912 - Dr. Soja Siti Fatimah, S.Si., M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '07:00-09:30, KOM-C2, 53/80IK160 - ALGORITMA DAN PEMROGRAMAN 2 - 3sks2658 - Rosa Ariani Sukamto, M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, MAT-2C, 37/45KU110 - PENDIDIKAN PANCASILA - 2sks2733 - RATNA FITRIA, S.PD.,M.SI.Angkatan 2023D5051 - Matematika - S1', 17, '07:00-09:30, MAT-2D, 37/50MT307 - KALKULUS INTEGRAL - 3sks1914 - Dr. Entit Puspita, S.Pd., M.Si.1914 - Dr. Entit Puspita, S.Pd., M.Si.3404 - Fitri Rahmawati, S.Pd., M.Sc.Angkatan 2023D5051 - Matematika - S1', 17, '07:00-08:40, FIS-2D, 33/40KU110 - PENDIDIKAN PANCASILA - 2sks2567 - Muhamad Iqbal, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(699, '67. 04.4B.03.004 - Ruang Kelas B - 304', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(700, '67. 04.4B.03.004 - Ruang Kelas B - 304', '13:00-15:30, DIK KIMIA-S1-4B, 42/52KI345 - KIMIA ANALITIK 2 - 3sks2076 - Drs. Hokcu Suhanda, M.Si.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, KOM-4B, 39/50IK222 - PEMROGRAMAN BERORIENTASI OBJEK - 3sks3035 - Erlangga, S.Kom., M.T.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-14:40, KOM-C, 31/50IK410 - KEWIRAUSAHAAN ILMU KOMPUTER - 2sks2591 - Herbert, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, FIS-2D, 38/40FI341 - TERMODINAMIKA - 3sks2169 - Prof. Dr. Lilik Hasanah, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-14:40, 2B, 43/55KU110 - PENDIDIKAN PANCASILA - 2sks3104 - DADI MULYADI NUGRAHA, S.Pd., M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(701, '67. 04.4B.03.004 - Ruang Kelas B - 304', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(702, '67. 04.4B.03.004 - Ruang Kelas B - 304', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(703, '67. 04.4B.03.004 - Ruang Kelas B - 304', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(704, '68. 04.4B.03.005 - Ruang Kelas B - 305', '07:00-09:30, MAT-2B, 43/50MT317 - PROGRAM LINIER - 3sks1911 - Dr. Lukman, S.Si., M.Si.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, MAT-2D, 40/40MT311 - ALJABAR LINIER - 4sks2313 - Dr. Sumanang Muhtar Gozali, M.Si.Angkatan 2023D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-09:30, MAT-4C, 50/50MT409 - STATISTIKA INFERENSIAL TEORITIS - 3sks1089 - Drs. Nar Herrhyanto, M.Pd.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(705, '68. 04.4B.03.005 - Ruang Kelas B - 305', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(706, '68. 04.4B.03.005 - Ruang Kelas B - 305', '13:00-15:30, MAT-2D, 36/50MT316 - GEOMETRI - 3sks2695 - Utari Wijayanti, S.Kom., M.Si.2695 - Utari Wijayanti, S.Kom., M.Si.2588 - Husty Serviana Husain, S.Si., M.Si.Angkatan 2023D5051 - Matematika - S1', 17, '13:00-14:40, BIO-2A, 19/40BI206 - ANATOMI TUMBUHAN - 3sks1092 - Dr. Hj. Sariwulan Diana, M.Si.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '13:00-14:40, MAT-2AB3, 11/35MT321 - TEORI GRAF DASAR - 2sks0727 - Prof. H. Yaya Sukjaya Kusumah, M.Sc., Ph.D.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-15:30, KOM-4A, 39/50IK312 - REKAYASA PERANGKAT LUNAK - 3sks3035 - Erlangga, S.Kom., M.T.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-14:40, DIK KIMIA-S1-6AB9, 16/40KI502 - PENGEMBANGAN EKSPERIMEN KIMIA SEKOLAH - 2sks1742 - Drs. Ali Kusrijadi, M.Si.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(707, '68. 04.4B.03.005 - Ruang Kelas B - 305', '15:30-17:10, MAT-2A, 35/50MT319 - KEWIRAUSAHAAN - 2sks2350 - Dr. Hj. Aan Hasanah, M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '15:30-18:00, KOM-C1, 43/80IK270 - REKAYASA PERANGKAT LUNAK - 3sks2398 - Dr. Asep Wahyudin, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '15:30-18:00, KIMIA-S1-8C/D, 41/80KI521 - KIMIA DAN TEKNOLOGI NANO - 3sks2186 - Prof. Dr. Fitri Khoerunnisa, M.Si., Ph.D.Angkatan 2020D5351 - Kimia - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(708, '68. 04.4B.03.005 - Ruang Kelas B - 305', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(709, '68. 04.4B.03.005 - Ruang Kelas B - 305', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(710, '68. 04.4B.03.005 - Ruang Kelas B - 305', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(711, '69. 04.4B.04.004 - Ruang Kelas B - 405', '07:00-09:30, KOM-C1, 45/80IK160 - ALGORITMA DAN PEMROGRAMAN 2 - 3sks2658 - Rosa Ariani Sukamto, M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, BIO-2C, 18/40BI103 - STATISTIKA - 3sks2190 - Dr. Wahyu Surakusumah, M.T.Angkatan 2023D5251 - Biologi - S1', 17, '07:00-09:30, KOM-C2, 37/50IK400 - METODOLOGI PENELITIAN - 3sks2147 - Prof. Dr. Munir, M.IT.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, KKOM-8AB, 44/50IK397 - KEAMANAN SISTEM INFORMASI - 3sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, 4B, 34/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks3314 - Zaini Hafidh, S.Pd.I., M.Pd.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(712, '69. 04.4B.04.004 - Ruang Kelas B - 405', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(713, '69. 04.4B.04.004 - Ruang Kelas B - 405', '13:00-14:40, FIS-2C, 33/40FI123 - STATISTIKA - 2sks1810 - Prof. Dr. Andi Suhandi, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-15:30, KIMIA-S1-2C, 38/40KI303 - STRUKTUR DAN IKATAN KIMIA - 3sks2185 - Dr. Galuh Yuliani, M.Si., Ph.D.Angkatan 2023D5351 - Kimia - S1', 17, '13:00-15:30, MAT-4A, 49/50MT415 - MULTIMEDIA PENDIDIKAN MATEMATIKA - 3sks2661 - Dr. Eyus Sudihartinih, M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, DIK KIMIA-S1-2A, 35/40KI342 - KIMIA FISIKA 2 - 2sks3243 - Triannisa Rahmawati, M.SiAngkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(714, '69. 04.4B.04.004 - Ruang Kelas B - 405', '15:30-17:10, KOM-C2, 0/50IK180 - ALJABAR LINIER DAN MATRIKS - 2sks2399 - Dr. Muhamad Nursalman, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '15:30-18:00, KELAS A MBKM, 72/75MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(715, '69. 04.4B.04.004 - Ruang Kelas B - 405', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(716, '69. 04.4B.04.004 - Ruang Kelas B - 405', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(717, '69. 04.4B.04.004 - Ruang Kelas B - 405', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(718, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '07:00-07:50', 1, '07:00-10:20, KIMIA-S1-2C, 37/40KI306 - STRUKTUR DAN KEREAKTIFAN SENYAWA ORGANIK MONOFUNGSI - 4sks0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '07:00-09:30, S2PMAT1A, 14/20PS701 - STATISTIKA TERAPAN - 3sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2024P1261 - Pendidikan Matematika - S2', 17, '07:00-08:40, P.BIO-2A, 10/20BI710 - EKOLOGI DAN LINGKUNGAN - 2sks1190 - Dr. H. Saefudin, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '07:00-07:50', 1, '07:00-07:50, FIS-6AB, 15/20KM419 - PRAKTIK PENILAIAN HASIL BELAJAR - 4sks2181 - Dr. Hera Novia, M.T.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1),
(719, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(720, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '13:00-14:40, DIK KIMIA-S2-2, 10/25KI713 - KAPITA SELEKTA KIMIA ORGANIK - 2sks0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '13:00-15:30, KIMIA-S1-2D, 37/40KI303 - STRUKTUR DAN IKATAN KIMIA - 3sks1976 - Dr. H. Budiman Anwar, S.Si., M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-15:30, DIK KIMIA-S1-4A, 26/27KI301 - KIMIA SEKOLAH 1 - 3sks2176 - Dr. H. Wiji, M.Si.2176 - Dr. H. Wiji, M.Si.3400 - Miarti Khikmatun Nais, S.Pd., M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, S2PMAT1B, 1/15MT782 - MATEMATIKA DISKRIT DAN APLIKASINYA - 3sks2589 - Dr. Khusnul Novianingsih, S.Si., M.Si.Angkatan 2024P1261 - Pendidikan Matematika - S2', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(721, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '16:20-18:00, A22, 3/30IK732 - ANALISIS DATA - 2sks2808 - Dr. Rani Megasari, S.Kom., M.T.Angkatan 2022D0561 - Pendidikan Ilmu Komputer - S2', 17, '16:20-17:10', 12, '16:20-18:00, A22, 9/30IK711 - E-LEARNING DAN MEDIA PEMBELAJARAN - 2sks2687 - Dr. Budi Laksono Putro, S.Si., M.T.Angkatan 2022D0561 - Pendidikan Ilmu Komputer - S2', 17, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10, FIS-6AB, 8/20KM420 - PRAKTIK MANAJEMEN SEKOLAH - 2sks1134 - Prof. Dr. Parlindungan Sinaga, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '16:20-17:10', 12),
(722, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50, FIS-6AB, 16/20KM421 - PENGEMBANGAN EKSTRAKURIKULER - 2sks2660 - Dr. Ika Mustika Sari, M.PFis.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '18:00-18:50', 14),
(723, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(724, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(725, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '07:00-09:30, S2PMAT2A, 4/15MT773 - INOVASI PENDIDIKAN MATEMATIKA - 3sks1408 - Prof. Dr. Dra. Nurjanah, M.Pd.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '07:00-09:30, REG II B, 13/20SE761 - INOVASI PEMBELAJARAN IPA - 3sks1716 - Prof. Dr. Ida Kaniawati, M.Si.1716 - Prof. Dr. Ida Kaniawati, M.Si.0724 - Dr. Didi Teguh Chandra, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '07:00-07:50', 1, '07:00-09:30, AANVULLEN I, 2/20SE760 - PENGEMBANGAN PRAKTIKUM IPA - 3sks2809 - Eka Cahya Prima, M.T., Dr.Angkatan 2023P1071 - Pendidikan Ilmu Pengetahuan Alam - S3', 17, '07:00-08:40, S3PMAT1A3, 1/10MT833 - KAJIAN KONSEP-KONSEP ESENSIAL MATEMATIKA - 2sks1404 - Dr. H. Endang Cahya Mulyaning A., M.Si.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(726, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00, FIS-6AB, 17/20KM420 - PRAKTIK MANAJEMEN SEKOLAH - 2sks2584 - Dr. Achmad Samsudin, S.Pd., M.Pd.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '12:00-13:00', 7),
(727, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '13:00-14:40, 2R-A, 11/26PS703 - KAJIAN PEDAGOGIK - 2sks2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.Angkatan 2024P2761 - Pendidikan Fisika - S2', 17, '13:00-14:40, DIK KIMIA-S2-1, 22/25KI707 - KAPITA SELEKTA KIMIA FISIKA - 2sks0736 - Dr. Sri Mulyani, M.Si.Angkatan 2023P2861 - Pendidikan Kimia - S2', 17, '13:00-13:50', 8, '13:00-14:40, S3PMAT-2AB, 16/17PS703 - KAJIAN PEDAGOGIK - 2sks2312 - Prof. Al Jupri, S.Pd., M.Sc., Ph.D.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '13:00-14:40, P.BIO-2B, 18/20PS703 - KAJIAN PEDAGOGIK - 2sks1915 - Dr. Kusnadi, M.Si.1915 - Dr. Kusnadi, M.Si.1069 - Dr. H. Taufik Rahman, M.Pd.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-13:50, FIS-6AB, 9/20KM420 - PRAKTIK MANAJEMEN SEKOLAH - 2sks1119 - Drs. Agus Danawan, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-13:50', 8),
(728, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '14:40-15:30', 10, '14:40-16:20, KOM-4B, 21/50IK171 - STATISTIKA - 2sks2657 - Harsa Wara Prabawa, S.Si., M.Pd.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(729, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(730, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(731, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(732, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '07:00-08:40, DIK KIMIA-S2-2, 9/25KI711 - KAPITA SELEKTA KIMIA ANALITIK - 2sks2176 - Dr. H. Wiji, M.Si.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '07:00-08:40, S3PMAT1A1, 6/10MT833 - KAJIAN KONSEP-KONSEP ESENSIAL MATEMATIKA - 2sks0396 - Prof. Dr. H. Wahyudin, M.Pd.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, PILIHAN III, 7/30SE764 - PENGEMBANGAN SAINS, TEKNOLOGI DAN REKAYASA - 2sks2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.0724 - Dr. Didi Teguh Chandra, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pen', 17, '07:00-08:40, S2PMAT1A, 23/25PS611 - FILSAFAT ILMU - 2sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.Angkatan 2024P1261 - Pendidikan Matematika - S2', 17, '07:00-09:30, S2PMAT2B, 5/15MT787 - PENGEMBANGAN MEDIA PEMBELAJARAN MATEMATIKA BERBASIS TEKNOLOGI - 3sks0964 - Dr. Dian Usdiyana, M.Si.0964 - Dr. Dian Usdiyana, M.Si.2661 - Dr. Eyus Sudihartinih, M.Pd.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(733, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(734, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '13:00-14:40, P.BIO-2B, 7/20BI707 - BIOETIKA DAN PENDIDIKAN NILAI DALAM BIOLOGI - 2sks2173 - Prof. Dr. Yayan Sanjaya, M.Si.2173 - Prof. Dr. Yayan Sanjaya, M.Si.0508 - Prof. Dr. Hj. Nuryani Rustaman, M.Pd.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-15:30, S2PMAT-2B, 2/15MT771 - ANALISIS PROSES DAN HASIL PEMBELAJARAN MATEMATIKA - 3sks1654 - Prof. Dr. H. Tatang Herman, M.Ed.1654 - Prof. Dr. H. Tatang Herman, M.Ed.2350 - Dr. Hj. Aan Hasanah, M.Pd.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '13:00-14:40, P.BIO-2A, 7/20BI703 - PENGEMBANGAN BAHAN AJAR BIOLOGI - 2sks1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-15:30, S2PMAT1A, 12/15MT775 - ANALISIS MULTIVARIABEL - 3sks1913 - Prof. Siti Fatimah, S.Pd., M.Si., Ph.D.Angkatan 2024P1261 - Pendidikan Matematika - S2', 17, '13:00-14:40, P.BIO-2A, 19/20PS703 - KAJIAN PEDAGOGIK - 2sks1745 - Dr. rer. nat. Adi Rahmat, M.Si.1745 - Dr. rer. nat. Adi Rahmat, M.Si.1191 - Prof. Dr. H. Riandi, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(735, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '15:30-17:10, DIK KIMIA-S2-3-PIL, 0/25KI715 - PENDIDIKAN NILAI DALAM KIMIA - 2sks1978 - Dr. Wawan Wahyu, M.Pd.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '15:30-16:20', 11, '15:30-17:10, DIK KIMIA-S2-3, 0/25KI720 - KIMIA MATERIAL - 2sks2185 - Dr. Galuh Yuliani, M.Si., Ph.D.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11);
INSERT INTO `jadwal_ruangan` (`No`, `Span`, `Senin`, `status_senin`, `Selasa`, `status_selasa`, `Rabu`, `status_rabu`, `Kamis`, `status_kamis`, `Jumat`, `status_jumat`, `Sabtu`, `status_sabtu`, `Minggu`, `status_minggu`) VALUES
(736, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(737, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(738, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(739, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '07:00-07:50', 1, '07:00-09:30, S3PMAT1B3, 0/7MT824 - KAJIAN TEORETIS-PRAKTIS PROSES DAN HASIL BELAJAR DAN PEMBELAJARAN MATEMATIKA - 3sks1653 - Dr. Jarnawi Afgani Dahlan, M.Kes.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, DIK KIMIA-S2-3, 0/25KI722 - KIMIA PANGAN DAN OBAT-OBATAN - 2sks0735 - Prof. Dr. Florentina Maria Titin Supriyanti, M.Si.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '07:00-09:30, S2PMAT-2A, 15/23MT776 - PARADIGMA PENELITIAN PENDIDIKAN MATEMATIKA - 3sks0726 - Prof. Dr. H. Didi Suryadi, M.Ed.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(740, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(741, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '13:00-14:40, P.BIO-2A, 3/20BI707 - BIOETIKA DAN PENDIDIKAN NILAI DALAM BIOLOGI - 2sks0508 - Prof. Dr. Hj. Nuryani Rustaman, M.Pd.0508 - Prof. Dr. Hj. Nuryani Rustaman, M.Pd.2173 - Prof. Dr. Yayan Sanjaya, M.Si.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-15:30, AANVULLEN II, 1/20SE653 - PERENCANAAN PEMBELAJARAN IPA - 3sks1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '13:00-15:30, REG I, 9/20PS701 - STATISTIKA TERAPAN - 3sks1720 - Prof. Dr. H. Dadang Juandi, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '13:00-14:40, P.BIO-2B, 8/20BI710 - EKOLOGI DAN LINGKUNGAN - 2sks0731 - Prof. Dr. Hj. RR. Hertien Koosbandiah S., M.Sc.Angkatan 2023P2461 - Pendidikan Biologi - S2', 17, '13:00-15:30, S2-PMAT2A, 1/15MT787 - PENGEMBANGAN MEDIA PEMBELAJARAN MATEMATIKA BERBASIS TEKNOLOGI - 3sks1408 - Prof. Dr. Dra. Nurjanah, M.Pd.Angkatan 2023P1261 - Pendidikan Matematika - S2', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(742, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '15:30-17:10, DIK KIMIA-S2-3-PIL2, 2/25KI716 - PENDIDIKAN KIMIA BERKELANJUTAN - 2sks1739 - Dr. Hernani, M.Si.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '15:30-17:10, A23, 0/30IK720 - TEKNIK MULTIMEDIA - 2sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2023D0561 - Pendidikan Ilmu Komputer - S2', 17, '15:30-18:00, DIK KIMIA-S2-ANVULLEN, 1/25KI326 - STRATEGI PEMBELAJARAN KIMIA - 3sks1739 - Dr. Hernani, M.Si.Angkatan 2023P2861 - Pendidikan Kimia - S2', 17, '15:30-17:10, A22, 0/30IK752 - CODING DAN EXTREME PROGRAMMING - 2sks2231 - Dr. Yudi Wibisono, S.T., M.T.Angkatan 2022D0561 - Pendidikan Ilmu Komputer - S2', 17, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(743, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(744, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(745, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(746, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '07:00-08:40, S3PMAT2A, 10/15PS703 - KAJIAN PEDAGOGIK - 2sks0962 - Prof. Turmudi, M.Ed., M.Sc., Ph.D.0962 - Prof. Turmudi, M.Ed., M.Sc., Ph.D.0705 - Prof. Dr. Jozua Sabandar, M.A.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, S3PMAT-2A, 12/15MT831 - TEORI GRUP YANG DIBANGUN SECARA BERHINGGA - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2023P1271 - Pendidikan Matematika - S3', 17, '07:00-08:40, REG I, 14/20SE708 - TIK DALAM PEMBELAJARAN IPA - 2sks2169 - Prof. Dr. Lilik Hasanah, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '07:00-09:30, S3PMAT1A, 20/20PS801 - STATISTIKA DATA SAINS - 3sks1720 - Prof. Dr. H. Dadang Juandi, M.Si.Angkatan 2024P1271 - Pendidikan Matematika - S3', 17, '07:00-09:30, REG I A, 0/20SE701 - ANALISIS HASIL STUDI PENDIDIKAN IPA - 3sks1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(747, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(748, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '13:00-15:30, AANVULLEN II, 1/20SE654 - SIMULASI PEMBELAJARAN IPA - 3sks1741 - Prof. Dr. Hj. Diana Rochintaniawati, M.Ed.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '13:00-14:40, DIK KIMIA-S2-2, 10/25PS703 - KAJIAN PEDAGOGIK - 2sks0941 - Dr. Pupun Nuryani, M.Pd.Angkatan 2022P2861 - Pendidikan Kimia - S2', 17, '13:00-15:30, KIMIA-S2-1 M/H, 7/25PS709 - METODOLOGI PENELITIAN KIMIA - 3sks0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2023D5361 - Kimia - S2', 17, '13:00-14:40, PILIHAN III B, 1/20SE704 - BIOLOGI DALAM KONTEKS KURIKULUM SEKOLAH - 2sks1738 - Dr. Hj. Any Fitriani, M.Si.Angkatan 2023P1061 - Pendidikan Ilmu Pengetahuan Alam - S2', 17, '13:00-14:40, KIMIA-S2-2 M/H, 5/25KI725 - KARAKTERISASI DAN PENGUKURAN DALAM KIMIA - 2sks2177 - Dr. Iqbal Musthapa, M.Si.Angkatan 2023D5361 - Kimia - S2', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(749, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(750, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(751, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(752, '75. 04.4C.03.001 - Ruang Kelas C - 301', '07:00-09:30, MAT-2A, 33/40MT317 - PROGRAM LINIER - 3sks2315 - Fitriani Agustina, S.Si., M.Si.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '07:00-09:30, MAT-6CD (ALJABAR), 1/20MT511 - STRUKTUR GRUP DAN RING - 3sks2696 - Imam Nugraha Albania, Ph.D.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-09:30, MAT-4D, 47/50MT409 - STATISTIKA INFERENSIAL TEORITIS - 3sks1089 - Drs. Nar Herrhyanto, M.Pd.1089 - Drs. Nar Herrhyanto, M.Pd.3404 - Fitri Rahmawati, S.Pd., M.Sc.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-09:30, BIO-4B, 42/50BI318 - PERENCANAAN PEMBELAJARAN BIOLOGI - 3sks1746 - Prof. Dr. H. Ari Widodo, M.Ed.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-08:40, BIO-6AB, 10/30BI306 - ILMU GIZI - 2sks1838 - Dr. Mimin Nurjhani Kusumastuti, M.Pd.Angkatan 2021D0351 - Pendidikan Biologi - S1', 17, '07:00-10:20, MAT-6AB, 5/5KM415 - PRAKTIK PENILAIAN HASIL BELAJAR - 4sks2312 - Prof. Al Jupri, S.Pd., M.Sc., Ph.D.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(753, '75. 04.4C.03.001 - Ruang Kelas C - 301', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00, FIS-6AB, 17/20KM418 - PENGEMBANGAN BAHAN AJAR DAN MEDIA PENDIDIKAN - 4sks1321 - Dra. Hj. Heni Rusnayati, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '12:00-13:00', 7, '12:00-13:00', 7),
(754, '75. 04.4C.03.001 - Ruang Kelas C - 301', '13:00-15:30, KOM-C1, 46/50IK230 - DESIGN DAN PEMROGRAMAN WEB - 3sks2591 - Herbert, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, MAT-2C, 38/50MT317 - PROGRAM LINIER - 3sks2589 - Dr. Khusnul Novianingsih, S.Si., M.Si.Angkatan 2023D5051 - Matematika - S1', 17, '13:00-14:40, 2A, 41/50KU110 - PENDIDIKAN PANCASILA - 2sks0638 - Prof. Dr. H. Mupid, M.A.0638 - Prof. Dr. H. Mupid, M.A.2909 - Aang Supriatna, M.Pd.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, MAT-4D, 58/60MT407 - TEORI RING - 3sks1801 - Prof. Dr. Rizky Rosjanuardi, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(755, '75. 04.4C.03.001 - Ruang Kelas C - 301', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50, FIS-6AB, 8/10KM421 - PENGEMBANGAN EKSTRAKURIKULER - 2sks2178 - Lina Aviyanti, S.Pd., M.Si., Ph.D.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '18:00-18:50', 14, '18:00-18:50', 14),
(756, '75. 04.4C.03.001 - Ruang Kelas C - 301', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50, FIS-6AB, 10/10KM421 - PENGEMBANGAN EKSTRAKURIKULER - 2sks1382 - Dr. Muslim, M.Pd.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '19:00-19:50', 15, '19:00-19:50', 15),
(757, '75. 04.4C.03.001 - Ruang Kelas C - 301', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(758, '76. 04.4C.03.002 - Ruang Kelas C - 302', '07:00-09:30, KOM-C2, 42/50IK300 - PEMROGRAMAN VISUAL DAN PIRANTI BERGERAK - 3sks2231 - Dr. Yudi Wibisono, S.T., M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, FIS-6A, 2/40FI572 - FISIKA STATISTIKA - 3sks1737 - Drs. Iyon Suyana, M.Si.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '07:00-07:50', 1, '07:00-09:30, MAT-4B3, 16/16MT501 - EVALUASI PEMBELAJARAN MATEMATIKA - 3sks0934 - Prof. Dr. H. Sufyani Prabawanto, M.Ed.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, 4A, 42/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks2151 - Dr. Nani Hartini, M.Pd.Angkatan 2022D0151 - Pendidikan Matematika - S1', 17, '07:00-08:40, MAT-6B1, 6/6MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1914 - Dr. Entit Puspita, S.Pd., M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(759, '76. 04.4C.03.002 - Ruang Kelas C - 302', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(760, '77. 04.4C.03.003 - Ruang Kelas C - 303', '07:00-09:30, KOM-4A, 11/50IK281 - SISTEM OPERASI - 3sks2586 - Jajang Kusnendar, S.T., M.T.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-08:40, KOM-6A, 40/40IK271 - ETIKA PROFESI - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, KOM-CP, 18/50IK501 - PENGUJIAN DAN PEMELIHARAAN PERANGKAT LUNAK - 2sks3138 - Yudi Ahmad Hambali, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-08:40, MAT-6B5(1), 6/6MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1656 - Dr. Elah Nurlaelah, M.Si.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(761, '77. 04.4C.03.003 - Ruang Kelas C - 303', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(762, '77. 04.4C.03.003 - Ruang Kelas C - 303', '13:00-15:30, KIMIA-S1-2C, 37/40KI305 - KIMIA ANALITIK DASAR - 3sks1562 - Dra. Hj. Zackiyah, M.Si.Angkatan 2023D5351 - Kimia - S1', 17, '13:00-14:40, DIK KIMIA-S1-2A, 27/40KI340 - IKATAN KIMIA - 2sks3243 - Triannisa Rahmawati, M.SiAngkatan 2023D0451 - Pendidikan Kimia - S1', 17, '13:00-15:30, KOM-2A, 38/50IK221 - MATEMATIKA DISKRIT - 3sks1407 - Drs. H. Eka Fitrajaya Rahman, M.T.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-15:30, MAT-4C, 56/60MT406 - KALKULUS VEKTOR - 3sks1800 - Dr. Kusnandi, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '13:00-15:30, KIMIA-S1-6C/D HAYATI, 15/40KI522 - KIMIA MINYAK ATSIRI - 3sks0930 - Prof. Dr. H. R. Asep Kadarohman, M.Si.Angkatan 2021D5351 - Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(763, '77. 04.4C.03.003 - Ruang Kelas C - 303', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(764, '77. 04.4C.03.003 - Ruang Kelas C - 303', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(765, '77. 04.4C.03.003 - Ruang Kelas C - 303', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(766, '77. 04.4C.03.003 - Ruang Kelas C - 303', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(767, '78. 04.4C.03.004 - Ruang Kelas C - 304', '07:00-08:40, BIO-2A, 16/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks1044 - Drs. H. Dadang Machmudin, M.S.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, MAT-6CD (STATISTIKA), 10/30MT521 - ANALISIS REGRESI DAN KORELASI - 3sks1089 - Drs. Nar Herrhyanto, M.Pd.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-08:40, A, 37/45DK303 - KURIKULUM DAN PEMBELAJARAN - 2sks2870 - Dr. Hj. Linda Setiawati, M.PdAngkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-09:30, FIS-4B1, 20/20FI252 - LITERASI ICT DAN MEDIA PEMBELAJARAN FISIKA - 3sks3398 - Rizki Zakwandi, S.Pd., M.Pd.Angkatan 2022D0251 - Pendidikan Fisika - S1', 17, '07:00-08:40, IPA-4, 22/45DK303 - KURIKULUM DAN PEMBELAJARAN - 2sks1741 - Prof. Dr. Hj. Diana Rochintaniawati, M.Ed.Angkatan 2022D4051 - Pendidikan Ilmu Pengetahuan Alam - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(768, '78. 04.4C.03.004 - Ruang Kelas C - 304', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(769, '78. 04.4C.03.004 - Ruang Kelas C - 304', '13:00-15:30, KOM-6AB, 30/30IK358 - PERENCANAAN STRATEGI TEKNOLOGI INFORMASI - 3sks2687 - Dr. Budi Laksono Putro, S.Si., M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-15:30, FIS-2C, 32/40FI341 - TERMODINAMIKA - 3sks2232 - Prof. Dr. Endi Suhendi, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-15:30, KOM-2B, 41/50IK141 - STRUKTUR DATA - 3sks2990 - Erna Piantari,S.Kom.,M.T.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(770, '78. 04.4C.03.004 - Ruang Kelas C - 304', '15:30-18:00, A23, 0/30IK211 - SISTEM BASIS DATA - 3sks2687 - Dr. Budi Laksono Putro, S.Si., M.T.Angkatan 2023D0561 - Pendidikan Ilmu Komputer - S2', 17, '15:30-16:20', 11, '15:30-18:00, KOM-C1, 47/80IK170 - SISTEM BASIS DATA - 3sks2808 - Dr. Rani Megasari, S.Kom., M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '15:30-16:20', 11, '15:30-17:10, KOM-C12, 72/80IK190 - ETIKA PROFESI TEKNOLOGI INFORMASI DAN KOMUNIKASI - 2sks2591 - Herbert, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '15:30-16:20', 11, '15:30-16:20', 11),
(771, '78. 04.4C.03.004 - Ruang Kelas C - 304', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(772, '78. 04.4C.03.004 - Ruang Kelas C - 304', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(773, '78. 04.4C.03.004 - Ruang Kelas C - 304', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(774, '79. 04.4C.03.006 - Ruang Kelas C - 305', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, DIK KIMIA-S1-4B, 29/30KI328 - LITERASI ICT DAN MEDIA PEMBELAJARAN KIMIA - 3sks0722 - Drs. Rahmat Setiadi, M.Sc.0722 - Drs. Rahmat Setiadi, M.Sc.3399 - Atep Rian Nurhadi, S.Pd., M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-08:40, KOM-C, 15/50IK555 - DATA ANALYSIS - 2sks2399 - Dr. Muhamad Nursalman, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, MAT-6CD (ANALISIS), 1/20MT535 - DERET FUNGSI DAN INTEGRAL RIEMAN - 3sks2891 - Dr. Al Azhary Masta, S.Si., M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '07:00-08:40, MAT-6B7, 6/6MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1408 - Prof. Dr. Dra. Nurjanah, M.Pd.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(775, '79. 04.4C.03.006 - Ruang Kelas C - 305', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:50, MAT-6B4, 7/6MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks2405 - Dr. Tia Purniati, S.Pd, M.Pd.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '12:00-13:00', 7),
(776, '79. 04.4C.03.006 - Ruang Kelas C - 305', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(777, '79. 04.4C.03.006 - Ruang Kelas C - 305', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(778, '79. 04.4C.03.006 - Ruang Kelas C - 305', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(779, '80. 04.4C.03.008 - Ruang Kelas C - 307', '07:00-09:30, KOM-6A, 17/50IK338 - TEKNOLOGI VIDEO GRAPHI - 3sks2900 - Eki Nugraha, S.Pd., M.Kom.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, KIMIA-S1-4D, 43/55KI313 - METABOLISME BIOMOLEKUL DAN INFORMASI GENETIKA - 2sks2184 - Dr. Heli Siti Halimatul Munawaroh, M.Si.Angkatan 2022D5351 - Kimia - S1', 17, '07:00-08:40, BIO-4A, 40/45DK303 - KURIKULUM DAN PEMBELAJARAN - 2sks3224 - Budi Setiawan, M.Pd.Angkatan 2022D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, KOM-4AB, 13/40IK321 - SEMINAR - 3sks1407 - Drs. H. Eka Fitrajaya Rahman, M.T.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-08:40, 4B, 40/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks1954 - Dr. Hj. Cicih Sutarsih, M.Pd.Angkatan 2022D0451 - Pendidikan Kimia - S1', 17, '07:00-08:40, MAT-A1, 7/6MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1913 - Prof. Siti Fatimah, S.Pd., M.Si., Ph.D.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(780, '80. 04.4C.03.008 - Ruang Kelas C - 307', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(781, '80. 04.4C.03.008 - Ruang Kelas C - 307', '13:00-15:30, KOM-4A, 10/50IK314 - TEKNIK PENGOLAHAN AUDIO DAN VIDEO - 3sks2900 - Eki Nugraha, S.Pd., M.Kom.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-16:20, KOM-4B2, 14/25PT501 - MICROTEACHING - 4sks1407 - Drs. H. Eka Fitrajaya Rahman, M.T.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-15:30, KOM-C, 8/50IK572 - EXPERT SYSTEM - 3sks2808 - Dr. Rani Megasari, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(782, '80. 04.4C.03.008 - Ruang Kelas C - 307', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(783, '80. 04.4C.03.008 - Ruang Kelas C - 307', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(784, '80. 04.4C.03.008 - Ruang Kelas C - 307', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(785, '80. 04.4C.03.008 - Ruang Kelas C - 307', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(786, '81. 04.4C.03.009 - Ruang Kelas C - 308', '07:00-08:40, BIO-2B, 7/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks0717 - Dra. Soesy Asiah Soesilawaty, M.S.Angkatan 2023D0351 - Pendidikan Biologi - S1', 17, '07:00-09:30, KOM-C1, 42/50IK220 - SISTEM KONTROL - 3sks2399 - Dr. Muhamad Nursalman, M.T.Angkatan 2023D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, KOM-C, 1/50IK585 - FINANCIAL TECHNOLOGY - 3sks2231 - Dr. Yudi Wibisono, S.T., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, KOM-C, 20/50IK576 - APLIKASI SISTEM FUNGSI BISNIS - 2sks3240 - Ani Anisyah, M.T.Angkatan 2012D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, MAT-4C, 24/60MT407 - TEORI RING - 3sks2313 - Dr. Sumanang Muhtar Gozali, M.Si.Angkatan 2022D5051 - Matematika - S1', 17, '07:00-08:40, MAT6AB1, 4/15KM421 - PENGEMBANGAN EKSTRAKURIKULER - 2sks2661 - Dr. Eyus Sudihartinih, M.Pd.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '07:00-07:50', 1),
(787, '81. 04.4C.03.009 - Ruang Kelas C - 308', '09:30-11:10, KOM-C2, 36/50IK545 - BIG DATA PLATFORMS - 2sks2585 - Prof. Dr. Lala Septem Riza, M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '09:30-11:10, KOM-C, 79/80IK227 - TEKNIK RISET OPERASI - 2sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '09:30-12:00, KOM-2A, 37/50IK404 - STRATEGI PEMBELAJARAN ILMU KOMPUTER - 3sks2590 - Dr. Wahyudin, M.T.2590 - Dr. Wahyudin, M.T.3244 - Nusuki Syariati Fatimah, M.Pd.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '09:30-11:10, KOM-C2, 37/50IK420 - SEMINAR - 2sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '09:30-12:00, KOM-C, 24/80IK551 - MANAJEMEN KUALITAS PERANGKAT LUNAK - 3sks3138 - Yudi Ahmad Hambali, S.Kom., M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4),
(788, '81. 04.4C.03.009 - Ruang Kelas C - 308', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(789, '81. 04.4C.03.009 - Ruang Kelas C - 308', '13:00-14:40, KOM-2B, 38/50IK231 - PARADIGMA BERPIKIR KOMPUTASI - 2sks2657 - Harsa Wara Prabawa, S.Si., M.Pd.Angkatan 2023D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-15:30, KOM-C2, 37/50IK250 - SISTEM OPERASI - 3sks2400 - Dr. Rasim, S.T., M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, KELAS F, 15/40MA100 - MATEMATIKA, SAINS, TEKNOLOGI, DAN REKAYASA - 3sks2577 - Tuszie Widhiyanti, M.Pd., Ph.D.2577 - Tuszie Widhiyanti, M.Pd., Ph.D.2571 - Irma Rahma Suwarma, S.Si., M.Pd., Ph.D.Angkatan 2021D0251 - Pendidikan Fisika - S1', 17, '13:00-15:30, KOM-4B, 39/50IK401 - EVALUASI PEMBELAJARAN ILMU KOMPUTER - 3sks1713 - Dr. H. Enjang Ali Nurdin, M.Kom.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(790, '81. 04.4C.03.009 - Ruang Kelas C - 308', '15:30-18:00, KOM-6A, 21/40IK357 - INTERAKSI MANUSIA DAN KOMPUTER - 3sks2590 - Dr. Wahyudin, M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '15:30-18:50, MAT-6CD, 45/60KM448 - STRATEGI PENGEMBANGAN DIRI - 4sks1324 - Dra. Encum Sumiaty, M.Si.Angkatan 2021D5051 - Matematika - S1', 17, '15:30-16:20', 11, '15:30-18:00, KOM-23, 3/10IK402 - PERENCANAAN PEMBELAJARAN ILMU KOMPUTER - 3sks2590 - Dr. Wahyudin, M.T.Angkatan 2023D0561 - Pendidikan Ilmu Komputer - S2', 17, '15:30-16:20', 11, '15:30-17:10, MAT-6A6, 7/7MT401 - SEMINAR PENDIDIKAN MATEMATIKA - 2sks1652 - Prof. Suhendra, M.Ed., Ph.D.Angkatan 2021D0151 - Pendidikan Matematika - S1', 17, '15:30-16:20', 11),
(791, '81. 04.4C.03.009 - Ruang Kelas C - 308', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(792, '81. 04.4C.03.009 - Ruang Kelas C - 308', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(793, '82. 04.4C.03.010 - Ruang Kelas C - 309', '07:00-07:50', 1, '07:00-09:30, KOM-C1, 40/50IK300 - PEMROGRAMAN VISUAL DAN PIRANTI BERGERAK - 3sks2231 - Dr. Yudi Wibisono, S.T., M.T.Angkatan 2022D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-09:30, KOM-C, 2/50IK574 - JARINGAN KOMPUTER LANJUT - 3sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2020D5451 - Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(794, '82. 04.4C.03.010 - Ruang Kelas C - 309', '09:30-12:00, KOM-C, 16/50IK525 - SISTEM PENDUKUNG KEPUTUSAN - 3sks3240 - Ani Anisyah, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '09:30-11:10, KOM-C, 0/50IK513 - GAME PROGRAMMING - 2sks3240 - Ani Anisyah, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(795, '82. 04.4C.03.010 - Ruang Kelas C - 309', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(796, '82. 04.4C.03.010 - Ruang Kelas C - 309', '13:00-16:20, KOM-4B1, 25/25PT501 - MICROTEACHING - 4sks2147 - Prof. Dr. Munir, M.IT.2147 - Prof. Dr. Munir, M.IT.3244 - Nusuki Syariati Fatimah, M.Pd.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(797, '82. 04.4C.03.010 - Ruang Kelas C - 309', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(798, '82. 04.4C.03.010 - Ruang Kelas C - 309', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(799, '82. 04.4C.03.010 - Ruang Kelas C - 309', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(800, '82. 04.4C.03.010 - Ruang Kelas C - 309', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(801, '82. 04.4C.03.010 - Ruang Kelas C - 309', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(802, '83. 04.4C.03.012 - Ruang Kelas C - 309', '07:00-08:40, BIO-2D, 15/40BI207 - STRUKTUR HEWAN DAN TUBUH MANUSIA - 3sks2173 - Prof. Dr. Yayan Sanjaya, M.Si.Angkatan 2023D5251 - Biologi - S1', 17, '07:00-08:40, KOM-C, 24/50IK360 - KAPITA SELEKTA - 2sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-09:30, KOM-C, 23/50IK350 - INTERAKSI MANUSIA DAN KOMPUTER - 3sks3240 - Ani Anisyah, M.T.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '07:00-08:40, BIO-4C, 20/50BI305 - BIOLOGI MOLEKULER - 3sks1738 - Dr. Hj. Any Fitriani, M.Si.Angkatan 2022D5251 - Biologi - S1', 17, '07:00-08:40, 4B, 38/50DK304 - PENGELOLAAN PENDIDIKAN - 2sks1957 - Dr. H. Abubakar, M.Pd.Angkatan 2022D0551 - Pendidikan Ilmu Komputer - S1', 17, '07:00-07:50', 1, '07:00-07:50', 1),
(803, '83. 04.4C.03.012 - Ruang Kelas C - 309', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(804, '83. 04.4C.03.012 - Ruang Kelas C - 309', '13:00-14:40, KOM-C, 6/50IK544 - KOMPUTER FORENSIK - 2sks2401 - Rizky Rachman Judhie Putra, M.Kom.Angkatan 2021D5451 - Ilmu Komputer - S1', 17, '13:00-15:30, MAT-2B, 43/50MT316 - GEOMETRI - 3sks2312 - Prof. Al Jupri, S.Pd., M.Sc., Ph.D.2312 - Prof. Al Jupri, S.Pd., M.Sc., Ph.D.3403 - Yusuf Adhitya, S.Pd., M.Pd.Angkatan 2023D0151 - Pendidikan Matematika - S1', 17, '13:00-14:40, FIS-2C, 1/0FI122 - FISIKA DASAR II - 4sks1811 - Dr. Dadi Rusdiana, M.Si.Angkatan 2023D5151 - Fisika - S1', 17, '13:00-15:30, KOM-8AB, 38/50IK387 - IOT (INTERNET OF THING) - 3sks2990 - Erna Piantari,S.Kom.,M.T.Angkatan 2021D0551 - Pendidikan Ilmu Komputer - S1', 17, '13:00-14:40, DIK KIMIA-S1-6AB1, 0/40KI330 - FILSAFAT SAINS DAN SEJARAH KIMIA - 2sks0933 - Dr. Paed. H. Sjaeful Anwar0933 - Dr. Paed. H. Sjaeful Anwar0722 - Drs. Rahmat Setiadi, M.Sc.Angkatan 2021D0451 - Pendidikan Kimia - S1', 17, '13:00-13:50', 8, '13:00-13:50', 8),
(805, '83. 04.4C.03.012 - Ruang Kelas C - 309', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(806, '83. 04.4C.03.012 - Ruang Kelas C - 309', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(807, '84. 04.4B.03.010 - Microteaching Biologi B 309', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(808, '84. 04.4B.03.010 - Microteaching Biologi B 309', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(809, '84. 04.4B.03.010 - Microteaching Biologi B 309', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(810, '84. 04.4B.03.010 - Microteaching Biologi B 309', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(811, '84. 04.4B.03.010 - Microteaching Biologi B 309', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(812, '84. 04.4B.03.010 - Microteaching Biologi B 309', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(813, '84. 04.4B.03.010 - Microteaching Biologi B 309', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(814, '84. 04.4B.03.010 - Microteaching Biologi B 309', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(815, '84. 04.4B.03.010 - Microteaching Biologi B 309', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(816, '84. 04.4B.03.010 - Microteaching Biologi B 309', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(817, '84. 04.4B.03.010 - Microteaching Biologi B 309', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(818, '84. 04.4B.03.010 - Microteaching Biologi B 309', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(819, '84. 04.4B.03.010 - Microteaching Biologi B 309', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(820, '84. 04.4B.03.010 - Microteaching Biologi B 309', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(821, '84. 04.4B.03.010 - Microteaching Biologi B 309', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(822, '84. 04.4B.03.010 - Microteaching Biologi B 309', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(823, '85. 04.4C.02.012 - Lab STEAM Model C 208', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(824, '85. 04.4C.02.012 - Lab STEAM Model C 208', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(825, '85. 04.4C.02.012 - Lab STEAM Model C 208', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(826, '85. 04.4C.02.012 - Lab STEAM Model C 208', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(827, '85. 04.4C.02.012 - Lab STEAM Model C 208', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(828, '85. 04.4C.02.012 - Lab STEAM Model C 208', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(829, '85. 04.4C.02.012 - Lab STEAM Model C 208', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(830, '85. 04.4C.02.012 - Lab STEAM Model C 208', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(831, '85. 04.4C.02.012 - Lab STEAM Model C 208', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(832, '85. 04.4C.02.012 - Lab STEAM Model C 208', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(833, '85. 04.4C.02.012 - Lab STEAM Model C 208', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(834, '85. 04.4C.02.012 - Lab STEAM Model C 208', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(835, '85. 04.4C.02.012 - Lab STEAM Model C 208', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(836, '85. 04.4C.02.012 - Lab STEAM Model C 208', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(837, '85. 04.4C.02.012 - Lab STEAM Model C 208', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(838, '85. 04.4C.02.012 - Lab STEAM Model C 208', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(839, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(840, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(841, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(842, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(843, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(844, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(845, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(846, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(847, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(848, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(849, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(850, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(851, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(852, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(853, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(854, '86. 04.4A.02.021 - Smart Class Fpmipa E 210', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(855, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(856, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(857, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(858, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(859, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(860, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(861, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(862, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(863, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(864, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(865, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(866, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(867, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(868, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(869, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(870, '87. 04.4A.02.027 - Ruang Smartclass/ Digital Lab Kerjasama Okayama University', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16),
(871, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1, '07:00-07:50', 1),
(872, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2, '07:50-08:40', 2),
(873, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3, '08:40-09:30', 3),
(874, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4, '09:30-10:20', 4),
(875, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5, '10:20-11:10', 5),
(876, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6, '11:10-12:00', 6),
(877, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7, '12:00-13:00', 7),
(878, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8, '13:00-13:50', 8),
(879, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9, '13:50-14:40', 9),
(880, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10, '14:40-15:30', 10),
(881, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11, '15:30-16:20', 11),
(882, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12, '16:20-17:10', 12),
(883, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13, '17:10-18:00', 13),
(884, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14, '18:00-18:50', 14),
(885, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15, '19:00-19:50', 15),
(886, '88. 04.4A.03.021 - Ruang Smart Classroom NTNU Taiwan', '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16, '19:50-20:40', 16);

--
-- Triggers `jadwal_ruangan`
--
DELIMITER $$
CREATE TRIGGER `update_status_jumat` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Jumat) > 0 THEN
                SET NEW.status_jumat = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_jumat_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Jumat) > 0 THEN
                SET NEW.status_jumat = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_kamis` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Kamis) > 0 THEN
                SET NEW.status_kamis = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_kamis_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Kamis) > 0 THEN
                SET NEW.status_kamis = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_minggu` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Minggu) > 0 THEN
                SET NEW.status_minggu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_minggu_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Minggu) > 0 THEN
                SET NEW.status_minggu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_rabu` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Rabu) > 0 THEN
                SET NEW.status_rabu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_rabu_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Rabu) > 0 THEN
                SET NEW.status_rabu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_sabtu` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Sabtu) > 0 THEN
                SET NEW.status_sabtu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_sabtu_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Sabtu) > 0 THEN
                SET NEW.status_sabtu = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_selasa` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Selasa) > 0 THEN
                SET NEW.status_selasa = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_selasa_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Selasa) > 0 THEN
                SET NEW.status_selasa = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_senin` BEFORE INSERT ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Senin) > 0 THEN
                SET NEW.status_senin = 17;
            END IF;
        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_senin_update` BEFORE UPDATE ON `jadwal_ruangan` FOR EACH ROW BEGIN
            IF LOCATE(',', NEW.Senin) > 0 THEN
                SET NEW.status_senin = 17;
            END IF;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kapasitas_ruangan`
--

CREATE TABLE `kapasitas_ruangan` (
  `No` int(11) NOT NULL,
  `FAK` varchar(10) DEFAULT NULL,
  `FAKULTAS` varchar(50) DEFAULT NULL,
  `KODE_RUANG` varchar(20) DEFAULT NULL,
  `NAMA_RUANG` varchar(100) DEFAULT NULL,
  `KAPASITAS` int(11) DEFAULT NULL,
  `GEDUNG` varchar(50) DEFAULT NULL,
  `LANTAI` int(11) DEFAULT NULL,
  `JENIS_RUANG` varchar(50) DEFAULT NULL,
  `BERBAGI` varchar(10) DEFAULT NULL,
  `JAM_SKS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kapasitas_ruangan`
--

INSERT INTO `kapasitas_ruangan` (`No`, `FAK`, `FAKULTAS`, `KODE_RUANG`, `NAMA_RUANG`, `KAPASITAS`, `GEDUNG`, `LANTAI`, `JENIS_RUANG`, `BERBAGI`, `JAM_SKS`) VALUES
(1, 'D', 'FPMIPA', '04.4B.01.005', 'Lab Pembelajaran Kimia B 106', 20, 'FPMIPA B', 1, 'Laboratorium', 'Tidak Berb', 24),
(2, 'D', 'FPMIPA', '04.4A.03.013', 'Lab Komputer Matematika 1 E 305', 25, 'Gedung JICA FPMIPA A', 3, 'Laboratorium Komputer', 'Berbagi', 39),
(3, 'D', 'FPMIPA', '04.4A.03.014', 'Lab Komputer Matematika 2 E 306', 25, 'Gedung JICA FPMIPA A', 3, 'Laboratorium Komputer', 'Tidak Berb', 32),
(4, 'D', 'FPMIPA', '04.4C.01.004', 'Lab Komputer Matematika 3 C 104', 20, 'FPMIPA C', 1, 'Laboratorium Komputer', 'Berbagi', 22),
(5, 'D', 'FPMIPA', '04.4C.02.001', 'Lab Praktikum C 201', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 0),
(6, 'D', 'FPMIPA', '04.4C.02.002', 'Lab Kecerdasan Artifisial C 202', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 2),
(7, 'D', 'FPMIPA', '04.4C.02.004', 'Lab. Sistem Jaringan dan Teknik Komputer C 203', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 5),
(8, 'D', 'FPMIPA', '04.4C.02.005', 'Lab Umum C 204', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 6),
(9, 'D', 'FPMIPA', '04.4C.02.009', 'Lab Digital , Pedagogical dan Didactical C 205', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 0),
(10, 'D', 'FPMIPA', '04.4C.02.010', 'Lab Smart learning Environment C 206', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 0),
(11, 'D', 'FPMIPA', '04.4C.02.011', 'Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 20, 'FPMIPA C', 2, 'Laboratorium Komputer', 'Tidak Berb', 3),
(12, 'D', 'FPMIPA', '04.4C.03.007', 'Lab Multimedia Ilkom C 306', 20, 'FPMIPA C', 3, 'Laboratorium Komputer', 'Tidak Berb', 14),
(13, 'D', 'FPMIPA', '04.4A.01.006', 'Lab Struktur Tumbuhan N - 105', 40, 'Gedung JICA FPMIPA A', 1, 'Laboratorium MIPA', 'Tidak Berb', 35),
(14, 'D', 'FPMIPA', '04.4A.01.012', 'Lab Struktur Tumbuhan', 40, 'Gedung JICA FPMIPA A', 1, 'Laboratorium MIPA', 'Tidak Berb', 0),
(15, 'D', 'FPMIPA', '04.4A.01.013', 'Lab Fisiologi N 118', 40, 'Gedung JICA FPMIPA A', 1, 'Laboratorium MIPA', 'Tidak Berb', 14),
(16, 'D', 'FPMIPA', '04.4A.01.019', 'Lab Fisiologi N 118', 40, 'Gedung JICA FPMIPA A', 1, 'Laboratorium MIPA', 'Tidak Berb', 0),
(17, 'D', 'FPMIPA', '04.4A.02.008', 'Lab Struktur Hewan N 205', 40, 'Gedung JICA FPMIPA A', 2, 'Laboratorium MIPA', 'Tidak Berb', 21),
(18, 'D', 'FPMIPA', '04.4A.02.010', 'Lab Microbiologi N 210', 40, 'Gedung JICA FPMIPA A', 2, 'Laboratorium MIPA', 'Tidak Berb', 24),
(19, 'D', 'FPMIPA', '04.4A.02.016', 'Lab Bumi Antariksa N 220', 40, 'Gedung JICA FPMIPA A', 2, 'Laboratorium MIPA', 'Tidak Berb', 34),
(20, 'D', 'FPMIPA', '04.4A.03.007', 'Lab Elektronika N 305', 40, 'Gedung JICA FPMIPA A', 3, 'Laboratorium MIPA', 'Tidak Berb', 21),
(21, 'D', 'FPMIPA', '04.4A.03.008', 'Lab Fisika Dasar N 309', 40, 'Gedung JICA FPMIPA A', 3, 'Laboratorium MIPA', 'Tidak Berb', 18),
(22, 'D', 'FPMIPA', '04.4A.03.009', 'Lab Fisika Lanjut N 313', 20, 'Gedung JICA FPMIPA A', 3, 'Laboratorium MIPA', 'Tidak Berb', 13),
(23, 'D', 'FPMIPA', '04.4A.03.010', 'Lab Fisika Material N 318', 20, 'Gedung JICA FPMIPA A', 3, 'Laboratorium MIPA', 'Tidak Berb', 16),
(24, 'D', 'FPMIPA', '04.4A.03.015', 'Lab Pengajaran Matematika E 302', 25, 'Gedung JICA FPMIPA A', 3, 'Laboratorium MIPA', 'Tidak Berb', 6),
(25, 'D', 'FPMIPA', '04.4A.04.006', 'Lab Kimia dasar dan Analiktik N 405', 40, 'Gedung JICA FPMIPA A', 4, 'Laboratorium MIPA', 'Tidak Berb', 24),
(26, 'D', 'FPMIPA', '04.4A.04.008', 'Lab Proses Belajar dan Mengajar Kimia N 410', 40, 'Gedung JICA FPMIPA A', 4, 'Laboratorium MIPA', 'Tidak Berb', 22),
(27, 'D', 'FPMIPA', '04.4A.05.006', 'Lab Kimia Fisik Dan Anorganik N 505', 40, 'Gedung JICA FPMIPA A', 5, 'Laboratorium MIPA', 'Tidak Berb', 24),
(28, 'D', 'FPMIPA', '04.4A.05.008', 'Lab Kimia Organik Dan Bio KIMIA N 509', 40, 'Gedung JICA FPMIPA A', 5, 'Laboratorium MIPA', 'Tidak Berb', 24),
(29, 'D', 'FPMIPA', '04.4A.05.014', 'Lab Kimia Instrumen N 519', 20, 'Gedung JICA FPMIPA A', 5, 'Laboratorium MIPA', 'Tidak Berb', 24),
(30, 'D', 'FPMIPA', '04.4B.01.010', 'Lab Pembelajaran Fisika B 108', 20, 'FPMIPA B', 1, 'Laboratorium MIPA', 'Tidak Berb', 19),
(31, 'D', 'FPMIPA', '04.4B.02.001', 'Lab. Biologi IPSE B 201', 40, 'FPMIPA B', 2, 'Laboratorium MIPA', 'Tidak Berb', 15),
(32, 'D', 'FPMIPA', '04.4B.02.006', 'Lab Physics Ipse B - 207', 30, 'FPMIPA B', 2, 'Laboratorium MIPA', 'Tidak Berb', 29),
(33, 'D', 'FPMIPA', '04.4B.02.010', 'Lab Multimedia Ipse B 208', 30, 'FPMIPA B', 2, 'Laboratorium MIPA', 'Tidak Berb', 22),
(34, 'D', 'FPMIPA', '04.4B.02.014', 'Lab Chemistry ipse B 213', 40, 'FPMIPA B', 2, 'Laboratorium MIPA', 'Tidak Berb', 18),
(35, 'D', 'FPMIPA', '04.4B.03.006', 'Lab Riset Bioteknologi 1 B 307', 40, 'FPMIPA B', 3, 'Laboratorium MIPA', 'Tidak Berb', 0),
(36, 'D', 'FPMIPA', '04.4B.03.012', 'Lab Riset Bioteknologi 2 B 311', 40, 'FPMIPA B', 3, 'Laboratorium MIPA', 'Tidak Berb', 0),
(37, 'D', 'FPMIPA', '04.4B.03.015', 'Lab Pembelajaran Matematika B 314', 40, 'FPMIPA B', 3, 'Laboratorium MIPA', 'Tidak Berb', 0),
(38, 'D', 'FPMIPA', '04.4B.04.001', 'Lab Riset Kimia Makanan B 401', 20, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 0),
(39, 'D', 'FPMIPA', '04.4B.04.002', 'Lab Hayati Kimia B 403', 20, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 0),
(40, 'D', 'FPMIPA', '04.4B.04.003', 'Lab Riset Unggulan Kimia B 404', 20, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 0),
(41, 'D', 'FPMIPA', '04.4B.04.005', 'Lab Instrumentasi Fisika B 407', 40, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 12),
(42, 'D', 'FPMIPA', '04.4B.04.006', 'Lab Komputasi Fisika B 408', 40, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 10),
(43, 'D', 'FPMIPA', '04.4B.04.010', 'Lab Rekayasa Teknologi Fisika B 410', 40, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 9),
(44, 'D', 'FPMIPA', '04.4B.04.013', 'Lab Kimia Material dan Hayati B 413', 40, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 0),
(45, 'D', 'FPMIPA', '04.4B.04.014', 'Lab Riset Kimia Lingkungan B 414', 10, 'FPMIPA B', 4, 'Laboratorium MIPA', 'Tidak Berb', 0),
(46, 'D', 'FPMIPA', '04.4C.01.001', 'Ruang Laboratorium Digital C - 101 S2 / S3', 60, 'FPMIPA C', 1, 'Laboratorium MIPA', 'Tidak Berb', 0),
(47, 'D', 'FPMIPA', '04.4C.03.013', 'Lab Ekologi', 20, 'Bangunan Praktek Botani', 1, 'Laboratorium MIPA', 'Tidak Berb', 4),
(48, 'D', 'FPMIPA', '04.4D.01.001', 'Lab Ekologi', 20, 'Bangunan Praktek Botani', 1, 'Laboratorium MIPA', 'Tidak Berb', 15),
(49, 'D', 'FPMIPA', '04.4D.01.002', 'LaB Botani', 20, 'Bangunan Praktek Botani', 1, 'Laboratorium MIPA', 'Tidak Berb', 0),
(50, 'D', 'FPMIPA', '04.4A.04.022', 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 120, 'Gedung JICA FPMIPA A', 4, 'Ruang Kerja', 'Tidak Berb', 41),
(51, 'D', 'FPMIPA', '04.4A.03.016', 'Ruang Kelas E - 301 PPG Matematika', 40, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 43),
(52, 'D', 'FPMIPA', '04.4A.03.018', 'Ruang Kelas S- 306', 65, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 48),
(53, 'D', 'FPMIPA', '04.4A.03.019', 'Ruang Kelas S -305', 65, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 53),
(54, 'D', 'FPMIPA', '04.4A.03.020', 'Ruang Kelas S- 304', 65, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 64),
(55, 'D', 'FPMIPA', '04.4A.03.022', 'Ruang Kelas S - 302', 65, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 47),
(56, 'D', 'FPMIPA', '04.4A.03.023', 'Ruang Kelas S - 301', 65, 'Gedung JICA FPMIPA A', 3, 'Ruang Kuliah', 'Berbagi', 67),
(57, 'D', 'FPMIPA', '04.4A.04.023', 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 120, 'Gedung JICA FPMIPA A', 4, 'Ruang Kuliah', 'Tidak Berb', 43),
(58, 'D', 'FPMIPA', '04.4B.01.015', 'Ruang Kelas B 113 S2 , S3 Ujian S2 / S3', 15, 'FPMIPA B', 1, 'Ruang Kuliah', 'Berbagi', 51),
(59, 'D', 'FPMIPA', '04.4B.01.016', 'Ruang Kelas B 114 S2 , S3 Ujian S2 / S3', 25, 'FPMIPA B', 1, 'Ruang Kuliah', 'Berbagi', 61),
(60, 'D', 'FPMIPA', '04.4B.01.017', 'Ruang Kelas B 115 S2 , S3 Ujian S2 / S3', 25, 'FPMIPA B', 1, 'Ruang Kuliah', 'Berbagi', 54),
(61, 'D', 'FPMIPA', '04.4B.02.003', 'Ruang Kelas B - 203', 50, 'FPMIPA B', 2, 'Ruang Kuliah', 'Berbagi', 42),
(62, 'D', 'FPMIPA', '04.4B.02.005', 'Ruang Kelas B - 205', 70, 'FPMIPA B', 2, 'Ruang Kuliah', 'Berbagi', 48),
(63, 'D', 'FPMIPA', '04.4B.02.011', 'Ruang Kelas B 210', 30, 'FPMIPA B', 2, 'Ruang Kuliah', 'Berbagi', 0),
(64, 'D', 'FPMIPA', '04.4B.02.012', 'Ruang Kelas B 210', 30, 'FPMIPA B', 2, 'Ruang Kuliah', 'Tidak Berb', 47),
(65, 'D', 'FPMIPA', '04.4B.03.001', 'Ruang Kelas B - 301', 50, 'FPMIPA B', 3, 'Ruang Kuliah', 'Berbagi', 42),
(66, 'D', 'FPMIPA', '04.4B.03.003', 'Ruang Kelas B - 303', 50, 'FPMIPA B', 3, 'Ruang Kuliah', 'Berbagi', 52),
(67, 'D', 'FPMIPA', '04.4B.03.004', 'Ruang Kelas B - 304', 50, 'FPMIPA B', 3, 'Ruang Kuliah', 'Berbagi', 52),
(68, 'D', 'FPMIPA', '04.4B.03.005', 'Ruang Kelas B - 305', 70, 'FPMIPA B', 3, 'Ruang Kuliah', 'Berbagi', 44),
(69, 'D', 'FPMIPA', '04.4B.04.004', 'Ruang Kelas B - 405', 70, 'FPMIPA B', 4, 'Ruang Kuliah', 'Berbagi', 40),
(70, 'D', 'FPMIPA', '04.4C.01.002', 'Ruang Kelas C - 102 S2 / S3', 60, 'FPMIPA C', 1, 'Ruang Kuliah', 'Berbagi', 46),
(71, 'D', 'FPMIPA', '04.4C.01.003', 'Ruang Kelas C - 103 S2 / S3', 60, 'FPMIPA C', 1, 'Ruang Kuliah', 'Berbagi', 44),
(72, 'D', 'FPMIPA', '04.4C.01.009', 'Ruang Kelas C - 105 S2 / S3', 25, 'FPMIPA C', 1, 'Ruang Kuliah', 'Berbagi', 42),
(73, 'D', 'FPMIPA', '04.4C.01.010', 'Ruang Kelas C - 106 S2 / S3', 25, 'FPMIPA C', 1, 'Ruang Kuliah', 'Berbagi', 42),
(74, 'D', 'FPMIPA', '04.4C.01.011', 'Ruang Kelas C - 107 S2 / S3', 25, 'FPMIPA C', 1, 'Ruang Kuliah', 'Berbagi', 49),
(75, 'D', 'FPMIPA', '04.4C.03.001', 'Ruang Kelas C - 301', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 56),
(76, 'D', 'FPMIPA', '04.4C.03.002', 'Ruang Kelas C - 302', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 58),
(77, 'D', 'FPMIPA', '04.4C.03.003', 'Ruang Kelas C - 303', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 47),
(78, 'D', 'FPMIPA', '04.4C.03.004', 'Ruang Kelas C - 304', 30, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 45),
(79, 'D', 'FPMIPA', '04.4C.03.006', 'Ruang Kelas C - 305', 22, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 51),
(80, 'D', 'FPMIPA', '04.4C.03.008', 'Ruang Kelas C - 307', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 42),
(81, 'D', 'FPMIPA', '04.4C.03.009', 'Ruang Kelas C - 308', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 50),
(82, 'D', 'FPMIPA', '04.4C.03.010', 'Ruang Kelas C - 309', 65, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 15),
(83, 'D', 'FPMIPA', '04.4C.03.012', 'Ruang Kelas C - 309', 60, 'FPMIPA C', 3, 'Ruang Kuliah', 'Berbagi', 51),
(84, 'D', 'FPMIPA', '04.4B.03.010', 'Microteaching Biologi B 309', 40, 'FPMIPA B', 3, 'Ruang Microteaching', 'Tidak Berb', 0),
(85, 'D', 'FPMIPA', '04.4C.02.012', 'Lab STEAM Model C 208', 20, 'FPMIPA C', 2, 'Ruang Microteaching', 'Tidak Berb', 0),
(86, 'D', 'FPMIPA', '04.4A.02.021', 'Smart Class Fpmipa E 210', 27, 'Gedung JICA FPMIPA A', 2, 'Smart Class', 'Tidak Berb', 0),
(87, 'D', 'FPMIPA', '04.4A.02.027', 'Ruang Smartclass/ Digital Lab Kerjasama Okayama University', 25, 'Gedung JICA FPMIPA A', 2, 'Smart Class', 'Tidak Berb', 0),
(88, 'D', 'FPMIPA', '04.4A.03.021', 'Ruang Smart Classroom NTNU Taiwan', 65, 'Gedung JICA FPMIPA A', 3, 'Smart Class', 'Tidak Berb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_prodi`
--

CREATE TABLE `kelas_prodi` (
  `id` int(11) NOT NULL,
  `span` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_prodi`
--

INSERT INTO `kelas_prodi` (`id`, `span`, `program_studi`, `jumlah`) VALUES
(1, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', 'Kim', 8),
(2, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', 'P.Kim', 8),
(3, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', 'Mtk', 11),
(4, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', 'P.Mtk', 4),
(5, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', 'Mtk', 10),
(6, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', 'P.Mtk', 2),
(7, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', 'Mtk', 8),
(8, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', 'P.Mtk', 2),
(9, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', 'Ilkom', 1),
(10, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', 'P.Ilkom', 1),
(11, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'Ilkom', 1),
(12, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'P.Ilkom', 1),
(13, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'Ipse', 1),
(14, '8. 04.4C.02.005 - Lab Umum C 204', 'Ilkom', 2),
(15, '8. 04.4C.02.005 - Lab Umum C 204', 'P.Ilkom', 2),
(16, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 'Ilkom', 1),
(17, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 'P.Ilkom', 1),
(18, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'Ilkom', 4),
(19, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'P.Ilkom', 2),
(20, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'Kim', 1),
(21, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', 'Bio', 11),
(22, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', 'P.Bio', 8),
(23, '15. 04.4A.01.013 - Lab Fisiologi N 118', 'Bio', 4),
(24, '15. 04.4A.01.013 - Lab Fisiologi N 118', 'P.Bio', 4),
(25, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', 'Bio', 7),
(26, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', 'P.Bio', 4),
(27, '18. 04.4A.02.010 - Lab Microbiologi N 210', 'Bio', 8),
(28, '18. 04.4A.02.010 - Lab Microbiologi N 210', 'P.Bio', 4),
(29, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', 'Fis', 13),
(30, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', 'P.Fis', 2),
(31, '20. 04.4A.03.007 - Lab Elektronika N 305', 'Fis', 6),
(32, '20. 04.4A.03.007 - Lab Elektronika N 305', 'P.Fis', 3),
(33, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', 'Fis', 7),
(34, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', 'P.Fis', 3),
(35, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', 'Fis', 4),
(36, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', 'P.Fis', 1),
(37, '23. 04.4A.03.010 - Lab Fisika Material N 318', 'Fis', 4),
(38, '23. 04.4A.03.010 - Lab Fisika Material N 318', 'P.Fis', 2),
(39, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', 'Mtk', 2),
(40, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', 'Kim', 4),
(41, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', 'P.Kim', 2),
(42, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', 'Kim', 4),
(43, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', 'P.Kim', 4),
(44, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', 'Kim', 4),
(45, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', 'P.Kim', 2),
(46, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', 'Kim', 4),
(47, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', 'P.Kim', 2),
(48, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', 'Kim', 4),
(49, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', 'P.Kim', 2),
(50, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', 'Fis', 7),
(51, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', 'P.Fis', 7),
(52, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', 'Ipse', 3),
(53, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', 'Ipse', 6),
(54, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', 'Ipse', 5),
(55, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', 'Ipse', 3),
(56, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', 'Fis', 5),
(57, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', 'P.Fis', 2),
(58, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', 'Fis', 3),
(59, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', 'Fis', 4),
(60, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', 'P.Fis', 3),
(61, '47. 04.4C.03.013 - Lab Ekologi', 'Bio', 2),
(62, '48. 04.4D.01.001 - Lab Ekologi', 'Bio', 5),
(63, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'Ilkom', 4),
(64, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'Bio', 5),
(65, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'P.Bio', 1),
(66, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'P.Ilkom', 1),
(67, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'Kim', 2),
(68, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'P.Kim', 2),
(69, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'Mtk', 2),
(70, '50. 04.4A.04.022 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 'P.Mtk', 1),
(71, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'Mtk', 9),
(72, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'P.Mtk', 7),
(73, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'Kim', 1),
(74, '51. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'P.Kim', 1),
(75, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'Ilkom', 4),
(76, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'P.Ilkom', 1),
(77, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'Kim', 3),
(78, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'Bio', 2),
(79, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'Fis', 3),
(80, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'P.Fis', 3),
(81, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'Mtk', 3),
(82, '52. 04.4A.03.018 - Ruang Kelas S- 306', 'P.Mtk', 2),
(83, '53. 04.4A.03.019 - Ruang Kelas S -305', 'Kim', 1),
(84, '53. 04.4A.03.019 - Ruang Kelas S -305', 'P.Kim', 1),
(85, '53. 04.4A.03.019 - Ruang Kelas S -305', 'Fis', 3),
(86, '53. 04.4A.03.019 - Ruang Kelas S -305', 'P.Fis', 2),
(87, '53. 04.4A.03.019 - Ruang Kelas S -305', 'Bio', 1),
(88, '53. 04.4A.03.019 - Ruang Kelas S -305', 'P.Bio', 1),
(89, '53. 04.4A.03.019 - Ruang Kelas S -305', 'Ilkom', 4),
(90, '53. 04.4A.03.019 - Ruang Kelas S -305', 'P.Ilkom', 1),
(91, '53. 04.4A.03.019 - Ruang Kelas S -305', 'Mtk', 1),
(92, '53. 04.4A.03.019 - Ruang Kelas S -305', 'P.Mtk', 1),
(93, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'Bio', 2),
(94, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'P.Bio', 2),
(95, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'Mtk', 2),
(96, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'P.Mtk', 2),
(97, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'Ilkom', 1),
(98, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'Kim', 2),
(99, '54. 04.4A.03.020 - Ruang Kelas S- 304', 'P.Kim', 2),
(100, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'Fis', 1),
(101, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'P.Fis', 1),
(102, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'Bio', 1),
(103, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'Kim', 2),
(104, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'P.Kim', 2),
(105, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'Mtk', 3),
(106, '55. 04.4A.03.022 - Ruang Kelas S - 302', 'P.Mtk', 3),
(107, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'Mtk', 3),
(108, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'P.Mtk', 2),
(109, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'Fis', 2),
(110, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'P.Fis', 1),
(111, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'Kim', 2),
(112, '56. 04.4A.03.023 - Ruang Kelas S - 301', 'P.Kim', 2),
(113, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'Ilkom', 6),
(114, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'Kim', 3),
(115, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'P.Ilkom', 2),
(116, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'P.Kim', 1),
(117, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'Bio', 3),
(118, '57. 04.4A.04.023 - Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 'P.Bio', 3),
(119, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'Mtk', 9),
(120, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'P.Mtk', 9),
(121, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'Ipse', 2),
(122, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'Bio', 1),
(123, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'P.Bio', 1),
(124, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'Mtk', 2),
(125, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'P.Mtk', 2),
(126, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'Ipse', 3),
(127, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'Kim', 4),
(128, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'P.Kim', 2),
(129, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'Mtk', 13),
(130, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'P.Mtk', 13),
(131, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'Ipse', 2),
(132, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'Bio', 5),
(133, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'P.Bio', 3),
(134, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'Mtk', 1),
(135, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'P.Mtk', 1),
(136, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'Kim', 2),
(137, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'P.Kim', 1),
(138, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'Fis', 2),
(139, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'P.Fis', 1),
(140, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'Bio', 3),
(141, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'P.Bio', 1),
(142, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'Ilkom', 6),
(143, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'P.Ilkom', 2),
(144, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'Kim', 2),
(145, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'Mtk', 1),
(146, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'P.Mtk', 1),
(147, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'P.Kim', 1),
(148, '64. 04.4B.02.012 - Ruang Kelas B 210', 'Ilkom', 1),
(149, '64. 04.4B.02.012 - Ruang Kelas B 210', 'Fis', 3),
(150, '64. 04.4B.02.012 - Ruang Kelas B 210', 'P.Fis', 3),
(151, '64. 04.4B.02.012 - Ruang Kelas B 210', 'Kim', 2),
(152, '64. 04.4B.02.012 - Ruang Kelas B 210', 'P.Kim', 2),
(153, '64. 04.4B.02.012 - Ruang Kelas B 210', 'Mtk', 2),
(154, '64. 04.4B.02.012 - Ruang Kelas B 210', 'P.Mtk', 2),
(155, '64. 04.4B.02.012 - Ruang Kelas B 210', 'Ipse', 1),
(156, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'Mtk', 7),
(157, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'Kim', 3),
(158, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'P.Kim', 3),
(159, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'P.Mtk', 3),
(160, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'Bio', 1),
(161, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'P.Bio', 1),
(162, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'Fis', 3),
(163, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'P.Fis', 1),
(164, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'Ilkom', 2),
(165, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'P.Ilkom', 1),
(166, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'Bio', 2),
(167, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'Mtk', 4),
(168, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'P.Mtk', 3),
(169, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'Kim', 2),
(170, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'Fis', 2),
(171, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'P.Fis', 2),
(172, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'P.Kim', 1),
(173, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'Kim', 2),
(174, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'Ilkom', 3),
(175, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'Mtk', 3),
(176, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'Fis', 2),
(177, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'P.Kim', 1),
(178, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'P.Ilkom', 1),
(179, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'P.Mtk', 1),
(180, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'Mtk', 6),
(181, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'P.Mtk', 3),
(182, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'Bio', 1),
(183, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'P.Bio', 1),
(184, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'Ilkom', 2),
(185, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'P.Ilkom', 1),
(186, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'Kim', 2),
(187, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'P.Kim', 1),
(188, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'Ilkom', 5),
(189, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'Bio', 1),
(190, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'P.Ilkom', 2),
(191, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'Fis', 2),
(192, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'P.Fis', 1),
(193, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'Kim', 2),
(194, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'Mtk', 1),
(195, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'P.Mtk', 1),
(196, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'P.Kim', 1),
(197, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'Kim', 4),
(198, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'Mtk', 2),
(199, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'P.Mtk', 2),
(200, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'Bio', 1),
(201, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'P.Bio', 1),
(202, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'Fis', 3),
(203, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'P.Fis', 3),
(204, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'P.Kim', 2),
(205, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'Ilkom', 2),
(206, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'P.Ilkom', 2),
(207, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Mtk', 3),
(208, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'P.Mtk', 3),
(209, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Ipse', 2),
(210, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Fis', 3),
(211, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'P.Fis', 3),
(212, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Kim', 1),
(213, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'P.Kim', 1),
(214, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Bio', 1),
(215, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'P.Bio', 1),
(216, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'Ilkom', 1),
(217, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'P.Ilkom', 1),
(218, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'Kim', 3),
(219, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'P.Kim', 3),
(220, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'Mtk', 5),
(221, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'P.Mtk', 5),
(222, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'Ipse', 1),
(223, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'Bio', 3),
(224, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'P.Bio', 3),
(225, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'Mtk', 3),
(226, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'P.Mtk', 3),
(227, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'Kim', 3),
(228, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'P.Kim', 3),
(229, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'Bio', 2),
(230, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'P.Bio', 2),
(231, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'Ipse', 2),
(232, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'Ilkom', 2),
(233, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'P.Ilkom', 2),
(234, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'Mtk', 3),
(235, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'P.Mtk', 3),
(236, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'Ipse', 4),
(237, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'Kim', 3),
(238, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'P.Kim', 1),
(239, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'Mtk', 6),
(240, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'P.Mtk', 2),
(241, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'Bio', 2),
(242, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'P.Bio', 2),
(243, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'Fis', 3),
(244, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'P.Fis', 3),
(245, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'Ilkom', 2),
(246, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'Ilkom', 1),
(247, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'Fis', 1),
(248, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'P.Fis', 1),
(249, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'Mtk', 3),
(250, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'P.Mtk', 3),
(251, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'Ilkom', 4),
(252, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'P.Ilkom', 3),
(253, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'Mtk', 2),
(254, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'P.Mtk', 1),
(255, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'Kim', 3),
(256, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'P.Kim', 1),
(257, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'Bio', 1),
(258, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'P.Bio', 1),
(259, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'Mtk', 1),
(260, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'Fis', 3),
(261, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'P.Fis', 2),
(262, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'Ipse', 1),
(263, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'Ilkom', 5),
(264, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'P.Ilkom', 3),
(265, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'Kim', 1),
(266, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'P.Kim', 1),
(267, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'Ilkom', 1),
(268, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'Mtk', 3),
(269, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'P.Mtk', 2),
(270, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'Ilkom', 5),
(271, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'P.Ilkom', 4),
(272, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'Kim', 2),
(273, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'Bio', 1),
(274, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'P.Bio', 1),
(275, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'P.Kim', 1),
(276, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'Mtk', 1),
(277, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'P.Mtk', 1),
(278, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'Bio', 1),
(279, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'P.Bio', 1),
(280, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'Ilkom', 13),
(281, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'Mtk', 4),
(282, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'P.Mtk', 2),
(283, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'P.Ilkom', 5),
(284, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'Fis', 1),
(285, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'P.Fis', 1),
(286, '82. 04.4C.03.010 - Ruang Kelas C - 309', 'Ilkom', 5),
(287, '82. 04.4C.03.010 - Ruang Kelas C - 309', 'P.Ilkom', 1),
(288, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'Bio', 2),
(289, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'Ilkom', 5),
(290, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'P.Ilkom', 2),
(291, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'Mtk', 1),
(292, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'P.Mtk', 1),
(293, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'Fis', 1),
(294, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'Kim', 1),
(295, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'P.Kim', 1),
(296, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', 'K', 8),
(297, '1. 04.4B.01.005 - Lab Pembelajaran Kimia B 106', 'PK', 8),
(298, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', 'M', 11),
(299, '2. 04.4A.03.013 - Lab Komputer Matematika 1 E 305', 'PM', 4),
(300, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', 'M', 10),
(301, '3. 04.4A.03.014 - Lab Komputer Matematika 2 E 306', 'PM', 2),
(302, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', 'M', 8),
(303, '4. 04.4C.01.004 - Lab Komputer Matematika 3 C 104', 'PM', 2),
(304, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', 'IK', 1),
(305, '6. 04.4C.02.002 - Lab Kecerdasan Artifisial C 202', 'PIK', 1),
(306, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'IK', 1),
(307, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'PIK', 1),
(308, '7. 04.4C.02.004 - Lab. Sistem Jaringan dan Teknik Komputer C 203', 'PIPA', 1),
(309, '8. 04.4C.02.005 - Lab Umum C 204', 'IK', 2),
(310, '8. 04.4C.02.005 - Lab Umum C 204', 'PIK', 2),
(311, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 'IK', 1),
(312, '11. 04.4C.02.011 - Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 'PIK', 1),
(313, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'IK', 4),
(314, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'PIK', 2),
(315, '12. 04.4C.03.007 - Lab Multimedia Ilkom C 306', 'K', 1),
(316, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', 'B', 11),
(317, '13. 04.4A.01.006 - Lab Struktur Tumbuhan N - 105', 'PB', 8),
(318, '15. 04.4A.01.013 - Lab Fisiologi N 118', 'B', 4),
(319, '15. 04.4A.01.013 - Lab Fisiologi N 118', 'PB', 4),
(320, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', 'B', 7),
(321, '17. 04.4A.02.008 - Lab Struktur Hewan N 205', 'PB', 4),
(322, '18. 04.4A.02.010 - Lab Microbiologi N 210', 'B', 8),
(323, '18. 04.4A.02.010 - Lab Microbiologi N 210', 'PB', 4),
(324, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', 'F', 13),
(325, '19. 04.4A.02.016 - Lab Bumi Antariksa N 220', 'PF', 2),
(326, '20. 04.4A.03.007 - Lab Elektronika N 305', 'F', 6),
(327, '20. 04.4A.03.007 - Lab Elektronika N 305', 'PF', 3),
(328, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', 'F', 7),
(329, '21. 04.4A.03.008 - Lab Fisika Dasar N 309', 'PF', 3),
(330, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', 'F', 4),
(331, '22. 04.4A.03.009 - Lab Fisika Lanjut N 313', 'PF', 1),
(332, '23. 04.4A.03.010 - Lab Fisika Material N 318', 'F', 4),
(333, '23. 04.4A.03.010 - Lab Fisika Material N 318', 'PF', 2),
(334, '24. 04.4A.03.015 - Lab Pengajaran Matematika E 302', 'M', 2),
(335, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', 'K', 4),
(336, '25. 04.4A.04.006 - Lab Kimia dasar dan Analiktik N 405', 'PK', 2),
(337, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', 'K', 4),
(338, '26. 04.4A.04.008 - Lab Proses Belajar dan Mengajar Kimia N 410', 'PK', 4),
(339, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', 'K', 4),
(340, '27. 04.4A.05.006 - Lab Kimia Fisik Dan Anorganik N 505', 'PK', 2),
(341, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', 'K', 4),
(342, '28. 04.4A.05.008 - Lab Kimia Organik Dan Bio KIMIA N 509', 'PK', 2),
(343, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', 'K', 4),
(344, '29. 04.4A.05.014 - Lab Kimia Instrumen N 519', 'PK', 2),
(345, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', 'F', 7),
(346, '30. 04.4B.01.010 - Lab Pembelajaran Fisika B 108', 'PF', 7),
(347, '31. 04.4B.02.001 - Lab. Biologi IPSE B 201', 'PIPA', 3),
(348, '32. 04.4B.02.006 - Lab Physics Ipse B - 207', 'PIPA', 6),
(349, '33. 04.4B.02.010 - Lab Multimedia Ipse B 208', 'PIPA', 5),
(350, '34. 04.4B.02.014 - Lab Chemistry ipse B 213', 'PIPA', 3),
(351, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', 'F', 5),
(352, '41. 04.4B.04.005 - Lab Instrumentasi Fisika B 407', 'PF', 2),
(353, '42. 04.4B.04.006 - Lab Komputasi Fisika B 408', 'F', 3),
(354, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', 'F', 4),
(355, '43. 04.4B.04.010 - Lab Rekayasa Teknologi Fisika B 410', 'PF', 3),
(356, '47. 04.4C.03.013 - Lab Ekologi', 'B', 2),
(357, '48. 04.4D.01.001 - Lab Ekologi', 'B', 5),
(358, '50. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'M', 9),
(359, '50. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'PM', 7),
(360, '50. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'K', 1),
(361, '50. 04.4A.03.016 - Ruang Kelas E - 301 PPG Matematika', 'PK', 1),
(362, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'IK', 4),
(363, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'PIK', 1),
(364, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'K', 3),
(365, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'B', 2),
(366, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'F', 3),
(367, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'PF', 3),
(368, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'M', 3),
(369, '51. 04.4A.03.018 - Ruang Kelas S- 306', 'PM', 2),
(370, '52. 04.4A.03.019 - Ruang Kelas S -305', 'K', 1),
(371, '52. 04.4A.03.019 - Ruang Kelas S -305', 'PK', 1),
(372, '52. 04.4A.03.019 - Ruang Kelas S -305', 'F', 3),
(373, '52. 04.4A.03.019 - Ruang Kelas S -305', 'PF', 2),
(374, '52. 04.4A.03.019 - Ruang Kelas S -305', 'B', 1),
(375, '52. 04.4A.03.019 - Ruang Kelas S -305', 'PB', 1),
(376, '52. 04.4A.03.019 - Ruang Kelas S -305', 'IK', 4),
(377, '52. 04.4A.03.019 - Ruang Kelas S -305', 'PIK', 1),
(378, '52. 04.4A.03.019 - Ruang Kelas S -305', 'M', 1),
(379, '52. 04.4A.03.019 - Ruang Kelas S -305', 'PM', 1),
(380, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'B', 2),
(381, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'PB', 2),
(382, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'M', 2),
(383, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'PM', 2),
(384, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'IK', 1),
(385, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'K', 2),
(386, '53. 04.4A.03.020 - Ruang Kelas S- 304', 'PK', 2),
(387, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'F', 1),
(388, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'PF', 1),
(389, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'B', 1),
(390, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'K', 2),
(391, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'PK', 2),
(392, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'M', 3),
(393, '54. 04.4A.03.022 - Ruang Kelas S - 302', 'PM', 3),
(394, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'M', 3),
(395, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'PM', 2),
(396, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'F', 2),
(397, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'PF', 1),
(398, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'K', 2),
(399, '55. 04.4A.03.023 - Ruang Kelas S - 301', 'PK', 2),
(400, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'IK', 4),
(401, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'B', 5),
(402, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'PB', 1),
(403, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'PIK', 1),
(404, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'K', 2),
(405, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'PK', 2),
(406, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'M', 2),
(407, '56. 04.4A.04.022 - Ruang Kuliah FPMIPA (E - 406)', 'PM', 1),
(408, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'IK', 6),
(409, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'K', 3),
(410, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'PIK', 2),
(411, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'PK', 1),
(412, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'B', 3),
(413, '57. 04.4A.04.023 - Ruang Kuliah FPMIPA (E - 405)', 'PB', 3),
(414, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'M', 9),
(415, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'PM', 9),
(416, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'PIPA', 2),
(417, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'B', 1),
(418, '58. 04.4B.01.015 - Ruang Kelas B 113 S2', 'PB', 1),
(419, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'M', 2),
(420, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'PM', 2),
(421, '59. 04.4B.01.016 - Ruang Kelas B 114 S2', 'PIPA', 3),
(422, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'K', 4),
(423, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'PK', 2),
(424, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'M', 13),
(425, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'PM', 13),
(426, '60. 04.4B.01.017 - Ruang Kelas B 115 S2', 'PIPA', 2),
(427, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'B', 5),
(428, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'PB', 3),
(429, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'M', 1),
(430, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'PM', 1),
(431, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'K', 2),
(432, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'PK', 1),
(433, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'F', 2),
(434, '61. 04.4B.02.003 - Ruang Kelas B - 203', 'PF', 1),
(435, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'B', 3),
(436, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'PB', 1),
(437, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'IK', 6),
(438, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'PIK', 2),
(439, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'K', 2),
(440, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'M', 1),
(441, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'PM', 1),
(442, '62. 04.4B.02.005 - Ruang Kelas B - 205', 'PK', 1),
(443, '64. 04.4B.02.012 - Ruang Kelas B 210', 'IK', 1),
(444, '64. 04.4B.02.012 - Ruang Kelas B 210', 'F', 3),
(445, '64. 04.4B.02.012 - Ruang Kelas B 210', 'PF', 3),
(446, '64. 04.4B.02.012 - Ruang Kelas B 210', 'K', 2),
(447, '64. 04.4B.02.012 - Ruang Kelas B 210', 'PK', 2),
(448, '64. 04.4B.02.012 - Ruang Kelas B 210', 'M', 2),
(449, '64. 04.4B.02.012 - Ruang Kelas B 210', 'PM', 2),
(450, '64. 04.4B.02.012 - Ruang Kelas B 210', 'PIPA', 1),
(451, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'M', 7),
(452, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'K', 3),
(453, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'PK', 3),
(454, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'PM', 3),
(455, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'B', 1),
(456, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'PB', 1),
(457, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'F', 3),
(458, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'PF', 1),
(459, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'IK', 2),
(460, '65. 04.4B.03.001 - Ruang Kelas B - 301', 'PIK', 1),
(461, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'B', 2),
(462, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'M', 4),
(463, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'PM', 3),
(464, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'K', 2),
(465, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'F', 2),
(466, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'PF', 2),
(467, '66. 04.4B.03.003 - Ruang Kelas B - 303', 'PK', 1),
(468, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'K', 2),
(469, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'IK', 3),
(470, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'M', 3),
(471, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'F', 2),
(472, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'PK', 1),
(473, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'PIK', 1),
(474, '67. 04.4B.03.004 - Ruang Kelas B - 304', 'PM', 1),
(475, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'M', 6),
(476, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'PM', 3),
(477, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'B', 1),
(478, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'PB', 1),
(479, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'IK', 2),
(480, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'PIK', 1),
(481, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'K', 2),
(482, '68. 04.4B.03.005 - Ruang Kelas B - 305', 'PK', 1),
(483, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'IK', 5),
(484, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'B', 1),
(485, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'PIK', 2),
(486, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'F', 2),
(487, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'PF', 1),
(488, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'K', 2),
(489, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'M', 1),
(490, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'PM', 1),
(491, '69. 04.4B.04.004 - Ruang Kelas B - 405', 'PK', 1),
(492, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'K', 4),
(493, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'M', 2),
(494, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'PM', 2),
(495, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'B', 1),
(496, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'PB', 1),
(497, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'F', 3),
(498, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'PF', 3),
(499, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'PK', 2),
(500, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'IK', 2),
(501, '70. 04.4C.01.002 - Ruang Kelas C - 102 S2 / S3', 'PIK', 2),
(502, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'M', 3),
(503, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PM', 3),
(504, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PIPA', 2),
(505, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'F', 3),
(506, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PF', 3),
(507, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'K', 1),
(508, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PK', 1),
(509, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'B', 1),
(510, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PB', 1),
(511, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'IK', 1),
(512, '71. 04.4C.01.003 - Ruang Kelas C - 103 S2 / S3', 'PIK', 1),
(513, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'K', 3),
(514, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'PK', 3),
(515, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'M', 5),
(516, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'PM', 5),
(517, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'PIPA', 1),
(518, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'B', 3),
(519, '72. 04.4C.01.009 - Ruang Kelas C - 105 S2 / S3', 'PB', 3),
(520, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'M', 3),
(521, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'PM', 3),
(522, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'K', 3),
(523, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'PK', 3),
(524, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'B', 2),
(525, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'PB', 2),
(526, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'PIPA', 2),
(527, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'IK', 2),
(528, '73. 04.4C.01.010 - Ruang Kelas C - 106 S2 / S3', 'PIK', 2),
(529, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'M', 3),
(530, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'PM', 3),
(531, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'PIPA', 4),
(532, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'K', 3),
(533, '74. 04.4C.01.011 - Ruang Kelas C - 107 S2 / S3', 'PK', 1),
(534, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'M', 6),
(535, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'PM', 2),
(536, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'B', 2),
(537, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'PB', 2),
(538, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'F', 3),
(539, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'PF', 3),
(540, '75. 04.4C.03.001 - Ruang Kelas C - 301', 'IK', 2),
(541, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'IK', 1),
(542, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'F', 1),
(543, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'PF', 1),
(544, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'M', 3),
(545, '76. 04.4C.03.002 - Ruang Kelas C - 302', 'PM', 3),
(546, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'IK', 4),
(547, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'PIK', 3),
(548, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'M', 2),
(549, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'PM', 1),
(550, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'K', 3),
(551, '77. 04.4C.03.003 - Ruang Kelas C - 303', 'PK', 1),
(552, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'B', 1),
(553, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'PB', 1),
(554, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'M', 1),
(555, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'F', 3),
(556, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'PF', 2),
(557, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'PIPA', 1),
(558, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'IK', 5),
(559, '78. 04.4C.03.004 - Ruang Kelas C - 304', 'PIK', 3),
(560, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'K', 1),
(561, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'PK', 1),
(562, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'IK', 1),
(563, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'M', 3),
(564, '79. 04.4C.03.006 - Ruang Kelas C - 305', 'PM', 2),
(565, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'IK', 5),
(566, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'PIK', 4),
(567, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'K', 2),
(568, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'B', 1),
(569, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'PB', 1),
(570, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'PK', 1),
(571, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'M', 1),
(572, '80. 04.4C.03.008 - Ruang Kelas C - 307', 'PM', 1),
(573, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'B', 1),
(574, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'PB', 1),
(575, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'IK', 13),
(576, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'M', 4),
(577, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'PM', 2),
(578, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'PIK', 5),
(579, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'F', 1),
(580, '81. 04.4C.03.009 - Ruang Kelas C - 308', 'PF', 1),
(581, '82. 04.4C.03.010 - Ruang Kelas C - 309', 'IK', 5),
(582, '82. 04.4C.03.010 - Ruang Kelas C - 309', 'PIK', 1),
(583, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'B', 2),
(584, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'IK', 5),
(585, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'PIK', 2),
(586, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'M', 1),
(587, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'PM', 1),
(588, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'F', 1),
(589, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'K', 1),
(590, '83. 04.4C.03.012 - Ruang Kelas C - 309', 'PK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `no` int(11) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `waktu_awal` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `tindakan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`no`, `nama_ruangan`, `hari`, `waktu_awal`, `alasan`, `tindakan`) VALUES
(1, 'Lab Physics Ipse B - 207', 'selasa', '07:00', 'Kosong Ruangannya', 'Ruangan Memang kosong, hanya digunakan saat ujian');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `no` int(11) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `gedung_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`no`, `nama_ruangan`, `kapasitas`, `gedung_no`) VALUES
(1, 'Lab Pembelajaran Kimia B 106', 20, 1),
(2, 'Lab Pembelajaran Fisika B 108', 20, 1),
(3, 'Lab. Biologi IPSE B 201', 40, 1),
(4, 'Lab Physics Ipse B - 207', 30, 1),
(5, 'Lab Multimedia Ipse B 208', 30, 1),
(6, 'Lab Chemistry ipse B 213', 40, 1),
(7, 'Lab Riset Bioteknologi 1 B 307', 40, 1),
(8, 'Lab Riset Bioteknologi 2 B 311', 40, 1),
(9, 'Lab Pembelajaran Matematika B 314', 40, 1),
(10, 'Lab Riset Kimia Makanan B 401', 20, 1),
(11, 'Lab Hayati Kimia B 403', 20, 1),
(12, 'Lab Riset Unggulan Kimia B 404', 20, 1),
(13, 'Lab Instrumentasi Fisika B 407', 40, 1),
(14, 'Lab Komputasi Fisika B 408', 40, 1),
(15, 'Lab Rekayasa Teknologi Fisika B 410', 40, 1),
(16, 'Lab Kimia Material dan Hayati B 413', 40, 1),
(17, 'Lab Riset Kimia Lingkungan B 414', 10, 1),
(18, 'Ruang Kelas B 113 S2 , S3 Ujian S2 / S3', 15, 1),
(19, 'Ruang Kelas B 114 S2 , S3 Ujian S2 / S3', 25, 1),
(20, 'Ruang Kelas B 115 S2 , S3 Ujian S2 / S3', 25, 1),
(21, 'Ruang Kelas B - 203', 50, 1),
(22, 'Ruang Kelas B - 205', 70, 1),
(23, 'Ruang Kelas B 210', 30, 1),
(24, 'Ruang Kelas B 210', 30, 1),
(25, 'Ruang Kelas B - 301', 50, 1),
(26, 'Ruang Kelas B - 303', 50, 1),
(27, 'Ruang Kelas B - 304', 50, 1),
(28, 'Ruang Kelas B - 305', 70, 1),
(29, 'Ruang Kelas B - 405', 70, 1),
(30, 'Microteaching Biologi B 309', 40, 1),
(31, 'Lab Komputer Matematika 1 E 305', 25, 2),
(32, 'Lab Komputer Matematika 2 E 306', 25, 2),
(33, 'Lab Struktur Tumbuhan N - 105', 40, 2),
(34, 'Lab Struktur Tumbuhan', 40, 2),
(35, 'Lab Fisiologi N 118', 40, 2),
(36, 'Lab Fisiologi N 118', 40, 2),
(37, 'Lab Struktur Hewan N 205', 40, 2),
(38, 'Lab Microbiologi N 210', 40, 2),
(39, 'Lab Bumi Antariksa N 220', 40, 2),
(40, 'Lab Elektronika N 305', 40, 2),
(41, 'Lab Fisika Dasar N 309', 40, 2),
(42, 'Lab Fisika Lanjut N 313', 20, 2),
(43, 'Lab Fisika Material N 318', 20, 2),
(44, 'Lab Pengajaran Matematika E 302', 25, 2),
(45, 'Lab Kimia dasar dan Analiktik N 405', 40, 2),
(46, 'Lab Proses Belajar dan Mengajar Kimia N 410', 40, 2),
(47, 'Lab Kimia Fisik Dan Anorganik N 505', 40, 2),
(48, 'Lab Kimia Organik Dan Bio KIMIA N 509', 40, 2),
(49, 'Lab Kimia Instrumen N 519', 20, 2),
(50, 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 406)', 120, 2),
(51, 'Ruang Kelas E - 301 PPG Matematika', 40, 2),
(52, 'Ruang Kelas S- 306', 65, 2),
(53, 'Ruang Kelas S -305', 65, 2),
(54, 'Ruang Kelas S- 304', 65, 2),
(55, 'Ruang Kelas S - 302', 65, 2),
(56, 'Ruang Kelas S - 301', 65, 2),
(57, 'Ruang Kegiatan Akademik dan Kemahasiswaan Internal FPMIPA (E - 405)', 120, 2),
(58, 'Smart Class Fpmipa E 210', 27, 2),
(59, 'Ruang Smartclass/ Digital Lab Kerjasama Okayama University', 25, 2),
(60, 'Ruang Smart Classroom NTNU Taiwan', 65, 2),
(61, 'Lab Komputer Matematika 3 C 104', 20, 3),
(62, 'Lab Praktikum C 201', 20, 3),
(63, 'Lab Kecerdasan Artifisial C 202', 20, 3),
(64, 'Lab. Sistem Jaringan dan Teknik Komputer C 203', 20, 3),
(65, 'Lab Umum C 204', 20, 3),
(66, 'Lab Digital , Pedagogical dan Didactical C 205', 20, 3),
(67, 'Lab Smart learning Environment C 206', 20, 3),
(68, 'Lab Rekayasa Perangkat Lunak dan Manajemen Invormasi C 207', 20, 3),
(69, 'Lab Multimedia Ilkom C 306', 20, 3),
(70, 'Ruang Laboratorium Digital C - 101 S2 / S3', 60, 3),
(71, 'Ruang Kelas C - 102 S2 / S3', 60, 3),
(72, 'Ruang Kelas C - 103 S2 / S3', 60, 3),
(73, 'Ruang Kelas C - 105 S2 / S3', 25, 3),
(74, 'Ruang Kelas C - 106 S2 / S3', 25, 3),
(75, 'Ruang Kelas C - 107 S2 / S3', 25, 3),
(76, 'Ruang Kelas C - 301', 60, 3),
(77, 'Ruang Kelas C - 302', 60, 3),
(78, 'Ruang Kelas C - 303', 60, 3),
(79, 'Ruang Kelas C - 304', 30, 3),
(80, 'Ruang Kelas C - 305', 22, 3),
(81, 'Ruang Kelas C - 307', 60, 3),
(82, 'Ruang Kelas C - 308', 60, 3),
(83, 'Ruang Kelas C - 309', 65, 3),
(84, 'Ruang Kelas C - 309', 60, 3),
(85, 'Lab STEAM Model C 208', 20, 3),
(86, 'Lab Ekologi', 20, 4),
(87, 'Lab Ekologi', 20, 4),
(88, 'LaB Botani', 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `keterangan`) VALUES
(1, '07:00-07:50'),
(2, '07:50-08:40'),
(3, '08:40-09:30'),
(4, '09:30-10:20'),
(5, '10:20-11:10'),
(6, '11:10-12:00'),
(7, '12:00-13:00'),
(8, '13:00-13:50'),
(9, '13:50-14:40'),
(10, '14:40-15:30'),
(11, '15:30-16:20'),
(12, '16:20-17:10'),
(13, '17:10-18:00'),
(14, '18:00-18:50'),
(15, '19:00-19:50'),
(16, '19:50-20:40'),
(17, 'Terpakai'),
(18, 'Booking');

-- --------------------------------------------------------

--
-- Table structure for table `status_booking`
--

CREATE TABLE `status_booking` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_booking`
--

INSERT INTO `status_booking` (`id`, `keterangan`) VALUES
(1, 'Disetujui'),
(2, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `id` int(11) NOT NULL,
  `jam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waktu`
--

INSERT INTO `waktu` (`id`, `jam`) VALUES
(1, '07:00'),
(2, '07:50'),
(3, '08:40'),
(4, '09:30'),
(5, '10:20'),
(6, '11:10'),
(7, '12:00'),
(8, '13:00'),
(9, '13:50'),
(10, '14:40'),
(11, '15:30'),
(12, '16:20'),
(13, '17:10'),
(14, '18:00'),
(15, '19:00'),
(16, '19:50'),
(17, '07:50'),
(18, '08:40'),
(19, '09:30'),
(20, '10:20'),
(21, '11:10'),
(22, '12:00'),
(23, '13:00'),
(24, '13:50'),
(25, '14:40'),
(26, '15:30'),
(27, '16:20'),
(28, '17:10'),
(29, '18:00'),
(30, '18:50'),
(31, '19:50'),
(32, '20:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD PRIMARY KEY (`no`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `heatmap`
--
ALTER TABLE `heatmap`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `jadwal_ruangan`
--
ALTER TABLE `jadwal_ruangan`
  ADD PRIMARY KEY (`No`),
  ADD KEY `status_senin` (`status_senin`),
  ADD KEY `status_selasa` (`status_selasa`),
  ADD KEY `status_rabu` (`status_rabu`),
  ADD KEY `status_kamis` (`status_kamis`),
  ADD KEY `status_jumat` (`status_jumat`),
  ADD KEY `status_sabtu` (`status_sabtu`),
  ADD KEY `status_minggu` (`status_minggu`);

--
-- Indexes for table `kapasitas_ruangan`
--
ALTER TABLE `kapasitas_ruangan`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `kelas_prodi`
--
ALTER TABLE `kelas_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`no`),
  ADD KEY `gedung_no` (`gedung_no`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_booking`
--
ALTER TABLE `status_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `heatmap`
--
ALTER TABLE `heatmap`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `jadwal_ruangan`
--
ALTER TABLE `jadwal_ruangan`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT for table `kapasitas_ruangan`
--
ALTER TABLE `kapasitas_ruangan`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `kelas_prodi`
--
ALTER TABLE `kelas_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `status_booking`
--
ALTER TABLE `status_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD CONSTRAINT `booking_ruangan_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status_booking` (`id`);

--
-- Constraints for table `jadwal_ruangan`
--
ALTER TABLE `jadwal_ruangan`
  ADD CONSTRAINT `jadwal_ruangan_ibfk_1` FOREIGN KEY (`status_senin`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_2` FOREIGN KEY (`status_selasa`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_3` FOREIGN KEY (`status_rabu`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_4` FOREIGN KEY (`status_kamis`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_5` FOREIGN KEY (`status_jumat`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_6` FOREIGN KEY (`status_sabtu`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_ibfk_7` FOREIGN KEY (`status_minggu`) REFERENCES `status` (`id`);

--
-- Constraints for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD CONSTRAINT `ruangan_ibfk_1` FOREIGN KEY (`gedung_no`) REFERENCES `gedung` (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
