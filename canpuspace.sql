-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 11:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canpuspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `ID` int(250) NOT NULL,
  `EMID` varchar(1000) NOT NULL,
  `MMID` varchar(1000) NOT NULL,
  `APPLICATION` varchar(3000) NOT NULL,
  `STATUS` varchar(200) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`ID`, `EMID`, `MMID`, `APPLICATION`, `STATUS`, `DATE_TIME`) VALUES
(1, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'dHNhbWEyMDlAZ21haWwuY29t', 'I am writing to express my interest in applying for your mentorship program. As a passionate entrepreneur, I believe that I have the drive and determination to succeed in the business world, but I also understand the importance of having a knowledgeable and experienced mentor to guide me along the way.\nMy background includes [briefly describe your experience and any relevant qualifications]. I have a particular interest in [describe your business niche or industry], and I am eager to learn from someone who has achieved success in this field.\nI am confident that I can benefit greatly from your mentorship, and I promise to be a dedicated and committed mentee. Some specific areas that I would like to focus on during our mentorship sessions include [list specific goals or areas of interest], and I am open to any other guidance and advice that you may have to offer.', '0', '2023-04-09 22:33:22'),
(2, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'dHNhbWEyMDlAZ21haWwuY29t', 'lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', '2023-04-09 22:36:37'),
(3, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', 'My name is [FIRST & LAST NAME] and I am a [CLASS YEAR] studying [MAJOR] at UCLA.\nAs a participant in the 2016-2017 UCLA Alumni Mentor Program, I kindly request you please\nbe my mentor for the academic school year. I am interested in becoming a [JOB TITLE], and I\nwould love to learn from your personal and professional experience as [INSERT\nPROFESSION/COMPANY] OR I am interested in pursuing a graduate degree in [INSERT\nFIELD OF STUDY] and would greatly benefit from your academic experience and expertise.\nDuring my time on campus, I have had the chance to [INSERT RELEVANT\nEXPERIENCES/EXTRACURRICULAR ACTIVITIES ] which have given me the opportunity\nto [LESSONS LEARNED].\nI am particularly interested in [INSERT WHAT YOU HOPE TO GAIN], and feel you would be\nthe ideal mentor for me because of your experience with [EXPAND ON WHY YOU CHOSE\nTHEM].\nIf you are interested in mentoring me as part of the 2016-2017 UCLA Alumni Mentor Program,\nplease accept my request through UCLA ONE. I can be reached [INSERT TIMES OF\nAVAILABILITY] at [PHONE NUMBER] or by email at [EMAIL]. Thank you for your time\nand consideration. I look forward to from you soon and hopefully meeting you at the\nOrientation/Meet & Greet on Monday, November 7 from 6 – 8 p.m. in the James West Alumni\nCenter', '2', '2023-04-12 12:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `bio`
--

CREATE TABLE `bio` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `BIO` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bio`
--

INSERT INTO `bio` (`ID`, `MID`, `BIO`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', 'Lorem ipsum dolor sit amet SDCZDVCXFDV.', '0', '2023-04-10 10:45:02'),
(2, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'It\'s hard to beat a person who never gives up.', '0', '2023-04-11 13:43:17'),
(3, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'Don\'t worry about failure; you only have to be right once.', '0', '2023-04-12 11:50:49'),
(4, 'ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', 'Be a Doer, not just a Dreamer.', '0', '2023-04-12 11:58:04'),
(5, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', 'Your most unhappy customers are your greatest source of learning.', '0', '2023-04-12 12:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(250) NOT NULL,
  `MASKING_ID` varchar(2000) DEFAULT NULL,
  `POST_ID` varchar(1000) DEFAULT NULL,
  `COMMENT` varchar(1000) DEFAULT NULL,
  `LIKES` varchar(500) NOT NULL DEFAULT '0',
  `DISLIKES` varchar(500) NOT NULL DEFAULT '0',
  `RANK` varchar(500) NOT NULL DEFAULT '0',
  `MASKER_IMAGE` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(1000) DEFAULT '0',
  `DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `MASKING_ID`, `POST_ID`, `COMMENT`, `LIKES`, `DISLIKES`, `RANK`, `MASKER_IMAGE`, `STATUS`, `DATE`) VALUES
