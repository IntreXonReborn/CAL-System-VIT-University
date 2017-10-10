-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 08:26 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorsoffice`
--
CREATE DATABASE IF NOT EXISTS `doctorsoffice` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doctorsoffice`;
--
-- Database: `food_delivery`
--
CREATE DATABASE IF NOT EXISTS `food_delivery` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `food_delivery`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Serial_No` int(11) NOT NULL,
  `Admin_ID` varchar(10) NOT NULL,
  `Admin_PW` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Admin database';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Serial_No`, `Admin_ID`, `Admin_PW`) VALUES
(1, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Serial_No` int(11) NOT NULL,
  `Cust_ID` int(8) NOT NULL,
  `Cust_PW` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='The Customer Table';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Serial_No`, `Cust_ID`, `Cust_PW`) VALUES
(1, 1001, 'zxcvb'),
(2, 1002, 'zxcvb1'),
(3, 1003, 'zxcvb2'),
(4, 1004, 'zxcvb3'),
(5, 1005, 'zxcvb4'),
(6, 1006, 'zxcvb5'),
(7, 1007, 'zxcvb6'),
(8, 1008, 'zxcvb7'),
(9, 1009, 'zxcvb8'),
(10, 1010, 'zxcvb9');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `Serial_No` int(11) NOT NULL,
  `Franchise_ID` int(10) NOT NULL,
  `Franchise_Name` int(20) NOT NULL,
  `Franchise_Logo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Serial_No` int(11) NOT NULL,
  `Owner_ID` varchar(10) NOT NULL,
  `Owner_PW` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`Franchise_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Owner_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `franchise`
--
ALTER TABLE `franchise`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `iwp`
--
CREATE DATABASE IF NOT EXISTS `iwp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `iwp`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(5) NOT NULL COMMENT 'Primary Key',
  `Admin_PW` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to manage the Admin';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_PW`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `allotted`
--

CREATE TABLE `allotted` (
  `Serial_No` int(11) NOT NULL,
  `Teacher_ID` varchar(5) CHARACTER SET utf8 NOT NULL,
  `Course_ID` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allotted`
--

INSERT INTO `allotted` (`Serial_No`, `Teacher_ID`, `Course_ID`) VALUES
(1, '12133', 'CS102'),
(3, '12133', 'CS501'),
(4, '12133', 'CS101');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Serial_No` int(11) NOT NULL,
  `Course_ID` varchar(5) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Type` varchar(3) NOT NULL,
  `Course_Credit` int(1) NOT NULL,
  `Course_Slot` varchar(2) NOT NULL,
  `Dept_No` varchar(5) NOT NULL,
  `Admin_ID` varchar(5) NOT NULL,
  `allotment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to manage the Course';

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Serial_No`, `Course_ID`, `Course_Name`, `Course_Type`, `Course_Credit`, `Course_Slot`, `Dept_No`, `Admin_ID`, `allotment_status`) VALUES
(1, 'CL101', 'Surveying', 'ETH', 3, 'D2', '10004', 'root', 0),
(2, 'CL102', 'Advanced Fluid Mechanics', 'ETH', 4, 'D1', '10004', 'root', 0),
(3, 'CL202', 'Structural Analysis', 'ELA', 3, 'L3', '10004', 'root', 0),
(4, 'CL401', 'Building Drawing', 'ELA', 4, 'L2', '10004', 'root', 0),
(5, 'CL501', 'Surveying - J Component', 'EPA', 1, 'P2', '10004', 'root', 0),
(6, 'CS101', 'Operating Systems', 'ETH', 4, 'A2', '10001', 'root', 0),
(7, 'CS102', 'Database Management', 'ETH', 4, 'A1', '10001', 'root', 0),
(8, 'CS201', 'Introduction to Python Programming', 'ELA', 3, 'L1', '10001', 'root', 0),
(9, 'CS203', 'Object Oriented Programming', 'ELA', 3, 'L3', '10001', 'root', 0),
(10, 'CS501', 'Database Management - J Component', 'EPA', 1, 'P1', '10001', 'root', 0),
(11, 'EC101', 'Semiconductor System', 'ETH', 3, 'B2', '10002', 'root', 0),
(12, 'EC102', 'Analog Electronic Circuits', 'ETH', 4, 'B1', '10002', 'root', 0),
(13, 'EC201', 'Sensors and Measurements', 'ELA', 3, 'L2', '10002', 'root', 0),
(14, 'EC205', 'Signal Processing', 'ELA', 3, 'L4', '10002', 'root', 0),
(15, 'EC501', 'Semiconductor System - J Component', 'EPA', 1, 'P2', '10002', 'root', 0),
(16, 'EE101', 'Electric Circuits', 'ETH', 3, 'E2', '10005', 'root', 0),
(17, 'EE102', 'Network Theory', 'ETH', 3, 'E1', '10005', 'root', 0),
(18, 'EE202', 'Measurement and Instrumentation', 'ELA', 4, 'L5', '10005', 'root', 0),
(19, 'EE301', 'Fiber Optics Testing', 'ELA', 3, 'L4', '10005', 'root', 0),
(20, 'EE501', 'Measurement and Instrumentation - J Component', 'EPA', 1, 'P2', '10005', 'root', 0),
(21, 'IT101', 'Digital Logic and Microprocessor', 'ETH', 3, 'C2', '10003', 'root', 0),
(22, 'IT102', 'Software Engineering', 'ETH', 4, 'C1', '10003', 'root', 0),
(23, 'IT202', 'Data Compression Techniques', 'ELA', 2, 'L5', '10003', 'root', 0),
(24, 'IT301', 'Digital Image Processing', 'ELA', 4, 'L1', '10003', 'root', 0),
(25, 'IT501', 'Digital Logic and Microprocessor - J Component', 'EPA', 1, 'P3', '10003', 'root', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Serial_No` int(11) NOT NULL,
  `Dept_No` varchar(5) CHARACTER SET utf8 NOT NULL COMMENT 'Primary Key',
  `Dept_Name` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to manage the department';

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Serial_No`, `Dept_No`, `Dept_Name`) VALUES
(1, '10001', 'SCOPE'),
(2, '10002', 'SENSE'),
(3, '10003', 'SITE'),
(4, '10004', 'SCALE'),
(5, '10005', 'SELECT');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `Serial_No` int(11) NOT NULL,
  `Student_ID` varchar(9) NOT NULL,
  `Course_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`Serial_No`, `Student_ID`, `Course_ID`) VALUES
