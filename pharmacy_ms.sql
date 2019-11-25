-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 05:58 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Patient_ID` varchar(20) NOT NULL,
  `C_Name` varchar(30) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Patient_ID`, `C_Name`, `Age`, `Address`, `Contact_No`, `Gender`) VALUES
('234', 'Stiphen', '23', 'dhaka', '982747563644', 'Male'),
('235', 'Wong', '24', 'chittagong', '98272426464', 'Male'),
('236', 'Stark', '22', 'dhaka', '98274832464', 'Male'),
('237', 'Jennifer', '20', 'rangpur', '982748326234', 'Female'),
('238', 'Logan', '21', 'chapai', '98274832634', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `Distributor_Id` varchar(10) NOT NULL,
  `Dist_Name` varchar(30) NOT NULL,
  `Contact_No` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`Distributor_Id`, `Dist_Name`, `Contact_No`) VALUES
('120', 'John', '01922344499'),
('121', 'Doe', '0192737349'),
('122', 'Peter', '0192742323'),
('123', 'Steve', '0192234559');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_Id` varchar(10) NOT NULL,
  `Doc_Name` varchar(20) NOT NULL,
  `Contact_NO` varchar(15) NOT NULL,
  `Specialization` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_Id`, `Doc_Name`, `Contact_NO`, `Specialization`) VALUES
('1245', 'Bruce', '09219379274', 'Child and Mother'),
('1246', 'Dr. Banner', '0324324434', 'Medicin');

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `Drug_Id` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Cost_Price` int(10) NOT NULL,
  `Stock` int(10) NOT NULL,
  `Power` varchar(10) NOT NULL,
  `Drug_Name` varchar(10) NOT NULL,
  `Discount` int(10) NOT NULL,
  `MRP` int(10) NOT NULL,
  `Company_Id` varchar(10) NOT NULL,
  `Expiray` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`Drug_Id`, `Type`, `Cost_Price`, `Stock`, `Power`, `Drug_Name`, `Discount`, `MRP`, `Company_Id`, `Expiray`) VALUES
('Azalid', 'Capsule', 250, 10, '500 mg', 'Azithromyc', 0, 300, '21', '2019-02-09'),
('Napa', 'Tablet', 2, 160, '500 mg', 'Paracitamo', 0, 3, '20', '2019-02-09'),
('Napa Extra', 'Tablet', 2, 160, '500 mg', 'Paracitamo', 0, 4, '20', '2019-02-09'),
('Pantonix', 'Tablet', 10, 100, '20 mg', 'Pantoprazo', 0, 12, '11', '2019-02-09'),
('Virux', 'Suspension', 200, 6, '500 mg', 'Acyclovir', 0, 220, '31', '2019-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `drug_manufacturer`
--

CREATE TABLE `drug_manufacturer` (
  `Company_Id` varchar(10) NOT NULL,
  `Co_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_manufacturer`
--

INSERT INTO `drug_manufacturer` (`Company_Id`, `Co_Name`) VALUES
('11', 'ICEPTA Pharma'),
('19', 'ACI Ltd'),
('20', 'BEXIMCO'),
('21', 'Orion Pharma'),
('31', 'SQUAR Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_Id` varchar(10) NOT NULL,
  `Emp_Name` varchar(20) NOT NULL,
  `Contact_No` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_Id`, `Emp_Name`, `Contact_No`) VALUES
('190', 'Jahir', '01234567889'),
('198', 'David', '01345678901');

-- --------------------------------------------------------

--
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `Patient_Id` varchar(20) NOT NULL,
  `Doctor_Id` varchar(10) NOT NULL,
  `Drug_Id` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescribes`
--

INSERT INTO `prescribes` (`Patient_Id`, `Doctor_Id`, `Drug_Id`, `Description`) VALUES
('234', '1245', 'Napa', 'while need ,after meal'),
('234', '1245', 'Pantonix', ' 7 days before breakfast and dinner'),
('234', '1245', 'Azalid', 'evrey 4 hour after meal,7 days'),
('235', '1245', 'Napa', 'while need'),
('235', '1245', 'Virux', '3 times in a day after meals, 4 days'),
('236', '1245', 'Napa Extra', 'if need'),
('235', '1245', 'Azalid', '7 days every 4 hour after meals'),
('237', '1245', 'Pantonix', 'before meals twice a day');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Purchase_id` varchar(10) NOT NULL,
  `Date_of_purchase` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Purchase_id`, `Date_of_purchase`) VALUES
('0092', '2019-07-24'),
('0093', '2019-07-25'),
('0094', '2019-04-23'),
('0095', '2019-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `Sell_Id` varchar(10) NOT NULL,
  `Drug_Id` varchar(10) NOT NULL,
  `Patient_Id` varchar(20) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`Sell_Id`, `Drug_Id`, `Patient_Id`, `Quantity`) VALUES
