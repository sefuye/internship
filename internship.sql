-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 03:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'admin@gmail.com', 'roottoor');

-- --------------------------------------------------------

--
-- Table structure for table `apply_intern_post`
--

CREATE TABLE `apply_intern_post` (
  `id_apply` int(11) NOT NULL,
  `id_internpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `apply_intern_post`
--

INSERT INTO `apply_intern_post` (`id_apply`, `id_internpost`, `id_company`, `id_user`, `status`) VALUES
(17, 31, 14, 12, 2),
(30, 38, 20, 17, 2),
(31, 39, 22, 17, 1),
(32, 38, 20, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(16701, 'Addi Ark\'ay', 1121),
(16702, 'Addis \'Alem', 1121),
(16703, 'Addis Zemen', 1121),
(16704, 'Adet', 1121),
(16705, 'Bahir Dar', 1121),
(16706, 'Bati', 1121),
(16707, 'Bichena', 1121),
(16708, 'Bure', 1121),
(16709, 'Chagni', 1121),
(16710, 'Dabat', 1121),
(16711, 'Dangla', 1121),
(16712, 'Debark', 1121),
(16713, 'Debre Birhan', 1121),
(16714, 'Debre Mark\'os', 1121),
(16715, 'Debre Sina', 1121),
(16716, 'Debre Tabor', 1121),
(16717, 'Debre Werk', 1121),
(16718, 'Dejen', 1121),
(16719, 'Dese', 1121),
(16720, 'Finote Selam', 1121),
(16721, 'Gondar', 1121),
(16722, 'K\'obo', 1121),
(16723, 'Kembolcha', 1121),
(16724, 'Kemise', 1121),
(16725, 'Lalibela', 1121),
(16726, 'Mott\'a', 1121),
(16727, 'Nefas Mewcha', 1121),
(16728, 'Sek\'ot\'a', 1121),
(16729, 'Shewa Robit', 1121),
(16730, 'Weldiya', 1121),
(16731, 'Were Ilu', 1121),
(16732, 'Werota', 1121);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aboutme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(20, ' ??? ??? ??????', 'Amhara Media Corporation/ አማራ ሚዲያ ኮርፖሬሽን ', 'Ethiopia', 'Amhara', 'Bahir Dar', '2519010203', 'https://www.amharaweb.com/', 'ammainfo@amharaweb.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'የአማራ ሚዲያ ኮርፖሬሽን (አሚኮ) በ1993 ዓ.ም የተቋቋመ ሚዲያ ሲሆን ተጠሪነቱ ለአማራ ክልል ምክር ቤት ነው፡፡ ድርጅቱ የተቋቋመበት ዓላማ የክልሉን ባህል፣ ወግ፣ እሴት በማጠናከር እና ኹለንተናዊ መቀራረብን በመፍጠር የክልሉን ሕዝብ ወደ ተሻለ ልዕልና ማድረስ ነው፡፡ በሀገሪቱ ሰላምና ዴሞክራሲ እንዲሰፍን የበኩሉን ሚና እየተወጣ ያለ ሚዲያ ነው፡፡ በስሩም ከአማርኛ በተጨማሪ በ6 ቋንቋዎች ማለትም በኽ', '62cc717cf2ab1.png', '2022-07-11 18:52:45', 1),
(22, 'Bahirdar Ict Business incubation center', 'Bahirdar Ict Business incubation center', 'Ethiopia', 'Amhara', 'Bahir Dar', '2510102030', 'http://www.ictincubation.com/', 'ictinfo@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'Incubation, as the word suggests, is a program designed to accelerate the development of new/first generation entrepreneurial companies, through a series of support services. Information and Communication Technology (ICT), in today\'s world, has hardly lef', '62cc823509f2b.jpg', '2022-07-11 20:04:05', 1),
(23, 'beki', 'bewuketu', 'Ethiopia', 'Amhara', 'Bahir Dar', '0987654321', 'beki.com', 'beki@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'dcvfbgnj,mhngdb', '62cd32f5b7642.png', '2022-07-12 08:38:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(69, 'ET', 'Ethiopia', 251);

-- --------------------------------------------------------

--
-- Table structure for table `intern_post`
--

CREATE TABLE `intern_post` (
  `id_internpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `interntitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `minimumsalary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maximumsalary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `intern_post`
--

INSERT INTO `intern_post` (`id_internpost`, `id_company`, `interntitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(30, 14, 'Bus Analytics Spec', '<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">This Internship is eligible for the following work arrangements :Flex Time</ul>\\r\\n</ul>\\r\\n<p><br style=\\\"padding: 0px; margin: 0px;\\\" /><br style=\\\"padding: 0px; margin: 0px;\\\" /></p>\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">The Services Insights team is chartered to enable positive business outcomes by driving right behaviors and decisions through bold insights. The&nbsp;</ul>\\r\\n</ul>\\r\\n<p><span class=\\\"hlite\\\" style=\\\"padding: 0px; margin: 0px; font-weight: bold;\\\">Microsoft</span></p>\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">&nbsp;Services Insights team is looking for a BI Program Manager with deep experience enabling solutions with data platform, analytics and integrated data. The role requires a broad range of industry knowledge and a minimum of 10 years implementation experience.</ul>', '8000', '80000', '9', 'MCA', '2017-10-03 15:16:26'),
(31, 14, 'Consultant', '<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">As a&nbsp;</ul>\\r\\n</ul>\\r\\n<p><span class=\\\"hlite\\\" style=\\\"padding: 0px; margin: 0px; font-weight: bold;\\\">Microsoft</span></p>\\r\\n<ul class=\\\"listing mt10\\\" style=\\\"padding: 0px; margin: 10px 0px 0px; font-family: Roboto, sans-serif; list-style: none; font-size: 13px; line-height: 18px; color: #666666; word-wrap: break-word;\\\">&nbsp;consultant, you will deliver quality engagements with your expertise, either as an advisor, reviewer or resource in high profile projects to ensure customer value. The ideal candidate must have the ability to combine their technical skills, creativity and customer focus in order to deliver great solutions to the customers and ensure they get the best out of our technologies and solutions. Person in this position should be able to focus on the development of customer business agility and business value, and deep experience with technologies.</ul>', '60000', '85000', '7', 'BCA', '2017-10-03 15:17:09'),
(38, 20, 'Amhara Media Corporation/ አማራ ሚዲያ ኮርፖሬሽን ', '<p><span style=\\\"color: #eaeaea; font-family: \\\'Open Sans\\\', arial, sans-serif; font-size: 20px; background-color: #222222;\\\">የአማራ ሚዲያ ኮርፖሬሽን (አሚኮ) በ1993 ዓ.ም የተቋቋመ ሚዲያ ሲሆን ተጠሪነቱ ለአማራ ክልል ምክር ቤት ነው፡፡ ድርጅቱ የተቋቋመበት ዓላማ የክልሉን ባህል፣ ወግ፣ እሴት በማጠናከር እና ኹለንተናዊ መቀራረብን በመፍጠር የክልሉን ሕዝብ ወደ ተሻለ ልዕልና ማድረስ ነው፡፡ በሀገሪቱ ሰላምና ዴሞክራሲ እንዲሰፍን የበኩሉን ሚና እየተወጣ ያለ ሚዲያ ነው፡፡ በስሩም ከአማርኛ በተጨማሪ በ6 ቋንቋዎች ማለትም በኽምጥኛ፣ አዊኛ፣ ትግርኛ፣ ኦሮምኛ፣ አረብኛ እና በእንግሊዝኛ ቋንቋዎች ስርጭቱን ለአድማጭ፣ ለተመልካች እና አንባቢ እያደረሰ ይገኛል፡፡</span></p>', '1', '2', '4', '', '2022-07-11 09:30:20'),
(39, 22, 'Bahirdar Ict Business incubation center', '<div class=\\\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\\\" style=\\\"overflow-wrap: break-word; margin: 0px; white-space: pre-wrap; font-family: \\\'Segoe UI Historic\\\', \\\'Segoe UI\\\', Helvetica, Arial, sans-serif; color: #050505; font-size: 15px; background-color: #ffffff;\\\">\\r\\n<div dir=\\\"auto\\\" style=\\\"font-family: inherit;\\\">ncubation, as the word suggests, is a program designed to accelerate the development of new/first generation entrepreneurial companies, through a series of support services. Information and Communication Technology (ICT), in today\\\'s world, has hardly left any sector untouched.</div>\\r\\n</div>\\r\\n<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\" style=\\\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: \\\'Segoe UI Historic\\\', \\\'Segoe UI\\\', Helvetica, Arial, sans-serif; color: #050505; font-size: 15px; background-color: #ffffff;\\\">\\r\\n<div dir=\\\"auto\\\" style=\\\"font-family: inherit;\\\">Therefore, ICT Incubation program is carefully designed to address the needs of the ICT sector. It is dedicated to developing an entrepreneurial culture in the region, especially in regard to facilitating creation of enterprise start-ups ; micro, small and medium-sized enterprise (MSME), provide handholding support till the enterprise matures before moving out of the Incubation.</div>\\r\\n</div>\\r\\n<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\" style=\\\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: \\\'Segoe UI Historic\\\', \\\'Segoe UI\\\', Helvetica, Arial, sans-serif; color: #050505; font-size: 15px; background-color: #ffffff;\\\">\\r\\n<div dir=\\\"auto\\\" style=\\\"font-family: inherit;\\\">Acting as a community revitalizer, ICT Incubation programme is designed to develop profitable organizations, create jobs, thereby providing technical, business and marketing support to the entrepreneurs, the Incubatees</div>\\r\\n</div>', '20', '3', '2', '', '2022-07-11 20:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id_mailbox` int(11) NOT NULL,
  `id_fromuser` int(11) NOT NULL,
  `fromuser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_touser` int(11) NOT NULL,
  `subject` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`id_mailbox`, `id_fromuser`, `fromuser`, `id_touser`, `subject`, `message`, `createdAt`) VALUES
(6, 10, 'user', 12, 'hi', '<p>thanks</p>', '2017-10-03 16:12:52'),
(7, 18, 'company', 14, 'hi', '<p><strong>hi</strong></p>', '2019-08-10 12:57:04'),
(8, 15, 'user', 19, '', '', '2022-07-10 03:55:35'),
(9, 20, 'company', 17, 'saaa', '<p>aaaaa</p>', '2022-07-11 18:38:17'),
(10, 17, 'user', 20, 'amhara corporation ', '', '2022-07-11 19:02:09'),
(11, 17, 'user', 20, 'amhara corporation ', '', '2022-07-13 20:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `reply_mailbox`
--

CREATE TABLE `reply_mailbox` (
  `id_reply` int(11) NOT NULL,
  `id_mailbox` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `usertype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply_mailbox`
--

INSERT INTO `reply_mailbox` (`id_reply`, `id_mailbox`, `id_user`, `usertype`, `message`, `createdAt`) VALUES
(0, 7, 14, 'user', '<p>nsc;nc;</p>', '2019-08-10 12:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1119, 'Addis Abeba', 69),
(1120, 'Afar', 69),
(1121, 'Amhara', 69),
(1122, 'Benishangul', 69),
(1123, 'Diredawa', 69),
(1124, 'Gambella', 69),
(1125, 'Harar', 69),
(1126, 'Jigjiga', 69),
(1127, 'Mekele', 69),
(1128, 'Oromia', 69),
(1129, 'Somali', 69),
(1130, 'Southern', 69),
(1131, 'Tigray', 69);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passingyear` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `aboutme` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `skills` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(14, 'm', 'm', 'm@m.com', 'YjEwNTFhOWQ4ODkzNTQyMzYyYWQwOTA1MTc3NWY4ZjY=', 'm', 'm', 'm', '7419452194', 'BE', 'CSE', '2019-08-23', '1999-01-14', '20', 'm', '5d4ebdd24a6ba.pdf', '2c21cb1adbf457fe8d0b54603c9a42e4', 1, 'm', 'm'),
(15, 'samuel', 'aklilu', 's@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'tana', 'addis abeba', 'bahir dar', '0904904909', 'degree', 'computer sicence', '2022-07-04', '1999-01-11', '23', 'ghgh', '62c9f7ddeef38.pdf', '43e77306ef39fb08a7c340ea7cf596e8', 2, 'dfghjk', 'fghjk'),
(16, 'sami', 'ak', 'sam', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'ff', 'ff', 'ff', '0904904909', '', 'ff', '2022-07-27', '2022-07-27', '-1', 'fgh', '62cb1ed7203b5.pdf', 'cb7bdc5d2c7f0a7d752a1389449bc6c5', 1, 'asdfghjklpoiuytrew', 'hgfd'),
(17, 'sami', 'ak', 'sam@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'gg', 'gg', 'gg', '0904904909', '', 'fg', '2021-10-06', '2022-07-10', '0', 'ggg', '62cb1f46b74db.pdf', '173f127ef5583fca4578d9565fc1cfe0', 1, 'df', 'ggg'),
(18, 'aklilu', 'samuel', 'sami@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'fff', 'fff', 'vvv', '1234567890', '', 'volvo', '2022-07-06', '2005-04-29', '17', 'vvvv', '62cf2730b2d84.pdf', 'a3b71b4ee66dcce90f4af632e9a5d2de', 1, 'asd', 'vvvv'),
(19, 'Someone', 'Somebody', 'someone@something.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'HERE', 'Bahir Dar', '', '0123456789', '', 'Computer Engineering', '2021-10-15', '1996-01-21', '26', 'HERE', '62d92074753a5.pdf', '82fdb525eba736fbd486bc7379629358', 1, 'Yeah ME!', 'Bahir Dar University'),
(20, 'Beverly', 'Hills', 'bhills_2850@mailinator.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'HE', 'BD', '', '3105552850', '', 'Textile Engineering ', '2022-07-08', '1995-05-08', '27', 'Pjcsq', '62d94675aedb3.pdf', 'c61fcd1393b2f80d327f63721dcfe7f9', 1, 'asd', 'Gondar University');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_intern_post`
--
ALTER TABLE `apply_intern_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `intern_post`
--
ALTER TABLE `intern_post`
  ADD PRIMARY KEY (`id_internpost`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id_mailbox`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apply_intern_post`
--
ALTER TABLE `apply_intern_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `intern_post`
--
ALTER TABLE `intern_post`
  MODIFY `id_internpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id_mailbox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
