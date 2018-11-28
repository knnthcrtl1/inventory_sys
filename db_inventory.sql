-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 04:10 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `category_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `employee_id` int(11) NOT NULL,
  `employee_firstname` varchar(300) NOT NULL,
  `employee_lastname` varchar(300) NOT NULL,
  `employee_position` varchar(300) NOT NULL,
  `employee_department` varchar(300) NOT NULL,
  `employee_date_hired` varchar(300) NOT NULL,
  `employee_date_regular` varchar(300) NOT NULL,
  `employee_contract_start` varchar(300) NOT NULL,
  `employee_contract_end` varchar(300) NOT NULL,
  `employee_superior` varchar(300) NOT NULL,
  `employee_web_role` varchar(300) NOT NULL,
  `employee_address` varchar(600) NOT NULL,
  `employee_gender` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_position`, `employee_department`, `employee_date_hired`, `employee_date_regular`, `employee_contract_start`, `employee_contract_end`, `employee_superior`, `employee_web_role`, `employee_address`, `employee_gender`) VALUES
(10052018, '123', '123', '123', '', '', '', '', '', '', '', '', ''),
(10052019, '1', '2', '3', '4', '5', '56', '7', '8', '9', '10', '11', '12'),
(10052020, '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'),
(10052021, '', '', '', '', '', '', '', '', '', 'aw', 'aw', 'aw'),
(10052022, '', '', '', '', '', '', '', '', '', '', 'aw', 'aw');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_supplier_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_sku` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_title`, `product_description`, `product_supplier_id`, `product_category_id`, `product_sku`, `product_price`) VALUES
(11202018, 'test', '234', 234, 234, '', '234'),
(11202019, 'test', '234', 234234, 234234, '', '234'),
(11202023, '234234', '234234', 234234, 234234, '', '234234'),
(11202025, 'aw', '234', 234, 234, 'aw', '234'),
(11202026, 'aw', '234', 0, 0, 'aw', '234'),
(11202027, 'aw', '234', 0, 0, 'aw', '234'),
(11202028, 'aw', '234', 0, 0, 'aw', '234'),
(11202029, 'aw', '234', 0, 0, 'aw', '234'),
(11202030, 'aw', '234', 0, 0, 'aw', '234'),
(11202031, 'aw', '234', 0, 0, 'aw', '234'),
(11202032, 'aw', '234', 0, 0, 'aw', '234'),
(11202033, 'aw', '234', 0, 0, 'aw', '234'),
(11202034, 'aw', '234', 0, 0, 'aw', '234'),
(11202035, 'aw', '234', 0, 0, 'aw', '234'),
(11202036, 'aw', '234', 324, 234, '234', '234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quantities`
--

CREATE TABLE `tbl_quantities` (
  `quantity_id` int(11) NOT NULL,
  `quantity_count` int(11) NOT NULL,
  `quantity_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restriction_page`
--

CREATE TABLE `tbl_restriction_page` (
  `restriction_page_id` int(11) NOT NULL,
  `restriction_page_name` varchar(255) NOT NULL,
  `restriction_page_user_level` varchar(255) NOT NULL,
  `restriction_page_display_in_header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_restriction_page`
--

INSERT INTO `tbl_restriction_page` (`restriction_page_id`, `restriction_page_name`, `restriction_page_user_level`, `restriction_page_display_in_header`) VALUES
(1, 'product', '1', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` varchar(1000) NOT NULL,
  `supper_contact_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_levels`
--

CREATE TABLE `tbl_user_levels` (
  `user_level_id` int(11) NOT NULL,
  `user_level_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_levels`
--

INSERT INTO `tbl_user_levels` (`user_level_id`, `user_level_name`) VALUES
(1, 'admin'),
(2, 'owner'),
(3, 'secretary'),
(4, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_quantities`
--
ALTER TABLE `tbl_quantities`
  ADD PRIMARY KEY (`quantity_id`);

--
-- Indexes for table `tbl_restriction_page`
--
ALTER TABLE `tbl_restriction_page`
  ADD PRIMARY KEY (`restriction_page_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_levels`
--
ALTER TABLE `tbl_user_levels`
  ADD PRIMARY KEY (`user_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10052023;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11202037;
--
-- AUTO_INCREMENT for table `tbl_quantities`
--
ALTER TABLE `tbl_quantities`
  MODIFY `quantity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_restriction_page`
--
ALTER TABLE `tbl_restriction_page`
  MODIFY `restriction_page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
