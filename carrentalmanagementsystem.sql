-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2025 at 06:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `License_plate` char(20) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Seating_Capacity` int(11) NOT NULL,
  `Car_Type` varchar(15) NOT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Brand` varchar(20) DEFAULT NULL,
  `Color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`License_plate`, `Status`, `Seating_Capacity`, `Car_Type`, `Model`, `Brand`, `Color`) VALUES
('AB1234CD', 'Available', 5, 'Sedan', 'Camry', 'Toyota', 'White'),
('EF5678GH', 'Not Available', 7, 'SUV', 'Palisade', 'Hyundai', 'Black'),
('hkkjhkjhkjhk', 'Not Availabe', 5, 'SUV', 'Seltos', 'Kia', 'Green'),
('IJ9012KL', 'Available', 4, 'Hatchback', 'Swift', 'Suzuki', 'Red'),
('MN3456OP', 'Not Available', 5, 'SUV', 'CR-V', 'Honda', 'Blue'),
('QR7890ST', 'Available', 2, 'Convertible', 'Mustang', 'Ford', 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `USER_ID` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `License_No` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`USER_ID`, `Name`, `email`, `Password`, `date_of_birth`, `phone`, `address`, `License_No`) VALUES
(1, 'Draco Malfoy', 'dracomalfoy@gmail.com', '', '1990-01-15', 123456789, '123 Main St, Springfield', 'D12345678'),
(2, 'Jane Smith', 'janesmith@gmail.com', '', '1985-07-20', 987654321, '456 Elm St, Riverside', 'S98765432'),
(3, 'Hermione Granger', 'hermionegranger@gmail.com', '', '1992-03-12', 122334455, '789 Pine St, Brookfield', 'A45678901'),
(4, 'Ron Weasley', 'ronweasley@gmail.com', '', '1988-10-30', 566778899, '321 Oak St, Hillview', 'J12398765'),
(5, 'Severus Snape', 'severussnape@gmail.com', '', '1995-05-25', 677889900, '654 Maple St, Sunnyvale', NULL),
(10, 'Blob', 'fake@gmail.com', 'pizza123', '1987-07-06', 2147483647, 'home', 'GH4H689D');

-- --------------------------------------------------------

--
-- Table structure for table `offer_details`
--

CREATE TABLE `offer_details` (
  `Promo_Code` varchar(15) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Promo_Type` varchar(20) NOT NULL,
  `Percentage` int(11) DEFAULT NULL,
  `Discounted_Amount` int(11) DEFAULT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_details`
--

INSERT INTO `offer_details` (`Promo_Code`, `Description`, `Promo_Type`, `Percentage`, `Discounted_Amount`, `Status`) VALUES
('FLAT500', 'Flat 500 off on all cars', 'Flat Discount', NULL, 500, 'Active'),
('NEWYEAR15', '15% off for New Year', 'Percentage', 15, NULL, 'Active'),
('SAVE300', 'Flat 300 off on all cars', 'Flat Discount', NULL, 300, 'Expired'),
('SUV20', '20% off on SUVs', 'Percentage', 20, NULL, 'Active'),
('WINTER10', '10% off on cars', 'Percentage', 10, NULL, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Amount_Paid` int(11) DEFAULT NULL,
  `Card_No` char(16) DEFAULT NULL,
  `Name_On_Card` varchar(50) DEFAULT NULL,
  `Paid_By_Cash` tinyint(1) DEFAULT NULL,
  `Paid_By_Card` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Amount_Paid`, `Card_No`, `Name_On_Card`, `Paid_By_Cash`, `Paid_By_Card`) VALUES
(1, 10500, '1234567812345678', 'Hermione Granger', 0, 1),
(2, 7000, NULL, NULL, 1, 0),
(3, 6300, '9876543298765432', 'Ron Weasley', 0, 1),
(4, 5000, NULL, NULL, 1, 0),
(5, 8200, '5555666677778888', 'Draco Malfoy', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `Referee_id` int(11) DEFAULT NULL,
  `Referer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`Referee_id`, `Referer_id`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Meter_Start` int(11) NOT NULL,
  `Meter_End` int(11) DEFAULT NULL,
  `Rent_Amount` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `License_No` varchar(15) DEFAULT NULL,
  `License_plate` char(20) NOT NULL,
  `Promo_Code` varchar(15) DEFAULT NULL,
  `Payment_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`License_plate`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `offer_details`
--
ALTER TABLE `offer_details`
  ADD PRIMARY KEY (`Promo_Code`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD KEY `Referee_id` (`Referee_id`),
  ADD KEY `Referer_id` (`Referer_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `License_plateRESERVATIONFK` (`License_plate`),
  ADD KEY `PromoCodeRESERVATIONFK` (`Promo_Code`),
  ADD KEY `PaymentRESERVATIONFK` (`Payment_ID`),
  ADD KEY `UserRESERVATIONFK` (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `reference_ibfk_1` FOREIGN KEY (`Referee_id`) REFERENCES `customer` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reference_ibfk_2` FOREIGN KEY (`Referer_id`) REFERENCES `customer` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `License_plateRESERVATIONFK` FOREIGN KEY (`License_plate`) REFERENCES `car` (`License_plate`) ON DELETE CASCADE,
  ADD CONSTRAINT `PaymentRESERVATIONFK` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `PromoCodeRESERVATIONFK` FOREIGN KEY (`Promo_Code`) REFERENCES `offer_details` (`Promo_Code`) ON DELETE CASCADE,
  ADD CONSTRAINT `UserRESERVATIONFK` FOREIGN KEY (`USER_ID`) REFERENCES `customer` (`USER_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
