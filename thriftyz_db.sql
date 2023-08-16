-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 09:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thriftyz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user`
--

CREATE TABLE `tbl_admin_user` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `admin_pass` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin_user`
--

INSERT INTO `tbl_admin_user` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Hasham', 'hasham@admin.com', '12345678'),
(2, 'Yousha', 'yousha@admin.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bidding`
--

CREATE TABLE `tbl_bidding` (
  `bid_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `bid_amount` double DEFAULT NULL,
  `bid_detail` text DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `win_status` text DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'Bata'),
(2, 'Service'),
(3, 'Aldo'),
(4, 'Nike'),
(5, 'Gucci'),
(6, 'Puma'),
(7, 'Levis'),
(8, 'Hush Puppies'),
(9, 'Morjan'),
(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chatbot_message`
--

CREATE TABLE `tbl_chatbot_message` (
  `msg_id` int(11) NOT NULL,
  `random_code` text DEFAULT NULL,
  `user_message` text DEFAULT NULL,
  `message_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat_message`
--

CREATE TABLE `tbl_chat_message` (
  `msg_id` int(11) NOT NULL,
  `msg_date` date DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `msg_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contactus`
--

CREATE TABLE `tbl_contactus` (
  `msg_id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_phone` text DEFAULT NULL,
  `user_message` text DEFAULT NULL,
  `msg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forum_answer`
--

CREATE TABLE `tbl_forum_answer` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question_detail` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `user_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forum_question`
--

CREATE TABLE `tbl_forum_question` (
  `question_id` int(11) NOT NULL,
  `user_email` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `question_title` text DEFAULT NULL,
  `question_detail` text DEFAULT NULL,
  `question_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `order_amount` double DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `user_phone` text DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `user_city` text DEFAULT NULL,
  `user_state` text DEFAULT NULL,
  `order_status` varchar(25) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `order_qty` double DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(25) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_for_bidding`
--

CREATE TABLE `tbl_upload_for_bidding` (
  `post_id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `p_title` text DEFAULT NULL,
  `p_price` text DEFAULT NULL,
  `valid_till` date DEFAULT NULL,
  `p_brand` text DEFAULT NULL,
  `p_image1` text DEFAULT NULL,
  `p_image2` text DEFAULT NULL,
  `p_image3` text DEFAULT NULL,
  `p_type` text DEFAULT NULL,
  `p_detail` text DEFAULT NULL,
  `sold_status` varchar(23) DEFAULT 'Pending',
  `post_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_for_sale`
--

CREATE TABLE `tbl_upload_for_sale` (
  `post_id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `p_title` text DEFAULT NULL,
  `p_price` text DEFAULT NULL,
  `p_brand` text DEFAULT NULL,
  `p_image1` text DEFAULT NULL,
  `p_image2` text DEFAULT NULL,
  `p_image3` text DEFAULT NULL,
  `p_type` text DEFAULT NULL,
  `p_detail` text DEFAULT NULL,
  `sold_status` varchar(23) DEFAULT 'Pending',
  `post_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `u_id` int(11) NOT NULL,
  `u_name` text DEFAULT NULL,
  `u_email` text DEFAULT NULL,
  `u_pass` text DEFAULT NULL,
  `u_phone` text DEFAULT NULL,
  `u_address` text DEFAULT NULL,
  `u_type` text DEFAULT NULL,
  `shopname` text DEFAULT NULL,
  `post_datetime` datetime DEFAULT current_timestamp(),
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `verify_code` text DEFAULT NULL,
  `verify_status` text DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_user`
--
ALTER TABLE `tbl_admin_user`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bidding`
--
ALTER TABLE `tbl_bidding`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_chatbot_message`
--
ALTER TABLE `tbl_chatbot_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `tbl_chat_message`
--
ALTER TABLE `tbl_chat_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `tbl_forum_answer`
--
ALTER TABLE `tbl_forum_answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `tbl_forum_question`
--
ALTER TABLE `tbl_forum_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tbl_upload_for_bidding`
--
ALTER TABLE `tbl_upload_for_bidding`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_upload_for_sale`
--
ALTER TABLE `tbl_upload_for_sale`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_user`
--
ALTER TABLE `tbl_admin_user`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bidding`
--
ALTER TABLE `tbl_bidding`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_chatbot_message`
--
ALTER TABLE `tbl_chatbot_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_chat_message`
--
ALTER TABLE `tbl_chat_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_forum_answer`
--
ALTER TABLE `tbl_forum_answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_forum_question`
--
ALTER TABLE `tbl_forum_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_upload_for_bidding`
--
ALTER TABLE `tbl_upload_for_bidding`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_upload_for_sale`
--
ALTER TABLE `tbl_upload_for_sale`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
