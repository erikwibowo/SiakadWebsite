-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 11:55 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsiakad_161530009`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbjurusan`
--

CREATE TABLE `tbjurusan` (
  `kd_jur` char(3) NOT NULL,
  `jurusan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjurusan`
--

INSERT INTO `tbjurusan` (`kd_jur`, `jurusan`) VALUES
('130', 'Teknik Kimia'),
('140', 'Teknik Mesin'),
('150', 'Teknik Komputer dan Informatika'),
('160', 'Ekonomi Syariah');

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `id_log` int(11) NOT NULL,
  `id_user` char(5) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `device` varchar(75) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`id_log`, `id_user`, `ip_address`, `device`, `browser`, `time`) VALUES
(12, 'ID001', '127.0.0.1', 'localhost', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) G', '2017-05-17 10:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbmahasiswa`
--

CREATE TABLE `tbmahasiswa` (
  `nim` char(9) NOT NULL,
  `id_ta` tinyint(4) NOT NULL,
  `kd_prodi` char(3) NOT NULL,
  `nama_mhs` varchar(45) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `nama_ayah` varchar(45) NOT NULL,
  `nama_ibu` varchar(45) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmahasiswa`
--

INSERT INTO `tbmahasiswa` (`nim`, `id_ta`, `kd_prodi`, `nama_mhs`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `nama_ayah`, `nama_ibu`, `alamat`, `no_telepon`) VALUES
('151415516', 2, '141', 'Elly Shofiyana', 'P', 'Pekalongan', '1991-08-24', 'Islam', 'H Ahmad Rofi\'i', 'Duyung Dayani', 'Karanganyar Gg.18', '08976727171'),
('151415517', 2, '141', 'Fina Dzikriyah', 'P', 'Pekalongan', '1991-06-28', 'Islam', 'Maskur', 'Duyung Dayani', 'Jl.Raya Kertijayan No.11', '08976727171'),
('151415522', 2, '141', 'Hikmatun Khasanah (R1 20)', 'P', 'Pekalongan', '1991-09-28', 'Islam', 'Wahyodo', 'Duyung Dayani', 'Kajongan Kajen', '08976727171'),
('151415524', 2, '141', 'Jauharotur Rokhmah', 'P', 'Pekalongan', '1991-04-22', 'Islam', 'Abdul Kholiq', 'Duyung Dayani', 'Kwagean kaum Gg Manyar Wonopringgo', '08976727171'),
('151415526', 2, '141', 'Khusniyah', 'P', 'Pekalongan', '1991-06-17', 'Islam', 'Satomi', 'Duyung Dayani', 'Karang Anyar Tirto Gg 17 Pekl', '08976727171'),
('151415527', 2, '141', 'Latifah (R1 10)', 'P', 'Pekalongan', '1991-02-12', 'Islam', 'Abdullah Al Atas', 'Duyung Dayani', 'Jl Jlamprang no 16 Gg 5A Krapyak', '08976727171'),
('151415546', 2, '141', 'Imarotul Iman', 'P', 'Pekalongan', '1991-06-21', 'Islam', 'Nasroh', 'Duyung Dayani', 'Simbangkulon gg 2', '08976727171'),
('151415558', 2, '141', 'Harisah (R1 11)', 'P', 'Pekalongan', '1991-05-06', 'Islam', 'Slamet Saroni', 'Duyung Dayani', 'Simbangkulon Gg.4', '08976727171'),
('151415572', 2, '141', 'Maftuhah', 'P', 'Pekalongan', '1991-01-18', 'Islam', 'Shohir', 'Duyung Dayani', 'Simbang Wetan Gg depan Balai Desa', '08976727171'),
('151415602', 2, '141', 'Alfa Adila', 'P', 'Pekalongan', '1991-08-17', 'Islam', 'Khairudin', 'Duyung Dayani', 'Jl.Raya Sapugarut No.136', '08976727171'),
('151415613', 2, '141', 'Hani Hanifah', 'P', 'Pekalongan', '1992-03-02', 'Islam', 'Aly Imron', 'Duyung Dayani', 'Kertijayan Gg.13 No.786', '08976727171'),
('151415616', 2, '141', 'Ikrimah', 'P', 'Pekalongan', '1991-04-30', 'Islam', 'Masduki', 'Duyung Dayani', 'Simbangkulon Gg 1 No 309', '08976727171'),
('151415651', 2, '141', 'Aty Amalia (R1 17)', 'P', 'Pekalongan', '1991-09-04', 'Islam', 'H. Khusaeni', 'Duyung Dayani', 'Bojong Minggir', '08976727171'),
('151415652', 2, '141', 'Chafidloh', 'P', 'Pekalongan', '1991-07-11', 'Islam', 'Fatchurrohman', 'Duyung Dayani', 'Simbangkulon Gg.1 No.313', '08976727171'),
('151415659', 2, '141', 'Iffah Hanna', 'P', 'Pekalongan', '1991-10-21', 'Islam', 'A Lazim', 'Duyung Dayani', 'Bnyurip Ageng Gg 4 Rt 02 Rw 05', '08976727171'),
('151415668', 2, '141', 'Komariyah', 'P', 'Pemalang', '1992-01-15', 'Islam', 'H Basari', 'Duyung Dayani', 'Pedurungan barat Taman Pemalang', '08976727171'),
('151415669', 2, '141', 'Lailatul Fitri', 'P', 'Pekalongan', '1991-04-03', 'Islam', 'Bakri', 'Duyung Dayani', 'Jl Karya Bakti Gg Ponpes no 166 Medono', '08976727171'),
('151425531', 2, '142', 'Nailiyyatul Maqshudah (2 34)', 'P', 'Pekalongan', '1991-03-06', 'Islam', 'Sobron Ikhsan', 'Duyung Dayani', 'Kaanganyar Gg 10 Tirto Pekalongan', '08976727171'),
('151425532', 2, '142', 'Nina Farisa', 'P', 'Pekalongan', '1990-09-17', 'Islam', 'Nasir', 'Duyung Dayani', 'Banyurip Alit Gg 2A no 82', '08976727171'),
('151425533', 2, '142', 'Nur Ba\'diani Aziz (3 27)', 'P', 'Pekalongan', '1992-01-01', 'Islam', 'Abdul Aziz', 'Duyung Dayani', 'Jl. A Yani Gg 14 no 13 Kauman Batang', '08976727171'),
('151425534', 2, '142', 'Nur Bidayah (2 22)', 'P', 'Pekalongan', '1990-05-26', 'Islam', 'Zawawi', 'Duyung Dayani', 'Paesan Tengah no 85', '08976727171'),
('151425535', 2, '142', 'Nur Faela Sofa', 'P', 'Pekalongan', '1991-02-13', 'Islam', 'Shofaeni', 'Duyung Dayani', 'Bojong Minggir Gg 7', '08976727171'),
('151425540', 2, '142', 'Nurul Maisyal (3 26)', 'P', 'Batang', '1991-05-04', 'Islam', 'Salim M Al Atas', 'Duyung Dayani', 'Jl Rhimat Bakti no 2 Terban Batang', '08976727171'),
('151425542', 2, '142', 'Riska Pratiwi (3 32)', 'P', 'Pekalongan', '1991-05-11', 'Islam', 'Sukisno', 'Duyung Dayani', 'Kertijayan Gg 6 no 511 Buaran Pkl', '08976727171'),
('151425579', 2, '142', 'Nur Hidayah', 'P', 'Pekalongan', '1991-10-15', 'Islam', 'Zaenal Abidin', 'Duyung Dayani', 'Simbangkulon Gg 2', '08976727171'),
('151425583', 2, '142', 'Rahma Yustina', 'P', 'Pekalongan', '1992-08-12', 'Islam', 'Zuhri', 'Duyung Dayani', 'Simbangkulon Blok 2 no 249', '08976727171'),
('151425629', 2, '142', 'Naelatul Iana', 'P', 'Pekalongan', '1991-07-09', 'Islam', 'Marghoni', 'Duyung Dayani', 'Karangdowo Kedungwuni', '08976727171'),
('151425632', 2, '142', 'Nova Novita', 'P', 'Pekalongan', '1990-07-07', 'Islam', 'M Shofi', 'Duyung Dayani', 'Simbangkulon Gg 4', '08976727171'),
('151425635', 2, '142', 'Nur Fithriana', 'P', 'Pekalongan', '1991-01-28', 'Islam', 'Miskon', 'Duyung Dayani', 'Kertijayan Gg 14', '08976727171'),
('151425638', 2, '142', 'Nur Khamidah', 'P', 'Pekalongan', '1991-03-07', 'Islam', 'Khaeron', 'Duyung Dayani', 'Kertijayan Gg 3', '08976727171'),
('151425673', 2, '142', 'Mamlu\'atul Khoiriyah (R2 32)', 'P', 'Pekalongan', '1991-03-19', 'Islam', 'A Syaikhu', 'Duyung Dayani', 'Kertijayan Gg 2 Buaran', '08976727171'),
('151425675', 2, '142', 'Mazida Chilya Chumairoh', 'P', 'Pekalongan', '1991-09-21', 'Islam', 'Drs Chumaidi', 'Duyung Dayani', 'Medono', '08976727171'),
('151425676', 2, '142', 'Mifrohka (2 29)', 'P', 'Pekalongan', '1990-07-20', 'Islam', 'Ahmad Barori', 'Duyung Dayani', 'Simbang Wetan Gg 1 no 125', '08976727171'),
('151425679', 2, '142', 'Muslikha', 'P', 'Pekalongan', '1991-01-02', 'Islam', 'Ahmad Makmur', 'Duyung Dayani', 'Kertoharjo Gg 14 no 94', '08976727171'),
('151425682', 2, '142', 'Nisrokha', 'P', 'Pekalongan', '1990-03-05', 'Islam', 'Abdul Kholiq', 'Duyung Dayani', 'Simbang Wetan Gg 8 no 649', '08976727171'),
('151425686', 2, '142', 'Ribqoti Ulya Dewi', 'P', 'Pekalongan', '1992-02-05', 'Islam', 'Achmad Chaidar', 'Duyung Dayani', 'Kranji timur Gg 6 Kdw Pkl', '08976727171'),
('151425700', 2, '142', 'Nur Baitun', 'P', 'Batang', '1991-03-18', 'Islam', 'Alimin', 'Duyung Dayani', 'Kalipucang Wetan Rt 04 Rw 02 Batang', '08976727171'),
('151426036', 2, '142', 'Nayla Miskiyatun Nisa (2 23)', 'P', 'Pekalongan', '1990-02-22', 'Islam', 'H Badruddin Syukri', 'Duyung Dayani', 'Kali Jambe No 1 Sragi Pekalongan ', '08976727171'),
('151515370', 2, '151', 'Arifin', 'L', 'Pekalongan', '1990-06-06', 'Islam', 'Sukhrono', 'Duyung Dayani', 'Kertijayan Gg2 Buaran Pekalongan', '08976727171'),
('151515372', 2, '151', 'Eko Agus Prastyo', 'L', 'Pemalang', '1991-08-12', 'Islam', 'Mualimin', 'Duyung Dayani', 'Petarukan, Pemalang', '08976727171'),
('151515374', 2, '151', 'Hasan Fasani', 'L', 'Pekalongan', '1992-03-13', 'Islam', 'Warsono', 'Duyung Dayani', 'Bugangan, RT 05/RW 03 Kedungwuni', '08976727171'),
('151515416', 2, '151', 'Ahmad Mabruri', 'L', 'Pekalongan', '1991-06-09', 'Islam', 'Kundali', 'Duyung Dayani', 'Ambukembang 14 Kedungwuni', '08976727171'),
('151515419', 2, '151', 'Amat Zaenodin (R1 10)', 'L', 'Batang', '1990-07-14', 'Islam', 'Ambari', 'Duyung Dayani', 'Sedayu Bandar Batang', '08976727171'),
('151515420', 2, '151', 'Aziz Salam', 'L', 'Pekalongan', '1990-08-19', 'Islam', 'Arifin', 'Duyung Dayani', 'Simbang Kulon, Buaran', '08976727171'),
('151515422', 2, '151', 'Imam Fatkhurridlo', 'L', 'Pekalongan', '1991-01-22', 'Islam', 'Abbas', 'Duyung Dayani', 'Sembang Jambu, Bojong Pekalongan', '08976727171'),
('151515460', 2, '151', 'Abdul  Manan', 'L', 'Pekalongan', '1991-05-24', 'Islam', 'Tabi\'in', 'Duyung Dayani', 'Bababadan, Jrebeng kembang ', '08976727171'),
('151515464', 2, '151', 'Ahmad Khasan Barik', 'L', 'Pekalongan', '1992-07-06', 'Islam', 'Drs Anshoruddin Ar', 'Duyung Dayani', 'Kedungwuni barat RT 03/RW 04', '08976727171'),
('151515465', 2, '151', 'Ahmad Mustafid', 'L', 'Pekalongan', '1991-08-26', 'Islam', 'Ahmad Rifa\'i', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151515471', 2, '151', 'Amar Ma\'ruf (R2 34)', 'L', 'Batang', '1990-12-20', 'Islam', 'Nur Hadi', 'Duyung Dayani', 'Gapuro Gg 4 Warungasem', '08976727171'),
('151515472', 2, '151', 'Andi Susanto', 'L', 'Pekalongan', '1991-06-21', 'Islam', 'Sudarno', 'Duyung Dayani', 'Kertijayan Gg 2 Buaran Pekalongan', '08976727171'),
('151515474', 2, '151', 'Arif Maulana', 'L', 'Pekalongan', '1991-07-03', 'Islam', 'Sudiono', 'Duyung Dayani', 'Simbang Kulon Gg 3 Buaran Pekalongan', '08976727171'),
('151515475', 2, '151', 'Badrul Ulum', 'L', 'Pekalongan', '1991-05-05', 'Islam', 'A Kirom', 'Duyung Dayani', 'Karang Anyar Tirto Pekalongan', '08976727171'),
('151515697', 2, '151', 'Abdullah Bil Faqih', 'L', 'Pekalongan', '1991-06-24', 'Islam', 'Khotim Muhammad', 'Duyung Dayani', 'Surabayan wonopringgo Pekalongan', '08976727171'),
('151515698', 2, '151', 'Abdul Basit', 'L', 'Pekalongan', '1991-07-03', 'Islam', 'Asfari', 'Duyung Dayani', 'Welahan Karangdadap Pekalongan', '08976727171'),
('151525387', 2, '152', 'Moh Yusuf Kamal (R2 21)', 'L', 'Pekalongan', '1991-07-23', 'Islam', 'M Amir', 'Duyung Dayani', 'Simbang Kulon, Buaran Pekalongan,', '08976727171'),
('151525389', 2, '152', 'Muhammad Bahrul Anam', 'L', 'Pekalongan', '1991-04-24', 'Islam', 'Zaini', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151525390', 2, '152', 'Muhammad Basri Durrin', 'L', 'Pekalongan', '1991-07-07', 'Islam', 'Mubarok', 'Duyung Dayani', 'Kertoharjo Gg 14 Pekalongan', '08976727171'),
('151525395', 2, '152', 'Muhammad Kharisul Ubad (R1 12)', 'L', 'Pekalongan', '1991-07-20', 'Islam', 'Wahyudi', 'Duyung Dayani', 'Dadi Rejo, Tirto Pekalongan', '08976727171'),
('151525396', 2, '152', 'Muhammad Kholilurrohman', 'L', 'Pekalongan', '1991-07-14', 'Islam', 'M Syukron Khasani', 'Duyung Dayani', 'Degayu, Pekalongan Utara', '08976727171'),
('151525397', 2, '152', 'Muhammad Makinun Amin', 'L', 'Pekalongan', '1991-10-04', 'Islam', 'Nasron', 'Duyung Dayani', 'Warungasem Gg 11', '08976727171'),
('151525398', 2, '152', 'Muhammad Mansur (R2 29)', 'L', 'Pekalongan', '1990-12-12', 'Islam', 'Moch Taufiq', 'Duyung Dayani', 'Simbang Kulon Gg 3 Buaran Pekalongan', '08976727171'),
('151525402', 2, '152', 'Muhammad Romadhon', 'L', 'Pekalongan', '1991-03-26', 'Islam', 'Wahyudi', 'Duyung Dayani', 'Sapugarut Gg 4 Buaran Pekalongan', '08976727171'),
('151525410', 2, '152', 'Syihabudin', 'L', 'Pekalongan', '1992-03-30', 'Islam', 'Mahrus', 'Duyung Dayani', 'Lumeneng Paninggaran Pekalongan', '08976727171'),
('151525412', 2, '152', 'Yusro Khafidhi', 'L', 'Pekalongan', '1990-12-05', 'Islam', 'Wahrozi', 'Duyung Dayani', 'Gumawang Wiradesa Pekalongan', '08976727171'),
('151525427', 2, '152', 'Miftahuddin', 'L', 'Pekalongan', '1991-07-23', 'Islam', 'Chariri', 'Duyung Dayani', 'Siwalan, Pekalongan', '08976727171'),
('151525430', 2, '152', 'Mohammad Rodifudin', 'L', 'Pekalongan', '1990-10-10', 'Islam', 'Lukman Hakim', 'Duyung Dayani', 'Paninggaran, Pekalongan', '08976727171'),
('151525434', 2, '152', 'Muhammad Fikri', 'L', 'Pekalongan', '1991-04-18', 'Islam', 'Kholid', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151525439', 2, '152', 'Muhammad Mukhafidlin', 'L', 'Pekalongan', '1992-04-05', 'Islam', 'Kasdi', 'Duyung Dayani', 'Kampil Sasem Wiradesa Pekalongan', '08976727171'),
('151525440', 2, '152', 'Muhammad Mukhafidzin (R2 22)', 'L', 'Jakarta', '1990-12-24', 'Islam', 'Muhammad Yusuf', 'Duyung Dayani', 'Tanjung Gg5 Tirto Pekalongan', '08976727171'),
('151525444', 2, '152', 'Muhammad Purnomo', 'L', 'Pekalongan', '1990-10-11', 'Islam', 'Busyairi', 'Duyung Dayani', 'Kertijayan Gg 5 Buaran Pekalongan', '08976727171'),
('151525445', 2, '152', 'Muhammad Qiston Khabibi', 'L', 'Pekalongan', '1991-08-15', 'Islam', 'Aspari', 'Duyung Dayani', 'Banyurip Alit Gg 4 Pekalongan', '08976727171'),
('151525447', 2, '152', 'Muhammad Rusydan', 'L', 'Pekalongan', '1990-11-02', 'Islam', 'Ghufronuddin', 'Duyung Dayani', 'Simabang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('151525448', 2, '152', 'Muhammad Saifudin', 'L', 'Pekalongan', '1991-11-27', 'Islam', 'A Ahyar (Alm)', 'Duyung Dayani', 'Jl Raya Simbang Kulon Pekalongan', '08976727171'),
('151525451', 2, '152', 'Muhammad Taufiq (R1 9)', 'L', 'Pekalongan', '1990-12-26', 'Islam', 'Ismail', 'Duyung Dayani', 'Wonoyoso Gg 1 Buaran Pekalongan', '08976727171'),
('151525452', 2, '152', 'Muhammad Yusuf', 'L', 'Pekalongan', '1990-07-13', 'Islam', 'Asrori', 'Duyung Dayani', 'Simbang Kulon Gg 3 Buaran Pekalongan', '08976727171'),
('151525484', 2, '152', 'Miftahul Farid', 'L', 'Pekalongan', '1991-04-04', 'Islam', 'Sobari', 'Duyung Dayani', 'Proto, Kedungwuni Pekalongan', '08976727171'),
('151525486', 2, '152', 'Moh Musakin', 'L', 'Pekalongan', '1990-10-30', 'Islam', 'Abdul Rozaq', 'Duyung Dayani', 'Jl Raya Jenggot RT05/RW01', '08976727171'),
('151525488', 2, '152', 'Moh Yusuf Maksum (R2 35)', 'L', 'Pekalongan', '1991-11-16', 'Islam', 'H Wargam', 'Duyung Dayani', 'Babalan Kidul, Bojong Pekalongan', '08976727171'),
('151525490', 2, '152', 'Muchammad Andri Mukhson', 'L', 'Pekalongan', '1991-08-27', 'Islam', 'Shokhib', 'Duyung Dayani', 'Banyurip Alit Pekalongan', '08976727171'),
('151525491', 2, '152', 'Muh Khilmi Huseen (R2 32)', 'L', 'Pekalongan', '1991-01-03', 'Islam', 'Muslikh', 'Duyung Dayani', 'Watusalam, Pekalongan', '08976727171'),
('151525494', 2, '152', 'Muhammad Chudlori', 'L', 'Pekalongan', '1991-08-10', 'Islam', 'Nur Rokhim', 'Duyung Dayani', 'Surabayan wonopringgo Pekalongan', '08976727171'),
('151525495', 2, '152', 'Muhammad Fami As\'ad', 'L', 'Pekalongan', '1990-12-30', 'Islam', 'Rohani', 'Duyung Dayani', 'Kradenan Gg 8 Pekalongan', '08976727171'),
('151525498', 2, '152', 'Muhammad Kharis', 'L', 'Pekalongan', '1991-07-01', 'Islam', 'Ahmad Muhsonef', 'Duyung Dayani', 'Tegalrejo Pekalongan', '08976727171'),
('151525499', 2, '152', 'Muhammad Mahrozi', 'L', 'Pekalongan', '1990-08-08', 'Islam', 'Nur Hadi', 'Duyung Dayani', 'Simbang Kulon Gg 5 Buaran Pekalongan', '08976727171'),
('151525504', 2, '152', 'Nasrullah', 'L', 'Pekalongan', '1990-06-21', 'Islam', 'Nur Khadiri', 'Duyung Dayani', 'Babadan Jrebeng Kembang Pekalongan', '08976727171'),
('151615367', 2, '161', 'Abdul Fatah', 'L', 'Pekalongan', '1991-08-19', 'Islam', 'Su\'udi', 'Duyung Dayani', 'Wiroditan Bojong Pekalongan', '08976727171'),
('151615368', 2, '161', 'Abdul Latif', 'L', 'Pekalongan', '1989-08-18', 'Islam', 'Sartono', 'Duyung Dayani', 'Jajarwayang Bojong Pekalongan', '08976727171'),
('151615413', 2, '161', 'Achmad Syarief Fuad', 'L', 'Kediri', '1991-06-20', 'Islam', 'H Nur Fuad', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('151615414', 2, '161', 'Ahmad Aji Fatih', 'L', 'Pekalongan', '1991-07-03', 'Islam', 'A Fatkhullah', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('151615415', 2, '161', 'Ahmad Ikhsanudin', 'L', 'Pekalongan', '1991-03-19', 'Islam', 'Fadholi', 'Duyung Dayani', 'Kertoharjo Gg 16 Pekalongan Selatan', '08976727171'),
('151615417', 2, '161', 'Akmal Maulana', 'L', 'Pekalongan', '1990-02-28', 'Islam', 'H Tasjuri', 'Duyung Dayani', 'Dadi Rejo, Tirto Pekalongan', '08976727171'),
('151615461', 2, '161', 'Abdul Muiz', 'L', 'Pekalongan', '1991-05-22', 'Islam', 'M Fauzin', 'Duyung Dayani', 'Jl. Hasanudin Gg 6 No 21 Pekalongan', '08976727171'),
('151615462', 2, '161', 'Achmad Khoirun Nada', 'L', 'Pekalongan', '1990-02-21', 'Islam', 'H Zainudin As\'ad', 'Duyung Dayani', 'Paesan Tengah Gg 2 Kedungwuni', '08976727171'),
('151615463', 2, '161', 'Ahamad Khairudin', 'L', 'Pekalongan', '1991-06-08', 'Islam', 'Rohan', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151615467', 2, '161', 'Ahmad Rozi', 'L', 'Pekalongan', '1991-02-05', 'Islam', 'Ihsan', 'Duyung Dayani', 'Wonoyoso Gg 2 Buaran Pekalongan', '08976727171'),
('151615468', 2, '161', 'Ahmad Sahal', 'L', 'Pekalongan', '1991-09-25', 'Islam', 'Abdus Shomad', 'Duyung Dayani', 'Medono Gg Ponpes Al Mubarok', '08976727171'),
('151615469', 2, '161', 'Ainul Huda', 'L', 'Pekalongan', '1990-08-25', 'Islam', 'Khamdan', 'Duyung Dayani', 'Kranji Gg 1 Pekalongan', '08976727171'),
('151615470', 2, '161', 'Akhmad Falakh', 'L', 'Pekalongan', '1991-03-19', 'Islam', 'Munjihad (Alm)', 'Duyung Dayani', 'Kemasan Bojong Pekalongan', '08976727171'),
('151615546', 2, '161', 'Siti Aini Maftuha', 'P', 'Pekalongan', '1992-05-29', 'Islam', 'Masykur', 'Duyung Dayani', 'Kalilembu Rt 01 Rw 02 Krng dadap Pkl', '08976727171'),
('151615596', 2, '161', 'Uswatun Khasanah (2 27)', 'P', 'Pekalongan', '1991-01-01', 'Islam', 'Nur Bashori', 'Duyung Dayani', 'Samborejo Rt 05 Rw 02 no 50', '08976727171'),
('151615641', 2, '161', 'Risky Hidayah', 'P', 'Sukoharjo', '1992-09-04', 'Islam', 'Makhfudz', 'Duyung Dayani', 'Tegaldowo Rt 02 Rw 1 no 01', '08976727171'),
('151615645', 2, '161', 'Siti Nasiroh', 'P', 'Pemalang', '1990-08-08', 'Islam', 'H M Abdul Khobir', 'Duyung Dayani', 'Ds Nagasana Watukumbul Pemalang', '08976727171'),
('151615689', 2, '161', 'Rosidah', 'P', 'Pekalongan', '1991-11-21', 'Islam', 'H Adib', 'Duyung Dayani', 'Sapugarul Gg 13 no 108', '08976727171'),
('151615690', 2, '161', 'Siti Masyitoh', 'P', 'Pekalongan', '1999-12-31', 'Islam', 'H Masykur', 'Duyung Dayani', 'Lutung mati Gringsing Batang', '08976727171'),
('151616031', 2, '161', 'Zuhroh (3 2)', 'P', 'Pekalongan', '1990-05-06', 'Islam', 'H Busyairi', 'Duyung Dayani', 'Jl Raya Kradenan no 20', '08976727171'),
('151625102', 2, '162', 'M Rosep Arifin', 'L', 'Pekalongan', '1989-05-29', 'Islam', 'M Yatin', 'Duyung Dayani', 'Kertijayan Buaran Pekalongan', '08976727171'),
('151625373', 2, '162', 'Firda Himawan', 'L', 'Pekalongan', '1990-09-07', 'Islam', 'Tiwarno', 'Duyung Dayani', 'Capgawen Gg Masjid Al Muhlisin', '08976727171'),
('151625375', 2, '162', 'Imam Saifullah', 'L', 'Pekalongan', '1989-07-12', 'Islam', 'Wasduki', 'Duyung Dayani', 'Kebon Rowo Pucang', '08976727171'),
('151625384', 2, '162', 'M Sulaiman Al Fariz', 'L', 'Pekalongan', '1991-04-10', 'Islam', 'Maftuhin (Alm)', 'Duyung Dayani', 'Banyurip Alit Gg 3b Pekalongan', '08976727171'),
('151625385', 2, '162', 'Moch Saifudin Zuhri', 'L', 'Pekalongan', '1990-07-28', 'Islam', 'A Fadloli (Alm)', 'Duyung Dayani', 'Banyurip Alit Pekalongan Selatan', '08976727171'),
('151625393', 2, '162', 'Muhammad Fatkhurrozi', 'L', 'Pekalongan', '1990-09-10', 'Islam', 'Rizqon', 'Duyung Dayani', 'Wonoyoso Gg 5 Buaran Pekalongan', '08976727171'),
('151625394', 2, '162', 'Muhammad Jufri Lukmana', 'L', 'Pekalongan', '1991-05-02', 'Islam', 'Zaenudin', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151625399', 2, '162', 'Muhammad Minhajul Abidin', 'L', 'Pekalongan', '1990-10-16', 'Islam', 'Masduqi', 'Duyung Dayani', 'Sapugarut Gg 14 Buaran Pekalongan', '08976727171'),
('151625400', 2, '162', 'Muhammad Nadlikh', 'L', 'Pekalongan', '1990-02-16', 'Islam', 'M Ilyas Ali (Alm)', 'Duyung Dayani', 'Simbang Wetan Gg 1 Pekalongan', '08976727171'),
('151625401', 2, '162', 'Muhammad Rizal', 'L', 'Pekalongan', '1990-04-06', 'Islam', 'Bisri', 'Duyung Dayani', 'Kradenan Gg 2 Pekalongan', '08976727171'),
('151625405', 2, '162', 'Muhammad Yusron', 'L', 'Pekalongan', '1990-08-17', 'Islam', 'Muzakhim', 'Duyung Dayani', 'Jl Raya Banyurip Alit Pekalongan', '08976727171'),
('151625406', 2, '162', 'Muhammad Ziad Thoriq', 'L', 'Pekalongan', '1991-08-20', 'Islam', 'Tahril', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('151625418', 2, '162', 'Alvi Mubarok', 'L', 'Sukoharjo', '1992-09-04', 'Islam', 'H Musthofa', 'Duyung Dayani', 'Gumawang Wiradesa Pekalongan', '08976727171'),
('151625426', 2, '162', 'M Zainudin', 'L', 'Pekalongan', '1991-08-01', 'Islam', 'M Amin', 'Duyung Dayani', 'Watusalam, Buaran Pekalongan', '08976727171'),
('151625428', 2, '162', 'Miftakhul Suhufi', 'L', 'Pekalongan', '1991-02-02', 'Islam', 'Ilyas', 'Duyung Dayani', 'Jenggot Gg 5 Pekalongan Selatan', '08976727171'),
('151625431', 2, '162', 'Muhammad Arif Baharuddin', 'L', 'Pekalongan', '1991-04-18', 'Islam', 'H Syafi\'i (Alm)', 'Duyung Dayani', 'Jl Raya Kertijayan Buaran Pekalongan', '08976727171'),
('151625432', 2, '162', 'Muhammad Dzikri', 'L', 'Pekalongan', '1990-10-22', 'Islam', 'H Casmadi', 'Duyung Dayani', 'Simbang Kulon Gg 5 Buaran Pekalongan', '08976727171'),
('151625436', 2, '162', 'Muhammad Habibullah', 'L', 'Pekalongan', '1990-11-04', 'Islam', 'A Thoha', 'Duyung Dayani', 'Jenggot Gg 5 Pekalongan Selatan', '08976727171'),
('151625437', 2, '162', 'Muhammad Maftuhin', 'L', 'Pekalongan', '1991-03-19', 'Islam', 'Khasan Bisri', 'Duyung Dayani', 'Jenggot Gg 1 Pekalongan Selatan', '08976727171'),
('151625438', 2, '162', 'Muhammad Mirza Ahda', 'L', 'Batang', '1989-09-30', 'Islam', 'H Syukron Mahfudz', 'Duyung Dayani', 'Jlamprang, Bawang Batang', '08976727171'),
('151625441', 2, '162', 'Karso', 'L', 'Pekalongan', '1990-10-18', 'Islam', 'Walim', 'Duyung Dayani', 'Senari Talun Pekalongan', '08976727171'),
('151625442', 2, '162', 'Muhammad Nailal Huda', 'L', 'Pekalongan', '1990-01-28', 'Islam', 'Abdul Halim', 'Duyung Dayani', 'Banyurip Alit Gg 4 Buaran Pekalongan', '08976727171'),
('151625485', 2, '162', 'Misbakhul Munir', 'L', 'Batang', '1991-03-02', 'Islam', 'Muttaqin', 'Duyung Dayani', 'Kadilangu, Kauman Batang', '08976727171'),
('151625487', 2, '162', 'Moh Taufiq Adnan Amal', 'L', 'Pekalongan', '1991-06-03', 'Islam', 'H Alwi Junaidi', 'Duyung Dayani', 'Salak Brojo Kedungwuni Pekalongan', '08976727171'),
('151625489', 2, '162', 'Mohammad Musib Mustofa', 'L', 'Pekalongan', '1990-09-05', 'Islam', 'Abdur Rozak', 'Duyung Dayani', 'Jl Raya Karangdowo Pekalongan', '08976727171'),
('151625496', 2, '162', 'Muhammad Imdad Akbar', 'L', 'Pekalongan', '1991-07-20', 'Islam', 'Abdul Kholiq', 'Duyung Dayani', 'Sapugarul Gg 12 Buaran Pekalongan', '08976727171'),
('151625497', 2, '162', 'Muhammad Kamal Khasan', 'L', 'Pekalongan', '1991-05-17', 'Islam', 'Agus Khadliron', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('151625500', 2, '162', 'Muhammad Syarif', 'L', 'Pekalongan', '1990-11-17', 'Islam', 'Nasrukhi', 'Duyung Dayani', 'Jenggot Gg 4 Pekalongan', '08976727171'),
('151625501', 2, '162', 'Muhammad Wakhidin', 'L', 'Pekalongan', '1991-08-03', 'Islam', 'Karjo', 'Duyung Dayani', 'Bligo RT14/RW5 Buaran Pekalongan', '08976727171'),
('161415507', 2, '141', 'Alifatun Nadhifah', 'P', 'Pekalongan', '1991-05-14', 'Islam', 'Mustade', 'Duyung Dayani', 'Jl Raya Kertijayan Buaran Pekalongan', '08976727171'),
('161415510', 2, '141', 'Anis Tia Mely Azkiati', 'P', 'Pekalongan', '1992-03-03', 'Islam', 'Abdul Malik', 'Duyung Dayani', 'Karanganyar Pekalongan', '08976727171'),
('161415511', 2, '141', 'Anisah', 'P', 'Pekalongan', '1991-01-21', 'Islam', 'Muchtar', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161415556', 2, '141', 'Dwi Maryana', 'P', 'Pekalongan', '1991-03-17', 'Islam', 'Yusuf', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161415557', 2, '141', 'Farah Adiba', 'P', 'Pekalongan', '1991-10-20', 'Islam', 'Zaini', 'Duyung Dayani', 'Capgawen Kedungwuni Pekalongan', '08976727171'),
('161415560', 2, '141', 'Hilya Himmatun Nafisah', 'P', 'Pekalongan', '1991-08-16', 'Islam', 'Rokhadi Asyhadi', 'Duyung Dayani', 'Api-api Wonokerto Pekalongan', '08976727171'),
('161415568', 2, '141', 'Izah Shidqiyah', 'P', 'Pekalongan', '1990-12-18', 'Islam', 'Muzaki', 'Duyung Dayani', 'Jl Untung Suropati Tegal Rejo Pekalongan', '08976727171'),
('161415569', 2, '141', 'Khafiyah Tunnisa\'', 'P', 'Pekalongan', '1990-10-25', 'Islam', 'A Tafsir', 'Duyung Dayani', 'Ambukembang 2 Kedungwuni', '08976727171'),
('161415593', 2, '141', 'Ulfah Fitri Fauziyah', 'P', 'Pekalongan', '1992-04-05', 'Islam', 'Tasyari', 'Duyung Dayani', 'Lolong Karanganyar Pekalongan', '08976727171'),
('161415594', 2, '141', 'Umi Hanik', 'P', 'Pekalongan', '1991-09-08', 'Islam', 'Shobirin', 'Duyung Dayani', 'Jl Raya Banyurip Alit Pekalongan', '08976727171'),
('161415598', 2, '141', 'Wahyu Nilasari', 'P', 'Pekalongan', '1991-12-06', 'Islam', 'Sutiyoso', 'Duyung Dayani', 'Kayu Geritan Karanganyar Pekalongan', '08976727171'),
('161415603', 2, '141', 'Alfa Naffisatu Zuhroh', 'P', 'Semarang', '1991-07-19', 'Islam', 'Harno', 'Duyung Dayani', 'Poncol Pekalongan Timur', '08976727171'),
('161415605', 2, '141', 'Anik Ariyani', 'P', 'Pekalongan', '1991-07-10', 'Islam', 'Kaliri', 'Duyung Dayani', 'Paweden Buaran Pekalongan', '08976727171'),
('161415612', 2, '141', 'Fairus Khaulia', 'P', 'Pekalongan', '1991-10-13', 'Islam', 'M Tasakhur', 'Duyung Dayani', 'Pakis Putih Kedungwuni Pekalongan', '08976727171'),
('161415615', 2, '141', 'Iin Sakinah', 'P', 'Pekalongan', '1991-03-23', 'Islam', 'Mukhtar', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161415617', 2, '141', 'Ikromah', 'P', 'Pekalongan', '1990-11-09', 'Islam', 'Khambali', 'Duyung Dayani', 'Jenggot Gg 1 Pekalongan Selatan', '08976727171'),
('161415618', 2, '141', 'Iltiamul Minnati', 'P', 'Pekalongan', '1991-05-05', 'Islam', 'M Alwi', 'Duyung Dayani', 'Pecakaran No 216 Pekalongan', '08976727171'),
('161415623', 2, '141', 'Khoirun Nisa\' ', 'P', 'Pekalongan', '1989-08-10', 'Islam', 'M Ma\'mur', 'Duyung Dayani', 'Simbang Kulon Gg 1 Buaran Pekalongan', '08976727171'),
('161415650', 2, '141', 'Amilatul Ulya', 'P', 'Pekalongan', '1991-04-09', 'Islam', 'H Abdul Basith', 'Duyung Dayani', 'Wonoyoso Buaran Pekalongan', '08976727171'),
('161415660', 2, '141', 'Ikfina Saida', 'P', 'Pekalongan', '1991-07-18', 'Islam', 'H Ghufron Utsman', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161415664', 2, '141', 'Islahul Afiah', 'P', 'Pekalongan', '1990-10-31', 'Islam', 'H Fauzan', 'Duyung Dayani', 'Kalilembu Karang dadap Pkl', '08976727171'),
('161415665', 2, '141', 'Jazilah', 'P', 'Pekalongan', '1991-02-19', 'Islam', 'Abdurrohman', 'Duyung Dayani', 'Kradenan Gg 9 Pekalongan', '08976727171'),
('161415666', 2, '141', 'Khusnul Khotimah', 'P', 'Pekalongan', '1990-02-14', 'Islam', 'Darjo', 'Duyung Dayani', 'Wonokerto Kulon Pekalongan', '08976727171'),
('161425530', 2, '142', 'Nadiyah', 'P', 'Pekalongan', '1991-03-14', 'Islam', 'H Rahmat', 'Duyung Dayani', 'Jenggot Gg 1 Pekalongan Selatan', '08976727171'),
('161425537', 2, '142', 'Nur Hidayah', 'P', 'Pekalongan', '1991-03-28', 'Islam', 'Zainudin', 'Duyung Dayani', 'Wonoyoso Gg 4', '08976727171'),
('161425550', 2, '142', 'Tuti Salamah', 'P', 'Pekalongan', '1991-09-17', 'Islam', 'Masykur', 'Duyung Dayani', 'Kradenan Pekalongan', '08976727171'),
('161425552', 2, '142', 'Umi Salamah', 'P', 'Pekalongan', '1990-10-12', 'Islam', 'Mahsun', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161425553', 2, '142', 'Vinapsiyah', 'P', 'Pekalongan', '1990-02-17', 'Islam', 'Wahamin', 'Duyung Dayani', 'Boto Sari Peninggaran', '08976727171'),
('161425577', 2, '142', 'Noviatun Khasanah', 'P', 'Pekalongan', '1990-11-04', 'Islam', 'Tarsono', 'Duyung Dayani', 'Menguneng Warungasem Batang', '08976727171'),
('161425582', 2, '142', 'Nurul Qori\'ah', 'P', 'Pekalongan', '1991-11-21', 'Islam', 'Tazali', 'Duyung Dayani', 'Karanganyar Tirto Pekalongan', '08976727171'),
('161425584', 2, '142', 'Rini Yuliani', 'P', 'Pekalongan', '1991-07-27', 'Islam', 'Slamet', 'Duyung Dayani', 'Setono Pekalongan', '08976727171'),
('161425586', 2, '142', 'Risdianah', 'P', 'Pekalongan', '1989-11-24', 'Islam', 'Sumardi', 'Duyung Dayani', 'Jenggot Gg 5 Pekalongan Selatan', '08976727171'),
('161425588', 2, '142', 'Rusmalina', 'P', 'Pekalongan', '1989-11-30', 'Islam', 'Tazal (Alm)', 'Duyung Dayani', 'Jenggot Gg 5 Pekalongan Selatan', '08976727171'),
('161425591', 2, '142', 'Siti Zuliana', 'P', 'Pekalongan', '1991-01-14', 'Islam', 'Madhirin', 'Duyung Dayani', 'Kranji Kedungwuni', '08976727171'),
('161425627', 2, '142', 'Nadiyatussa\'adah', 'P', 'Pekalongan', '1990-11-19', 'Islam', 'Khusnan CR', 'Duyung Dayani', 'Bligo Pekalongan', '08976727171'),
('161425628', 2, '142', 'Naelal Khusna', 'P', 'Pemalang', '1990-10-18', 'Islam', 'Kasad', 'Duyung Dayani', 'Ulujami Pemalang', '08976727171'),
('161425643', 2, '142', 'Shofyana Fikriyani', 'P', 'Pekalongan', '1991-07-04', 'Islam', 'M Syifa', 'Duyung Dayani', 'Bligo Buaran Pekalongan', '08976727171'),
('161425648', 2, '142', 'Uswatun Khasanah', 'P', 'Pekalongan', '1991-02-19', 'Islam', 'Murtadlo', 'Duyung Dayani', 'Simbang Kulon Gg 1 Buaran Pekalongan', '08976727171'),
('161425677', 2, '142', 'Munadiya Haq', 'P', 'Pekalongan', '1991-02-11', 'Islam', 'H Hasan Syukur', 'Duyung Dayani', 'Jl Raya Jenggot', '08976727171'),
('161425680', 2, '142', 'Naila Firkhah', 'P', 'Pekalongan', '1991-01-21', 'Islam', 'Abu Bahro', 'Duyung Dayani', 'Galang Pengampon Wonopringgo', '08976727171'),
('161425683', 2, '142', 'Niswatul Khalimah', 'P', 'Pekalongan', '1990-12-07', 'Islam', 'H Ahmaduri', 'Duyung Dayani', 'Simbang Kulon Gg 5 Buaran Pekalongan', '08976727171'),
('161425694', 2, '142', 'Vina Rochah', 'P', 'Pekalongan', '1991-01-10', 'Islam', 'Abdurichim', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161425695', 2, '142', 'Wafa Nahliya', 'P', 'Pekalongan', '1990-11-27', 'Islam', 'Abdul Rosyid', 'Duyung Dayani', 'Kradenan Gg 9 Pekalongan', '08976727171'),
('161426025', 2, '142', 'Nova Daniyati Ulia', 'P', 'Pekalongan', '1990-11-17', 'Islam', 'H Abdul Haq', 'Duyung Dayani', 'Jl Tanjung Pramuka Simbang Kulon', '08976727171'),
('161515509', 2, '151', 'Ana Nafila Sari', 'P', 'Pekalongan', '1991-05-24', 'Islam', 'Syamsuddin', 'Duyung Dayani', 'Simbang Wetan Pekalongan', '08976727171'),
('161515513', 2, '151', 'Atik Nahdliyah', 'P', 'Pekalongan', '1991-07-27', 'Islam', 'Tanuri', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161515520', 2, '151', 'Hani Alfiani', 'P', 'Pekalongan', '1991-06-01', 'Islam', 'Amin Khoer', 'Duyung Dayani', 'Kradenan Gg 1 Pekalongan', '08976727171'),
('161515521', 2, '151', 'Hanikmah', 'P', 'Pekalongan', '1991-01-26', 'Islam', 'Sugeng', 'Duyung Dayani', 'Paweden', '08976727171'),
('161515561', 2, '151', 'Hinda Aliana', 'P', 'Pekalongan', '1991-03-28', 'Islam', 'H Ta\'ibin', 'Duyung Dayani', 'Jenggot Gg 4 Pekalongan', '08976727171'),
('161515563', 2, '151', 'Iis Maesaroh', 'P', 'Pekalongan', '1989-09-30', 'Islam', 'Zakaria', 'Duyung Dayani', 'Soko Pekalongan Selatan', '08976727171'),
('161515606', 2, '151', 'Anisul Fuadah', 'P', 'Pekalongan', '1990-08-27', 'Islam', 'H M Kastawi', 'Duyung Dayani', 'Kaliketing Kalimojosari Doro', '08976727171'),
('161515607', 2, '151', 'Atuk Umairoh', 'P', 'Pekalongan', '1991-12-22', 'Islam', 'H Khadliri Rahmat', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161515608', 2, '151', 'Dewi Agustina Mauila', 'P', 'Pekalongan', '1991-08-27', 'Islam', 'Kusnan', 'Duyung Dayani', 'Bligo RT14/RW5 Buaran Pekalongan', '08976727171'),
('161515610', 2, '151', 'Dwi Nisa Andini', 'P', 'Pekalongan', '1991-05-18', 'Islam', 'Harkop Milono', 'Duyung Dayani', 'Rowokembu Utara Wonopringgo', '08976727171'),
('161515654', 2, '151', 'Dzakirotul Ilmi', 'P', 'Pekalongan', '1990-10-24', 'Islam', 'H Abdul Basits', 'Duyung Dayani', 'Buaran Gg 2 Pekalongan', '08976727171'),
('161515655', 2, '151', 'Falasifah', 'P', 'Pekalongan', '1991-07-08', 'Islam', 'H Kasmuri', 'Duyung Dayani', 'Buaran Gg 4 Pekalongan', '08976727171'),
('161515658', 2, '151', 'Hidayatul Hasanah', 'P', 'Pekalongan', '1991-05-20', 'Islam', 'Basari (Alm)', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161516026', 2, '151', 'A\'yun Nafi\'ah', 'P', 'Pekalongan', '1990-06-16', 'Islam', 'Nur Abidin', 'Duyung Dayani', 'Pegaden Tengah Wonopringgo', '08976727171'),
('161525403', 2, '152', 'Muhammad Saifullah', 'L', 'Pekalongan', '1991-02-07', 'Islam', 'Syamsul Ma\'arif', 'Duyung Dayani', 'Banyurip Ageng Pekalongan', '08976727171'),
('161525404', 2, '152', 'Muhammad Wildan Mustamal', 'L', 'Pekalongan', '1991-09-02', 'Islam', 'Mustain', 'Duyung Dayani', 'Buaran Gg 3 Pekalongan', '08976727171'),
('161525407', 2, '152', 'Nur Wakhidin', 'L', 'Pekalongan', '1990-03-11', 'Islam', 'Warsim', 'Duyung Dayani', 'Curug Tirto Pekalongan', '08976727171'),
('161525408', 2, '152', 'Sigit Nugroho', 'L', 'Pekalongan', '1991-07-14', 'Islam', 'Mustain', 'Duyung Dayani', 'Karanganyar Tirto Pekalongan', '08976727171'),
('161525409', 2, '152', 'Syamsul Ma\'arif', 'L', 'Pekalongan', '1989-08-22', 'Islam', 'Zaenudin', 'Duyung Dayani', 'Pucung Tirto Pekalongan', '08976727171'),
('161525411', 2, '152', 'Tsaqiful Ghofur', 'L', 'Pekalongan', '1991-11-17', 'Islam', 'Zahidin', 'Duyung Dayani', 'Kertoharjo Gg 16 Pekalongan Selatan', '08976727171'),
('161525456', 2, '152', 'Saeful Bahri', 'L', 'Pekalongan', '1990-10-03', 'Islam', 'Kabul', 'Duyung Dayani', 'Sijambe Wonokerto Pekalongan', '08976727171'),
('161525457', 2, '152', 'Sittin Muhammad', 'L', 'Pekalongan', '1991-04-02', 'Islam', 'Da\'an (Alm)', 'Duyung Dayani', 'Wonoyoso Gg 5 Buaran Pekalongan', '08976727171'),
('161525458', 2, '152', 'Syamsul Arifin', 'L', 'Pekalongan', '1989-12-03', 'Islam', 'Nasikhin', 'Duyung Dayani', 'Pucung Tirto Pekalongan', '08976727171'),
('161525459', 2, '152', 'Zainul Fanani', 'L', 'Pekalongan', '1990-06-07', 'Islam', 'Abdul Fatah', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161525505', 2, '152', 'Setio Budi', 'L', 'Pekalongan', '1991-10-22', 'Islam', 'Slamet Efendi', 'Duyung Dayani', 'Kertijayan Gg 10 Buaran Pekalongan', '08976727171'),
('161525528', 2, '152', 'Lina Lutfiana Rosyada', 'P', 'Pekalongan', '1990-12-24', 'Islam', 'Abdul Karim', 'Duyung Dayani', 'Kali Jambe Sragi Pekalongan ', '08976727171'),
('161525538', 2, '152', 'Nur Hidayah ', 'P', 'Pemalang', '1989-12-01', 'Islam', 'Muklis', 'Duyung Dayani', 'Pendowo, Bodeh', '08976727171'),
('161525543', 2, '152', 'Rita Firdiawati', 'P', 'Pekalongan', '1991-02-11', 'Islam', ' Wajuri', 'Duyung Dayani', 'Wonoyoso Gg 1 Buaran Pekalongan', '08976727171'),
('161525548', 2, '152', 'Siti Kaisa Iqlima', 'P', 'Pekalongan', '1991-06-29', 'Islam', 'Bisri Mustofa', 'Duyung Dayani', 'Gg Pendowo Limo Prawasan Kedungwuni', '08976727171'),
('161525549', 2, '152', 'Siti Zuhrotun Nisa', 'P', 'Pekalongan', '1992-03-10', 'Islam', 'Kasduki', 'Duyung Dayani', 'Legok Gunung Wonopringgo', '08976727171'),
('161525574', 2, '152', 'Min Indillah', 'P', 'Pekalongan', '1992-01-11', 'Islam', 'Muslihin', 'Duyung Dayani', 'Paesan Tengah Kedungwuni', '08976727171'),
('161525576', 2, '152', 'Nia Ubaidillah', 'P', 'Batang', '1991-05-18', 'Islam', 'Zahidin', 'Duyung Dayani', 'Candiareng Warungasem Batang', '08976727171'),
('161525578', 2, '152', 'Nur Aisyah', 'P', 'Pekalongan', '1990-10-25', 'Islam', 'Yasin', 'Duyung Dayani', 'Kradenan Gg 8 Pekalongan', '08976727171'),
('161525580', 2, '152', 'Nur Khotimah', 'P', 'Pekalongan', '1990-09-27', 'Islam', 'A Nasikhin', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161525590', 2, '152', 'Siti Solikhah', 'P', 'Pekalongan', '1989-11-03', 'Islam', 'Rahmad', 'Duyung Dayani', 'Krapyak Lor Pekalongan', '08976727171'),
('161525625', 2, '152', 'Lutfin Nisa\'', 'P', 'Pekalongan', '1991-01-20', 'Islam', 'Moh Nasta\'in', 'Duyung Dayani', 'Jl Raya Kertoharjo Pekalongan', '08976727171'),
('161525631', 2, '152', 'Niswatul Khalimah', 'P', 'Pekalongan', '1992-08-29', 'Islam', 'Khudhori', 'Duyung Dayani', 'Simbang Wetan Gg 1 Pekalongan', '08976727171'),
('161525633', 2, '152', 'Nur Aini', 'P', 'Batang', '1991-01-16', 'Islam', 'H M Daryono', 'Duyung Dayani', 'Sijono Warungasem Batang', '08976727171'),
('161525639', 2, '152', 'Nur Khasanah', 'P', 'Pekalongan', '1990-05-17', 'Islam', 'Hasani', 'Duyung Dayani', 'Buaran Gg 4 Pekalongan', '08976727171'),
('161525640', 2, '152', 'Qonitatul Ilah', 'P', 'Pekalongan', '1991-10-27', 'Islam', 'H Maftukhin', 'Duyung Dayani', 'Samborejo Tirto Pekalongan', '08976727171'),
('161525642', 2, '152', 'Rohmah', 'P', 'Pekalongan', '1990-09-24', 'Islam', 'Muchawal', 'Duyung Dayani', 'Simbang Kulon Buaran Pekalongan', '08976727171'),
('161525671', 2, '152', 'Lini Izatun Nafsi', 'P', 'Pekalongan', '1992-11-11', 'Islam', 'Abdul Jalil', 'Duyung Dayani', 'Paesan Tengah Kedungwuni', '08976727171'),
('161525681', 2, '152', 'Nasihatul Khasanah', 'P', 'Pekalongan', '1991-02-27', 'Islam', 'Fahrurozi', 'Duyung Dayani', 'Karangsari Karangayar', '08976727171'),
('161525684', 2, '152', 'Nur Aisyah', 'P', 'Pekalongan', '1990-05-16', 'Islam', 'Asrori', 'Duyung Dayani', 'Medono Gg Ponpes Al Mubarok', '08976727171'),
('161525688', 2, '152', 'Rofiqoh', 'P', 'Pekalongan', '1991-02-06', 'Islam', 'A Syirojudin', 'Duyung Dayani', 'Jl Sadewa Duwet Bojong', '08976727171'),
('161525692', 2, '152', 'Thoyyibah', 'P', 'Pekalongan', '1991-03-28', 'Islam', 'H A Su\'ud', 'Duyung Dayani', 'Simbang Kulon Gg 3 Buaran Pekalongan', '08976727171'),
('161615518', 2, '161', 'Fitriyah', 'P', 'Pekalongan', '1991-04-16', 'Islam', 'Samudi', 'Duyung Dayani', 'Ngalian RT 3 RW 1', '08976727171'),
('161615525', 2, '161', 'Khikmatun Nisa', 'P', 'Pekalongan', '1991-07-13', 'Islam', 'Shobirin', 'Duyung Dayani', 'Pandanarum RT 11 RW 3', '08976727171'),
('161615555', 2, '161', 'Anik Atikah', 'P', 'Pekalongan', '1991-09-01', 'Islam', 'Warito', 'Duyung Dayani', 'Silirejo Tirto Pekalongan', '08976727171'),
('161615562', 2, '161', 'Ifa Mufida', 'P', 'Pekalongan', '1989-12-17', 'Islam', 'Nur Rohman', 'Duyung Dayani', 'Jenggot Gg 1 Pekalongan Selatan', '08976727171'),
('161615566', 2, '161', 'Ira Munazilah', 'P', 'Pekalongan', '1991-07-13', 'Islam', 'wiharjo', 'Duyung Dayani', 'Wiradesa Pekalongan', '08976727171'),
('161615567', 2, '161', 'Istiqomah', 'P', 'Pekalongan', '1991-04-21', 'Islam', 'Muzaini', 'Duyung Dayani', 'Jl Raya Kertijayan Buaran Pekalongan', '08976727171'),
('161615570', 2, '161', 'Khusnul Khuluq', 'P', 'Pekalongan', '1991-06-19', 'Islam', 'Muzaini', 'Duyung Dayani', 'Jl Raya Kertijayan Buaran Pekalongan', '08976727171'),
('161615571', 2, '161', 'Maesaroh', 'P', 'Pekalongan', '1989-11-21', 'Islam', 'Rasmidi', 'Duyung Dayani', 'Tratebang Wonokero Pekalongan', '08976727171'),
('161615599', 2, '161', 'Zahrotun Nadhifah', 'P', 'Pekalongan', '1989-11-19', 'Islam', 'Sapali', 'Duyung Dayani', 'Kertijayan Gg 8', '08976727171'),
('161615604', 2, '161', 'Ana Nadiya', 'P', 'Pekalongan', '1991-08-22', 'Islam', 'Limaizi', 'Duyung Dayani', 'Simbang Kulon Gg 1 Buaran Pekalongan', '08976727171'),
('161615619', 2, '161', 'Istifadha Fikry', 'P', 'Pekalongan', '1991-01-21', 'Islam', 'Masyhuri', 'Duyung Dayani', 'Paesan Tengan Kedungwuni', '08976727171'),
('161615620', 2, '161', 'Khairatu La\'aliyatina', 'P', 'Pekalongan', '1989-09-20', 'Islam', 'Iskandar', 'Duyung Dayani', 'Jetak Lengkong Wonopringgo', '08976727171'),
('161615622', 2, '161', 'Khairun Nisa\' ', 'P', 'Pekalongan', '1990-10-22', 'Islam', 'Kholidin', 'Duyung Dayani', 'Kalilembu Karang dadap Pkl', '08976727171'),
('161615624', 2, '161', 'Laily Nurul Mufida', 'P', 'Pekalongan', '1991-05-19', 'Islam', 'H Masykuri', 'Duyung Dayani', 'Jl Letjen Suprapto Pekalongan', '08976727171'),
('161615626', 2, '161', 'Mahmudah', 'P', 'Pekalongan', '1991-03-14', 'Islam', 'Khusaini', 'Duyung Dayani', 'Banyurip Alit Pekalongan', '08976727171'),
('161615656', 2, '161', 'Fatechah', 'P', 'Jakarta', '1989-03-14', 'Islam', 'Abdul Latif', 'Duyung Dayani', 'Cikarang Bekasi Jakarta Timur', '08976727171'),
('161615661', 2, '161', 'Ila Ilmiyah', 'P', 'Pekalongan', '1992-02-23', 'Islam', 'Abdul Mufid', 'Duyung Dayani', 'Bligo Pekalongan', '08976727171'),
('161615667', 2, '161', 'Khusnul Khotimah ', 'P', 'Pekalongan', '1991-08-09', 'Islam', 'Chalimi', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161615670', 2, '161', 'Lailatul Munawaroh', 'P', 'Jakarta', '1991-10-30', 'Islam', 'Damiri', 'Duyung Dayani', 'Legok Gunung Wonopringgo', '08976727171'),
('161615696', 2, '161', 'Zidni Makarima', 'P', 'Pekalongan', '1991-12-03', 'Islam', 'H Utsman Munazin', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161625539', 2, '162', 'Nur Hidayah', 'P', 'Pekalongan', '1992-05-28', 'Islam', 'Dalari', 'Duyung Dayani', 'Doro Rejo Pekalongan', '08976727171'),
('161625541', 2, '162', 'Risalatul Khasanah', 'P', 'Pekalongan', '1990-11-16', 'Islam', 'Abdul Malik', 'Duyung Dayani', 'Ngalian Tirto', '08976727171'),
('161625544', 2, '162', 'Rixzadini', 'P', 'Pekalongan', '1991-01-01', 'Islam', 'Wartani', 'Duyung Dayani', 'Wonosirno, Kutosari, Karanganyar', '08976727171'),
('161625545', 2, '162', 'Rohayati', 'P', 'Pekalongan', '1992-02-12', 'Islam', 'Nur Sholeh', 'Duyung Dayani', 'Doro Rejo Pekalongan', '08976727171'),
('161625547', 2, '162', 'Siti Fatimah', 'P', 'Pekalongan', '1990-08-16', 'Islam', 'Hasanudin', 'Duyung Dayani', 'Kradenan Gg 8 Pekalongan', '08976727171'),
('161625551', 2, '162', 'Umi Nadhifah', 'P', 'Pekalongan', '1990-12-30', 'Islam', 'Sapari', 'Duyung Dayani', 'Ulujami Pemalang', '08976727171'),
('161625554', 2, '162', 'Alfiyyatul Aniqoh', 'P', 'Pekalongan', '1991-08-09', 'Islam', 'Shodiq Ahmad', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161625573', 2, '162', 'Mardliyastutik', 'P', 'Pekalongan', '1991-10-13', 'Islam', 'Muzabidin', 'Duyung Dayani', 'Simbang Wetan Pekalongan', '08976727171'),
('161625585', 2, '162', 'Ririn Fahmilati Hasanah', 'P', 'Pekalongan', '1991-10-08', 'Islam', 'Suratman', 'Duyung Dayani', 'Randusari Doro Pekalongan', '08976727171'),
('161625587', 2, '162', 'Risma Nailis Zulfi', 'P', 'Pekalongan', '1992-01-13', 'Islam', 'Ridwan', 'Duyung Dayani', 'Meduri Tirto', '08976727171'),
('161625589', 2, '162', 'Rusmiyati', 'P', 'Pekalongan', '1991-06-26', 'Islam', 'Subkhi', 'Duyung Dayani', 'Simbang Kulon Gg 3 Buaran Pekalongan', '08976727171'),
('161625592', 2, '162', 'Siti Zumrotun Nisa\'', 'P', 'Kendal', '1991-12-13', 'Islam', 'Romdlon', 'Duyung Dayani', 'Patebon Kendal', '08976727171'),
('161625601', 2, '162', 'Aini Sulistianingrum', 'P', 'Pekalongan', '1991-10-09', 'Islam', 'Majidin', 'Duyung Dayani', 'Simbang Kulon Gg 2 Buaran Pekalongan', '08976727171'),
('161625630', 2, '162', 'Najibah Kamilah', 'P', 'Pekalongan', '1991-04-19', 'Islam', 'M Ilyas Ali', 'Duyung Dayani', 'Simbang Wetan Pekalongan', '08976727171'),
('161625634', 2, '162', 'Nur Alfiah Salmah', 'P', 'Pekalongan', '1991-04-03', 'Islam', 'Hasyim Abdullah', 'Duyung Dayani', 'Krapyak Kidul Pekalongan', '08976727171'),
('161625636', 2, '162', 'Nur Ismalianah', 'P', 'Pekalongan', '1991-04-12', 'Islam', 'Kastolani', 'Duyung Dayani', 'Kertoharjo', '08976727171'),
('161625637', 2, '162', 'Nur Istikhor', 'P', 'Pekalongan', '1990-12-02', 'Islam', 'H M Suthon', 'Duyung Dayani', 'Pabean Pekalongan', '08976727171'),
('161625644', 2, '162', 'Silvi Diana', 'P', 'Pekalongan', '1991-05-25', 'Islam', 'Kholimin', 'Duyung Dayani', 'Simbang Kulon Gg 4 Buaran Pekalongan', '08976727171'),
('161625646', 2, '162', 'Tiffaini', 'P', 'Pekalongan', '1991-11-11', 'Islam', 'Ismail H Amin', 'Duyung Dayani', 'Jl Raya Kertijayan Buaran Pekalongan', '08976727171'),
('161625647', 2, '162', 'Titis Nariyah', 'P', 'Pekalongan', '1991-08-03', 'Islam', 'Kusno Mujiono', 'Duyung Dayani', 'Kesesi, Pekalongan', '08976727171'),
('161625649', 2, '162', 'Alaina Intany', 'P', 'Pekalongan', '1991-07-17', 'Islam', 'Asyrofi Mukhtar', 'Duyung Dayani', 'Kertijayan Gg 5 Buaran Pekalongan', '08976727171'),
('161625674', 2, '162', 'Masruroh', 'P', 'Pekalongan', '1991-05-21', 'Islam', 'Darochim', 'Duyung Dayani', 'Gumawang Wiradesa Pekalongan', '08976727171'),
('161625678', 2, '162', 'Mundi Arizah Ulfatunnisa', 'P', 'Pekalongan', '1991-01-26', 'Islam', 'Ahmadi', 'Duyung Dayani', 'Sidomulyo, Kesesi Pekalongan', '08976727171'),
('161625685', 2, '162', 'Nur Siyah', 'P', 'Pekalongan', '1991-08-23', 'Islam', 'Cardan', 'Duyung Dayani', 'Legok Gunung Wonopringgo', '08976727171'),
('161625687', 2, '162', 'Rizqi Amalia', 'P', 'Pekalongan', '1991-07-30', 'Islam', 'H Faelasuf', 'Duyung Dayani', 'Bligo Buaran Pekalongan', '08976727171'),
('161625691', 2, '162', 'Sri Lestari', 'P', 'Pekalongan', '1991-01-14', 'Islam', 'H Abdul Ghofur', 'Duyung Dayani', 'Kebonsari Gg Masjid', '08976727171');

-- --------------------------------------------------------

--
-- Table structure for table `tbprodi`
--

CREATE TABLE `tbprodi` (
  `kd_prodi` char(3) NOT NULL,
  `prodi` varchar(45) NOT NULL,
  `kd_jur` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbprodi`
--

INSERT INTO `tbprodi` (`kd_prodi`, `prodi`, `kd_jur`) VALUES
('141', 'D3 - Teknik Kimia', '140'),
('142', 'D4 - Teknik Kimia', '140'),
('151', 'D3 - Teknik Informatika', '150'),
('152', 'D4 - Teknik Informatika', '150'),
('153', 'D2 - Teknik Informatika', '150'),
('161', 'S1 - Ekonomi', '160'),
('162', 'S2 - Ekonomi Bisnis', '160');

-- --------------------------------------------------------

--
-- Table structure for table `tbthangkatan`
--

CREATE TABLE `tbthangkatan` (
  `id_ta` tinyint(4) NOT NULL,
  `tahun_angkatan` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbthangkatan`
--

INSERT INTO `tbthangkatan` (`id_ta`, `tahun_angkatan`) VALUES
(1, '2014'),
(2, '2015'),
(3, '2016'),
(4, '2017'),
(5, '2018'),
(6, '2019'),
(7, '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `lev_user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama_user`, `pass`, `lev_user`) VALUES
('ID001', 'erikwibowo', 'f6ef0203c224bf53285719168118c58e', 'Administrator'),
('ID002', 'taufiq', '007bc9a0f8019341a6137594c864c09d', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD PRIMARY KEY (`kd_jur`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tbmahasiswa`
--
ALTER TABLE `tbmahasiswa`
  ADD PRIMARY KEY (`nim`,`id_ta`,`kd_prodi`),
  ADD KEY `kd_prodi` (`kd_prodi`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `tbprodi`
--
ALTER TABLE `tbprodi`
  ADD PRIMARY KEY (`kd_prodi`,`kd_jur`),
  ADD KEY `kd_jur` (`kd_jur`);

--
-- Indexes for table `tbthangkatan`
--
ALTER TABLE `tbthangkatan`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblogin`
--
ALTER TABLE `tblogin`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbmahasiswa`
--
ALTER TABLE `tbmahasiswa`
  ADD CONSTRAINT `tbmahasiswa_ibfk_1` FOREIGN KEY (`kd_prodi`) REFERENCES `tbprodi` (`kd_prodi`),
  ADD CONSTRAINT `tbmahasiswa_ibfk_2` FOREIGN KEY (`id_ta`) REFERENCES `tbthangkatan` (`id_ta`);

--
-- Constraints for table `tbprodi`
--
ALTER TABLE `tbprodi`
  ADD CONSTRAINT `tbprodi_ibfk_1` FOREIGN KEY (`kd_jur`) REFERENCES `tbjurusan` (`kd_jur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