('2349', 'Napa', '234', 5),
('2349', 'Pantonix', '234', 10),
('2349', 'Azalid', '234', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sells_result`
-- (See below for the actual view)
--
CREATE TABLE `sells_result` (
`Employee_Id` varchar(10)
,`Emp_Name` varchar(20)
,`Contact_No` varchar(15)
,`COUNT( sll.sell_Id)` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `sell_transaction`
--

CREATE TABLE `sell_transaction` (
  `Sell_Id` varchar(10) NOT NULL,
  `Date_of_Sell` date NOT NULL,
  `Employee_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_transaction`
--

INSERT INTO `sell_transaction` (`Sell_Id`, `Date_of_Sell`, `Employee_Id`) VALUES
('2349', '2019-03-12', '190'),
('2350', '2019-02-13', '198'),
('2351', '2019-02-12', '190');

-- --------------------------------------------------------

--
-- Stand-in structure for view `spend_n_price`
-- (See below for the actual view)
--
CREATE TABLE `spend_n_price` (
`Drug_Id` varchar(10)
,`Cost_Price` int(10)
,`MRP` int(10)
,`Co_Name` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `staffs`
-- (See below for the actual view)
--
CREATE TABLE `staffs` (
`Emp_Name` varchar(20)
,`Contact_No` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `Quantity` int(20) NOT NULL,
  `Purchase_id` varchar(10) NOT NULL,
  `Distributor_Id` varchar(10) NOT NULL,
  `Drug_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`Quantity`, `Purchase_id`, `Distributor_Id`, `Drug_Id`) VALUES
(250, '0092', '120', 'Napa'),
(250, '0092', '120', 'Azalid'),
(200, '0093', '121', 'Napa Extra');

-- --------------------------------------------------------

--
-- Structure for view `sells_result`
--
DROP TABLE IF EXISTS `sells_result`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sells_result`  AS  select `e`.`Employee_Id` AS `Employee_Id`,`e`.`Emp_Name` AS `Emp_Name`,`e`.`Contact_No` AS `Contact_No`,count(`sll`.`Sell_Id`) AS `COUNT( sll.sell_Id)` from ((`employee` `e` join `sell_transaction` `s`) join `sells` `sll`) where ((`s`.`Employee_Id` = `e`.`Employee_Id`) and (`sll`.`Sell_Id` = `s`.`Sell_Id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `spend_n_price`
--
DROP TABLE IF EXISTS `spend_n_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `spend_n_price`  AS  select `d`.`Drug_Id` AS `Drug_Id`,`d`.`Cost_Price` AS `Cost_Price`,`d`.`MRP` AS `MRP`,`dm`.`Co_Name` AS `Co_Name` from (`drug` `d` join `drug_manufacturer` `dm`) where (`d`.`Company_Id` = `dm`.`Company_Id`) ;

-- --------------------------------------------------------

--
-- Structure for view `staffs`
--
DROP TABLE IF EXISTS `staffs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `staffs`  AS  select `employee`.`Emp_Name` AS `Emp_Name`,`employee`.`Contact_No` AS `Contact_No` from `employee` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`Distributor_Id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_Id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`Drug_Id`),
  ADD KEY `Company_Id` (`Company_Id`);

--
-- Indexes for table `drug_manufacturer`
--
ALTER TABLE `drug_manufacturer`
  ADD PRIMARY KEY (`Company_Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_Id`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD KEY `Drug_Id` (`Drug_Id`),
  ADD KEY `Patient_Id` (`Patient_Id`),
  ADD KEY `Doctor_Id` (`Doctor_Id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Purchase_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD KEY `Sell_Id` (`Sell_Id`),
  ADD KEY `Drug_Id` (`Drug_Id`),
  ADD KEY `Patient_Id` (`Patient_Id`);

--
-- Indexes for table `sell_transaction`
--
ALTER TABLE `sell_transaction`
  ADD PRIMARY KEY (`Sell_Id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD KEY `Purchase_id` (`Purchase_id`),
  ADD KEY `Distributor_Id` (`Distributor_Id`),
  ADD KEY `Drug_Id` (`Drug_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drug`
--
ALTER TABLE `drug`
  ADD CONSTRAINT `drug_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `drug_manufacturer` (`Company_Id`);

--
-- Constraints for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD CONSTRAINT `prescribes_ibfk_1` FOREIGN KEY (`Drug_Id`) REFERENCES `drug` (`Drug_Id`),
  ADD CONSTRAINT `prescribes_ibfk_2` FOREIGN KEY (`Patient_Id`) REFERENCES `customer` (`Patient_ID`),
  ADD CONSTRAINT `prescribes_ibfk_3` FOREIGN KEY (`Doctor_Id`) REFERENCES `doctor` (`Doctor_Id`);

--
-- Constraints for table `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sells_ibfk_1` FOREIGN KEY (`Sell_Id`) REFERENCES `sell_transaction` (`Sell_Id`),
  ADD CONSTRAINT `sells_ibfk_2` FOREIGN KEY (`Drug_Id`) REFERENCES `drug` (`Drug_Id`),
  ADD CONSTRAINT `sells_ibfk_3` FOREIGN KEY (`Patient_Id`) REFERENCES `customer` (`Patient_ID`);

--
-- Constraints for table `sell_transaction`
--
ALTER TABLE `sell_transaction`
  ADD CONSTRAINT `sell_transaction_ibfk_1` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Employee_Id`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`Purchase_id`) REFERENCES `purchase` (`Purchase_id`),
  ADD CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`Distributor_Id`) REFERENCES `distributor` (`Distributor_Id`),
  ADD CONSTRAINT `supplies_ibfk_3` FOREIGN KEY (`Drug_Id`) REFERENCES `drug` (`Drug_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
