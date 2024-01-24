-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 08:49 PM
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
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Name` varchar(50) NOT NULL,
  `NICnumber` varchar(20) NOT NULL,
  `Age` int(5) NOT NULL,
  `JobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Name`, `NICnumber`, `Age`, `JobTitle`) VALUES
('fgew', '12243', 23, 'kjuytr'),
('hbhahdbd', '129381828', 23, 'jdjdhiadw'),
('rswredrfygh', '345678', 43567, 'fgh'),
('nimasha', '4525', 21, 'SE'),
('kawhqbjdwcvdsjcb sd', '8722187387331', 32, 'hjk');

-- --------------------------------------------------------

--
-- Table structure for table `jobd`
--

CREATE TABLE `jobd` (
  `J_ID` int(11) NOT NULL,
  `J_title` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Catagory` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobd`
--

INSERT INTO `jobd` (`J_ID`, `J_title`, `Email`, `Catagory`, `Description`) VALUES
(1236, 'qqqqqqqqqqqqq', 'qqqqqqq@gmai.com', 'oooooooooooo', 'ppppppppppppppppoiuyr'),
(1238, 'uiytuyttiy', 'qqqqqqq@gmai.com', 'jgjghjghjgjhgjgjg', 'gjhgjgjhgjgj'),
(1239, 'uiytuyttiy', 'qqqqqqq@gmai.com', 'jgjghjghjgjhgjgjg', 'gjhgjgjhgjgj'),
(1240, 'uiytuyttiy', 'qqqqqqq@gmai.com', 'jgjghjghjgjhgjgjg', 'gjhgjgjhgjgj'),
(1241, 'uiytuyttiy', 'qqqqqqq@gmai.com', 'jgjghjghjgjhgjgjg', 'gjhgjgjhgjgj');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `repassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `name`, `email`, `PhoneNumber`, `password`, `repassword`) VALUES
(17, 'qwe', 'ruwanharsha2001@gmail.com', 776655444, '99', '99'),
(18, 'qwe', 'ruwanharsha2001@gmail.com', 776655444, '123', '123'),
(19, 'dw', 'ruwanharsha2001@gmail.com', 776655444, '11', '11'),
(20, 'abcd', 'ruwanharsha2001@gmail.com', 776655444, '33', '33'),
(21, '123', 'ruwanharsha2001@gmail.com', 774445556, '11', '11'),
(22, '1237', 'ruwanharsha2001@gmail.com', 774445556, '99', '99'),
(23, 'dinuth', 'rsh@gmail.com', 765346251, '123456', '123456'),
(24, 'dwasdfgh', 'ruwanharsha2001@gmail.com', 776655444, '0', '0'),
(25, 'qwertyuiop', 'ruwanharsha2001@gmail.com', 776655444, '2', '5'),
(26, 'abcd', 'ruwanharsha2001@gmail.com', 776655444, '33', '33'),
(27, 'abcd', 'ruwanharsha2001@gmail.com', 776655444, '34', '43'),
(28, 'qwewertyu', 'nuwanmadhu5555@gmail.com', 776655444, '33', '3'),
(29, 'abcdee', 'email@gmail.com', 776655444, '1', '123'),
(30, 'qwewertyu', 'ruwanharsha2001@gmail.com', 770000000, '2', '3'),
(31, 'abcdee', 'nuwanmadhu5555@gmail.com', 770000000, '66', '6'),
(32, 'qwe', 'ruwanharsha2001@gmail.com', 776655444, '1', '12'),
(33, 'dinuth', 'ruwanharsha2001@gmail.com', 770000000, '12345', '12345'),
(34, 'dinuth', 'ruwanharsha2001@gmail.com', 770000000, '12345', '12345'),
(35, 'kavishka', 'Mihiruwanudaraka@gmail.com', 770000000, '12', '3456'),
(36, 'ruwan', 'ruwanharsha2001@gmail.com', 770000000, '1111', '1111'),
(37, 'ruwan', 'ruwanharsha2001@gmail.com', 770000000, '1111', '1111'),
(38, 'ruwan', 'ruwanharsha2001@gmail.com', 770000000, '1111', '1111'),
(39, 'abcd', 'Mihiruwanudaraka@gmail.com', 770000000, '12345', '45'),
(40, 'abcd', 'Mihiruwanudaraka@gmail.com', 770000000, '12345', '45'),
(41, 'abcd', 'Mihiruwanudaraka@gmail.com', 770000000, '12345', '45'),
(42, 'nimasha', 'ruwanharsha2001@gmail.com', 776655444, 'ww', 'ww'),
(43, 'nimasha', 'ruwanharsha2001@gmail.com', 776655444, 'ww', 'ww'),
(44, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'ww', 'ww'),
(45, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'ww', 'ww'),
(46, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(47, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(48, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(49, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(50, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(51, 'nim', 'ruwanharsha2001@gmail.com', 776655444, 'qq', 'qq'),
(52, 'dinuth', 'sdfgh@gmail.com', 770000000, '1234', '1234'),
(53, 'dinuth', 'sdfgh@gmail.com', 770000000, '1234', '1234'),
(54, 'dinuth', 'email@gmail.com', 700000000, '12345', '12345'),
(55, 'kasun ', 'email@gmail.com', 700000000, '123456', '123456'),
(56, 'kasun ', 'email@gmail.com', 700000000, '123456', '123456'),
(57, 'kasun ', 'email@gmail.com', 700000000, '123456', '123456'),
(58, 'cccc', 'ruwanharsha2001@gmail.com', 776655444, '12', '12'),
(59, 'cccc', 'ruwanharsha2001@gmail.com', 776655444, '12', '12'),
(60, 'cccc', 'ruwanharsha2001@gmail.com', 776655444, '12', '12'),
(61, 'nim', 'email@gmail.com', 776655444, '12', '12'),
(62, 'abcd', 'Mihiruwanudaraka@gmail.com', 776655444, '12', '12'),
(63, 'abcd', 'Mihiruwanudaraka@gmail.com', 776655444, '12', '12'),
(64, 'VVVVVV', 'ruwanharsha2001@gmail.com', 776655444, '123', '123'),
(65, 'VVVVVV', 'ruwanharsha2001@gmail.com', 776655444, '123', '123'),
(66, 'vvvvvvv', 'nuwanmadhu5555@gmail.com', 776655444, '11', '11'),
(67, 'vvvvvvv', 'nuwanmadhu5555@gmail.com', 776655444, '11', '11'),
(68, 'vvvvvvv', 'nuwanmadhu5555@gmail.com', 776655444, '11', '11'),
(69, 'nim', 'Mihiruwanudaraka@gmail.com', 770000000, '7777', '7777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`NICnumber`);

--
-- Indexes for table `jobd`
--
ALTER TABLE `jobd`
  ADD PRIMARY KEY (`J_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobd`
--
ALTER TABLE `jobd`
  MODIFY `J_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1248;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
