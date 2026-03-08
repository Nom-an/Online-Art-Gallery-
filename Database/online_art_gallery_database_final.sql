-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 06:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_art_gallery_database_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `art_work`
--

CREATE TABLE `art_work` (
  `ART_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_TITLE` varchar(50) NOT NULL,
  `ART_DESCRIPTION` mediumtext DEFAULT NULL,
  `ART_PRICE` int(11) NOT NULL,
  `ART_DATE` date NOT NULL,
  `ART_WIDTH` int(11) NOT NULL,
  `ART_HEIGHT` int(11) NOT NULL,
  `ART_THICKNESS` int(11) NOT NULL,
  `ART_CATEGORY` varchar(20) NOT NULL,
  `ART_MEDIA` varchar(20) NOT NULL,
  `ART_STATUS` varchar(20) NOT NULL,
  `art_stock` int(50) NOT NULL,
  `COMMENT_ID` int(11) DEFAULT NULL,
  `ART_IMAGEPATH` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `art_work`
--

INSERT INTO `art_work` (`ART_ID`, `USER_ID`, `ART_TITLE`, `ART_DESCRIPTION`, `ART_PRICE`, `ART_DATE`, `ART_WIDTH`, `ART_HEIGHT`, `ART_THICKNESS`, `ART_CATEGORY`, `ART_MEDIA`, `ART_STATUS`, `art_stock`, `COMMENT_ID`, `ART_IMAGEPATH`) VALUES
(14, 18, 'abc', 'Rare collection', 444, '2023-12-15', 12, 78, 4, 'Sculpture', 'Paper', 'AVAILABLE', 5, NULL, 'UIU-2.png'),
(15, 18, 'as', 'Rare collection', 2700, '2023-12-15', 500, 300, 20, 'Drawing', 'Ballpoint Pen', 'AVAILABLE', 1, NULL, 'digital 1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buy_transaction`
--

CREATE TABLE `buy_transaction` (
  `TRANSACTION_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `Courier_Name` varchar(50) NOT NULL,
  `Courier_Contact` bigint(20) NOT NULL,
  `ordered_date` date NOT NULL,
  `DELIVERY_DATE` date DEFAULT NULL,
  `ordered_no` int(10) NOT NULL,
  `total_price` int(50) NOT NULL,
  `shipping_area` varchar(50) NOT NULL,
  `shipping_municipal` varchar(50) NOT NULL,
  `shipping_province` varchar(50) NOT NULL,
  `shipping_zipcode` varchar(10) NOT NULL,
  `shipping_brgy` varchar(50) NOT NULL,
  `shipping_street` varchar(50) NOT NULL,
  `shipping_house_num` varchar(50) NOT NULL,
  `SHIPPING_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `COMMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `COMMENT_DATE` date NOT NULL,
  `COMMENT_CONTENT` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RATING_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `RATING_VALUE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `USER_FNAME` varchar(30) NOT NULL,
  `USER_MNAME` varchar(30) DEFAULT NULL,
  `USER_LNAME` varchar(30) NOT NULL,
  `USER_GENDER` varchar(10) NOT NULL,
  `USER_AGE` int(11) NOT NULL,
  `USER_BDAY` date NOT NULL,
  `USER_CONTACT` bigint(11) NOT NULL,
  `USER_MUNICIPAL` varchar(50) DEFAULT NULL,
  `USER_PROVINCE` varchar(50) DEFAULT NULL,
  `USER_ZIPCODE` varchar(10) DEFAULT NULL,
  `USER_BRGY` varchar(50) DEFAULT NULL,
  `USER_STREET` varchar(50) DEFAULT NULL,
  `USER_HOUSE_NUMBER` varchar(10) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `USER_TYPE` varchar(20) NOT NULL,
  `User_imagepath` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `username`, `password`, `USER_FNAME`, `USER_MNAME`, `USER_LNAME`, `USER_GENDER`, `USER_AGE`, `USER_BDAY`, `USER_CONTACT`, `USER_MUNICIPAL`, `USER_PROVINCE`, `USER_ZIPCODE`, `USER_BRGY`, `USER_STREET`, `USER_HOUSE_NUMBER`, `user_email`, `USER_TYPE`, `User_imagepath`) VALUES
(5, 'Tanzim', 'Tanzim', 'Tanzimul', '', 'Hasan', 'Male', 22, '2000-02-08', 9301959762, 'a', 'b', '1', '', '1', '10', 'tanzim@gmail.com', 'Admin', ''),
(14, 'rakin', 'rakin', 'Sheikh', '', 'Rakin', 'Male', 39, '0000-00-00', 1234567890, 'a', 'a', '1', '', '1', '12', 'rakin@gmail.com', 'Customer', ''),
(15, 'kader', 'kader', 'Md', 'Abdul', 'Kader', 'Male', 0, '0000-00-00', 9090909, '', 'i', '6720', 's', '1', '', 'kader@gmail.com', 'Customer', ''),
(16, 'shuvro', 'shuvro', 'Shuvro', '', 'sarker', 'Male', 0, '0000-00-00', 98765432, '', '', '', '', '', '', 'abcd@gmail.com', 'Artist', 'banner-992.jpg'),
(17, 'Dhiman', '1234', 'Dhiman', 'Mozumdar', 'Dhiman', 'Male', 0, '0000-00-00', 123456789, 'M', 'n', '3333', '5', '4', '21', 'dhiman@gmail.com', 'Artist', 'Dhiman.jpeg'),
(18, 'Abir', '1234', 'Abir', 'Hasan', 'Shuvo', 'Male', 0, '0000-00-00', 213453455, 'A', '1', '8989', '2', '5', '43', 'abir@gmail.com', 'Artist', 'Abir.jpg'),
(19, 'sakib', '1234', 'sakibul', 'hasan', 'sakib', 'Male', 0, '0000-00-00', 123423423, 'S', '2', '4444', 'p', '2', '1', 'sakib@gmail.com', 'Customer', 'sakib.jpg'),
(20, 'mushfiq', '1234', 'Mushfiqur', 'Rahim', 'Mushfiq', 'Male', 0, '0000-00-00', 12987654, 'B', '1', '9999', 'k', '5', '5', 'mushfiq@gmail.com', 'Customer', 'mushfiq.png'),
(111, 'e33ded', 'ddd', 'ddd', NULL, '', '', 0, '0000-00-00', 0, 'ddd', 'dd', NULL, NULL, NULL, NULL, '', '', NULL),
(112, '', '', '', NULL, '', '', 0, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Admin', NULL),
(123, 'er', 'eee', 'eee', 'ee', 'ee', 'Male', 12, '2000-02-08', 98765432, 'dsds', 'dsd', 'ds', 'dsd', 'dsd', 'dsd', 'sdsd@d', 'Admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art_work`
--
ALTER TABLE `art_work`
  ADD PRIMARY KEY (`ART_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `COMMENT_ID` (`COMMENT_ID`);

--
-- Indexes for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  ADD PRIMARY KEY (`TRANSACTION_ID`),
  ADD KEY `ART_ID` (`ART_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`COMMENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `ART_ID` (`ART_ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RATING_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `ART_ID` (`ART_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_work`
--
ALTER TABLE `art_work`
  MODIFY `ART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  MODIFY `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `RATING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_work`
--
ALTER TABLE `art_work`
  ADD CONSTRAINT `art_work_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `art_work_ibfk_2` FOREIGN KEY (`COMMENT_ID`) REFERENCES `comment` (`COMMENT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  ADD CONSTRAINT `buy_transaction_ibfk_1` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_transaction_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
