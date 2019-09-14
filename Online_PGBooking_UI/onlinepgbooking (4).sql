-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2018 at 07:53 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinepgbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `pg_id` int(40) NOT NULL,
  `pg_name` varchar(50) NOT NULL,
  `pg_share` int(30) NOT NULL,
  `pg_price` int(30) NOT NULL,
  `pg_address` varchar(40) NOT NULL,
  `book_mobile` varchar(40) NOT NULL,
  `book_date` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`pg_id`, `pg_name`, `pg_share`, `pg_price`, `pg_address`, `book_mobile`, `book_date`, `email`) VALUES
(1, 'Ganesh Gents pg', 3, 6000, '1Sri Ganesh Gents pg in Jayadeva', '8952989669', '2018-07-07', 'rajatsharma4318@gmail.com'),
(1, 'Ganesh Gents pg', 3, 6000, '1Sri Ganesh Gents pg in Jayadeva', '8952989669', '2018-07-05', 'rajatsharma4318@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookuser`
--

CREATE TABLE `bookuser` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `book_mobile` varchar(20) NOT NULL,
  `book_date` varchar(20) NOT NULL,
  `book_adhar` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookuser`
--

INSERT INTO `bookuser` (`book_id`, `book_name`, `book_mobile`, `book_date`, `book_adhar`, `email`) VALUES
(1, 'Rajat', '8765432198', '2018-07-07', '876543234567', 'rajatsharma4318@gmail.com'),
(8, 'Rahul', '9876543210', '2018-07-07', '987654321232', 'kushawaha402@gmail.com'),
(10, 'Rajat', '546789', '2018-07-20', '123456789', 'rajatsharma4318@gmail.com'),
(11, 'rajendra', '1223', '2018-07-10', '987654321239', 'kushawaha402@gmail.com'),
(12, 'pawan', '8952989669', '2018-07-25', '987654321288', 'kushawaha402@gmail.com'),
(13, 'somesh', '5678909876', '2018-07-21', '1234567', 'rajatsharma4318@gmail.com'),
(14, 'somesh sah', '567890', '2018-07-20', '1234567', 'rajatsharma4318@gmail.com'),
(15, 'anjali', '4567890', '2018-07-14', '987654321233', 'anjaliparihar4@gmail.com'),
(17, 'anjali', '36768978', '2018-07-18', '9876547653', 'anjaliparihar4@gmail.com'),
(19, 'Pawan', '7827161317', '2018-07-28', '123456789076', 'pawanbly7@gmail.com'),
(20, 'anjali', '1133456', '2015-07-18', '9876543456', 'anjaliparihar4@gmail.com'),
(21, 'rajendra kushawaha', '9648611041', '2018-07-12', '344276543256', 'kushawaha402@gmail.com'),
(22, 'Somesh Sah', '123456776', '2018-07-28', '89504624', 'somesh.sah@gmail.com'),
(23, 'jbhvfgdtser', '2435467t78u8765', '2018-07-22', '8987654', 'somesh.sah@gmail.com'),
(24, 'rajat', '465789', '2018-07-20', '345433456', 'rajatsharma4318@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `owner_detail`
--

CREATE TABLE `owner_detail` (
  `owner_name` varchar(30) NOT NULL,
  `owner_pgname` varchar(30) NOT NULL,
  `owner_mobile` varchar(30) NOT NULL,
  `owner_email` varchar(30) NOT NULL,
  `owner_pass` varchar(30) NOT NULL,
  `owner_city` varchar(30) NOT NULL,
  `owner_state` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_detail`
--

INSERT INTO `owner_detail` (`owner_name`, `owner_pgname`, `owner_mobile`, `owner_email`, `owner_pass`, `owner_city`, `owner_state`) VALUES
('Rajat Sharma', 'Ganesh Gents pg', '8952989559', 'rajatsharma4318@gmail.com', '123', 'Bangalore', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `pg_details`
--

CREATE TABLE `pg_details` (
  `pg_id` int(30) NOT NULL,
  `pg_name` varchar(200) NOT NULL,
  `pg_type` varchar(20) NOT NULL,
  `pg_avail` int(11) NOT NULL,
  `pg_facility` varchar(100) NOT NULL,
  `pg_share` int(40) NOT NULL,
  `pg_price` int(11) NOT NULL,
  `pg_address` varchar(200) NOT NULL,
  `pg_area` varchar(100) NOT NULL,
  `pg_city` varchar(100) NOT NULL,
  `pg_state` varchar(100) NOT NULL,
  `pg_lat` varchar(100) NOT NULL,
  `pg_lag` varchar(100) NOT NULL,
  `pg_image1` varchar(200) NOT NULL,
  `pg_image2` varchar(20) DEFAULT NULL,
  `pg_image3` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_details`
--

INSERT INTO `pg_details` (`pg_id`, `pg_name`, `pg_type`, `pg_avail`, `pg_facility`, `pg_share`, `pg_price`, `pg_address`, `pg_area`, `pg_city`, `pg_state`, `pg_lat`, `pg_lag`, `pg_image1`, `pg_image2`, `pg_image3`) VALUES
(1, 'Ganesh Gents pg', 'boys', 20, 'Washing Machine ,TV, Fridge ,Wifi,3 times food', 3, 6000, '1Sri Ganesh Gents pg in Jayadeva', 'BTM', 'Bangalore', 'Karnataka', '12.9161495', '77.599046', '213.jpg', '52.jpg', '53.jpg'),
(2, 'Narendra Gents PG', 'boys', 15, 'Washing Machine ,TV, Fridge ,Wifi,2 times food,Parking\r\n', 4, 5000, '#36 , NS palya, Bannergatta Road, 4th Main Rd', 'BTM', 'Bangalore', 'Karnataka', '12.9084291', '77.5995738', '214.jpg', '62.JPG', '63.jpg'),
(3, 'SVNS PG for LADIE', 'girls', 20, 'Washing Machine ,TV,Wifi ,3 times food,', 5, 6000, '733, 7th Cross 11 Th Main, Mahadeshwara Nagar', 'BTM', 'Bangalore', 'Karnataka', '12.9135706', '77.6037838', '201.JPG', '64.JPG', '65.JPG'),
(4, 'Elegance PG for Gents', 'boys', 50, 'TV, Fridge ,Wifi,3 times food\r\n', 3, 7000, '#36 , NS palya, Bannergatta Road, 4th Main Rd', 'BTM', 'Bangalore', 'Karnataka', '12.9084291', '77.5995738', '203.JPG', '66.JPG', '68.JPG'),
(5, 'SVNS PG for LADIE', 'girls', 20, 'Fridge ,Wifi,3 times food', 2, 8000, '#36 , NS palya, Bannergatta Road, 4th Main Rd', 'BTM', 'Bangalore', 'Karnataka', '12.9084291', '77.5995738', '204.jpg', '71.jpg', '72.jpg'),
(7, 'Om Sia Pg', 'boys', 20, 'food', 2, 6000, '68 ecity', 'Electronic City', 'bangalore', 'Karnataka', '123456', '9876543', '5.jpg', '4.jpg', '6.jpg'),
(8, 'Venkateshwara PG', 'boys', 20, 'Washing Machine ,TV ,Wifi,3 times food', 4, 7000, 'Banashankari Stage II, 27-43, 4th Cross Rd', 'BTM', 'bangalore', 'Karnataka', '12.907771', '77.6002298', '217.JPG', '87.jpg', '88.jpg'),
(9, 'Sri Ganesh PG', 'boys', 20, 'TV, Fridge ,Wifi,3 times food', 15, 5000, '13A Cross, BTM 1st Stage, 8th Block', 'BTM', 'bangalore', 'Karnataka', '12.9113545', '77.5994361', '207.jpg', '89.JPG', '90.jpg'),
(10, 'AGARWAL PG', 'boys', 12, 'Wifi,3 times food', 3, 7000, 'A-88/20B STREET NO.1, METRO PILLAR NO. 34-35', 'Laxmi Nagar', 'New Delhi', 'Delhi', '28.630763', '77.2104957', '208.jpg', '95.JPG', '96.jpg'),
(11, 'Shree Durga PG ', 'boys', 60, 'TV, Fridge ,Wifi,3 times food', 4, 7000, ' Main Rd, Block A, Shakarpur', 'Shakarpur', 'New Delhi', 'Delhi', '28.6316409', '77.2108548', '210.jpg', '18.jpg', '19.jpg'),
(12, 'Paying Guest', 'boys', 30, 'Washing Machine ,TV, Fridge ,Wifi,3 times food', 4, 7000, '125A, Pearls Plaza, Opp Andheri Railway Station', 'Andheri West', 'mumbai', 'Maharastra', '19.1198378', '72.7761085', '217.JPG', '10.jpg', '9.png'),
(13, 'Zolo Euphoria', 'boys', 4, 'TV, Fridge ,Wifi,3 times food', 3, 8000, ' Electronic City Phase 1, near Infosys, HCL, Siemens and other IT companies', 'Electronic City', 'bangalore', 'Karnataka', '12.8489885', '77.5851292', '206.JPG', '78.jpg', '77.JPG'),
(15, 'Pune PG', 'boys', 20, 'Fridge ,Wifi,3 times food', 5, 6000, '49, Preet Nagar, Vadgaon Sheri', 'Preet Nagar', 'mumbai', 'Maharastra', '18.5381509', '73.7114784', '201.JPG', '61.JPG', '62.JPG'),
(17, 'PG', 'boys', 20, 'Fridge ,Wifi,3 times food', 3, 700, '49, Preet Nagar, Vadgaon Sheri', 'Preet Nagar', 'pune', 'Maharastra', '18.5548932', '73.7114784', '209.jpg', '14.jpg', '51.jpg'),
(18, 'Sai Paying Gues', 'boys', 50, 'Fridge ,Wifi,3 times food', 4, 5000, '232/1, Baner CHS, Aundh', 'Shambhu Vihar Society', 'mumbai', 'Maharastra', '18.5434332', '73.7225948', '207.jpg', '10.jpg', '17.jpg'),
(19, 'Vishal PG', 'boys', 10, 'Washing Machine ,TV, Fridge ,Wifi,3 times food', 5, 6000, 'Sr No 50/1', 'Nanai Baugh Society', 'mumbai', 'Maharastra', '18.5232573', '73.9059006', '204.jpg', '62.JPG', '63.jpg'),
(20, 'Ajay Paying Guest', 'boys', 20, 'Washing Machine ,TV, Fridge ,Wifi', 3, 6000, '125A, Pearls Plaza', 'Andheri West', 'mumbai', 'Maharastra', '19.1160133', '72.8477197', '212.jpg', '6.jpg', '21.jpg'),
(21, 'Accomodation Sukhman Singh', 'boys', 30, 'TV, Fridge ,Wifi,3 times food', 4, 7000, 'Plot no 186, Flat No 2, Jyoti Nivas', 'Andheri West', 'mumbai', 'Maharastra', '19.1278902', '72.8596752', '203.JPG', '19.jpg', '21.jpg'),
(22, 'Om Sai Girl\'s PG', 'girls', 10, 'Fridge ,Wifi,3 times food', 2, 8000, '45/6  Machindranath Society,', ' Pratik Nagar', 'mumbai', 'Maharastra', '18.5381896', '73.7815237', '208.jpg', '73.jpg', '74.jpg'),
(23, 'Om Sai Girl\'s PG.', 'girls', 20, 'Washing Machine ,TV, Fridge ,Wifi,3 times food', 3, 7000, '45/6, Machindranath Society', 'Pratik Nagar', 'pune', 'Maharastra', '73.7815237', '18.5381896', '214.jpg', '62.JPG', '63.jpg'),
(25, 'Mathrushree Lakeview PG', 'boys', 20, 'Wifi,food 3 times', 3, 6000, 'Nalluhalli-, ITPL Main Road, Nallurhalli', 'Whitefield', 'bangalore', 'Karnataka', '12.9722999', '77.6639462', '205.jpg', '12.jpg', '9.png'),
(26, 'Sri Sai Hi-Tech Ladies PG', 'girls', 30, 'Wifi,food 3 times,TV', 3, 5500, 'House No.119, 4th Cross, Ramagondanahalli', 'Whitefield', 'bangalore', 'Karnataka', '12.9563663', '77.6702791', '211.jpg', '87.jpg', '88.jpg'),
(27, 'Bella Vista Kerala PG', 'boys', 10, 'Wifi,food 3 times,TV', 3, 5000, '4th Cross Road, Immadihalli Main Road, Vinayaka Layout', 'Whitefield', 'bangalore', 'Karnataka', '12.9693238', '77.6823541', '217.JPG', '64.JPG', '65.JPG'),
(28, 'Silicrest Pg', 'boys', 30, 'wifi,3 times food', 2, 8000, 'No. 624, 80 Feet Road, 4th Block', 'Koramangala', 'bangalore', 'Karnataka', '12.9343782', '77.5594424', '202.jpg', '61.JPG', '55.jpg'),
(29, 'Sri Srinivasan ladies pg', 'boys', 20, 'wifi,food,parking', 3, 7000, '#79/1 RB homes,opp.gangamma temple', 'Koramangala', 'bangalore', 'Karnataka', '12.9360847', '77.5545265', '209.jpg', '76.jpg', '77.JPG'),
(30, 'Balaji PG', 'girls', 20, 'wifi,parking,food', 3, 5000, '809, 17th F Main Road', 'Koramangala', 'bangalore', 'Karnataka', '12.9389362', '77.5538837', '203.JPG', '11.JPG', '17.jpg'),
(31, 'SLV PG', 'boys', 20, 'food,wifi,TV', 3, 7000, '6/2, Sarjapur Main Rd', 'Sarjapur', 'bangalore', 'Karnataka', '12.9102286', '77.6100517', '206.JPG', '87.jpg', '76.jpg'),
(32, 'New Sri Sai Balaji Pg Ladies', 'girls', 20, 'Wifi,Food,TV', 5, 7000, 'NO 7B kasvnahalli main road ,gayathri layout', 'Sarjapur', 'bangalore', 'Karnataka', '12.9163832', '77.6428832', '213.jpg', '90.jpg', '95.JPG'),
(33, 'ladies pg sarjapura', 'girls', 30, 'Wifi,Food,TV', 3, 6000, 'Off Sarjapur Rd, IAS Layout, Eastwood Twp', 'Sarjapur', 'bangalore', 'Karnataka', '12.9048047', '77.6049475', '201.JPG', '99.jpg', '79.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `userid` int(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `city` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `adhar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`userid`, `name`, `email`, `mobile`, `state`, `city`, `gender`, `password`, `adhar`) VALUES
(1, 'Rajendra', 'kushawaha402@gmail.com', '9648611941', 'UP', 'GKP', 'male', '123', '123456789876'),
(3, 'Anjali', 'anjaliparihar4@gmail.com', '9877654432', 'MP', 'Amla', 'Female', '123', '987654321233'),
(4, 'somesh', 'somesh.sah@gmail.com', '8950464736', 'pakistan', 'isslamabad', 'male', '12345', '87654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookuser`
--
ALTER TABLE `bookuser`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `pg_details`
--
ALTER TABLE `pg_details`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookuser`
--
ALTER TABLE `bookuser`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pg_details`
--
ALTER TABLE `pg_details`
  MODIFY `pg_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `userid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
