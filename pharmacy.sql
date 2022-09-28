-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 07:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--


--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(10) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `date_received` date NOT NULL,
  `Qty` varchar(255) NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL DEFAULT current_timestamp(),
  `amount` varchar(255) NOT NULL,
  `stock_out` varchar(255) NOT NULL DEFAULT '0',
  `price` varchar(255) NOT NULL DEFAULT '0',
  `capacity` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dosage_sold` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `price_dosage` varchar(255) NOT NULL DEFAULT '0',
  `app` varchar(255) NOT NULL,
  `half_dosage_price` int(11) NOT NULL,
  `confirm` varchar(10) NOT NULL DEFAULT '0',
  `profit` varchar(255) NOT NULL,
  `sprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `medicine_name`, `date_received`, `Qty`, `expiry_date`, `amount`, `stock_out`, `price`, `capacity`, `type`, `dosage_sold`, `dosage`, `price_dosage`, `app`, `half_dosage_price`, `confirm`, `profit`, `sprice`) VALUES
(1, 'Brufen', '0000-00-00', '3', '2023-06-15', '', '0', '25', '10', 'Tablet', '', '', '', '', 0, '0', '', '30'),
(2, 'Piliton', '0000-00-00', '18', '2023-06-15', '', '0', '500', '50mg', 'tablet', '', '', '', '', 0, '0', '', ''),
(3, 'Cetrizin', '0000-00-00', '100', '2023-10-19', '', '0', '25', '50mg', 'tablet', '', '', '', '', 0, '1', '', ''),
(4, 'Jadell', '0000-00-00', '66', '2023-10-17', '', '0', '450', '60mg', 'tablet', '', '', '', '', 0, '0', '', '500'),
(6, 'Paracetamal', '0000-00-00', '15', '2027-02-27', '', '0', '10', '50mg', 'Tablet', '', '', '0', '', 0, '0', '', ''),
(7, 'ABZ', '0000-00-00', '15', '2023-06-20', '', '0', '10', '60mg', 'Tablet', '', '', '', '', 0, '0', '', ''),
(9, 'Panadol', '0000-00-00', '10', '2021-06-01', '', '0', '15', '60mg', 'Tablet', '', '', '', '', 0, '1', '', ''),
(12, 'Paracetamal', '0000-00-00', '0', '2021-09-26', '', '0', '100', '500mg', 'Tablet', '', '', '', '', 0, '0', '', ''),
(13, 'Cetrizine2', '0000-00-00', '0', '2021-10-23', '', '0', '0', '60ml', 'Syrup', '', '', '0', '', 0, '0', '', ''),
(14, 'Test', '0000-00-00', '0', '2021-10-23', '', '0', '0', '60ml', 'Tablet', '', '', '0', '', 0, '0', '', ''),
(15, 'Drug sample', '0000-00-00', '0', '2022-07-29', '', '0', '30', '60mg', 'tablet', '', '', '', '', 0, '0', '', '');

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
