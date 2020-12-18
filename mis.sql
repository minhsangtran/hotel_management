-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 11:52 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `check_out` varchar(100) CHARACTER SET utf8 NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2019-11-13 05:45:17', '13-11-2019', '15-11-2019', 3000, 1000, 0),
(2, 2, 2, '2019-11-13 05:46:04', '13-11-2019', '16-11-2019', 6000, 0, 1),
(3, 3, 2, '2019-11-11 06:49:19', '11-11-2019', '14-11-2019', 6000, 5500, 0),
(4, 4, 7, '2019-11-09 06:50:24', '11-11-2019', '15-11-2019', 10000, 10000, 0),
(5, 5, 13, '2019-11-17 06:59:10', '17-11-2019', '20-11-2019', 12000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `complaint_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `complaint` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Trần Minh Nhật', 8775566122, 'mn@gmail.com', 1, '422510099122', 'Hồ Chí Minh'),
(2, 'Nguyễn Quang Vũ', 9887778878, 'vunguyen123@gmail.com', 2, '422510099122', 'Quảng Nam'),
(3, 'Đặng Hữu Chương', 9887665441, 'chuong123@gmail.com', 1, '422510099122', 'Hà Nội'),
(4, 'Trần Nhật Bình', 9888755544, 'binhtran9798@gmail.com', 3, '0', 'Đồng Nai'),
(5, 'Trình Quang Chính', 9887554425, 'chinhquang79@gmail.com', 1, '422510099122', 'Bình Dương');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2019-11-13 05:39:06', '2019-11-15 02:22:26', '2019-11-13 05:39:06'),
(2, 2, 3, '2019-11-13 05:39:39', '2019-11-15 02:22:43', '2019-11-13 05:39:39'),
(3, 3, 1, '2019-11-13 05:40:18', '2019-11-15 02:22:49', '2019-11-13 05:40:18'),
(4, 4, 1, '2019-11-13 05:40:56', '2019-11-15 02:22:35', '2019-11-13 05:40:56'),
(5, 5, 1, '2019-11-13 05:41:31', NULL, '2019-11-13 05:41:31'),
(6, 6, 3, '2019-11-13 05:42:03', NULL, '2019-11-13 05:42:03'),
(7, 7, 4, '2019-11-13 05:42:35', '2019-11-18 02:35:02', '2019-11-13 05:42:35'),
(8, 8, 3, '2019-11-13 05:43:13', '2019-11-18 02:32:26', '2019-11-13 05:43:13'),
(9, 9, 2, '2019-11-13 05:43:49', NULL, '2019-11-13 05:43:49'),
(10, 10, 1, '2019-11-13 06:30:45', '2019-11-18 02:34:28', '2019-11-13 06:30:45'),
(11, 1, 2, '2019-11-15 06:52:26', '2019-11-17 02:23:05', '2019-11-15 06:52:26'),
(12, 4, 3, '2019-11-15 06:52:35', NULL, '2019-11-15 06:52:35'),
(13, 2, 3, '2019-11-15 06:52:43', NULL, '2019-11-15 06:52:43'),
(14, 3, 3, '2019-11-15 06:52:49', NULL, '2019-11-15 06:52:49'),
(15, 1, 3, '2019-11-17 06:53:05', NULL, '2019-11-17 06:53:05'),
(16, 8, 1, '2019-11-18 07:02:26', NULL, '2019-11-18 07:02:26'),
(17, 11, 2, '2019-11-18 07:04:03', NULL, '2019-11-18 07:04:03'),
(18, 10, 2, '2019-11-18 07:04:28', NULL, '2019-11-18 07:04:28'),
(19, 7, 2, '2019-11-18 07:05:02', NULL, '2019-11-18 07:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'Passport'),
(2, 'Visa'),
(3, 'ID Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', NULL, 0, 0, 0),
(5, 1, 'B-101', 1, 1, 0, 0),
(6, 2, 'B-102', NULL, 0, 0, 0),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 0),
(9, 1, 'C-101', NULL, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 0),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) CHARACTER SET utf8 NOT NULL,
  `shift_timing` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '4:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 4:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Trịnh Thu Hoài', 1, 3, 1, '422510099122', 'Bình Dương', 987554425, 100000, '2019-11-13 05:39:06', '2019-12-02 16:22:10'),
(2, 'Vũ Minh Hiếu', 3, 3, 1, '422510099122', 'Đồng Tháp', 976543211, 10000, '0000-00-00 00:00:00', '2019-12-02 16:07:40'),
(3, 'Ngô Hữu Sang', 2, 3, 1, '422510099122', 'Hồ Chí Minh', 976543111, 10000, '2019-11-13 05:40:18', '2019-12-02 16:22:10'),
(4, 'Đặng Văn Lâm', 2, 3, 2, '0', 'Hồ Chí Minh', 987654321, 100000, '2019-11-13 05:40:55', '2019-12-02 16:22:10'),
(5, 'Hoàng Văn Thụ', 4, 1, 1, '12345341212', 'Hồ Chí Minh', 9876543212, 10000, '2019-11-13 05:41:31', '2019-12-02 16:22:10'),
(6, 'Trần Đình Anh', 3, 3, 3, '0', 'Hồ Chí Minh', 1234567890, 100000, '2019-11-13 05:42:03', '2019-12-02 16:22:10'),
(7, 'Nguyễn Vinh Quang', 2, 2, 1, '422510099122', 'Hồ Chí Minh', 12322332231, 100000, '0000-00-00 00:00:00', '2019-12-02 16:22:10'),
(8, 'Nguyễn Nhật Trường', 1, 1, 4, '0', 'Đồng Nai', 976543456, 10000, '2019-11-13 05:43:13', '2019-12-02 16:22:10'),
(9, 'Nguyễn Gia Hiếu', 3, 2, 4, '0', 'Hồ Chí Minh', 98765432123, 100000, '2019-11-13 05:43:49', '2019-12-02 16:22:10'),
(10, 'Hồ Hoài Anh', 5, 2, 1, '422510099122', 'Đồng Nai', 9887665534, 1000, '2019-11-13 06:30:45', '2019-12-02 16:22:11'),
(11, 'Đỗ Nhật Nam', 3, 2, 1, '0', 'Hồ Chí Minh', 9887556655, 10000, '2019-11-18 07:04:03', '2019-12-02 16:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Cleaning'),
(3, 'Reception'),
(4, 'Cook'),
(5, 'Waiter');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(4, 'Bình Trần', 'BinhTran', 'binhtran9798@gmail.com', 'binh123', '2019-10-22 11:58:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