(1, '16BCB0092', 'CS203'),
(2, '16BCB0092', 'CS201'),
(3, '16BCB0092', 'CS101'),
(4, '16BCB0092', 'CS501'),
(5, '16BCB0015', 'EC101'),
(6, '16BCB0015', 'EC102'),
(7, '16BCB0015', 'EC201'),
(8, '16BCB0015', 'EC501'),
(9, '16BCB0016', 'CS101'),
(10, '16BCB0016', 'CS102'),
(11, '16BCB0016', 'CS201'),
(12, '16BCB0016', 'CS501'),
(13, '16BCB0033', 'CS102'),
(14, '16BCB0033', 'CS201'),
(15, '16BCB0033', 'CS203'),
(16, '16BCB0033', 'CS501'),
(17, '16BEC0512', 'EE101'),
(18, '16BEC0512', 'EE102'),
(19, '16BEC0512', 'EE202'),
(20, '16BEC0512', 'EE501'),
(21, '16BIT0278', 'IT101'),
(22, '16BIT0278', 'IT102'),
(23, '16BIT0278', 'IT202'),
(24, '16BIT0278', 'IT501'),
(25, '16BCB0001', 'CS102'),
(26, '16BCB0001', 'CS201'),
(27, '16BCB0001', 'CS203'),
(28, '16BCB0001', 'CS501');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `Serial_No` int(11) NOT NULL,
  `Course_ID` varchar(5) NOT NULL,
  `Teacher_ID` varchar(5) NOT NULL,
  `Teacher_Experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`Serial_No`, `Course_ID`, `Teacher_ID`, `Teacher_Experience`) VALUES
(1, 'CS203', '12133', 10),
(2, 'CS201', '12133', 10),
(3, 'CS501', '13561', 7),
(4, 'CS501', '12133', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Serial_No` int(11) NOT NULL,
  `Course_ID` varchar(5) NOT NULL,
  `Student_ID` varchar(9) NOT NULL,
  `Assignment` varchar(15) NOT NULL,
  `Max_Mark` int(3) NOT NULL,
  `QuestionPath` varchar(500) NOT NULL,
  `AnswerPath` varchar(500) NOT NULL,
  `Marks` int(3) NOT NULL,
  `Comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Serial_No`, `Course_ID`, `Student_ID`, `Assignment`, `Max_Mark`, `QuestionPath`, `AnswerPath`, `Marks`, `Comment`) VALUES