(2, 'dHNhbWEyMDlAZ21haWwuY29t', '11', 'ZCZDCZXDCZXDCSC', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(3, 'dHNhbWEyMDlAZ21haWwuY29t', '21', 'xvxvxvv  vbdvxvxfvxd', '1', '0', '75', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(4, 'dHNhbWEyMDlAZ21haWwuY29t', '21', 'dvdfvdgv', '1', '1', '25', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(5, 'dHNhbWEyMDlAZ21haWwuY29t', '11', 'HI GOOD POST', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(6, 'dHNhbWEyMDlAZ21haWwuY29t', '11', 'KEEP IT UP LOREM ISPUM SAMADRIT DAS FSFSEDFSFSFSFGV SVSVFDVDFVBDVGDS VF SDVFDVG VFDFRGSRFGSRGV', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(7, 'dHNhbWEyMDlAZ21haWwuY29t', '11', 'xdfsdfgd rvsgdrgsdrvgdrgdgb', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(8, 'dHNhbWEyMDlAZ21haWwuY29t', '11', 'vcvbcvbcbcb', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-03'),
(9, 'dHNhbWEyMDlAZ21haWwuY29t', '21', 'NEW COMMENT', '0', '0', '0', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-07'),
(10, 'dHNhbWEyMDlAZ21haWwuY29t', '22', 'hiigvbbv nb  n  ', '1', '1', '25', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '0', '2023-04-08'),
(11, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '4', 'htttttt\nujfyjyfkgfyukgfyuklgkgukugkgkukguk', '1', '0', '75', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-11'),
(12, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '39', 'sdvsrbsdb', '0', '0', '0', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-11'),
(13, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '13', 'fdadadfd', '0', '0', '0', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-11'),
(14, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '19', 'dtgjgjmdmdmm', '1', '0', '75', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-11'),
(15, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '22', 'sfacadvavdvav', '0', '0', '0', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-11'),
(16, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '5', 'wonderful!!!', '1', '0', '75', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '0', '2023-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `comment_dislikes`
--

CREATE TABLE `comment_dislikes` (
  `ID` int(200) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `CID` varchar(500) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_dislikes`
--

INSERT INTO `comment_dislikes` (`ID`, `MID`, `CID`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', '4', '0', '2023-04-07 17:59:34'),
(2, 'dHNhbWEyMDlAZ21haWwuY29t', '10', '0', '2023-04-08 13:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `CID` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`ID`, `MID`, `CID`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', '4', '0', '2023-04-07 17:02:41'),
(2, 'dHNhbWEyMDlAZ21haWwuY29t', '3', '0', '2023-04-07 18:06:03'),
(3, 'dHNhbWEyMDlAZ21haWwuY29t', '10', '0', '2023-04-08 13:13:54'),
(4, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '11', '0', '2023-04-11 13:42:48'),
(5, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '14', '0', '2023-04-11 20:21:25'),
(6, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '16', '0', '2023-04-12 12:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `data_yearly`
--

CREATE TABLE `data_yearly` (
  `DATA ID` varchar(1000) NOT NULL COMMENT 'data id',
  `TITLE` varchar(1000) NOT NULL COMMENT 'title',
  `KEYWORD` varchar(1000) NOT NULL COMMENT 'keyboard',
  `DATE TIME` date NOT NULL COMMENT 'date time',
  `FILE` longtext NOT NULL COMMENT 'file',
  `CONTRIBUTOR ID` varchar(1000) NOT NULL COMMENT 'contributor id',
  `SUBJECT` varchar(1000) NOT NULL COMMENT 'subject',
  `COURSE` varchar(1000) NOT NULL COMMENT 'course',
  `TYPE` varchar(1000) NOT NULL COMMENT 'type',
  `YEAR OF DOCUMENT` varchar(1000) NOT NULL COMMENT 'year of documentation',
  `ID` varchar(700) NOT NULL COMMENT 'id of post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entreprenuer`
--

CREATE TABLE `entreprenuer` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `NAME` varchar(1000) DEFAULT NULL,
  `AGE` varchar(1000) DEFAULT NULL,
  `LOCATION` varchar(1000) DEFAULT NULL,
  `STARTUP` varchar(1000) DEFAULT NULL,
  `STAGE` varchar(1000) DEFAULT NULL,
  `NEED` varchar(1000) DEFAULT NULL,
  `DESCRIBES` varchar(3000) DEFAULT NULL,
  `URL` varchar(1000) DEFAULT NULL,
  `INDUSTRY` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entreprenuer`
--

INSERT INTO `entreprenuer` (`ID`, `MID`, `NAME`, `AGE`, `LOCATION`, `STARTUP`, `STAGE`, `NEED`, `DESCRIBES`, `URL`, `INDUSTRY`, `STATUS`, `DATE_TIME`) VALUES
(1, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'Parthib Dey Sarkar', '20', 'West Bengal', 'CampuSpace', 'Research and Development stage', 'Product Development', 'Social media for startups.', 'https://www.linkedin.com/in/parthibds/', 'Technology', '0', '2023-04-09 00:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `g_chat`
--

CREATE TABLE `g_chat` (
  `MASKIND_ID` varchar(700) NOT NULL COMMENT 'masking id',
  `CHAT` varchar(1000) NOT NULL COMMENT 'chat',
  `DATE TIME` date NOT NULL COMMENT 'date time',
  `CHAT ID` varchar(1000) NOT NULL COMMENT 'chat id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='global chat details';

-- --------------------------------------------------------

--
-- Table structure for table `maskers`
--

CREATE TABLE `maskers` (
  `MASKING_ID` varchar(500) NOT NULL,
  `CID` varchar(500) NOT NULL,
  `SIID` varchar(500) NOT NULL,
  `POPULARITY` varchar(1000) NOT NULL DEFAULT '0',
  `LIKES` int(200) NOT NULL DEFAULT 0,
  `DISLIKES` int(200) NOT NULL DEFAULT 0,
  `REPORTS` int(200) NOT NULL DEFAULT 0,
  `DELETED` int(100) NOT NULL,
  `M_TIMES` varchar(1000) NOT NULL,
  `IMAGES` varchar(2000) NOT NULL DEFAULT './images/sampale.jpg',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maskers`
--

INSERT INTO `maskers` (`MASKING_ID`, `CID`, `SIID`, `POPULARITY`, `LIKES`, `DISLIKES`, `REPORTS`, `DELETED`, `M_TIMES`, `IMAGES`, `DATE_TIME`) VALUES
('c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'softgenicssam278', '1', 0, 0, 0, 0, 'd71c215837712bd1a9f5e605c08559e8a470811c3e3ba13cf2a9729087b79b16', 'http://localhost/anonimly/images/1677988934559.jpg', '2023-04-02 14:11:31'),
('c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', 'slashthunder36306', '1', 0, 0, 0, 0, '1828e784eda1cd7045642123f2212787ded00d09189d33419588e3f601c6b932', 'http://localhost/anonimly/images/221003-elon-musk-se-323p-2db3b8.jpg', '2023-04-12 12:12:52'),
('c3VtaXRlbGVnYW50QGdtYWlsLmNvbQ==', 'c3VtaXRlbGVnYW50QGdtYWlsLmNvbQ==', 'sumitelegant586', '0', 0, 0, 0, 0, '00f0e8731b16bd9a50a953d9a17d1f1be4dc24ac144a114ffe124f3572b3da6f', 'https://img.freepik.com/free-vector/hand-drawn-nft-style-ape-illustration_23-2149622034.jpg?w=826&t=st=1680417068~exp=1680417668~hmac=e8d154827149e0006b54f32cb4f0013ee231fe2ec2bf58e8278eaedf11435a42', '2023-02-04 01:28:28'),
('cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'parthib22ds121', '0', 0, 0, 0, 0, 'f948d8586561e4bd9ad389b4fc9b31fb1ee0c8275babb1f1576c422f0724f8f0', 'http://localhost/anonimly/images/photo_2023-03-03_17-26-13.jpg', '2023-01-28 07:52:27'),
('dHNhbWEyMDlAZ21haWwuY29t', 'dHNhbWEyMDlAZ21haWwuY29t', 'tsama209518', '0', 0, 0, 0, 0, '17478a761532c85c8ae0001d650356f13c83080f931d067b16e776e87439667e', 'http://localhost/anonimly/images/47aa5895-eced-45b8-a01d-148845d5b67a.jpg', '2023-01-22 04:39:40'),
('Ymlzd2FyYWpiaGF0dGFjaGFyeXlhQGdtYWlsLmNvbQ==', 'Ymlzd2FyYWpiaGF0dGFjaGFyeXlhQGdtYWlsLmNvbQ==', 'biswarajbhattacharyya737', '0', 0, 0, 0, 0, '789bae9950eae8e422c25101e2db0d74dd311c4c86c82b337c884f8fc35db557', 'https://img.freepik.com/free-vector/hand-drawn-happy-black-person-illustration_23-2149454431.jpg?w=826&t=st=1680417053~exp=1680417653~hmac=da5f4240d987a9ec7880f41a25e40b5eb94f58f69f36347b6432057884761840', '2023-02-04 07:40:13'),
('YWNlYmx1ZTU2N0BnbWFpbC5jb20=', 'YWNlYmx1ZTU2N0BnbWFpbC5jb20=', 'aceblue567926', '0', 0, 0, 0, 0, '8d75e3bd052a0735a1e896e2f3f2a40c9eefe3e18ad5bed54fe52cb1abc45ff3', 'https://img.freepik.com/free-vector/hand-drawn-chinese-new-year-lucky-money-illustration_23-2149232638.jpg?w=826&t=st=1680417056~exp=1680417656~hmac=ccad0384a294e527c8cd7d3cefef4f17f21555028936b54eae3bcdaceb441895', '2023-04-02 16:34:30'),
('ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'dasanurag020102725', '0', 0, 0, 0, 0, '455ddcb7232c7e6d4b84aaaf554df929f9133ba6a19d20a494cfe89e6de0b7cd', 'https://img.freepik.com/free-vector/hand-drawn-chinese-new-year-lucky-money-illustration_23-2149232638.jpg?w=826&t=st=1680417056~exp=1680417656~hmac=ccad0384a294e527c8cd7d3cefef4f17f21555028936b54eae3bcdaceb441895', '2023-04-02 14:26:45'),
('ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', 'ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', 'dsparthib915', '0', 0, 0, 0, 0, 'ffc81d007df5cf1ecfe84c1d9135f65ec2bb2a04cf5d8ffab9ecdb8a2f13cb19', 'http://localhost/anonimly/images/1535628659967.jpg', '2023-04-12 11:57:30'),
('ZWxlZ2FudGNvdXJpZXJzZXJ2aWNlQGdtYWlsLmNvbQ==', 'ZWxlZ2FudGNvdXJpZXJzZXJ2aWNlQGdtYWlsLmNvbQ==', 'elegantcourierservice753', '0', 0, 0, 0, 0, 'c862d9cd0221cc355fe05cd2ab8d85fe7b63ac4d4eb01f51ad1d3eec12a6e62b', 'https://img.freepik.com/premium-vector/young-inventor-cartoon-mascot_12402-52.jpg?w=740', '2023-04-02 13:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `NAME` varchar(1000) DEFAULT NULL,
  `AGE` varchar(1000) DEFAULT NULL,
  `INTEREST` varchar(1000) DEFAULT NULL,
  `EXPERTISE` varchar(1000) DEFAULT NULL,
  `EXPRIENCE` varchar(1000) DEFAULT NULL,
  `COMPANY` varchar(1000) DEFAULT NULL,
  `AVAIL` varchar(1000) DEFAULT NULL,
  `FAVAIL` varchar(1000) DEFAULT NULL,
  `URL` varchar(1000) DEFAULT NULL,
  `STATUS` int(200) DEFAULT 0,
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`ID`, `MID`, `NAME`, `AGE`, `INTEREST`, `EXPERTISE`, `EXPRIENCE`, `COMPANY`, `AVAIL`, `FAVAIL`, `URL`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', 'samadrit das', '38', 'Finance', 'finance', '21', 'campuspace', '4 times a day', 'No', 'https://www.linkedin.com/in/samadrit-das-58a1161a6/', 0, '2023-04-08 17:31:35'),
(2, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'Ashneer Grover', '43', 'Finance', 'Banking and Finance', '8', 'BharatPe', '2 times a day', 'Yes', 'https://in.linkedin.com/in/ashneer', 0, '2023-04-12 11:54:04'),
(3, 'ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', 'Aman Gupta', '35', 'E-commerce', 'Marketing and Business', '6', 'bOAt', '3 times a day', 'Yes', 'https://in.linkedin.com/in/aman-gupta-7217a515', 0, '2023-04-12 12:00:02'),
(4, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', 'Elon Musk', '45', 'Technology', 'Space Exploration, AI, Automobiles', '11', 'SpaceX, Tesla, Twitter', 'On twitter', 'Yes', 'https://www.linkedin.com/company/elonmusk1232?trk=similar-pages', 0, '2023-04-12 12:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(250) NOT NULL,
  `MSG` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `MSG`) VALUES
(1, 'hi'),
(2, 'hi'),
(3, 'G'),
(4, 'hello'),
(5, 'ji'),
(6, 'm'),
(7, ' nb'),
(8, 'hi'),
(9, 'gg'),
(10, 'edff'),
(11, 'kk');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(250) NOT NULL,
  `MASKIND_ID` varchar(700) NOT NULL COMMENT 'masking id',
  `TITLE` varchar(1000) NOT NULL,
  `POST` varchar(2000) NOT NULL COMMENT 'message ',
  `COMMENTS` varchar(1000) NOT NULL DEFAULT '0' COMMENT 'no of comments',
  `IMAGE` longtext DEFAULT NULL COMMENT 'image',
  `LIKES` varchar(500) DEFAULT '0' COMMENT 'audio',
  `DISLIKES` varchar(500) NOT NULL DEFAULT '0' COMMENT 'text',
  `RATINGS` varchar(1000) NOT NULL DEFAULT '0' COMMENT 'poll',
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` date NOT NULL DEFAULT current_timestamp() COMMENT 'date time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Post details';

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `MASKIND_ID`, `TITLE`, `POST`, `COMMENTS`, `IMAGE`, `LIKES`, `DISLIKES`, `RATINGS`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', 'first official post', 'UmVtZW1iZXIgbXkgbmFtZSBzYW0gbXkgZmlyc3QgcG9zdCBvbiBteSBzb2NpYWwgbWVkaWEgd2hlbiB0aGlzIHBsYXRmb3JtIHdpbGwgYmVjb21lIGFuIGV4Y2VsbGVudCBob29rIHBscyAgZG8gbm90IGZvcmdldCBtZQ==', '0', '64289a9f50696.png', '0', '1', '25', '0', '2023-04-02'),
(2, 'dHNhbWEyMDlAZ21haWwuY29t', 'Official blog', 'QmVjb21pbmcgYW4gZW50cmVwcmVuZXVyIGlzIGFuIGV4Y2l0aW5nIGFuZCBjaGFsbGVuZ2luZyBqb3VybmV5LiBXaGlsZSBzb21lIG1heSBiZSBhYmxlIHRvIG5hdmlnYXRlIHRoZSBwYXRoIHRvIHN1Y2Nlc3Mgb24gdGhlaXIgb3duLCBvdGhlcnMgY2FuIGJlbmVmaXQgZ3JlYXRseSBmcm9tIHRoZSBndWlkYW5jZSBhbmQgc3VwcG9ydCBvZiBhIG1lbnRvci4gQSBtZW50b3IgaXMgYW4gZXhwZXJpZW5jZWQgaW5kaXZpZHVhbCB3aG8gaGFzIGJlZW4gaW4gdGhlIHNhbWUgcG9zaXRpb24gYXMgeW91LCBhbmQgaXMgYWJsZSB0byBvZmZlciBhZHZpY2UgYW5kIGRpcmVjdGlvbiBiYXNlZCBvbiB0aGVpciBvd24gZXhwZXJpZW5jZXMu', '1', '642964ce65916.png', '0', '1', '25', '0', '2023-04-02'),
(3, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '5 Compelling Reasons Why Storytelling is Crucial to Business Success', 'V2hlbmV2ZXIgSSBjdXJhdGUgYSBzdG9yeSBmb3IgYSBDRU8gb3IgYnJhbmQgY2FtcGFpZ24sIEkgc3RhcnQgZnJvbSB0aGUgZW5kLiBBc2NlcnRhaW5pbmcgeW91ciBhdWRpZW5jZSwgdGhlaXIgcGFpbiBwb2ludHMgYW5kIHRoZWlyIGRlc2lyZXMgaGVscCBtZSBzdHJhdGVnaXplIHdpdGggY2xhcml0eS4gV2hlbiB3ZSB1bmRlcnN0YW5kIHRoZSBkZXNpcmVkIG91dGNvbWUsIHdlIGhhdmUgbW9yZSBjbGFyaXR5IG9uIHRoZSBicmFuZGluZyBwYXRoIHdlIG11c3QgdGFrZS4NCg0KVGhlIGFydCBvZiBzdG9yeXRlbGxpbmcgaXMgbm90IG9ubHkgYSB0cmVuZCBpbiAyMDIzIGluIG1hcmtldGluZyBhbmQgcHVibGljIHJlbGF0aW9ucy4gSXQgaXMgYSBub24tbmVnb3RpYWJsZSBmb3Igc3RyYXRlZ2ljIGdyb3d0aC4gU3Rvcnl0ZWxsaW5nIGZvciBlbnRyZXByZW5ldXJzIHdlYXZlcyBhbiBpbnRlcmxvY2tpbmcgY29ubmVjdGlvbiB3aXRoIHlvdXIgY29uc3VtZXJzIGFuZCBhdWRpZW5jZS4NCg0KVGhlIHBvd2VyIG9mIG91ciBzdG9yaWVzIGVzdGFibGlzaGVzIGJyYW5kIGlkZW50aXR5IGFuZCBmYWNpbGl0YXRlcyBhIGNvbm5lY3Rpb24gdG8gdGhlIHBlb3BsZSB5b3UgbmVlZCBpbiB5b3VyIGVjb3N5c3RlbS4gVGhlIGVtb3Rpb25hbCBudWFuY2VzIG9mIG91ciB3b3JkcyBoZWxwIGVudHJlcHJlbmV1cnMgY29ubmVjdCB3aXRoIHRoZWlyIGF1ZGllbmNlLCBidWlsZCBhIHN0cm9uZyBicmFuZCBpZGVudGl0eSwgYW5kIGVzdGFibGlzaCB0aGVtc2VsdmVzIGFzIHRob3VnaHQgbGVhZGVycyBpbiB0aGVpciBpbmR1c3RyeS4=', '0', '643626f3be501.png', '0', '0', '6', '1', '2023-04-12'),
(4, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '5 Compelling Reasons Why Storytelling is Crucial to Business Success', 'VGhlIGdpZnQgb2YgZW50cmVwcmVuZXVyc2hpcCBvZmZlcnMgeW91IGEgc3RhZ2UgdG8gY29udmV5IHlvdXIgc3RvcnkgdG8gYW4gYXVkaWVuY2UgaHVuZ3J5IHRvIGNvbm5lY3Qgd2l0aCB5b3UgYW5kIHRoZW4gYnV5IHlvdXIgcHJvZHVjdCBvciBzZXJ2aWNlLiBXaXRob3V0IHRoZSB1bmRlcnBpbm5pbmdzIG9mIGEgcXVhbGl0eSBuYXJyYXRpdmUsIHlvdXIgc2VydmljZSBhbmQgcHJvZHVjdCBhcmUgc2ltcGx5IGEgc2VydmljZSBvciBwcm9kdWN0IGluIHRoZSBzZWEgb2YgYSBtaWxsaW9uIG90aGVycy4gSXQgZG9lcyBub3QgbWF0dGVyIGlmIHlvdSBhcmUgYSBjb2FjaCwgYSByZWFsIGVzdGF0ZSBhZ2VudCwgYSB0aGVyYXBpc3QsIGEgY2xvdGhpZXIgb3IgYSBjaGVmIOKAlCB5b3VyIGJ1c2luZXNzIGlzIHlvdXIgc3Rvcnku', '0', '643627b29b587.png', '0', '0', '5', '0', '2023-04-12'),
(5, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'CelciusRaises INR 100 Crore In Series A Funding Led By IvyCap Ventures', 'Q2VsY2l1cyBMb2dpc3RpY3MsIEluZGlhJ3MgZmFzdGVzdC1ncm93aW5nIGNvbGQgY2hhaW4gbWFya2V0cGxhY2Ugc3RhcnR1cCwgaGFzIGNvbXBsZXRlZCBpdHMgU2VyaWVzIEEgZnVuZGluZyBieSByYWlzaW5nIHRoZSB0b3RhbCBhbW91bnQgb2YgSU5SIDEwMCBjcm9yZSwgbGVkIGJ5IEl2eUNhcCBWZW50dXJlcy4gQXMgcGFydCBvZiBpdHMgU2VyaWVzIEEgZnVuZGluZywgdGhlIGNvbXBhbnkgZWFybGllciByYWlzZWQgSU5SIDM1IGNyb3JlIGZyb20gdGhlaXIgZXhpc3RpbmcgaW52ZXN0b3JzIOKAkyBNdW1iYWkgQW5nZWxzLCBTdXBwbHkgQ2hhaW4gTGFicywgRW5kdXJhbmNlIENhcGl0YWwsIFZDYXRzLCBIdWRkbGUsIEVhZ2xld2luZ3MgVmVudHVyZXMgKEVWQU4pLCBhbmQgb3RoZXJzLiBUaGUgY29tcGFueSBhaW1zIHRvIHV0aWxpemUgdGhlIGZ1bmRzIGZvciB0ZWNoIGlubm92YXRpb25zIHRvIHNvbHZlIHRoZSBmcmFnbWVudGVkIG5hdHVyZSBvZiB0aGUgY29sZCBzdXBwbHkgY2hhaW4gYW5kIHJlZHVjZSB0aGUgd2FzdGFnZSBpbiBwZXJpc2hhYmxlcyB0aGVyZWJ5IGJ1aWxkaW5nIHRvd2FyZHMgYSBzdXN0YWluYWJsZSBmdXR1cmUu', '1', '6436282ca3fa2.png', '2', '1', '45.833333333333', '0', '2023-04-12'),
(6, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', 'Building A Winning Minimum Viable Product: The How-To', 'TVZQcyBhcmUgYSBiYXNpYywgbGF1bmNoYWJsZSB2ZXJzaW9uIG9mIGEgbmV3IHByb2R1Y3QgdGhhdCBmZWF0dXJlcyBiYXNpYywgbXVzdC1oYXZlIGZlYXR1cmVzIHRoYXQgd2lsbCBzYXRpc2Z5IGluaXRpYWwgY3VzdG9tZXJzLiBUbyBjcmVhdGUgYSB3aW5uaW5nIE1WUCwgaXQgaXMgaW1wb3J0YW50IHRvIHVuZGVyc3RhbmQgdGhlIHRhcmdldCBhdWRpZW5jZSwgaWRlbnRpZnkgdGhlaXIgcHJvYmxlbSwgYW5kIGRldmVsb3AgYSBwcm9kdWN0IHRoYXQgc29sdmVzIGl0LiBNVlBzIG11c3QgYmUgbWluaW1hbCBhbmQgdmlhYmxlLCB3aXRoIGZlYXR1cmUgcHJpb3JpdGl6YXRpb24sIHVzZXItZnJpZW5kbHkgaW50ZXJmYWNlLCBhbmQgcmFwaWQgaXRlcmF0aW9uIGFuZCB0ZXN0aW5nLg==', '0', '6436297b9d291.png', '0', '0', '7', '0', '2023-04-12'),
(7, 'dHNhbWEyMDlAZ21haWwuY29t', 'Avoid these 4 Fatal Branding Mistakes or Risk Business Failure', 'WW91ciBwZXJzb25hbCBicmFuZCBpcyBhIGNyaXRpY2FsIGNvbXBvbmVudCBvZiB5b3VyIHByb2Zlc3Npb25hbCBzdWNjZXNzLiBXaGVuIHlvdSBwcmVzZW50IGEgY29uc2lzdGVudCwgZW5nYWdpbmcgYW5kIGF1dGhlbnRpYyBpbWFnZSB0byB0aGUgd29ybGQsIHlvdSBidWlsZCBjcmVkaWJpbGl0eSBhbmQgZXN0YWJsaXNoIGEgc3Ryb25nIHJlcHV0YXRpb24uIEl0IGhhcyBiZWVuIHNob3duIHRoYXQgdGhlIG1vcmUgYXV0aGVudGljIGFuZCBnZW51aW5lIG9uZSBpcyBpbiB0aGVpciBicmFuZCBhcHByb2FjaCBhbmQgbWVzc2FnaW5nLCB0aGUgbW9yZSBvbmUgd2lsbCBidWlsZCBjYW1hcmFkZXJpZSBhbmQgdHJ1c3Qgd2l0aCBjbGllbnRzLg==', '0', '64362b4b730be.png', '0', '0', '1', '0', '2023-04-12'),
(8, 'dHNhbWEyMDlAZ21haWwuY29t', 'Scam 2023: Inside The World Startup Convention Disaster', 'VHdpdHRlciBjaGllZiBFbG9uIE11c2suIFVuaW9uIE1pbmlzdGVyIE5pdGluIEdhZGthcmkuIEdvb2dsZSBDRU8gU3VuZGFyIFBpY2hhaS4gSW5kdXN0cmlhbGlzdCBHYXV0YW0gQWRhbmkuIENyb3duIFByaW5jZSBvZiBEdWJhaSBTaGVpa2ggSGFtZGFuLiBUbyBtYW55LCB0aGUgc3BlYWtlciBsaW5lIHVwIGZvciB0aGUgV29ybGQgU3RhcnR1cCBDb252ZW50aW9uIChXU0MpIHdoaWNoIGhhZCBiZWVuIHNjaGVkdWxlZCBmb3IgTWFyY2ggMjQtMjYsIDIwMjMgYXQgR3JlYXRlciBOb2lkYSBtYXkgaGF2ZSBzZWVtZWQgdG9vIGdvb2QgdG8gYmUgdHJ1ZS4gQW5kIG9uIHRoZSB2ZXJ5IGZpcnN0IGRheSBvZiB0aGUgZXZlbnQsIHRoZXJlIHdlcmUgY2xhc2hlcyBiZXR3ZWVuIHRoZSBvcmdhbml6ZXJzIGFuZCB0aG9zZSBhdHRlbmRpbmcgdGhlIFdTQywgbGVhZGluZyB0byBpbnRlcnZlbnRpb24gYnkgdGhlIHBvbGljZSB3aG8gaGFkIHJlYWNoZWQgdGhlIHNwb3Qu', '0', '64362cb7520a1.png', '0', '0', '1', '0', '2023-04-12'),
(9, 'dHNhbWEyMDlAZ21haWwuY29t', 'The Four Cringe-Worthy Mistakes Too Many Startups Make with Data', 'VHJlbmRzIGNhbiBiZSB1c2VmdWwgdG8gZm9sbG93LCBidXQgdGhleSBjYW4gYWxzbyBiZSBpbmNyZWRpYmx5IGRhbmdlcm91cy4gV2hlbiBhIHNlcmlvdXMgcHVyc3VpdOKBoOKAlGZvciBleGFtcGxlLCBkYXRhLWRyaXZlbiBncm93dGjigaDigJRiZWNvbWVzIGEgdHJlbmQsIGl0IGludmFyaWFibHkgYmVjb21lcyBkdW1iZWQgZG93biBieSBvcHBvcnR1bmlzdGljIOKAnHRob3VnaHQgbGVhZGVyc+KAnSBhbmQgY29tcGFuaWVzIGxvb2tpbmcgdG8gcmlkZSB0aGUgdHJlbmQgZm9yIHRoZWlyIG93biBnYWluLiBCdXQgZG9pbmcgdGhlIGR1bWJlZC1kb3duIHZlcnNpb24gb2YgYW55IHNlcmlvdXMgcHVyc3VpdCB3aWxsIGFsbW9zdCBhbHdheXMgcmVzdWx0IGluIGZhaWx1cmUuIEluIHRoaXMgZXhjZWxsZW50IGludGVydmlldywgQW1hbmRhIFJpY2hhcmRzb24sIENoaWVmIERhdGEgYW5kIFN0cmF0ZWd5IE9mZmljZXIgZm9yIEhvdGVsVG9uaWdodCwgdGFrZXMgdGhpcyBwaGVub21lbm9uIHRvIHRhc2sgYW5kIHNoYXJlcyBzb21lIHZhbHVhYmxlIGluc2lnaHQgb24gaG93IGNvbXBhbmllcyBjYW4gYmUgc21hcnQgYWJvdXQgZGF0YSwgcmF0aGVyIHRoYW4gc2ltcGx5IHBsdWdnaW5nIGluIGEgbWV0cmljcyBkYXNoYm9hcmQgdG8gY2hlY2sgYSBib3gu', '0', '64362df23128c.png', '0', '1', '25', '0', '2023-04-12'),
(10, 'dHNhbWEyMDlAZ21haWwuY29t', 'Note to Self, On Time Management', 'VGltZSBtYW5hZ2VtZW50IGlzIGhhcmQgZm9yIG1vc3Qgb2YgdXMuIEl04oCZcyBjZXJ0YWlubHkgc29tZXRoaW5nIHRoYXQgSeKAmXZlIHN0cnVnZ2xlZCB3aXRoIGZvciBhcyBsb25nIGFzIEkgY2FuIHJlbWVtYmVyLCBhbmQgaWYgbm90IGtlcHQgaW4gY2hlY2ssIGl0IGNhbiBtZWFuIHdvcmtpbmcgb24gdGhlIHdyb25nIHRoaW5ncyBmb3IgZmFyIHRvbyBsb25nLCBhdCB0aGUgZXhwZW5zZSBvZiB3aGF04oCZcyBhY3R1YWxseSBpbXBvcnRhbnQuIFRoaXMgbGV0dGVyIHRvIGhlcnNlbGYgaXMgd2l0dHkgYW5kIGluY3JlZGlibHkgd2VsbC13cml0dGVuIChhcyB5b3XigJlkIGV4cGVjdCBmcm9tIEpvYW5uYSksIGJ1dCBpdOKAmXMgYWxzbyBhIGZhbnRhc3RpYyByZW1pbmRlciB0byBhbGwgb2YgdXMgYWJvdXQgYmVpbmcgbW9yZSBkZWxpYmVyYXRlIGFuZCBydXRobGVzcyB3aXRoIG91ciBwcmVjaW91cyB0aW1lLg==', '0', '64362e92879d0.png', '0', '0', '3', '0', '2023-04-12'),
(11, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'How Shopify Increased Revenue 90% in 365 Days', 'VGhpcyBndWlkZSBpcyBtYXNzaXZlLiBCdXQgdW5saWtlIGEgbG90IG9mIGxvbmctZm9ybSBjb250ZW50LCBpdOKAmXMgbm90IGp1c3QgbG9uZyBmb3IgdGhlIHNha2Ugb2YgYmVpbmcgbG9uZzsgaXTigJlzIGFjdHVhbGx5IHBhY2tlZCB3aXRoIHVzZWZ1bCB0YWtlYXdheXMgaW4gZXZlcnkgc2VjdGlvbi4gSSBsb3ZlIENocmlz4oCZIHRob3VnaHRmdWwgZGl2ZSBpbnRvIFNob3BpZnnigJlzIG1hcmtldGluZyBzdHJhdGVneSwgYW5kIGhvdyBoZSB1bmNvdmVyZWQgYWR2YW5jZWQgdGFjdGljcyBhbmQgdGlwcyB0aGF0IHdlIGNhbiBhbGwgdXNlIHRvIGltcHJvdmUuIFRpcCAjNiwgYWJvdXQgU2hvcGlmeeKAmXMgb25ib2FyZGluZyBlbWFpbCBzZXF1ZW5jZSwgYWxvbmUgbWFrZXMgdGhlIGFydGljbGUgd29ydGggcmVhZGluZy4NCg0KaHR0cHM6Ly93d3cuZ3Jvb3ZlaHEuY29tL2Jsb2cvYXJ0aWNsZXMtZm9yLXN0YXJ0dXBzIzp+OnRleHQ9SW5pdGlhbGx5JTJDJTIwSSUyMHdhcyx0aGUlMjBDVEElMjBidXR0b24u', '0', '6436301d5414f.png', '0', '0', '10', '1', '2023-04-12'),
(12, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'How Shopify Increased Revenue 90% in 365 Days', 'VGhpcyBndWlkZSBpcyBtYXNzaXZlLiBCdXQgdW5saWtlIGEgbG90IG9mIGxvbmctZm9ybSBjb250ZW50LCBpdOKAmXMgbm90IGp1c3QgbG9uZyBmb3IgdGhlIHNha2Ugb2YgYmVpbmcgbG9uZzsgaXTigJlzIGFjdHVhbGx5IHBhY2tlZCB3aXRoIHVzZWZ1bCB0YWtlYXdheXMgaW4gZXZlcnkgc2VjdGlvbi4gSSBsb3ZlIENocmlz4oCZIHRob3VnaHRmdWwgZGl2ZSBpbnRvIFNob3BpZnnigJlzIG1hcmtldGluZyBzdHJhdGVneSwgYW5kIGhvdyBoZSB1bmNvdmVyZWQgYWR2YW5jZWQgdGFjdGljcyBhbmQgdGlwcyB0aGF0IHdlIGNhbiBhbGwgdXNlIHRvIGltcHJvdmUuIFRpcCAjNiwgYWJvdXQgU2hvcGlmeeKAmXMgb25ib2FyZGluZyBlbWFpbCBzZXF1ZW5jZSwgYWxvbmUgbWFrZXMgdGhlIGFydGljbGUgd29ydGggcmVhZGluZy4NCjxhPg0KaHR0cHM6Ly93d3cuZ3Jvb3ZlaHEuY29tL2Jsb2cvYXJ0aWNsZXMtZm9yLXN0YXJ0dXBzIzp+OnRleHQ9SW5pdGlhbGx5JTJDJTIwSSUyMHdhcyx0aGUlMjBDVEElMjBidXR0b24uDQo8L2E+', '0', '643632065b59e.png', '0', '0', '2', '1', '2023-04-12'),
(13, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'How Shopify Increased Revenue 90% in 365 Days', 'VGhpcyBndWlkZSBpcyBtYXNzaXZlLiBCdXQgdW5saWtlIGEgbG90IG9mIGxvbmctZm9ybSBjb250ZW50LCBpdOKAmXMgbm90IGp1c3QgbG9uZyBmb3IgdGhlIHNha2Ugb2YgYmVpbmcgbG9uZzsgaXTigJlzIGFjdHVhbGx5IHBhY2tlZCB3aXRoIHVzZWZ1bCB0YWtlYXdheXMgaW4gZXZlcnkgc2VjdGlvbi4gSSBsb3ZlIENocmlz4oCZIHRob3VnaHRmdWwgZGl2ZSBpbnRvIFNob3BpZnnigJlzIG1hcmtldGluZyBzdHJhdGVneSwgYW5kIGhvdyBoZSB1bmNvdmVyZWQgYWR2YW5jZWQgdGFjdGljcyBhbmQgdGlwcyB0aGF0IHdlIGNhbiBhbGwgdXNlIHRvIGltcHJvdmUuIFRpcCAjNiwgYWJvdXQgU2hvcGlmeeKAmXMgb25ib2FyZGluZyBlbWFpbCBzZXF1ZW5jZSwgYWxvbmUgbWFrZXMgdGhlIGFydGljbGUgd29ydGggcmVhZGluZy4NCjxhIGhyZWY9Imh0dHBzOi8vd3d3Lmdyb292ZWhxLmNvbS9ibG9nL2FydGljbGVzLWZvci1zdGFydHVwcyM6fjp0ZXh0PUluaXRpYWxseSUyQyUyMEklMjB3YXMsdGhlJTIwQ1RBJTIwYnV0dG9uLiI+PC9hPg==', '0', '643634ef29838.png', '0', '0', '7', '1', '2023-04-12'),
(14, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'How Shopify Increased Revenue 90% in 365 Days', 'VGhpcyBndWlkZSBpcyBtYXNzaXZlLiBCdXQgdW5saWtlIGEgbG90IG9mIGxvbmctZm9ybSBjb250ZW50LCBpdOKAmXMgbm90IGp1c3QgbG9uZyBmb3IgdGhlIHNha2Ugb2YgYmVpbmcgbG9uZzsgaXTigJlzIGFjdHVhbGx5IHBhY2tlZCB3aXRoIHVzZWZ1bCB0YWtlYXdheXMgaW4gZXZlcnkgc2VjdGlvbi4gSSBsb3ZlIENocmlz4oCZIHRob3VnaHRmdWwgZGl2ZSBpbnRvIFNob3BpZnnigJlzIG1hcmtldGluZyBzdHJhdGVneSwgYW5kIGhvdyBoZSB1bmNvdmVyZWQgYWR2YW5jZWQgdGFjdGljcyBhbmQgdGlwcyB0aGF0IHdlIGNhbiBhbGwgdXNlIHRvIGltcHJvdmUuIFRpcCAjNiwgYWJvdXQgU2hvcGlmeeKAmXMgb25ib2FyZGluZyBlbWFpbCBzZXF1ZW5jZSwgYWxvbmUgbWFrZXMgdGhlIGFydGljbGUgd29ydGggcmVhZGluZy4NCjxhIGhyZWY9Imh0dHBzOi8vd3d3Lmdyb292ZWhxLmNvbS9ibG9nL2FydGljbGVzLWZvci1zdGFydHVwcyM6fjp0ZXh0PUluaXRpYWxseSUyQyUyMEklMjB3YXMsdGhlJTIwQ1RBJTIwYnV0dG9uLiI+IGh0dHBzOi8vd3d3Lmdyb292ZWhxLmNvbS9ibG9nL2FydGljbGVzLWZvci1zdGFydHVwcyM6fjp0ZXh0PUluaXRpYWxseSUyQyUyMEklMjB3YXMsdGhlJTIwQ1RBJTIwYnV0dG9uLjwvYT4=', '0', '643635392f86f.png', '0', '0', '1', '1', '2023-04-12'),
(15, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'How Shopify Increased Revenue 90% in 365 DaysHow Shopify Increased Revenue 90% in 365 Days', 'VGhpcyBndWlkZSBpcyBtYXNzaXZlLiBCdXQgdW5saWtlIGEgbG90IG9mIGxvbmctZm9ybSBjb250ZW50LCBpdOKAmXMgbm90IGp1c3QgbG9uZyBmb3IgdGhlIHNha2Ugb2YgYmVpbmcgbG9uZzsgaXTigJlzIGFjdHVhbGx5IHBhY2tlZCB3aXRoIHVzZWZ1bCB0YWtlYXdheXMgaW4gZXZlcnkgc2VjdGlvbi4gSSBsb3ZlIENocmlz4oCZIHRob3VnaHRmdWwgZGl2ZSBpbnRvIFNob3BpZnnigJlzIG1hcmtldGluZyBzdHJhdGVneSwgYW5kIGhvdyBoZSB1bmNvdmVyZWQgYWR2YW5jZWQgdGFjdGljcyBhbmQgdGlwcyB0aGF0IHdlIGNhbiBhbGwgdXNlIHRvIGltcHJvdmUuIFRpcCAjNiwgYWJvdXQgU2hvcGlmeeKAmXMgb25ib2FyZGluZyBlbWFpbCBzZXF1ZW5jZSwgYWxvbmUgbWFrZXMgdGhlIGFydGljbGUgd29ydGggcmVhZGluZy4NCg0KPGEgaHJlZj0iaHR0cHM6Ly93d3cuZ3Jvb3ZlaHEuY29tL2Jsb2cvYXJ0aWNsZXMtZm9yLXN0YXJ0dXBzIzp+OnRleHQ9SW5pdGlhbGx5JTJDJTIwSSUyMHdhcyx0aGUlMjBDVEElMjBidXR0b24uIj4gU2VlIG1vcmUuLi4gPC9hPg==', '0', '643635b6c6639.png', '0', '0', '6', '0', '2023-04-12'),
(16, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', '21 Customer Acquisition Strategies to Win New Customers', 'TWF0dGhld+KAmXMgZ3VpZGVzIGFyZSBhbHdheXMgcmljaCBhbmQgdmFsdWFibGUgKEkgcGx1Z2dlZCBoaXMgZ3VpZGUgdG8gU0VPIHRpcHMgaW4gbXkgbGFzdCByb3VuZHVwKSwgYW5kIHRoaXMgb25lIGlzIG5vIGV4Y2VwdGlvbi4gSSBjYW1lIGF3YXkgZnJvbSB0aGlzIGd1aWRlIHdpdGggbG90cyBvZiBpZGVhcyB0aGF0IHdl4oCZcmUgcGxhbm5pbmcgdG8gdHJ5LCBhbmQgSeKAmW0gc3VyZSB0aGF0IHlvdSB3aWxsLCB0b28uDQoNCjxhIGhyZWY9Imh0dHBzOi8vd3d3Lmdyb292ZWhxLmNvbS9ibG9nL2FydGljbGVzLWZvci1zdGFydHVwcyM6fjp0ZXh0PVRoZXJlJTIwYXJlJTIwYSx0aGUlMjBtb3N0JTIwdmFsdWUuIj4gU2VlIG1vcmUuLi4gPC9hPg==', '0', '64363645019e4.png', '0', '0', '2', '0', '2023-04-12'),
(17, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', 'The Iceberg Theory of User Feedback', 'WW91IGtub3cgd2hhdCB5b3VyIGN1c3RvbWVycyBhcmUgdGVsbGluZyB5b3UuIEJ1dCBkbyB5b3Uga25vdyB3aGF0IHRoZXnigJlyZSBub3QgdGVsbGluZyB5b3U/IFRoZSBkZWx0YSBiZXR3ZWVuIHRob3NlIHR3byBpcyBvZnRlbiB3aGVyZSBtb3N0IGNodXJuIHByb2JsZW1zIGV4aXN0LiBCZWluZyBhYmxlIHRvIGZpbmQgdGhvc2UgaGlkZGVuIGlzc3VlcyBhbmQg4oCcdW5kZXIgdGhlIHN1cmZhY2XigJ0gZmVlZGJhY2ssIGFzIEphbmV0IGNhbGxzIGl0LCBpcyBjcml0aWNhbCB0byBjcmVhdGluZyBoYXBweSBjdXN0b21lcnMuIFRoaXMgcG9zdCBvZmZlcnMgc2V2ZXJhbCBlZmZlY3RpdmUgd2F5cyB0byBkbyB0aGF0Lg==', '0', '64363d25d04ea.png', '0', '0', '3', '0', '2023-04-12'),
(18, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'Cofounder Courtship: How to Find the Right Mate—for Your StartupCofounder Courtship: How to Find the Right Mate—for Your Startup', 'TWFueSBlbnRyZXByZW5ldXJzIGJlbGlldmUgdGhleSBtdXN0IGhhdmUgYSBjb2ZvdW5kZXIsIGFuZCBzb21lIGFyZSBwcmVzc3VyZWQgYnkgaW52ZXN0b3JzIHRvIGhhdmUgYSBwYXJ0aWN1bGFyIHR5cGUgb2YgY29mb3VuZGVyLiBUaGUgY29udmljdGlvbiB0byBoYXZlIGEgY29mb3VuZGVyIGlzIG9mdGVuIGJhc2VkIHNvbGVseSBvbiBjb21wbGVtZW50YXJ5IHNraWxscyBhbmQgZXhwZXJpZW5jZSB2ZXJzdXMgdGhlIHNvZnRlciwgYW5kIG9mdGVuIG1vcmUgaW1wb3J0YW50LCByZWxhdGlvbnNoaXAgY3JpdGVyaWEuIFdoaWxlIHRoZXJlIGFyZSBzb21lIHdvcmtpbmcgcGFwZXJzIG91dCB0aGVyZSwgSSBoYXZlIHlldCB0byBzZWUgZGVmaW5pdGl2ZSByZXNlYXJjaCB0aGF0IHByb3ZlcyB3aGV0aGVyIG9uZSBhYnNvbHV0ZWx5IG11c3QgaGF2ZSBjb2ZvdW5kZXJzIHZlcnN1cyBnb2luZyBpdCBhbG9uZSBhcyBhIHNvbG8gZm91bmRlci4gVGhpcyBpcyBhIGhpZ2hseSBzdWJqZWN0aXZlIHNpdHVhdGlvbiBkZXBlbmRlbnQgb24gbWFueSBmYWN0b3JzOyBzb21lIG9mIHdoaWNoIEnigJlsbCBkaXNjdXNzIGJlbG93Lg==', '0', '643642c3c3873.png', '0', '0', '4', '0', '2023-04-12'),
(19, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'How Ashneer Grover is luring talent for his new startup', 'R3JvdmVyLCB3aG8gaXMga25vd24gZm9yIGhpcyBpbm5vdmF0aXZlIHN0cmF0ZWdpZXMgYW5kIGFiaWxpdHkgdG8gYXR0cmFjdCB0b3AgdGFsZW50LCBpcyB1c2luZyBhIG51bWJlciBvZiB1bmlxdWUgdGFjdGljcyB0byBsdXJlIHBvdGVudGlhbCBlbXBsb3llZXMgdG8gam9pbiBUaGlyZCBVbmljb3JuLiBPbmUgb2YgdGhlIGtleSBzdHJhdGVnaWVzIGlzIG9mZmVyaW5nIGEgdW5pcXVlIGVxdWl0eSBwcm9ncmFtIHRoYXQgYWxsb3dzIGVtcGxveWVlcyB0byBzaGFyZSBpbiB0aGUgc3VjY2VzcyBvZiB0aGUgY29tcGFueS4gIEdyb3Zlciwgd2hvIGFwcGVhcmVkIGluIFRWIHNob3cgU2hhcmsgVGFuayBJbmRpYSdzIGZpcnN0IHNlYXNvbiBhcyBhIGp1ZGdlIChzaGFyayksIGhhcyBhbHNvIHByb21pc2VkIHRvIGdpdmUgYSBNZXJjZWRlcyB0byBhbnkgZW1wbG95ZWUgd2hvIGNvbXBsZXRlcyA1IHllYXJzIGluIGhpcyBuZXcgY29tcGFueS4=', '0', '643643a829934.png', '1', '0', '75', '0', '2023-04-12'),
(20, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'Elon Musk on How to Build the Future', 'Sm9iIHNlZWtlcnMgbG9va2luZyBmb3Igd29yayBhdCBUZXNsYSwgU3BhY2VYIG9yIGFueSBvZiBNdXNr4oCZcyBjb21wYW5pZXMgYXJlIHB1dCB0aHJvdWdoIHRoZSB3cmluZ2VyLiBOb3QgbGlrZWx5IHRvIGJlIGZvb2xlZCBieSBhbiBleHBlcnQgaW50ZXJ2aWV3ZWUsIE11c2sgYmVsaWV2ZXMgdG91Z2ggaW50ZXJ2aWV3IHF1ZXN0aW9ucyBzaG93IGEgY2FuZGlkYXRl4oCZcyB0cnVlIGZpdCBmb3IgdGhlIHBvc2l0aW9uLg0KDQpBdCB0aGUgRmVicnVhcnkgMjAxNyBXb3JsZCBHb3Zlcm5tZW50IFN1bW1pdCBpbiBEdWJhaSwgTXVzayB0YWxrZWQgYWJvdXQgdGhlIG9uZSBpbnRlcnZpZXcgcXVlc3Rpb24gaGUgYmVsaWV2ZXMgcmV2ZWFscyB0aGUgbW9zdCBhYm91dCBhIGNhbmRpZGF0ZeKAmXMgYXB0aXR1ZGUg4oCUIHRob3VnaCBpdOKAmXMgcXVpdGUgdGhlIG11bHRpZmFjZXRlZCByZXF1ZXN0Lg0KDQrigJxUZWxsIG1lIHRoZSBzdG9yeSBvZiB5b3VyIGxpZmUgYW5kIHRoZSBkZWNpc2lvbnMgdGhhdCB5b3UgbWFkZSBhbG9uZyB0aGUgd2F5IGFuZCB3aHkgeW91IG1hZGUgdGhlbS4gQW5kIGFsc28gdGVsbCBtZSBhYm91dCBzb21lIG9mIHRoZSB5b3Ugd29ya2VkIG9uIGFuZCBob3cgeW91IHNvbHZlZCB0aGVtLOKAnSBNdXNrIHNhaWQuIOKAnFBlb3BsZSB0aGF0IHJlYWxseSBzb2x2ZWQgdGhlIHByb2JsZW0sIHRoZXkga25vdyBleGFjdGx5IGhvdyB0aGV5IHNvbHZlZCBpdCDigJQgdGhleSBrbm93IHRoZSBsaXR0bGUgZGV0YWlscy7igJ0NCg0KTXVzayBlbXBoYXNpemVkIHRoZSBpbXBvcnRhbmNlIG9mIHRoZSBxdWVzdGlvbiwgbm90aW5nIHRoYXQgY2FuZGlkYXRlcyB0cnlpbmcgdG8gZmFrZSB0aGVpciB3YXkgaW50byB0aGUgam9iIGNhbiBvbmx5IGVsYWJvcmF0ZSB0byBhbiBleHRlbnQgdW50aWwgdGhleeKAmXJlIGNhdWdodCBpbiB0aGUgbGllLiBUaGVyZWZvcmUsIGlmIHlvdSB3YW50IHRvIGhpcmUgdGhlIGJlc3QgcGVyc29uIGZvciB0aGUgam9iLCB5b3UgaGF2ZSB0byBkaWcgZGVlcC4=', '0', '643649021e0aa.png', '1', '1', '25', '0', '2023-04-12'),
(21, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', 'The Soul of a Start-Up', 'VGhlcmXigJlzIGFuIGVzc2VudGlhbCwgaW50YW5naWJsZSBzb21ldGhpbmcgaW4gc3RhcnQtdXBz4oCUYW4gZW5lcmd5LCBhIHNvdWwuIENvbXBhbnkgZm91bmRlcnMgc2Vuc2UgaXRzIHByZXNlbmNlLiBTbyBkbyBlYXJseSBlbXBsb3llZXMgYW5kIGN1c3RvbWVycy4gSXQgaW5zcGlyZXMgcGVvcGxlIHRvIGNvbnRyaWJ1dGUgdGhlaXIgdGFsZW50LCBtb25leSwgYW5kIGVudGh1c2lhc20gYW5kIGZvc3RlcnMgYSBzZW5zZSBvZiBkZWVwIGNvbm5lY3Rpb24gYW5kIG11dHVhbCBwdXJwb3NlLiBBcyBsb25nIGFzIHRoaXMgc3Bpcml0IHBlcnNpc3RzLCBlbmdhZ2VtZW50IGlzIGhpZ2ggYW5kIHN0YXJ0LXVwcyByZW1haW4gYWdpbGUgYW5kIGlubm92YXRpdmUsIHNwdXJyaW5nIGdyb3d0aC4gQnV0IHdoZW4gaXQgdmFuaXNoZXMsIHZlbnR1cmVzIGNhbiBmYWx0ZXIsIGFuZCBldmVyeW9uZSBwZXJjZWl2ZXMgdGhlIGxvc3PigJRzb21ldGhpbmcgc3BlY2lhbCBpcyBnb25lLg0KDQpUaGUgZmlyc3QgcGVyc29uIEkgaGVhcmQgdGFsayBhYm91dCDigJx0aGUgc291bCBvZiBhIHN0YXJ0LXVw4oCdIHdhcyBhIEZvcnR1bmUgNTAwIENFTywgd2hvIHdhcyB0cnlpbmcgdG8gcmV2aXZlIG9uZSBpbiBoaXMgb3JnYW5pemF0aW9uLiBNYW55IGxhcmdlIGNvbXBhbmllcyB1bmRlcnRha2Ugc3VjaCDigJxzZWFyY2ggYW5kIHJlc2N1ZeKAnSBpbml0aWF0aXZlcywgd2hpY2ggcmVmbGVjdCBhbiB1bmZvcnR1bmF0ZSB0cnV0aDogQXMgYSBidXNpbmVzcyBtYXR1cmVzLCBpdOKAmXMgaGFyZCB0byBrZWVwIGl0cyBvcmlnaW5hbCBzcGlyaXQgYWxpdmUuIEZvdW5kZXJzIGFuZCBlbXBsb3llZXMgb2Z0ZW4gY29uZnVzZSBzb3VsIHdpdGggY3VsdHVyZSBhbmQsIGluIHBhcnRpY3VsYXIsIHRoZSBmcmVld2hlZWxpbmcgZXRob3Mgb2YgYWxsLW5pZ2h0ZXJzLCBmbGV4aWJsZSBqb2IgZGVzY3JpcHRpb25zLCBULXNoaXJ0cywgcGl6emEsIGZyZWUgc29kYSwgYW5kIGEgZmFtaWx5LWxpa2UgZmVlbC4gVGhleSBub3RpY2UgYW5kIHdheCBub3N0YWxnaWMgYWJvdXQgaXQgb25seSB3aGVuIGl0IHdhbmVzLiBJbnZlc3RvcnMgc29tZXRpbWVzIHJ1biByb3VnaHNob2Qgb3ZlciBhIGNvbXBhbnnigJlzIGVtb3Rpb25hbCBjb3JlLCBwdXNoaW5nIGEgZmlybSB0byDigJxwcm9mZXNzaW9uYWxpemXigJ0gYW5kIHRvIHBpdm90IGluIHJlc3BvbnNlIHRvIG1hcmtldCBkZW1hbmRzLiBBbmQgb3JnYW5pemF0aW9ucyB0cnlpbmcgdG8gcmVjb3ZlciBhbiDigJxlbnRyZXByZW5ldXJpYWwgbWluZHNldOKAnSB0ZW5kIHRvIHRha2UgYSBzdXBlcmZpY2lhbCBhcHByb2FjaCwgYWRkcmVzc2luZyBiZWhhdmlvcmFsIG5vcm1zIGJ1dCBmYWlsaW5nIHRvIGhvbWUgaW4gb24gd2hhdCByZWFsbHkgbWF0dGVycy4=', '0', '64364c19103f9.png', '0', '0', '2', '0', '2023-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `post_dislikes`
--

CREATE TABLE `post_dislikes` (
  `ID` int(200) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `PID` varchar(500) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_dislikes`
--

INSERT INTO `post_dislikes` (`ID`, `MID`, `PID`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', '36', '0', '2023-04-07 00:54:54'),
(2, 'dHNhbWEyMDlAZ21haWwuY29t', '21', '0', '2023-04-07 01:18:26'),
(3, 'dHNhbWEyMDlAZ21haWwuY29t', '32', '0', '2023-04-07 01:21:08'),
(4, 'dHNhbWEyMDlAZ21haWwuY29t', '11', '0', '2023-04-07 01:21:20'),
(5, 'dHNhbWEyMDlAZ21haWwuY29t', '38', '0', '2023-04-10 09:44:47'),
(6, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '2', '0', '2023-04-12 11:46:34'),
(7, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '1', '0', '2023-04-12 11:46:38'),
(8, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '9', '0', '2023-04-12 12:58:35'),
(9, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '20', '0', '2023-04-12 13:16:47'),
(10, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', '5', '0', '2023-04-12 16:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `PID` varchar(500) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`ID`, `MID`, `PID`, `STATUS`, `DATE_TIME`) VALUES
(2, 'dHNhbWEyMDlAZ21haWwuY29t', '21', '0', '2023-04-07 00:34:38'),
(3, 'dHNhbWEyMDlAZ21haWwuY29t', '32', '0', '2023-04-07 00:59:42'),
(4, 'dHNhbWEyMDlAZ21haWwuY29t', '4', '0', '2023-04-07 01:21:16'),
(5, 'dHNhbWEyMDlAZ21haWwuY29t', '22', '0', '2023-04-08 13:14:34'),
(6, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '4', '0', '2023-04-09 18:43:24'),
(7, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '13', '0', '2023-04-09 19:20:35'),
(8, 'dHNhbWEyMDlAZ21haWwuY29t', '38', '0', '2023-04-10 09:44:38'),
(9, 'dHNhbWEyMDlAZ21haWwuY29t', '37', '0', '2023-04-10 09:44:43'),
(10, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '4', '0', '2023-04-11 16:13:14'),
(11, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '22', '0', '2023-04-11 20:35:15'),
(12, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '5', '0', '2023-04-12 12:58:32'),
(13, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '20', '0', '2023-04-12 13:16:54'),
(14, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', '5', '0', '2023-04-12 16:59:26'),
(15, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', '19', '0', '2023-04-13 14:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `ID` int(250) NOT NULL,
  `MID` varchar(1000) DEFAULT NULL,
  `TYPE` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(500) NOT NULL DEFAULT '0',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`ID`, `MID`, `TYPE`, `STATUS`, `DATE_TIME`) VALUES
(1, 'dHNhbWEyMDlAZ21haWwuY29t', '1', '0', '2023-04-08 17:31:35'),
(3, 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '1', '0', '2023-04-12 11:54:04'),
(4, 'ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', '1', '0', '2023-04-12 12:00:02'),
(5, 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', '1', '0', '2023-04-12 12:15:40'),
(6, 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '2', '0', '2023-04-12 12:21:45'),
(7, 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', '2', '0', '2023-04-12 12:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL COMMENT 'id',
  `EMAIL` varchar(1000) NOT NULL COMMENT 'email address encrypted',
  `PASSWORDS` varchar(1000) NOT NULL COMMENT 'password encoded',
  `IP_ADDRESS` varchar(500) NOT NULL COMMENT 'ip address for track records',
  `MASKING_ID` varchar(1000) NOT NULL COMMENT 'masked id for maskers',
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'date_time as usual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMAIL`, `PASSWORDS`, `IP_ADDRESS`, `MASKING_ID`, `DATE_TIME`) VALUES
(2, 'ZEhOaGJXRXlNRGxBWjIxaGFXd3VZMjl0', 'f7d49ebe80dc7eecf60135e0d46fad264a2098b58418d7d9a3adb57ea4d7911f', 'Ojox', 'dHNhbWEyMDlAZ21haWwuY29t', '2023-01-22 09:59:13'),
(3, 'YzNWdGFYUmxiR1ZuWVc1MFFHZHRZV2xzTG1OdmJRPT0=', '00f0e8731b16bd9a50a953d9a17d1f1be4dc24ac144a114ffe124f3572b3da6f', 'Ojox', 'c3VtaXRlbGVnYW50QGdtYWlsLmNvbQ==', '2023-02-04 01:28:28'),
(7, 'ZEhOaGJXRXlNRGxBWjIxaGFXd3VZMjl0', '17478a761532c85c8ae0001d650356f13c83080f931d067b16e776e87439667e', 'MjQwNToyMDE6ODAxYTplMGE3OjVhNTozN2Q2OmMwNzU6ZjI3', 'dHNhbWEyMDlAZ21haWwuY29t', '2023-01-22 04:39:40'),
(8, 'Y0dGeWRHaHBZakl5TG1SelFHZHRZV2xzTG1OdmJRPT0=', 'f948d8586561e4bd9ad389b4fc9b31fb1ee0c8275babb1f1576c422f0724f8f0', 'MjQwNToyMDE6ODAxYTo5ODliOmY5NmM6ZTFlNzozMjI2OmE4NmM=', 'cGFydGhpYjIyLmRzQGdtYWlsLmNvbQ==', '2023-01-28 07:52:27'),
(9, 'WW1semQyRnlZV3BpYUdGMGRHRmphR0Z5ZVhsaFFHZHRZV2xzTG1OdmJRPT0=', '789bae9950eae8e422c25101e2db0d74dd311c4c86c82b337c884f8fc35db557', 'MTAzLjE3NS4xNjkuNjA=', 'Ymlzd2FyYWpiaGF0dGFjaGFyeXlhQGdtYWlsLmNvbQ==', '2023-02-04 07:40:13'),
(11, 'Wld4bFoyRnVkR052ZFhKcFpYSnpaWEoyYVdObFFHZHRZV2xzTG1OdmJRPT0=', 'c862d9cd0221cc355fe05cd2ab8d85fe7b63ac4d4eb01f51ad1d3eec12a6e62b', 'MjQwNToyMDE6ODAxYTplMGE3OmY0YzA6MTRmMTozZjNhOmFkYTk=', 'ZWxlZ2FudGNvdXJpZXJzZXJ2aWNlQGdtYWlsLmNvbQ==', '2023-04-02 13:41:26'),
(12, 'YzI5bWRHZGxibWxqY3k1ellXMUFaMjFoYVd3dVkyOXQ=', 'd71c215837712bd1a9f5e605c08559e8a470811c3e3ba13cf2a9729087b79b16', 'MjQwNToyMDE6ODAxYTplMGE3OmY0YzA6MTRmMTozZjNhOmFkYTk=', 'c29mdGdlbmljcy5zYW1AZ21haWwuY29t', '2023-04-02 14:11:31'),
(13, 'WkdGellXNTFjbUZuTURJd01UQXlRR2R0WVdsc0xtTnZiUT09', '455ddcb7232c7e6d4b84aaaf554df929f9133ba6a19d20a494cfe89e6de0b7cd', 'MTUwLjEyOS4xMzMuMjAz', 'ZGFzYW51cmFnMDIwMTAyQGdtYWlsLmNvbQ==', '2023-04-02 14:26:45'),
(14, 'WVdObFlteDFaVFUyTjBCbmJXRnBiQzVqYjIwPQ==', '8d75e3bd052a0735a1e896e2f3f2a40c9eefe3e18ad5bed54fe52cb1abc45ff3', 'NDUuMjUwLjI0Ni4xNTc=', 'YWNlYmx1ZTU2N0BnbWFpbC5jb20=', '2023-04-02 16:34:30'),
(15, 'WkhOd1lYSjBhR2xpUUdkdFlXbHNMbU52YlE9PQ==', 'ffc81d007df5cf1ecfe84c1d9135f65ec2bb2a04cf5d8ffab9ecdb8a2f13cb19', 'Ojox', 'ZHNwYXJ0aGliQGdtYWlsLmNvbQ==', '2023-04-12 11:57:30'),
(16, 'YzJ4aGMyaDBhSFZ1WkdWeU16WkFaMjFoYVd3dVkyOXQ=', '1828e784eda1cd7045642123f2212787ded00d09189d33419588e3f601c6b932', 'Ojox', 'c2xhc2h0aHVuZGVyMzZAZ21haWwuY29t', '2023-04-12 12:12:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bio`
--
ALTER TABLE `bio`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comment_dislikes`
--
ALTER TABLE `comment_dislikes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data_yearly`
--
ALTER TABLE `data_yearly`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `entreprenuer`
--
ALTER TABLE `entreprenuer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `g_chat`
--
ALTER TABLE `g_chat`
  ADD PRIMARY KEY (`MASKIND_ID`);

--
-- Indexes for table `maskers`
--
ALTER TABLE `maskers`
  ADD PRIMARY KEY (`MASKING_ID`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `post_dislikes`
--
ALTER TABLE `post_dislikes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bio`
--
ALTER TABLE `bio`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment_dislikes`
--
ALTER TABLE `comment_dislikes`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `entreprenuer`
--
ALTER TABLE `entreprenuer`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_dislikes`
--
ALTER TABLE `post_dislikes`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
