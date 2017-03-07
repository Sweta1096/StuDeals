-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2017 at 12:55 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `studeals`
--
CREATE DATABASE `studeals` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `studeals`;

-- --------------------------------------------------------

--
-- Table structure for table `address_id`
--

CREATE TABLE IF NOT EXISTS `address_id` (
  `userID` int(255) NOT NULL,
  `address` char(255) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_id`
--

INSERT INTO `address_id` (`userID`, `address`, `pincode`) VALUES
(1, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India', 211008),
(1, 'EA1-91 ADA Colony Naini, Allahabad Uttar Pradesh, India', 211008),
(38, 'Kholi No. 420 Bhootgali, Allahabad Uttar Pradesh, India', 211008),
(1, 'MIG-123 ADA Colony Naini, Allahabad Uttar Pradesh, India', 21008),
(35, 'Kholi No. 420 Bhootgali, Allahabad Uttar Pradesh, India', 211008),
(38, 'B2- 77 World Bank, Allahabad Uttar Pradesh, India', 211008),
(5, 'Ada Colony Naini, Allahabad Uttar Pradesh, India', 211008),
(5, 'hhh sdafs, dfasdf Uttar Pradesh, India', 2105545);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartID` int(255) NOT NULL AUTO_INCREMENT,
  `date` char(255) DEFAULT NULL,
  `userID` int(255) NOT NULL,
  `productID` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=606 ;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `userName` char(255) NOT NULL,
  `userEmail` char(255) NOT NULL,
  `productID` int(255) NOT NULL,
  `comment` char(255) NOT NULL,
  `date` char(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`userName`, `userEmail`, `productID`, `comment`, `date`) VALUES
('Shailendra', 'vshailendra2@gmail.com', 1, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '21-12-2016'),
('Ravi', 'ravi@gmail.com', 1, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '21-12-2017'),
('Shailendra', 'vshailendra2@gmail.com', 2, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '21-12-2016'),
('Ravi', 'ravi@gmail.com', 2, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '15-01-2017'),
('Shailendra', 'vshailendra2@gmail.com', 3, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '12-12-2016'),
('Ravi', 'ravi@gmail.com', 3, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '07-11-2016'),
('Shailendra', 'vshailendra2@gmail.com', 4, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '02-10-2016'),
('Ravi', 'ravi@gmail.com', 4, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '12-05-2016'),
('Shailendra', 'vshailendra2@gmail.com', 5, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '13-02-2016'),
('Ravi', 'ravi@gmail.com', 5, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '28-03-2017'),
('Shailendra', 'vshailendra2@gmail.com', 6, 'Whenever I ordered something products were up to the mark.Excellent experiance.', '21-05-2016'),
('Ravi', 'ravi@gmail.com', 6, 'Hi Guys, this is my order no 12132343 i got damaged product i asked many times for refund but no response from Studeals i m not accept from Studeals Thanks', '12-02-2017'),
('Shail', 'shailv06@gmail.com', 1, 'It was quite exciting to visit such website where we get product which r related to our course.', 'Sat Jan 14 17:22:22 IST 2017'),
('Ram', 'ram@gmail.com', 1, 'Its quite pleasur to visit this site.', 'Sun Jan 15 12:30:49 IST 2017'),
('Thor', 'lucoto@gmail.com', 6, 'I am quite impressed with your website and feels very gratefull to order from your site', 'Sun Jan 15 10:54:32 IST 2017'),
('Snake Eyes', 'snake@gmail.com', 4, 'Awesome site', 'Sun Jan 15 13:54:58 IST 2017'),
('snake eyes', 'snake@gmail.com', 1, 'Awesome site.', 'Sun Jan 15 14:19:39 IST 2017'),
('Snake Eyes', 'snake@gmail.com', 2, 'Awesome site', 'Sun Jan 15 14:54:12 IST 2017'),
('Snake Eyes', 'snake@gmail.com', 2, 'Awesome site fdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Sun Jan 15 14:54:28 IST 2017'),
('Harry', 'somethiing@gmail.com', 3, 'Awesomeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'Tue Jan 17 22:39:51 IST 2017'),
('patani', 'patani@gmail.com', 10, 'Bahute chuchak website h.................', 'Sat Jan 28 10:51:33 IST 2017');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_id`
--

CREATE TABLE IF NOT EXISTS `mobile_id` (
  `userID` int(255) NOT NULL,
  `mobile_no` char(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_id`
--

INSERT INTO `mobile_id` (`userID`, `mobile_no`) VALUES
(1, '8853616224'),
(1, '8574392551'),
(38, '8853616224'),
(38, '85743122555'),
(5, '8853616224'),
(5, '8574392551');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(255) NOT NULL AUTO_INCREMENT,
  `userID` int(255) NOT NULL,
  `productID` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `date` char(255) NOT NULL,
  `productCost` double NOT NULL,
  `address` char(255) NOT NULL,
  `mobile_no` char(255) NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `userID`, `productID`, `quantity`, `date`, `productCost`, `address`, `mobile_no`) VALUES
(1, 1, 4, 6, 'Sat Jan 14 11:56:51 IST 2017', 1500, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(2, 1, 10, 12, 'Sat Jan 14 11:58:01 IST 2017', 5160, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(3, 1, 1, 4, 'Sat Jan 14 11:59:55 IST 2017', 1200, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(4, 1, 5, 2, 'Sat Jan 14 12:03:18 IST 2017', 910, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(5, 1, 4, 2, 'Sat Jan 14 12:04:38 IST 2017', 500, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(6, 1, 6, 1, 'Sat Jan 14 12:09:52 IST 2017', 210, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(7, 1, 7, 1, 'Sat Jan 14 12:33:41 IST 2017', 560, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(8, 1, 7, 1, 'Sat Jan 14 15:05:22 IST 2017', 560, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(9, 1, 7, 2, 'Sun Jan 15 11:53:57 IST 2017', 1120, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(10, 38, 2, 2, 'Sun Jan 15 14:56:54 IST 2017', 500, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', ''),
(11, 1, 1, 1, 'Sun Jan 15 20:29:25 IST 2017', 300, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin:211008', '8853616224'),
(12, 1, 3, 1, 'Sun Jan 15 21:38:03 IST 2017', 450, 'MIG-123 ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin: 21008', '8574392551'),
(13, 1, 9, 1, 'Sun Jan 15 21:38:03 IST 2017', 90, 'MIG-123 ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin: 21008', '8574392551'),
(14, 5, 1, 1, 'Tue Jan 17 22:46:23 IST 2017', 300, 'Ada Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224'),
(15, 5, 10, 1, 'Tue Jan 17 22:46:23 IST 2017', 430, 'Ada Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224'),
(16, 5, 3, 3, 'Tue Jan 17 22:46:23 IST 2017', 1350, 'Ada Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224'),
(17, 1, 1, 2, 'Mon Jan 23 19:36:54 IST 2017', 600, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224'),
(18, 1, 2, 1, 'Sat Feb 04 14:12:11 IST 2017', 250, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224'),
(19, 1, 3, 0, 'Sat Feb 04 14:12:12 IST 2017', 0, 'B2/77 World Bank ADA Colony Naini, Allahabad Uttar Pradesh, India, Pin: 211008', '8853616224');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(255) NOT NULL AUTO_INCREMENT,
  `productName` char(255) NOT NULL,
  `productPrice` double NOT NULL,
  `productImage` char(255) NOT NULL,
  `productSubCategory` char(255) NOT NULL,
  `productBranch` char(255) NOT NULL,
  `productQuantity` int(255) NOT NULL,
  `productDetail1` char(255) DEFAULT NULL,
  `productDetail2` char(255) DEFAULT NULL,
  `productDetail3` char(255) DEFAULT NULL,
  `productDetail4` char(255) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `productPrice`, `productImage`, `productSubCategory`, `productBranch`, `productQuantity`, `productDetail1`, `productDetail2`, `productDetail3`, `productDetail4`) VALUES
(1, 'Engineering Chemistry', 300, 'images/products/cs/cs_1.jpg', 'Books', 'CS', 0, 'Shashi Chawla', 'TMH Publication', '2010', 'Featured'),
(2, 'Engineering Physics', 250, 'images/products/cs/cs_2.jpg', 'Books', 'CS', 9, 'RK Gaur, SL Gupta', 'Dhanpat Rai Publications', '2014', ''),
(3, 'Electronic', 450, 'images/products/cs/cs_3.jpg', 'Books', 'CS', 7, 'Ravi Mehta', 'TMH Publication', '2013', 'Featured'),
(4, 'Computer Science with C++', 250, 'images/products/cs/cs_4.jpg', 'Books', 'CS', 10, 'RK Gaur, SL Gupta', 'Dhanpat Rai Publications', '2014', 'Featured'),
(5, 'Programming in C', 455, 'images/products/cs/cs_5.jpg', 'Books', 'CS', 10, 'Manish Varshney, Neha Singh', 'TMH Publications', '2014', 'Featured'),
(6, 'Basic Electronic and Linear Circuits', 210, 'images/products/cs/cs_6.jpg', 'Books', 'CS', 10, 'NN Bhargava, SC Gupta', 'Technical Teachers Training Institute', '2017', 'Featured'),
(7, 'Fundamentals of Computer Prog.', 560, 'images/products/cs/cs_7.jpg', 'Books', 'CS', 10, 'Jarnail Singh', 'Dhanpat Rai Publications', '2007', 'Featured'),
(8, 'Computer Science with C++', 650, 'images/products/cs/cs_8.jpg', 'Books', 'CS', 10, 'RK Gaur, SL Gupta', 'Dhanpat Rai Publications', '2050', 'Featured'),
(9, 'Computer Science', 90, 'images/products/cs/cs_9.jpg', 'Books', 'CS', 10, 'RK Gaur, SL Gupta', 'Quantum', '2034', 'Featured'),
(10, 'Data Structure with C', 430, 'images/products/cs/cs_10.jpg', 'Books', 'CS', 9, 'Seymour Lipschutz', 'Schaums Publications', '2011', 'Featured');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `reviewID` int(255) NOT NULL AUTO_INCREMENT,
  `reviewName` char(255) NOT NULL,
  `reviewEmail` char(255) NOT NULL,
  `reviewSubject` char(255) NOT NULL,
  `reviewMessage` char(255) NOT NULL,
  `date` char(255) NOT NULL,
  PRIMARY KEY (`reviewID`),
  UNIQUE KEY `reviewID` (`reviewID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `reviewName`, `reviewEmail`, `reviewSubject`, `reviewMessage`, `date`) VALUES
(14, 'dssd', 'vshailendra2@gmail.com', 'dfsa', 'dasd', 'Tue Jan 31 22:04:09 IST 2017'),
(13, 'sadsa', 'vshailendra2@gmail.com', 'sdaSDAAS', 'DAS', 'Tue Jan 31 22:03:06 IST 2017'),
(12, 'sad', 'vshailendra2@gmail.com', 'dsfd', 'dsas', 'Tue Jan 31 22:02:07 IST 2017'),
(11, 'ddf', 'vshailendra2@gmail.com', 'dfs', 'dfsdf', 'Tue Jan 31 22:00:46 IST 2017');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` char(255) NOT NULL,
  `userPassword` char(255) NOT NULL,
  `userEmail` char(255) NOT NULL,
  `userSecurity` char(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPassword`, `userEmail`, `userSecurity`) VALUES
(1, 'Shailendra', '14061995', 'vshailendra2@gmail.com', 'bulldog'),
(3, 'SnakeEyes', '123456', 'snakeeyes@gmail.com', 'Snake'),
(4, 'Dumbeldore', '123456', 'hogwart@gmail.com', 'snake'),
(5, 'harryPotter', '123456', 'harry@gmail.com', 'dog');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