(1, 'CS501', '16BCB0092', 'Review_1', 20, 'QuestionUploads\\rev1.pdf', '', 0, ''),
(2, 'CS501', '16BCB0092', 'Review_2', 30, '', '', 0, ''),
(3, 'CS501', '16BCB0092', 'Review_3', 50, '', '', 0, ''),
(4, 'CS501', '16BCB0001', 'Review_1', 20, '', '', 0, ''),
(5, 'CS501', '16BCB0001', 'Review_2', 30, '', '', 0, ''),
(6, 'CS501', '16BCB0001', 'Review_3', 50, '', '', 0, ''),
(7, 'CS501', '16BCB0015', 'Review_1', 20, '', '', 0, ''),
(8, 'CS501', '16BCB0015', 'Review_2', 30, '', '', 0, ''),
(9, 'CS501', '16BCB0015', 'Review_3', 50, '', '', 0, ''),
(10, 'CS501', '16BCB0016', 'Review_1', 20, '', '', 0, ''),
(11, 'CS501', '16BCB0016', 'Review_2', 30, '', '', 0, ''),
(12, 'CS501', '16BCB0016', 'Review_3', 50, '', '', 0, ''),
(13, 'CS501', '16BCB0033', 'Review_1', 20, '', '', 0, ''),
(14, 'CS501', '16BCB0033', 'Review_2', 30, '', '', 0, ''),
(15, 'CS501', '16BCB0033', 'Review_3', 50, '', '', 0, ''),
(16, 'EE501', '16BEC0512', 'Review_1', 20, '', '', 0, ''),
(17, 'EE501', '16BEC0512', 'Review_2', 30, '', '', 0, ''),
(18, 'EE501', '16BEC0512', 'Review_3', 50, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Serial_No` int(11) NOT NULL,
  `Student_ID` varchar(9) NOT NULL,
  `Student_PW` varchar(20) NOT NULL,
  `Student_Name` varchar(40) NOT NULL,
  `Student_DOB` date NOT NULL,
  `Student_EmailID` varchar(40) NOT NULL,
  `Dept_No` varchar(5) NOT NULL,
  `Admin_ID` varchar(5) NOT NULL,
  `Student_PhoneNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to manage the Students';

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Serial_No`, `Student_ID`, `Student_PW`, `Student_Name`, `Student_DOB`, `Student_EmailID`, `Dept_No`, `Admin_ID`, `Student_PhoneNo`) VALUES
(1, '16BCB0001', 'rijoyu36', 'Omkar Sabnis', '1998-11-08', 'omkarsabnis@gmail.com', '10001', 'root', '9994427885'),
(2, '16BCB0015', 'yatona89', 'Shivam Kumar Verma', '1997-05-09', 'shivamkverma@gmail.com', '10001', 'root', '7539514562'),
(3, '16BCB0016', 'agoruj89', 'Ritika Thakur', '1998-04-29', 'ritikathakur@gmail.com', '10001', 'root', '8400077900'),
(4, '16BCB0033', 'iforaf91', 'Pawan Hazen', '1998-12-24', 'pawanhazel@gmail.com', '10001', 'root', '8456511112'),
(5, '16BCB0045', 'omegaultimate', 'David Shaji George', '1998-09-11', 'davidgeorge@gmail.com', '10001', 'root', '9988229920'),
(6, '16BCB0082', 'zokuxi33', 'Kalyani Asthana', '1996-03-17', 'kalyaniasthana@gmail.com', '10001', 'root', '8586427290'),
(7, '16BCB0092', '1e9c7dceb1', 'Saikat Bhattacharyya', '1997-12-15', 'saikat01244569@gmail.com', '10001', 'root', '8584965037'),
(8, '16BCB0101', 'zimava97', 'Shourya Mittal', '1997-10-18', 'shouryamittal@gmail.com', '10001', 'root', '7845012433'),
(9, '16BCB0129', 'jijinu51', 'Varshan Agarwal', '1997-04-13', 'varshanagarwal@gmail.com', '10001', 'root', '7447124523'),
(10, '16BCB0140', 'abexot87', 'Koduri Sai Sankeerth', '1998-07-05', 'saisankeerth@gmail.com', '10001', 'root', '9895454551'),
(11, '16BCB0154', 'kamehameha', 'Jack Bold', '1997-02-14', 'jackbold@gmail.com', '10001', 'root', '8877996655'),
(12, '16BCB0210', 'electroshock', 'James Edwar', '1998-10-09', 'jamesedwar@gmail.com', '10001', 'root', '7887456598'),
(13, '16BCE0001', 'inoton25', 'Akula Gana Teja', '1998-09-27', 'gtdrag1412@gmail.com', '10001', 'root', '7890987432'),
(14, '16BCE0098', 'owoqef74', 'Abhijith Venugopal', '1998-06-08', 'abhijithvenu@gmail.com', '10001', 'root', '8907657912'),
(15, '16BCE0198', 'ewufiy83', 'Akshata Bhusari', '1998-09-15', 'akshatabhu@gmail.com', '10001', 'root', '7689076761'),
(16, '16BCE0234', 'urihiy62', 'Ananya Mirji', '1997-09-12', 'ananyamir@gmail.com', '10001', 'root', '7876509871'),
(17, '16BCE0677', 'vevavo74', 'Meghana V', '1997-09-18', 'meghanav@gmail.com', '10001', 'root', '9087656712'),
(18, '16BCE0812', 'efijem37', 'Harsh Singhal', '1998-09-16', 'harshsingh@gmail.com', '10001', 'root', '9067898678'),
(19, '16BCE0981', 'osijam36', 'Aditya Singh', '1997-09-18', 'adityasingh@gmail.com', '10001', 'root', '7689700001'),
(20, '16BCE2012', 'tatife68', 'Simran Jath', '1998-01-12', 'simranjat@gmail.com', '10001', 'root', '9000178651'),
(21, '16BCE2034', 'xisupi35', 'Swapnil Joshi', '1997-09-20', 'swappy@gmail.com', '10001', 'root', '8775698012'),
(22, '16BCE2289', 'oficom09', 'Bharat Singh', '1997-06-12', 'bharatsingh@gmail.com', '10001', 'root', '9034165431'),
(23, '16BCL0010', 'enawel56', 'Shivas Dharman', '1998-09-16', 'shivasdharman@gmail.com', '10004', 'root', '9831323147'),
(24, '16BCL0012', 'fuzipe27', 'Sandra G. Rider', '1997-02-28', 'sandrarider@gmail.com', '10004', 'root', '7530007600'),
(25, '16BCL0086', 'alipup74', 'Paul J. Simmons', '1996-12-31', 'paulsimmons@gmail.com', '10004', 'root', '8754296861'),
(26, '16BCL0099', 'azaruz27', 'Phyllis R. Bussell', '1996-10-10', 'phyllisbussell@gmail.com', '10004', 'root', '8456877999'),
(27, '16BCL0101', 'ukicut94', 'Gandhi Dewar', '1996-08-18', 'gandhidewar@gmail.com', '10004', 'root', '9567189897'),
(28, '16BCL0102', 'bulawi09', 'Kimono Pie', '1996-01-11', 'kimonopie@gmail.com', '10004', 'root', '9090761561'),
(29, '16BCL0103', 'zoyesi16', 'Yun Che', '1996-04-17', 'yunche@gmail.com', '10004', 'root', '8654132324'),
(30, '16BCL0104', 'anegef46', 'Meng Hao', '1998-11-30', 'menghao@gmail.com', '10004', 'root', '9451222567'),
(31, '16BCL0105', 'ejamuz38', 'Nie Li', '1997-08-29', 'nieli@gmail.com', '10004', 'root', '9345171234'),
(32, '16BCL0106', 'ibokow42', 'Xia Qingyue', '1999-12-31', 'xiaqingyue@gmail.com', '10004', 'root', '8342176765'),
(33, '16BCL0107', 'fajode50', 'Xiao Shen', '1995-03-31', 'xiaoshen@gmail.com', '10004', 'root', '9345167192'),
(34, '16BCL0108', 'apinom43', 'Huyan Cayi', '1998-01-05', 'huyancayi@gmail.com', '10004', 'root', '9865412456'),
(35, '16BCL0109', 'alaqew52', 'Feng Xuer', '1997-05-28', 'fengxuer@gmail.com', '10004', 'root', '8789555789'),
(36, '16BCL0321', 'azotad17', 'Nathan M. Box', '1998-04-03', 'nathanbox@gmail.com', '10004', 'root', '7855564287'),
(37, '16BCL0405', 'faduni32', 'Pushpa Jain', '1998-05-14', 'pushpajain@gmail.com', '10004', 'root', '9831666855'),
(38, '16BCL0541', 'boreba69', 'Julia M. Lancaster', '1997-08-01', 'julialancaster@gmail.com', '10004', 'root', '7898813231'),
(39, '16BCL0610', 'ezenuv27', 'Rebecca B. Abbott', '1998-06-13', 'rebeccaabbott@gmail.com', '10004', 'root', '8795456211'),
(40, '16BCL1011', 'azirum71', 'John D. Santillanes', '1997-06-30', 'johnsan@gmail.com', '10004', 'root', '9831556855'),
(41, '16BCL1985', 'giwiwa33', 'Rajiv Shukla', '1996-04-15', 'rajivshukla@gmail.com', '10004', 'root', '9123255441'),
(42, '16BCL2022', 'gavife22', 'Qatar Danush', '1998-01-11', 'qatardanush@gmail.com', '10004', 'root', '9546427885'),
(43, '16BEC0001', 'odukim89', 'Rishabh Pratap Sisodia', '1998-12-23', 'rishabhpratap@gmail.com', '10002', 'root', '9845031390'),
(44, '16BEC0012', 'ohoboh59', 'Varshan Hegde', '1998-09-12', 'varshanhegs@gmail.com', '10002', 'root', '7689012123'),
(45, '16BEC0178', 'joweho80', 'Kevin Abraham', '1997-02-17', 'kevinabraham335@gmail.com', '10002', 'root', '8767854356'),
(46, '16BEC0231', 'ocopom81', 'Parangjyothi C', '1998-07-23', 'parangjyothic@gmail.com', '10002', 'root', '7658912212'),
(47, '16BEC0321', 'cigiyu20', 'Gautham Rao', '1998-05-11', 'gauthamrao19@gmail.com', '10002', 'root', '7653912123'),
(48, '16BEC0431', 'lofuti37', 'Rohit Janardhan', '1998-03-29', 'rohitbj@gmail.com', '10002', 'root', '8790877662'),
(49, '16BEC0456', 'yeradu28', 'Vibha S', '1998-03-12', 'vibhas231@gmail.com', '10002', 'root', '9887634561'),
(50, '16BEC0478', 'vanonu08', 'Siddharth Abraham', '1998-09-12', 'sidabhraham@gmail.com', '10002', 'root', '9087656712'),
(51, '16BEC0512', 'oxakod95', 'Sahil Deshpande', '1998-07-12', 'sahildesh@gmail.com', '10002', 'root', '9765123234'),
(52, '16BEC0567', 'taveda52', 'Vishruth RG', '1997-12-03', 'vishruthrg@gmail.com', '10002', 'root', '8789765789'),
(53, '16BEC0654', 'vihaja84', 'Karthik Hosur', '1998-12-23', 'karthikhosur@gmail.com', '10002', 'root', '7650001212'),
(54, '16BEC0765', 'ocisog50', 'Aditya TA', '1998-01-01', 'adityata@gmail.com', '10002', 'root', '8790876671'),
(55, '16BEC0871', 'wagijo06', 'Aditya Sharma', '1998-09-09', 'adityasharma@gmail.com', '10002', 'root', '8989896571'),
(56, '16BEC0890', 'ikijaf58', 'Sahana Shanbhag', '1998-12-23', 'sahanashan@gmail.com', '10002', 'root', '7897865761'),
(57, '16BEC0901', 'xayeda23', 'Gayatri Narayanan', '1998-05-01', 'gayathrilnara@gmail.com', '10002', 'root', '9878900012'),
(58, '16BEC0923', 'somure24', 'Parinita Daneshwar', '1998-02-15', 'pari@gmail.com', '10002', 'root', '7689012345'),
(59, '16BEC0965', 'oqilaf92', 'Radhika Apte', '1998-09-09', 'radhikaapte@gmail.com', '10002', 'root', '9809876891'),
(60, '16BEC0987', 'epebum41', 'Priya Bhide', '1997-03-12', 'priyabhide@gmail.com', '10002', 'root', '9876812126'),
(61, '16BEC0991', 'josawo73', 'Siddharth Prabhakaran', '1998-09-16', 'sidprabhak@gmail.com', '10002', 'root', '7897865121'),
(62, '16BEC0998', 'mogubu41', 'Minal Patadi', '1998-05-06', 'minalpatadi@gmail.com', '10002', 'root', '9878910102'),
(63, '16BEE0010', 'okonut98', 'Jackson Sayers', '1998-07-05', 'jacksonsayers@gmail.com', '10005', 'root', '9871290026'),
(64, '16BEE0011', 'icabov61', 'Zachary O\'Shea', '1998-07-06', 'zacharyoshea@gmail.com', '10005', 'root', '9871200026'),
(65, '16BEE0012', 'oheqex84', 'Lucas Jackey', '1998-07-07', 'lucasjackey@gmail.com', '10005', 'root', '7975843336'),
(66, '16BEE0013', 'gulune54', 'Joseph Titheradge', '1998-07-08', 'josephtither@gmail.com', '10005', 'root', '9222843336'),
(67, '16BEE0014', 'xejeha03', 'Callum Wolff', '1998-07-09', 'callumwolff@gmail.com', '10005', 'root', '9875843006'),
(68, '16BEE0015', 'bimife02', 'Andrew Hilder', '1998-07-10', 'andrewhilder@gmail.com', '10005', 'root', '9115843336'),
(69, '16BEE0016', 'tiquxa31', 'Maya Ullathorne', '1998-07-11', 'mayaullathorne@gmail.com', '10005', 'root', '9875843331'),
(70, '16BEE0017', 'osejog62', 'Emily McEwen', '1998-07-12', 'emilymcewen@gmail.com', '10005', 'root', '9899999996'),
(71, '16BEE0018', 'uwequy04', 'Jai Hague', '1998-07-13', 'jaihague@gmail.com', '10005', 'root', '9575843336'),
(72, '16BEE0019', 'ucahud32', 'Flynn Hawthorn', '1998-07-14', 'flynnhawthorn@gmail.com', '10005', 'root', '9875043336'),
(73, '16BEE0020', 'ohuqed31', 'Summer Kidd', '1998-07-15', 'summerkid@gmail.com', '10005', 'root', '7775843336'),
(74, '16BEE0021', 'ziqutu36', 'Grace Louise', '1998-07-16', 'gracelouise@gmail.com', '10005', 'root', '9222840006'),
(75, '16BEE0022', 'dumoku02', 'Aaron Fritzsche', '1998-07-17', 'aaronfritz@gmail.com', '10005', 'root', '9875843336'),
(76, '16BEE0023', 'juhaji24', 'Noah Brifman', '1998-07-18', 'noahbrifman@gmail.com', '10005', 'root', '8885840006'),
(77, '16BEE0024', 'uvosed40', 'Hamish Reeve', '1998-07-19', 'hamishreeve@gmail.com', '10005', 'root', '9875740006'),
(78, '16BEE0025', 'qosari84', 'Lily Simson', '1998-07-20', 'lilysimson@gmail.com', '10005', 'root', '995840009'),
(79, '16BEE0027', 'rofato40', 'Katie Coungeau', '1998-07-22', 'katiecoungeau@gmail.com', '10005', 'root', '9875840002'),
(80, '16BEE0028', 'oyobof96', 'Seth Blacklow', '1998-07-23', 'sethblacklow@gmail.com', '10005', 'root', '9175840006'),
(81, '16BEE0029', 'acenig04', 'Harry Counsel', '1998-07-24', 'harrycounsel@gmail.com', '10005', 'root', '9875840006'),
(82, '16BIT0012', 'ayequp35', 'Peter Parker', '1998-01-01', 'peterparker@gmail.com', '10003', 'root', '9087600991'),
(83, '16BIT0078', 'fulife77', 'Tony Stark', '1997-09-17', 'iamironman@gmail.com', '10003', 'root', '7867109871'),
(84, '16BIT0091', 'orohig55', 'Bruce Wayne', '1997-01-09', 'iambatman@gmail.com', '10003', 'root', '9087688771'),
(85, '16BIT0132', 'epodex57', 'Clark Kent', '1997-01-18', 'iamsuperman@gmail.com', '10003', 'root', '8976190871'),
(86, '16BIT0169', 'evusin81', 'Barry Allen', '1997-05-18', 'iamflash@gmail.com', '10003', 'root', '9801989101'),
(87, '16BIT0201', 'cenufu90', 'Chandler Bing', '1996-12-09', 'iamchandler@gmail.com', '10003', 'root', '8790177722'),
(88, '16BIT0278', 'winoko16', 'Monica Taylor', '1997-03-21', 'iammonica@gmail.com', '10003', 'root', '9880002091'),
(89, '16BIT0301', 'efexiz11', 'Ross Garrison', '1997-08-17', 'iamross@gmail.com', '10003', 'root', '9090890907'),
(90, '16BIT0402', 'quliso92', 'Pratyush Agarwal', '1998-03-05', 'iampratyush@gmail.com', '10003', 'root', '8907811143'),
(91, '16BIT0478', 'otunec38', 'Nilrava Sensarma', '1998-04-15', 'iamneel@gmail.com', '10003', 'root', '7689011231'),
(92, '16BIT0589', 'dejigi45', 'Navdeep Beniwal', '1998-03-21', 'iamnavdeep@gmail.com', '10003', 'root', '7890134342'),
(93, '16BIT0614', 'etozit43', 'Ayush Acharya', '1997-09-16', 'iamayush@gmail.com', '10003', 'root', '8901254654'),
(94, '16BIT0678', 'axakit38', 'Diana Prince', '1995-01-01', 'iamdiana@gmail.com', '10003', 'root', '7890167812'),
(95, '16BIT0712', 'atebuc20', 'Prithviraj Chauhan', '1998-06-12', 'iamprithviraj@gmail.com', '10003', 'root', '8765146781'),
(96, '16BIT0784', 'ulamol90', 'Charlton Jude', '1996-03-31', 'iamcharlton@gmail.com', '10003', 'root', '9798701012'),
(97, '16BIT0818', 'zokudu06', 'Rahul Janardhan', '1997-06-19', 'rahuljanardhan@gmail.com', '10003', 'root', '9145678671'),
(98, '16BIT0891', 'lifuhe92', 'Mayank Ganatej', '1996-01-01', 'iamamayank@gmail.com', '10003', 'root', '9164843170'),
(99, '16BIT0941', 'ixojeq71', 'Khaleesi Dragneel', '1998-01-26', 'iamkhaleesi@gmail.com', '10003', 'root', '9167878711'),
(100, '16BIT2012', 'buceqe80', 'Jon Snow', '1996-06-18', 'iamsnow@gmail.com', '10003', 'root', '9234578912');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Serial_No` int(11) NOT NULL,
  `Teacher_ID` varchar(5) NOT NULL COMMENT 'Primary Key',
  `Teacher_PW` varchar(20) NOT NULL,
  `Teacher_Name` varchar(40) NOT NULL,
  `Teacher_Email` varchar(20) NOT NULL,
  `Teacher_Experience` int(11) NOT NULL,
  `Dept_No` varchar(5) NOT NULL COMMENT 'Foreign Key',
  `Admin_ID` varchar(5) NOT NULL COMMENT 'Foreign Key',
  `Teacher_PhoneNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to manage the Teachers';

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Serial_No`, `Teacher_ID`, `Teacher_PW`, `Teacher_Name`, `Teacher_Email`, `Teacher_Experience`, `Dept_No`, `Admin_ID`, `Teacher_PhoneNo`) VALUES
(1, '12133', 'padmapriya', 'Padmapriya R', 'padmapriya@gmail.com', 10, '10001', 'root', '9089012124'),
(2, '12438', 'jovoji10', 'Jasmin Jose', 'jasminjose@gmail.com', 8, '10001', 'root', '9878976890'),
(3, '13561', 'muralis', 'Murali S', 'muralis@gmail.com', 7, '10001', 'root', '7689012543'),
(4, '14561', 'neyuco71', 'Kubendaran R', 'kubendarar@gmail.com', 14, '10002', 'root', '7650012151'),
(5, '15671', 'wuliko54', 'Santhi S', 'santhis@gmail.com', 8, '10002', 'root', '9090865761'),
(6, '16512', 'udidit04', 'Jacob John', 'jacobjohn@gmail.com', 10, '10002', 'root', '8787650981'),
(7, '16522', 'akaxib43', 'Hrithik Roshan', 'hrithik@gmail.com', 7, '10003', 'root', '8908767123'),
(8, '17871', 'iwoyop58', 'Shah Rukh Khan', 'iamsrk@gmail.com', 1, '10003', 'root', '7887654891'),
(9, '18966', 'bunico26', 'Deepika Padukone', 'deepika@gmail.com', 4, '10003', 'root', '9090878651'),
(10, '19009', 'nuboma54', 'Kalpana Chawla', 'kalpanach@gmail.com', 5, '10004', 'root', '8778600013'),
(11, '20121', 'wireco44', 'Sunidhi Chauhan', 'sunidhich@gmail.com', 5, '10004', 'root', '7689076816'),
(12, '21987', 'lonowa34', 'Lata Mangeshkar', 'latamang@gmail.com', 6, '10004', 'root', '8790156423'),
(13, '22989', 'yeripa82', 'Shraddha Kapoor', 'shraddhak@gmail.com', 7, '10005', 'root', '9087609871'),
(14, '23654', 'ejozah18', 'Udyaan Vaats', 'udayaan@gmail.com', 6, '10005', 'root', '7865700012'),
(15, '28765', 'efozuq52', 'Kumar Sangakaara', 'kumarsanga@gmail.com', 9, '10005', 'root', '7876189012');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `Serial_No` int(11) NOT NULL,
  `Teacher_ID` varchar(5) NOT NULL,
  `Student_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `allotted`
--
ALTER TABLE `allotted`
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Teacher_ID` (`Teacher_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Admin_ID` (`Admin_ID`),
  ADD KEY `Dept_No` (`Dept_No`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_No`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Teacher_Experience` (`Teacher_Experience`),
  ADD KEY `Teacher_ID` (`Teacher_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Dept_No` (`Dept_No`),
  ADD KEY `Admin_ID` (`Admin_ID`) USING BTREE;

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Admin_ID` (`Admin_ID`),
  ADD KEY `Dept_No` (`Dept_No`) USING BTREE,
  ADD KEY `Teacher_Experience` (`Teacher_Experience`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD UNIQUE KEY `Serial_No` (`Serial_No`),
  ADD KEY `Teacher_ID` (`Teacher_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allotted`
--
ALTER TABLE `allotted`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `teaches`
--
ALTER TABLE `teaches`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `allotted`
--
ALTER TABLE `allotted`
  ADD CONSTRAINT `allotted_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allotted_ibfk_2` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`Dept_No`) REFERENCES `department` (`Dept_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrolls_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`Teacher_Experience`) REFERENCES `teacher` (`Teacher_Experience`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Dept_No`) REFERENCES `department` (`Dept_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Dept_No`) REFERENCES `department` (`Dept_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'Project', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"iwp\",\"phpmyadmin\",\"test\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"iwp\",\"table\":\"reviews\"},{\"db\":\"iwp\",\"table\":\"enrolls\"},{\"db\":\"iwp\",\"table\":\"student\"},{\"db\":\"iwp\",\"table\":\"course\"},{\"db\":\"iwp\",\"table\":\"allotted\"},{\"db\":\"iwp\",\"table\":\"teacher\"},{\"db\":\"iwp\",\"table\":\"teaches\"},{\"db\":\"iwp\",\"table\":\"department\"},{\"db\":\"iwp\",\"table\":\"Reviews\"},{\"db\":\"iwp\",\"table\":\"userinfo\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'iwp', 'student', '{\"sorted_col\":\"`Student_ID` ASC\"}', '2017-09-22 07:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-09-03 13:27:41', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `user_count`
--
CREATE DATABASE IF NOT EXISTS `user_count` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `user_count`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Serial_No` int(11) NOT NULL,
  `User_ID` int(20) NOT NULL,
  `User_PW` int(11) NOT NULL,
  `User_Visits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Serial_No` (`Serial_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
