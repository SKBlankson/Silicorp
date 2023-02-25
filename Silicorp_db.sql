-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 10:05 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `semi_conductor_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_ID` varchar(10) NOT NULL,
  `Branch_Name` varchar(50) NOT NULL,
  `Location_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_ID`, `Branch_Name`, `Location_ID`) VALUES
('BARBRA', 'Barcelona Branch', 'BARSPA'),
('BRUBRA', 'Brussels Branch', 'BRUBELG'),
('BRUBRA2', 'Brussels 2 Branch', 'BRUBELG'),
('CORBRA', 'Cork Branch', 'CORIRE'),
('DUBBRA', 'Dublin Branch', 'DUBIRE'),
('EDIBRA', 'Edinburgh Branch', 'EDIENG'),
('EDIBRA2', 'Edinburgh 2 Branch', 'EDIENG'),
('KEYBRA', 'Milton Keynes Branch', 'KEYENG'),
('SCOBRA', 'Scotland Branch', 'GLASCT'),
('sdd', 'sddasdd', 'asd'),
('sdsd', 'sdsd', 'DUBBRA'),
('VALBRA', 'Valencia Branch', 'VALSPA');

-- --------------------------------------------------------

--
-- Table structure for table `cpu_details`
--

CREATE TABLE `cpu_details` (
  `Hardware_ID` varchar(10) NOT NULL,
  `Model_name` varchar(50) NOT NULL,
  `Transistor_Count` int(30) NOT NULL,
  `No_Of_cores` int(10) NOT NULL,
  `No_of_threads` int(10) NOT NULL,
  `Base_clock` float NOT NULL,
  `Default_TDP` int(10) NOT NULL,
  `CacheSize` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu_details`
--

INSERT INTO `cpu_details` (`Hardware_ID`, `Model_name`, `Transistor_Count`, `No_Of_cores`, `No_of_threads`, `Base_clock`, `Default_TDP`, `CacheSize`) VALUES
('CPU00001', 'Ryzen 7 1800x', 7, 8, 16, 3.6, 95, 20),
('CPU00002', 'Ryzen 9 3900x', 8, 12, 24, 3.6, 105, 64),
('CPU00003', 'Ryzen Threadripper 3990x', 9, 64, 128, 3.8, 280, 128),
('CPU00004', 'Ryzen Threadripper Pro 3995wx', 9, 64, 128, 3.8, 280, 128),
('CPU00005', 'Ryzen 5 3600XT', 6, 6, 12, 3.6, 95, 32),
('CPU00006', 'Ryzen 3 3100', 5, 4, 8, 3.6, 65, 16),
('CPU00007', 'Ryzen 9 3950x', 8, 12, 24, 3.8, 105, 64),
('CPU00008', 'Ryzen 7 3700x', 7, 8, 16, 3.6, 95, 32),
('CPU00009', 'Ryzen 5 3500', 6, 6, 12, 3.6, 95, 16),
('CPU00010', 'Ryzen 3 3300x', 5, 4, 8, 3.6, 95, 16),
('CPU00011', 'Intel Core i9-11900K', 17, 8, 16, 3.5, 125, 16),
('CPU00012', 'Intel Core i7-11700K', 17, 8, 16, 3.6, 125, 16),
('CPU00013', 'Intel Core i5-11600K', 17, 6, 12, 3.9, 125, 12),
('CPU00014', 'Intel Core i9-12900K', 30, 16, 24, 3.2, 125, 30),
('CPU00015', 'Intel Core i7-12700K', 20, 12, 20, 3.8, 125, 20),
('CPU00016', 'Intel Core i5-12600K', 18, 10, 16, 4, 125, 18),
('CPU00017', 'Intel Core i9-11980HK', 14, 8, 16, 2.6, 65, 24),
('CPU00018', 'Intel Core i7-11800H', 14, 8, 16, 2.3, 45, 24),
('CPU00019', 'Intel Core i5-11400H', 12, 6, 12, 2.7, 35, 12),
('CPU00020', 'Intel Core i3-11100H', 11, 4, 8, 2.4, 35, 8),
('CPU00021', 'AMD Ryzen 9 5950X', 16, 16, 32, 3.4, 105, 72),
('CPU00022', 'AMD Ryzen 7 5800X', 16, 8, 16, 3.8, 105, 36),
('CPU00023', 'AMD Ryzen 5 5600X', 12, 6, 12, 3.7, 65, 35),
('CPU00024', 'AMD Ryzen Threadripper Pro 3975WX', 7, 32, 64, 3.5, 280, 256),
('CPU00025', 'AMD Ryzen Threadripper 3970X', 7, 32, 64, 3.7, 280, 144),
('CPU00026', 'AMD Ryzen 9 5900HX', 16, 8, 16, 3.3, 45, 24),
('CPU00027', 'AMD Ryzen 7 5800H', 16, 8, 16, 3.2, 45, 20),
('CPU00028', 'AMD Ryzen 5 5600H', 12, 6, 12, 3, 35, 19),
('CPU00029', 'AMD Ryzen 3 5300U', 7, 4, 8, 2.6, 15, 8),
('CPU00030', 'Intel Xeon W-2295', 18, 18, 36, 3, 165, 24);

-- --------------------------------------------------------

--
-- Table structure for table `cpu_fabricatorpartners`
--

CREATE TABLE `cpu_fabricatorpartners` (
  `Fabricator_ID` varchar(10) NOT NULL,
  `Hardware_ID` varchar(10) NOT NULL,
  `Date_contracted` date NOT NULL,
  `CPU_quantity` int(10) DEFAULT 0,
  `Cost_per_unit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu_fabricatorpartners`
--

INSERT INTO `cpu_fabricatorpartners` (`Fabricator_ID`, `Hardware_ID`, `Date_contracted`, `CPU_quantity`, `Cost_per_unit`) VALUES
('FAB0201', 'CPU00001', '2022-11-12', 5000, 50),
('FAB0202', 'CPU00010', '2021-07-18', 2500, 67),
('FAB0203', 'CPU00002', '2022-09-24', 10000, 45),
('FAB0204', 'CPU00003', '2020-04-13', 17000, 55),
('FAB0205', 'CPU00004', '2021-09-12', 12800, 70),
('FAB0201', 'CPU00005', '2020-11-12', 42069, 51),
('FAB0202', 'CPU00006', '2022-02-15', 11000, 57),
('FAB0203', 'CPU00007', '2021-12-16', 2000, 40),
('FAB0204', 'CPU00008', '2022-05-02', 4600, 69),
('FAB0205', 'CPU00009', '2022-08-21', 8300, 56);

-- --------------------------------------------------------

--
-- Table structure for table `cpu_integrators`
--

CREATE TABLE `cpu_integrators` (
  `Hardware_ID` varchar(10) NOT NULL,
  `Integrator_ID` varchar(10) NOT NULL,
  `Laptop_model_no` varchar(25) NOT NULL,
  `License_cost` float NOT NULL,
  `Date_contracted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu_integrators`
--

INSERT INTO `cpu_integrators` (`Hardware_ID`, `Integrator_ID`, `Laptop_model_no`, `License_cost`, `Date_contracted`) VALUES
('CPU00001', 'INT00001', '16-k0033dx', 2390000, '2022-02-17'),
('CPU00002', 'INT00002', 'AORUS 17 YE5-A4US544SP', 4500000, '2021-09-03'),
('CPU00003', 'INT00003', 'AWM17R5-A355BLK-PUS', 6900900, '2021-12-21'),
('CPU00004', 'INT00004', 'Stealth7712046', 2340000, '2022-02-28'),
('CPU00005', 'INT00005', 'AN517-55-5354', 4200000, '2020-01-07'),
('CPU00001', 'INT00006', 'GU603ZM-M16.I73060', 1200000, '2022-09-08'),
('CPU00002', 'INT00007', 'GV301RE-X13.R93050T', 2340000, '2020-05-27'),
('CPU00003', 'INT00008', 'Sword1512698', 2390000, '2021-03-14'),
('CPU00006', 'INT00001', 'G15RE-A362GRY-PUS', 4500000, '2022-07-23'),
('CPU00004', 'INT00002', 'FX506HC-F15.I53050', 3230000, '2021-08-15'),
('CPU00007', 'INT00005', 'AN515-55-53AG', 3200000, '2022-01-12'),
('CPU00008', 'INT00003', 'GF63 8RD-222US', 2500000, '2021-07-05'),
('CPU00009', 'INT00009', 'FX705DT-AU092T', 2900000, '2022-03-20'),
('CPU00010', 'INT00008', 'GE75 Raider 10SE-008', 3500000, '2021-12-09'),
('CPU00011', 'INT00001', 'TUF Gaming A17 FA706IU-H7', 4200000, '2020-11-18'),
('CPU00002', 'INT00006', 'GS75 Stealth 8SG-076AU', 6200000, '2022-06-30'),
('CPU00013', 'INT00007', 'GT76 Titan DT 9SG', 13000000, '2021-05-14'),
('CPU00020', 'INT00002', 'ROG Strix G G531GD-AL034', 2300000, '2022-09-19'),
('CPU00015', 'INT00004', 'Pulse GL76 11UEK-026', 5000000, '2020-08-08'),
('CPU00009', 'INT00010', 'G3 15-3500', 2700000, '2021-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `cpu_storefront_partners`
--

CREATE TABLE `cpu_storefront_partners` (
  `Hardware_ID` varchar(10) DEFAULT NULL,
  `Storefront_ID` varchar(10) DEFAULT NULL,
  `CPU_quantity` int(11) DEFAULT 0,
  `Date_contracted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu_storefront_partners`
--

INSERT INTO `cpu_storefront_partners` (`Hardware_ID`, `Storefront_ID`, `CPU_quantity`, `Date_contracted`) VALUES
('CPU00001', 'SF0001', 100, '2021-10-23'),
('CPU00002', 'SF0002', 1500, '2020-10-23'),
('CPU00003', 'SF0003', 500, '2022-10-14'),
('CPU00005', 'SF0006', 780, '2022-10-15'),
('CPU00004', 'SF0003', 690, '2020-10-23'),
('CPU00001', 'SF0001', 4500, '2020-10-23'),
('CPU00002', 'SF0002', 4500, '2020-10-23'),
('CPU00003', 'SF0003', 6300, '2022-10-23'),
('CPU00007', 'SF0010', 1240, '2021-10-23'),
('CPU00004', 'SF0010', 1120, '2021-09-13'),
('CPU00002', 'SF0012', 3040, '2021-11-23'),
('CPU00001', 'SF0011', 1200, '2021-07-13'),
('CPU00006', 'SF0007', 800, '2022-01-05'),
('CPU00008', 'SF0008', 1000, '2022-02-14'),
('CPU00009', 'SF0009', 1200, '2022-03-15'),
('CPU00010', 'SF0010', 1500, '2022-04-16'),
('CPU00011', 'SF0021', 1800, '2022-05-17'),
('CPU00020', 'SF0032', 2000, '2022-06-18'),
('CPU00013', 'SF0030', 2200, '2022-07-19'),
('CPU00014', 'SF0024', 2500, '2022-08-20'),
('CPU00015', 'SF0020', 2700, '2022-09-21'),
('CPU00016', 'SF0016', 3000, '2022-10-22'),
('CPU00017', 'SF0010', 3200, '2022-11-23'),
('CPU00018', 'SF0014', 3500, '2022-12-24'),
('CPU00029', 'SF0019', 3800, '2023-01-25'),
('CPU00020', 'SF0020', 4000, '2023-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dept_Code` varchar(10) NOT NULL,
  `Dept_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Dept_Code`, `Dept_Name`) VALUES
('CS', 'Customer Service'),
('HR', 'Human Resources'),
('IT', 'IT'),
('MFP', 'Marketing & Finance'),
('RD', 'Research & Development');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` varchar(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Company_Email` varchar(45) NOT NULL,
  `Personal_Email` varchar(45) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Dept_Code` varchar(10) DEFAULT NULL,
  `Date_Of_Employment` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `FName`, `LName`, `Gender`, `Date_of_Birth`, `Company_Email`, `Personal_Email`, `Address`, `Dept_Code`, `Date_Of_Employment`) VALUES
('EMP00001', 'Kwaku', 'Sampson', 1, '1997-09-22', 'sampson.kwaku@amdInternal.cm', 'skwaku@gmail.com', '3 Coconut Street', 'RD', '2020-10-22'),
('EMP00002', 'Deborah', 'Boateng', 0, '2000-01-12', 'boateng.deborah@amdInternal.cm', 'boatdeborah@gmail.com', '17 Drake Street', 'MFP', '2022-05-22'),
('EMP00003', 'Mathew', 'Davis', 1, '2001-06-19', 'davis.mathew@amdInternal.cm', 'dmathew@gmail.com', '2 Banana Street', 'RD', '2019-05-13'),
('EMP00004', 'Michelle', 'Ansah', 0, '1999-03-16', 'ansah.michelle@amdInternal.cm', 'amichelle@gmail.com', '26 Jump Street', 'RD', '2021-05-13'),
('EMP00005', 'Ama', 'Johnson', 0, '2000-12-05', 'johnson.patricia@amdInternal.cm', 'jpatricia@gmail.com', '14 Green Street', 'HR', '2019-09-19'),
('EMP00006', 'David', 'Smith', 1, '2001-07-21', 'smith.david@amdInternal.cm', 'smithdavid@yahoo.com', '5 Donald Street', 'MFP', '2019-09-13'),
('EMP00007', 'Bob', 'Hawkins', 1, '1999-10-19', 'hawkins.bob@amdInternal.cm', 'hawkinsbob@gmail.com', '2 Orange Lane', 'RD', '2010-10-13'),
('EMP00008', 'Akosua', 'Scott', 0, '1997-11-05', 'scott.akosua@amdInternal.cm', 'scottkosua@gmail.com', '30 Rangoon Street', 'MFP', '2019-11-13'),
('EMP00009', 'Aliyah', 'Brown', 0, '2003-11-30', 'brown.aliyah@amdInternal.cm', 'bliyahrown@yahoo.com', '8 Tiger Street', 'IT', '2021-02-12'),
('EMP00010', 'Derrick', 'Black', 1, '1991-03-14', 'black.derrick@amdInternal.cm', 'bderrickbb@gmail.cm', '11 Venza Lane', 'CS', '2019-09-01'),
('EMP00011', 'Tasha', 'Kent', 0, '1991-02-08', 'kent.tasha@amdInternal.cm', 'kent.tasha@gmail.com', '13 King Street', 'CS', '2021-05-13'),
('EMP00012', 'Barry', 'Allen', 1, '2000-01-09', 'allen.barry@amdInternal.cm', 'abarry22@yahoo.com', '10 Watermelon Street', 'IT', '2022-05-22'),
('EMP00013', 'Bruce', 'Wayne', 1, '1915-04-07', 'wayne.bruce@amdInternal.cm', 'wayne.bruce@icloud.com', '3 Wayne Street', 'RD', '2022-02-02'),
('EMP00014', 'Dinah', 'Mensah', 0, '1998-09-13', 'mensah.dinah@amdInternal.cm', 'mensadinah@icloud.com', '27 Orange Lane', 'HR', '2017-05-02'),
('EMP00015', 'Kwabena', 'Stone', 1, '2002-08-23', 'stone.kwabena@amdInternal.cm', 'stkwabena@gmail.com', '19 Justice Street', 'CS', '2020-05-05'),
('EMP00016', 'Sara', 'Johnson', 0, '1995-12-12', 'johnson.sara@amdInternal.cm', 'sjohnson@yahoo.com', '16 Park Street', 'IT', '2020-08-01'),
('EMP00017', 'Daniel', 'Garcia', 1, '1993-02-21', 'garcia.daniel@amdInternal.cm', 'dgarcia@gmail.com', '7 Oak Avenue', 'MFP', '2021-03-15'),
('EMP00018', 'Emily', 'Chen', 0, '1998-06-05', 'chen.emily@amdInternal.cm', 'echen@hotmail.com', '25 Maple Road', 'RD', '2019-01-15'),
('EMP00019', 'Isaac', 'Lee', 1, '2000-09-30', 'lee.isaac@amdInternal.cm', 'ilee@yahoo.com', '12 Elm Street', 'CS', '2021-11-10'),
('EMP00020', 'Avery', 'Taylor', 0, '1999-11-07', 'taylor.avery@amdInternal.cm', 'ataylor@gmail.com', '18 Pine Drive', 'HR', '2022-02-03'),
('EMP00021', 'Nana', 'Osei', 1, '1995-02-18', 'osei.nana@amdInternal.cm', 'oseinana@yahoo.com', '4 Mango Lane', 'IT', '2021-06-01'),
('EMP00022', 'Kwasi', 'Amoah', 1, '1998-08-10', 'amoah.kwasi@amdInternal.cm', 'kamoah@gmail.com', '20 River Street', 'CS', '2022-01-13'),
('EMP00023', 'Kwame', 'Owusu', 1, '1996-04-02', 'owusu.kwame@amdInternal.cm', 'owusuk@gmail.com', '14 Asante Street', 'MFP', '2021-03-15'),
('EMP00024', 'Yaa', 'Frimpong', 0, '2001-05-07', 'frimpong.yaa@amdInternal.cm', 'yaafrimpong@gmail.com', '23 Atlantic Avenue', 'RD', '2022-05-22'),
('EMP00025', 'Nana', 'Ampadu', 1, '1997-09-25', 'ampadu.nana@amdInternal.cm', 'ampadunana@yahoo.com', '19 Lapaz Road', 'IT', '2020-09-18'),
('EMP00026', 'Kwabena', 'Boakye', 1, '2002-07-14', 'boakye.kwabena@amdInternal.cm', 'boakye22@gmail.com', '2 Ankaful Street', 'CS', '2021-02-12'),
('EMP00027', 'Ama', 'Asare', 0, '2000-11-23', 'asare.ama@amdInternal.cm', 'a.asare@gmail.com', '15 Adu Street', 'MFP', '2022-02-10'),
('EMP00028', 'Samuel', 'Annan', 1, '1999-12-15', 'annan.samuel@amdInternal.cm', 'samuelannan@yahoo.com', '6 Adenta Road', 'RD', '2021-08-02'),
('EMP00029', 'Sylvia', 'Arthur', 0, '1995-01-27', 'arthur.sylvia@amdInternal.cm', 'arthur.sylvia@gmail.com', '3 Cantonments Street', 'IT', '2018-11-01'),
('EMP00030', 'Abena', 'Addo', 0, '1998-04-10', 'addo.abena@amdInternal.cm', 'abena.addo@gmail.com', '8 Asylum Down Road', 'HR', '2019-12-12'),
('EMP00031', 'Bright', 'Owusu', 1, '2000-10-11', 'owusu.bright@amdInternal.cm', 'brightowusu22@gmail.com', '16 Lashibi Street', 'IT', '2021-06-18'),
('EMP00032', 'Grace', 'Boakye', 0, '2001-11-07', 'boakye.grace@amdInternal.cm', 'g.boakye@yahoo.com', '27 Dome Street', 'MFP', '2022-03-19'),
('EMP00033', 'Evelyn', 'Mensah', 0, '1994-03-07', 'mensah.evelyn@amdInternal.cm', 'evie.mensah@gmail.com', '12 Spintex Road', 'MFP', '2019-05-10'),
('EMP00034', 'David', 'Asante', 1, '1997-02-14', 'asante.david@amdInternal.cm', 'david_asante@yahoo.com', '15 Legon Street', 'RD', '2020-10-22'),
('EMP00035', 'Linda', 'Boahen', 0, '1993-07-25', 'boahen.linda@amdInternal.cm', 'linda_boahen@gmail.com', '22 Ridge Avenue', 'HR', '2017-09-01'),
('EMP00036', 'Isaac', 'Agyapong', 1, '1996-08-08', 'agya.isaac@amdInternal.cm', 'isaac_agyapong@gmail.com', '9 Achimota Street', 'IT', '2020-12-05'),
('EMP00037', 'Maame', 'Kyerewaa', 0, '1999-09-18', 'kyerewaa.maame@amdInternal.cm', 'maame_kye@yahoo.com', '10 Adabraka Road', 'RD', '2021-11-14'),
('EMP00038', 'Kwabena', 'Ofori', 1, '1991-05-30', 'ofori.kwabena@amdInternal.cm', 'kwabena_ofori@hotmail.com', '7 Abossey Okai Street', 'MFP', '2018-06-27'),
('EMP00039', 'Gifty', 'Ansong', 0, '1995-04-20', 'ansong.gifty@amdInternal.cm', 'giftyansong@gmail.com', '18 Haatso Road', 'IT', '2020-02-14'),
('EMP00040', 'Yaw', 'Boateng', 1, '1998-11-03', 'boateng.yw@amdInternal.cm', 'y.boateng@yahoo.com', '20 Osu Avenue', 'RD', '2021-09-10'),
('EMP00041', 'Faustina', 'Adjei', 0, '1997-06-12', 'adjei.faustina@amdInternal.cm', 'fausty_adjei@gmail.com', '5 Teshie Street', 'MFP', '2020-03-16'),
('EMP00042', 'Michael', 'Ansah', 1, '1992-12-01', 'ansah.michael@amdInternal.cm', 'mike_ansah@hotmail.com', '11 Madina Road', 'IT', '2019-07-03'),
('EMP00043', 'Alice', 'Gyamfi', 0, '1994-09-23', 'gyamfi.alice@amdInternal.cm', 'alicegyamfi@yahoo.com', '14 Dansoman Street', 'RD', '2021-03-12'),
('EMP00044', 'Kofi', 'Nyantakyi', 1, '1996-07-17', 'nyantakyi.kofi@amdInternal.cm', 'kofi_nyantakyi@gmail.com', '8 Tesano Street', 'MFP', '2020-12-28'),
('EMP00045', 'Adwoa', 'Owusu', 0, '1999-02-11', 'owusu.adwoa@amdInternal.cm', 'adwoaowusu22@yahoo.com', '17 North Kaneshie Road', 'IT', '2022-01-02'),
('EMP00046', 'Emmanuel', 'Aidoo', 1, '1993-10-29', 'aidoo.emmanuel@amdInternal.cm', 'emmanuelaidoo@gmail.com', '22 Kasoa Street', 'RD', '2018-12-14'),
('EMP00047', 'Ama', 'Asante', 0, '1995-08-13', 'asante.ama@amdInternal.cm', 'amaasante22@gmail.com', '10 East Legon Road', 'HR', '2021-11-02'),
('EMP00048', 'Yaw', 'Boateng', 1, '1997-05-06', 'boateng.yaw@amdInternal.cm', 'y.boateng@hotmail.com', '5 Abeka Road', 'IT', '2019-06-21'),
('EMP00049', 'Akosua', 'Gyan', 0, '2000-12-31', 'gyan.akosua@amdInternal.cm', 'akosua_gyan@yahoo.com', '20 Osu Street', 'MFP', '2022-02-19'),
('EMP00050', 'Joseph', 'Acheampong', 1, '1998-03-04', 'acheampong.joseph@amdInternal.cm', 'joseph_acheampong@gmail.com', '6 Tema Road', 'RD', '2021-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `fabricator_partners`
--

CREATE TABLE `fabricator_partners` (
  `Fabricator_ID` varchar(10) NOT NULL,
  `Fabricator_name` varchar(100) DEFAULT NULL,
  `Location_ID` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telephone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fabricator_partners`
--

INSERT INTO `fabricator_partners` (`Fabricator_ID`, `Fabricator_name`, `Location_ID`, `Email`, `Telephone`) VALUES
('FAB0201', 'Globalfoundries', 'CORIRE', 'lloyd.alberto@amd.com', '+1(602)4414127'),
('FAB0202', 'TSMC', 'EDIENG', 'ballard.victor@amd.com', '+1(816)6331807'),
('FAB0203', 'Samsung', 'DUBIRE', 'morton.angel@amd.com', '+1(485)5674991'),
('FAB0204', 'AMD Fabricators Inc', 'BRUBELG', 'abbot.dorothy@amd.com', '+1(448)9799129'),
('FAB0205', 'Umbrella Corp', 'KEYENG', 'wesker.albert@amd.com', '+1(250)2775956');

-- --------------------------------------------------------

--
-- Table structure for table `fulltime`
--

CREATE TABLE `fulltime` (
  `Employee_ID` varchar(10) NOT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Salary` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fulltime`
--

INSERT INTO `fulltime` (`Employee_ID`, `Position`, `Salary`) VALUES
('EMP00001', 'Staff', 20000),
('EMP00002', 'Branch Manager', 12000),
('EMP00003', 'CEO', 14000),
('EMP00004', 'Branch Manager', 22000),
('EMP00005', 'Staff', 12000),
('EMP00006', 'Staff', 15000),
('EMP00007', 'Branch Manager', 18000),
('EMP00008', 'CEO', 25000),
('EMP00009', 'Staff', 16000),
('EMP00010', 'Staff', 17000),
('EMP00011', 'Branch Manager', 20000),
('EMP00012', 'Staff', 13000),
('EMP00013', 'Staff', 14000),
('EMP00014', 'Branch Manager', 19000),
('EMP00015', 'CEO', 30000),
('EMP00016', 'Staff', 11000),
('EMP00017', 'Branch Manager', 21000),
('EMP00018', 'Staff', 12000),
('EMP00019', 'Staff', 13000),
('EMP00020', 'Branch Manager', 23000);

-- --------------------------------------------------------

--
-- Table structure for table `gpu_details`
--

CREATE TABLE `gpu_details` (
  `Hardware_ID` varchar(10) DEFAULT NULL,
  `Model_name` varchar(50) NOT NULL,
  `Core_clock` int(10) NOT NULL,
  `Architecture` varchar(100) NOT NULL,
  `Memory_size` float NOT NULL,
  `Memory_clock` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpu_details`
--

INSERT INTO `gpu_details` (`Hardware_ID`, `Model_name`, `Core_clock`, `Architecture`, `Memory_size`, `Memory_clock`) VALUES
('GPU00001', 'Radeon RX 590', 1545, 'GCN', 8, 8000),
('GPU00002', 'Radeon Pro 5300', 1650, 'RDNA', 4, 14000),
('GPU00003', 'Radeon RX 7900xt', 1545, 'RDNA 3', 20, 20000),
('GPU00004', 'Radeon Pro Duo', 1300, 'GCN 3rd gen', 4, 1000),
('GPU00005', 'Radeon RX Vega 56', 1156, 'GCN 5th gen', 8, 1890),
('GPU00006', 'Radeon VII', 1400, 'GCN 5th gen', 16, 1024),
('GPU00007', 'Radeon RX 5300', 1327, 'RDNA', 3, 14000),
('GPU00008', 'Radeon RX 6400', 1923, 'RDNA 2', 4, 16000),
('GPU00009', 'Radeon RX 7900 xtx', 1900, 'RDNA 3', 20, 20000),
('GPU00010', 'Radeon RX 5600', 1375, 'RDNA', 6, 12000),
('GPU00011', 'GeForce RTX 3070', 1500, 'Ampere', 8, 14000),
('GPU00012', 'GeForce GTX 1060', 1506, 'Pascal', 6, 8000),
('GPU00013', 'GeForce RTX 3060', 1320, 'Ampere', 12, 15000),
('GPU00014', 'GeForce RTX 3080', 1440, 'Ampere', 10, 19000),
('GPU00015', 'GeForce GTX 1050 Ti', 1290, 'Pascal', 4, 7000),
('GPU00016', 'GeForce RTX 3090', 1395, 'Ampere', 24, 19500),
('GPU00017', 'GeForce GTX 1080 Ti', 1481, 'Pascal', 11, 11000),
('GPU00018', 'GeForce RTX 3070 Ti', 1605, 'Ampere', 8, 16000),
('GPU00019', 'GeForce RTX 2080 Ti', 1350, 'Turing', 11, 14000),
('GPU00020', 'GeForce GTX 1660', 1530, 'Turing', 6, 8000),
('GPU00021', 'Radeon RX 6800', 2105, 'RDNA 2', 16, 16000),
('GPU00022', 'Radeon RX 6800 XT', 2250, 'RDNA 2', 16, 16000),
('GPU00023', 'Radeon RX 6900 XT', 2015, 'RDNA 2', 16, 16000),
('GPU00024', 'Radeon RX 6600 XT', 2359, 'RDNA 2', 8, 16000),
('GPU00025', 'Radeon RX 6700 XT', 2321, 'RDNA 2', 12, 16000),
('GPU00026', 'Radeon RX 6900 XTX', 2235, 'RDNA 2', 16, 20000),
('GPU00027', 'GeForce RTX 3060 Ti', 1410, 'Ampere', 8, 14000),
('GPU00028', 'GeForce GTX 1660 Ti', 1500, 'Turing', 6, 12000),
('GPU00029', 'GeForce RTX 3060 Low Profile', 1320, 'Ampere', 12, 15000),
('GPU00030', 'GeForce RTX 3050 Ti', 1605, 'Ampere', 4, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `gpu_fabricatorpartners`
--

CREATE TABLE `gpu_fabricatorpartners` (
  `Fabricator_ID` varchar(10) NOT NULL,
  `Hardware_ID` varchar(10) NOT NULL,
  `Date_contracted` date NOT NULL,
  `GPU_quantity` int(10) DEFAULT 0,
  `Cost_per_unit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpu_fabricatorpartners`
--

INSERT INTO `gpu_fabricatorpartners` (`Fabricator_ID`, `Hardware_ID`, `Date_contracted`, `GPU_quantity`, `Cost_per_unit`) VALUES
('FAB0201', 'GPU00001', '2020-01-10', 7600, 90),
('FAB0202', 'GPU00002', '2022-09-14', 2300, 100),
('FAB0203', 'GPU00003', '2021-03-27', 10000, 170),
('FAB0204', 'GPU00004', '2022-08-11', 5600, 88),
('FAB0205', 'GPU00005', '2022-08-25', 4500, 125),
('FAB0201', 'GPU00001', '2021-04-08', 8400, 130),
('FAB0202', 'GPU00002', '2020-11-30', 12000, 165),
('FAB0203', 'GPU00003', '2021-11-27', 13600, 110),
('FAB0204', 'GPU00004', '2022-10-12', 2000, 105),
('FAB0205', 'GPU00005', '2022-03-17', 7200, 98);

-- --------------------------------------------------------

--
-- Table structure for table `gpu_integrators`
--

CREATE TABLE `gpu_integrators` (
  `Hardware_ID` varchar(10) NOT NULL,
  `Integrator_ID` varchar(10) NOT NULL,
  `Laptop_model_no` varchar(25) NOT NULL,
  `License_cost` float NOT NULL,
  `Date_contracted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpu_integrators`
--

INSERT INTO `gpu_integrators` (`Hardware_ID`, `Integrator_ID`, `Laptop_model_no`, `License_cost`, `Date_contracted`) VALUES
('GPU00001', 'INT00001', '82V6S00000', 4500000, '2022-11-09'),
('GPU00002', 'INT00002', '15-fa0031dx', 2300000, '2022-12-12'),
('GPU00003', 'INT00003', '27-ca1244', 150, '2021-11-15'),
('GPU00005', 'INT00004', 'PH315-55-70ZV', 5900000, '2020-01-17'),
('GPU00006', 'INT00009', 'GA401QH-211.ZG14BL', 3300000, '2021-08-15'),
('GPU00001', 'INT00007', '4ybmSyMzggZx-FN', 3450000, '2022-12-08'),
('GPU00002', 'INT00008', 'AWX14R1-7679WHT-PUS', 1230000, '2021-07-19'),
('GPU00003', 'INT00006', '76-v8TDnnbqAVtz', 2340000, '2022-09-25'),
('GPU00009', 'INT00010', ' 15-ey0013dx', 5700000, '2022-04-13'),
('GPU00010', 'INT00022', 'A3-Ry2wkJDG4Rbg', 3560000, '2021-06-15'),
('GPU00007', 'INT00001', 'Vivobook Pro 14', 1650000, '2022-10-23'),
('GPU00008', 'INT00002', 'Nitro 5 AN515-54-54W2', 2529000, '2021-05-12'),
('GPU00009', 'INT00003', 'OMEN 17-cb1010nr', 5999000, '2021-09-28'),
('GPU00010', 'INT00004', 'GF65 Thin 9SEXR-249US', 2299000, '2022-06-19'),
('GPU00001', 'INT00011', 'TUF506IV-AS76', 2880000, '2022-03-02'),
('GPU00002', 'INT00022', 'GS65 Stealth Thin 037', 5599000, '2021-01-29'),
('GPU00003', 'INT00023', 'Predator Triton 300 PT315', 4699000, '2022-02-06'),
('GPU00004', 'INT00014', 'Zephyrus G14 GA401IV-BR9N', 3599000, '2021-08-18'),
('GPU00005', 'INT00005', 'ROG Strix G G531GT-BI7N6', 2499000, '2022-01-10'),
('GPU00006', 'INT00016', 'Pavilion Gaming 15-dk0046', 1679000, '2021-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `gpu_storefront_partners`
--

CREATE TABLE `gpu_storefront_partners` (
  `Hardware_ID` varchar(10) NOT NULL,
  `Storefront_ID` varchar(10) NOT NULL,
  `GPU_quantity` int(11) DEFAULT 0,
  `Date_contracted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpu_storefront_partners`
--

INSERT INTO `gpu_storefront_partners` (`Hardware_ID`, `Storefront_ID`, `GPU_quantity`, `Date_contracted`) VALUES
('GPU00010', 'SF0001', 2100, '2021-10-23'),
('GPU00009', 'SF0002', 1500, '2020-10-23'),
('GPU00008', 'SF0003', 5000, '2022-10-14'),
('GPU00007', 'SF0033', 7880, '2022-10-15'),
('GPU00006', 'SF0040', 6490, '2020-10-23'),
('GPU00005', 'SF0001', 4500, '2020-10-23'),
('GPU00010', 'SF0002', 4500, '2020-10-23'),
('GPU00003', 'SF0003', 64300, '2022-10-23'),
('GPU00002', 'SF0025', 12240, '2021-10-23'),
('GPU00001', 'SF0040', 11520, '2021-09-13'),
('GPU00007', 'SF0020', 3000, '2020-05-10'),
('GPU00004', 'SF0010', 5300, '2020-09-25'),
('GPU00008', 'SF0033', 4200, '2021-11-23'),
('GPU00009', 'SF0040', 800, '2022-02-14'),
('GPU00001', 'SF0001', 2000, '2021-10-23'),
('GPU00006', 'SF0012', 1000, '2021-05-15'),
('GPU00002', 'SF0005', 5500, '2020-08-23'),
('GPU00003', 'SF0008', 7800, '2022-10-23'),
('GPU00005', 'SF0001', 1500, '2022-01-01'),
('GPU00010', 'SF0033', 2500, '2021-10-23'),
('GPU00007', 'SF0010', 3000, '2022-02-14'),
('GPU00004', 'SF0011', 700, '2021-09-13'),
('GPU00008', 'SF0012', 1000, '2020-06-28'),
('GPU00001', 'SF0010', 800, '2022-01-01'),
('GPU00002', 'SF0005', 4200, '2021-11-23'),
('GPU00006', 'SF0008', 5500, '2022-10-23'),
('GPU00004', 'SF0001', 2800, '2022-02-14'),
('GPU00005', 'SF0010', 1500, '2021-09-13'),
('GPU00009', 'SF0005', 1800, '2020-06-28'),
('GPU00007', 'SF0001', 3200, '2022-01-01'),
('GPU00010', 'SF0012', 500, '2021-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `integrators`
--

CREATE TABLE `integrators` (
  `Integrator_ID` varchar(10) NOT NULL,
  `Integrator_name` varchar(100) DEFAULT NULL,
  `Location_ID` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telephone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `integrators`
--

INSERT INTO `integrators` (`Integrator_ID`, `Integrator_name`, `Location_ID`, `Email`, `Telephone`) VALUES
('INT00001', 'Asus', 'BRUBELG', 'Nii.john@amd.com', '+1(802)847-8241'),
('INT00002', 'Dell', 'CORIRE', 'cena.sean@amd.com', '+1(570)313-4086'),
('INT00003', 'Lenovo', 'DUBIRE', 'chilling.bing@amd.com', '+1(660)999-6281'),
('INT00004', 'Acer', 'KEYENG', 'bay.michael@amd.com', '+1(704)634-1363'),
('INT00005', 'HP', 'EDIENG', 'sir.bruce@amd.com', '+1(568)719-6879'),
('INT00006', 'Corsair', 'KEYENG', 'post.malone@amd.com', '+1(357)9054222'),
('INT00007', 'MSI', 'BRUBELG', 'ronaldo.crista@amd.com', '+1(275)2831826'),
('INT00008', 'Razer', 'DUBIRE', 'keith.tay@amd.com', '+1(466)2267886'),
('INT00009', 'Gigabyte', 'CORIRE', 'julie.wilson@amd.com', '+1(802)888-7777'),
('INT00010', 'Intel', 'LIVENG', 'thomas.hardy@amd.com', '+1(570)123-4567'),
('INT00011', 'Zotac', 'BRUBELG', 'emily.doe@amd.com', '+1(660)111-2222'),
('INT00012', 'Samsung', 'DUBIRE', 'john.smith@amd.com', '+1(704)999-8888'),
('INT00013', 'Alienware', 'KEYENG', 'lisa.kim@amd.com', '+1(568)444-5555'),
('INT00014', 'CyberPowerPC', 'VALSPA', 'david.jones@amd.com', '+1(357)123-4567'),
('INT00015', 'Falcon Northwest', 'MANENG', 'samantha.green@amd.com', '+1(275)987-6543'),
('INT00016', 'Origin PC', 'DUBIRE', 'jennifer.white@amd.com', '+1(466)111-2222'),
('INT00017', 'Maingear', 'KEYENG', 'matt.brown@amd.com', '+1(802)333-4444'),
('INT00018', 'Velocity Micro', 'CORIRE', 'nick.johnson@amd.com', '+1(570)888-7777'),
('INT00019', 'Digital Storm', 'BARSPA', 'jason.lee@amd.com', '+1(660)555-6666'),
('INT00020', 'Puget Systems', 'DUBIRE', 'kate.wilson@amd.com', '+1(704)222-3333'),
('INT00021', 'CybertronPC', 'BARSPA', 'adam.rodriguez@amd.com', '+1(802)777-8888'),
('INT00022', 'AVADirect', 'BRUBELG', 'jessica.lee@amd.com', '+1(570)444-5555'),
('INT00023', 'Velocity Micro', 'LIVENG', 'brian.clark@amd.com', '+1(660)222-3333'),
('INT00024', 'Digital Storm', 'VALSPA', 'steve.brown@amd.com', '+1(704)999-8877'),
('INT00025', 'iBUYPOWER', 'KEYENG', 'anna.nguyen@amd.com', '+1(568)111-2222'),
('INT00026', 'CyberPowerPC', 'BRUBELG', 'james.smith@amd.com', '+1(357)444-5555'),
('INT00027', 'Alienware', 'CORIRE', 'laura.kim@amd.com', '+1(275)888-7777'),
('INT00028', 'Digital Storm', 'MANENG', 'mike.lee@amd.com', '+1(466)123-4567'),
('INT00029', 'Falcon Northwest', 'BARSPA', 'karen.wilson@amd.com', '+1(802)111-2222'),
('INT00030', 'Zotac', 'LIVENG', 'tom.hardy@amd.com', '+1(570)777-8888');

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `Employee_ID` varchar(10) NOT NULL,
  `Contract_end_date` date NOT NULL,
  `Stipend` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`Employee_ID`, `Contract_end_date`, `Stipend`) VALUES
('EMP00041', '2022-10-30', 500),
('EMP00042', '2023-02-16', 500),
('EMP00043', '2023-12-14', 500),
('EMP00044', '2022-07-10', 500),
('EMP00045', '2023-05-07', 600),
('EMP00046', '2023-06-30', 500),
('EMP00047', '2022-12-31', 600),
('EMP00048', '2023-09-15', 800),
('EMP00049', '2023-08-20', 800),
('EMP00050', '2023-02-28', 500);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_ID` varchar(10) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_ID`, `Country`, `City`) VALUES
('BARSPA', 'Spain', 'Barcelona'),
('BRUBELG', 'Belgium', 'Ireland'),
('CORIRE', 'Ireland', 'Cork'),
('DUBIRE', 'Ireland', 'Dublin'),
('EDIENG', 'England', 'Edinbrugh'),
('GLASCT', 'Scotland', 'Glasgow'),
('KEYENG', 'England', 'Milton Keynes'),
('LIVENG', 'England', 'Liverpool'),
('MANENG', 'England', 'Manchester'),
('VALSPA', 'Spain', 'Valencia');

-- --------------------------------------------------------

--
-- Table structure for table `marketingfinanceprojects`
--

CREATE TABLE `marketingfinanceprojects` (
  `Project_ID` varchar(10) NOT NULL,
  `Dept_Code` varchar(10) NOT NULL,
  `Campaign_Name` varchar(50) DEFAULT NULL,
  `Budget` float DEFAULT NULL,
  `Begin_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketingfinanceprojects`
--

INSERT INTO `marketingfinanceprojects` (`Project_ID`, `Dept_Code`, `Campaign_Name`, `Budget`, `Begin_Date`, `End_Date`) VALUES
('PR001', 'RD', 'Ryzen confidence booster', 45000, '2021-05-02', '2022-12-01'),
('PR002', 'RD', 'Software Recognition', 500000, '2021-02-09', '2022-12-01'),
('PR003', 'RD', 'Code with AMD', 7500000, '2021-04-02', '2022-12-01'),
('PR004', 'RD', 'We love AMD', 5500000, '2022-02-02', '2022-09-01'),
('PR005', 'RD', 'AMD share care', 5000000, '2020-06-02', '2021-11-01'),
('PR006', 'RD', 'CPU in College', 20000, '2020-04-02', '2021-12-01'),
('PR007', 'IT', 'Hackathon 2023', 1000000, '2023-02-01', '2023-04-30'),
('PR008', 'IT', 'Cloud Computing Conference', 2500000, '2023-05-01', '2023-06-30'),
('PR009', 'IT', 'Printers for Education', 5000000, '2023-01-01', '2023-12-31'),
('PR010', 'HR', 'Gaming Tournament', 3500000, '2023-06-01', '2023-08-31'),
('PR011', 'HR', 'Employee Health and Wellness Program', 2000000, '2023-01-01', '2023-12-31'),
('PR012', 'MFP', 'Financial Literacy Workshop', 500000, '2023-03-01', '2023-03-31'),
('PR013', 'MFP', 'Sales Kickoff Event', 1500000, '2023-01-15', '2023-01-16'),
('PR014', 'CS', 'Brand Awareness Campaign', 8000000, '2023-07-01', '2023-12-31'),
('PR015', 'IT', 'Cybersecurity Awareness Month', 3000000, '2023-10-01', '2023-10-31'),
('PR016', 'MFP', 'Budgeting Workshop', 250000, '2023-02-15', '2023-02-16'),
('PR017', 'RD', 'Accelerate Your Game', 4000000, '2023-06-01', '2023-08-31'),
('PR018', 'HR', 'Mental Health Awareness Program', 1500000, '2023-02-01', '2023-12-31'),
('PR019', 'MFP', 'Investment Seminar', 800000, '2023-04-01', '2023-04-30'),
('PR020', 'CS', 'Product Launch Event', 6000000, '2023-05-15', '2023-05-17'),
('PR021', 'RD', 'Gaming Laptop Giveaway', 2000000, '2023-08-01', '2023-08-31'),
('PR022', 'IT', 'Data Privacy Day', 1000000, '2023-01-28', '2023-01-28'),
('PR023', 'MFP', 'Retirement Planning Seminar', 500000, '2023-06-15', '2023-06-16'),
('PR024', 'CS', 'Customer Loyalty Program', 4000000, '2023-09-01', '2023-12-31'),
('PR025', 'IT', 'Cloud Security Conference', 2500000, '2023-11-01', '2023-11-03'),
('PR026', 'HR', 'Diversity and Inclusion Summit', 3000000, '2023-03-01', '2023-03-03'),
('PR027', 'MFP', 'Financial Planning Seminar', 750000, '2023-09-15', '2023-09-16'),
('PR028', 'RD', 'Mobile App Development Workshop', 1500000, '2023-04-01', '2023-04-02'),
('PR029', 'CS', 'Social Media Influencer Campaign', 4500000, '2023-02-01', '2023-03-31'),
('PR030', 'IT', 'Artificial Intelligence Summit', 5000000, '2023-07-01', '2023-07-03'),
('PR031', 'HR', 'Employee Onboarding Program', 3000000, '2023-05-01', '2023-12-31'),
('PR032', 'MFP', 'Investment Planning Seminar', 1000000, '2023-10-15', '2023-10-16'),
('PR033', 'RD', 'Virtual Reality Experience', 4000000, '2023-09-01', '2023-09-30'),
('PR034', 'IT', 'Internet of Things Conference', 3500000, '2023-04-01', '2023-04-03'),
('PR035', 'CS', 'Video Ad Campaign', 8000000, '2023-06-01', '2023-06-30'),
('PR036', 'MFP', 'Tax Planning Seminar', 600000, '2023-02-01', '2023-02-02'),
('PR037', 'RD', 'Gaming Community Meetup', 1000000, '2023-07-01', '2023-07-02'),
('PR038', 'IT', 'Blockchain Technology Seminar', 2000000, '2023-08-15', '2023-08-16'),
('PR039', 'HR', 'Leadership Development Program', 4000000, '2023-11-01', '2023-12-31'),
('PR040', 'CS', 'Social Media Influencer Campaign', 5000000, '2023-10-01', '2023-10-31'),
('PR041', 'MFP', 'Financial Planning Seminar', 800000, '2023-06-01', '2023-06-02'),
('PR042', 'RD', 'Robotics Symposium', 2000000, '2023-05-01', '2023-05-03'),
('PR043', 'IT', 'Artificial Intelligence Conference', 3000000, '2023-09-01', '2023-09-03'),
('PR044', 'HR', 'Diversity and Inclusion Initiative', 5000000, '2023-04-01', '2023-12-31'),
('PR045', 'CS', 'Product Launch Event', 1000000, '2023-07-15', '2023-07-16'),
('PR046', 'MFP', 'Investment Strategy Workshop', 400000, '2023-01-15', '2023-01-16'),
('PR047', 'RD', 'Science Fair', 600000, '2023-06-01', '2023-06-02'),
('PR048', 'IT', 'Cloud Computing Summit', 3500000, '2023-11-01', '2023-11-03'),
('PR049', 'HR', 'Employee Volunteer Program', 1500000, '2023-08-01', '2023-08-31'),
('PR050', 'CS', 'Holiday Advertising Campaign', 6000000, '2023-11-01', '2023-12-31'),
('PR051', 'RD', 'AMD Tech Days', 2500000, '2024-03-01', '2024-03-03'),
('PR052', 'IT', 'Cloud Security Workshop', 1000000, '2024-06-01', '2024-06-02'),
('PR053', 'HR', 'Leadership Development Program', 5000000, '2024-01-01', '2024-12-31'),
('PR054', 'MFP', 'Retirement Income Planning Seminar', 750000, '2024-02-15', '2024-02-16'),
('PR055', 'CS', 'Social Media Contest', 3000000, '2024-05-01', '2024-05-31'),
('PR056', 'RD', 'Game Optimization Workshop', 2000000, '2024-08-01', '2024-08-02'),
('PR057', 'IT', 'Data Science Conference', 5000000, '2024-09-01', '2024-09-03'),
('PR058', 'HR', 'Mental Health Support Program', 1500000, '2024-02-01', '2024-12-31'),
('PR059', 'MFP', 'Estate Planning Seminar', 1000000, '2024-06-15', '2024-06-16'),
('PR060', 'CS', 'Product Demo Day', 4000000, '2024-07-01', '2024-07-02'),
('PR061', 'RD', 'Overclocking Workshop', 1500000, '2024-05-01', '2024-05-02'),
('PR062', 'IT', 'Blockchain Summit', 6000000, '2024-11-01', '2024-11-03'),
('PR063', 'HR', 'Employee Recognition Program', 3000000, '2024-01-01', '2024-12-31'),
('PR064', 'MFP', 'Savings Planning Seminar', 500000, '2024-08-15', '2024-08-16'),
('PR065', 'CS', 'Influencer Takeover', 4500000, '2024-03-01', '2024-03-31'),
('PR066', 'RD', 'Gaming Championship', 4000000, '2024-09-01', '2024-09-30'),
('PR067', 'IT', 'Virtual Reality Symposium', 3500000, '2024-05-01', '2024-05-03'),
('PR068', 'HR', 'Team Building Program', 2500000, '2024-02-01', '2024-12-31'),
('PR069', 'MFP', 'Investment Strategies Seminar', 1200000, '2024-09-15', '2024-09-16'),
('PR070', 'CS', 'In-Game Advertising Campaign', 7000000, '2024-06-01', '2024-06-30'),
('PR071', 'RD', 'Game Development Workshop', 2000000, '2024-04-01', '2024-04-02'),
('PR072', 'IT', 'Big Data Conference', 4500000, '2024-10-01', '2024-10-03'),
('PR073', 'HR', 'Career Development Program', 3000000, '2024-01-01', '2024-12-31'),
('PR074', 'MFP', 'Retirement Planning Strategies Seminar', 600000, '2024-07-15', '2024-07-16'),
('PR075', 'CS', 'Digital Marketing Campaign', 8000000, '2024-08-01', '2024-08-31'),
('PR076', 'IT', 'Blockchain Symposium', 2000000, '2023-02-15', '2023-02-16'),
('PR077', 'RD', 'PC Building Contest', 1500000, '2023-03-01', '2023-03-31'),
('PR078', 'HR', 'Leadership Development Program', 3000000, '2023-06-01', '2023-08-31'),
('PR079', 'MFP', 'Savings Challenge', 500000, '2023-02-01', '2023-03-31'),
('PR080', 'CS', 'Online Sales Promotion', 4000000, '2023-04-01', '2023-05-31'),
('PR081', 'IT', 'Machine Learning Workshop', 2000000, '2023-09-01', '2023-09-02'),
('PR082', 'RD', 'Gaming Expo', 5000000, '2023-07-01', '2023-07-03'),
('PR083', 'HR', 'Employer Branding Campaign', 3500000, '2023-01-01', '2023-12-31'),
('PR084', 'MFP', 'Retirement Savings Challenge', 750000, '2023-11-01', '2023-12-31'),
('PR085', 'CS', 'Product Demo Day', 2000000, '2023-08-01', '2023-08-02'),
('PR086', 'IT', 'Cloud Migration Seminar', 2500000, '2023-06-01', '2023-06-02'),
('PR087', 'RD', 'Game Development Contest', 3000000, '2023-05-01', '2023-05-31'),
('PR088', 'HR', 'Diversity and Inclusion Training', 2000000, '2023-04-01', '2023-04-30'),
('PR089', 'MFP', 'Financial Planning Challenge', 500000, '2023-07-01', '2023-07-31'),
('PR090', 'CS', 'Social Media Advertising Campaign', 5000000, '2023-09-01', '2023-10-31'),
('PR091', 'IT', 'IT Infrastructure Upgrade', 10000000, '2023-01-01', '2023-12-31'),
('PR092', 'RD', 'Game Streaming Event', 2500000, '2023-08-01', '2023-08-31'),
('PR093', 'HR', 'Employee Feedback Program', 1500000, '2023-02-01', '2023-12-31'),
('PR094', 'MFP', 'Stock Trading Competition', 1000000, '2023-03-01', '2023-03-31'),
('PR095', 'CS', 'Influencer Marketing Campaign', 6000000, '2023-11-01', '2023-12-31'),
('PR096', 'RD', 'Overclocking Workshop', 1500000, '2023-03-01', '2023-03-31'),
('PR097', 'RD', 'Gaming Convention', 7000000, '2023-07-01', '2023-07-03'),
('PR098', 'IT', 'Blockchain Conference', 4500000, '2023-08-01', '2023-08-03'),
('PR099', 'HR', 'Flexible Work Arrangements Program', 2500000, '2023-03-01', '2023-12-31'),
('PR100', 'MFP', 'Financial Reporting Workshop', 500000, '2023-06-01', '2023-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `parttime`
--

CREATE TABLE `parttime` (
  `Employee_ID` varchar(10) NOT NULL,
  `Contract_end_date` date NOT NULL,
  `Salary` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parttime`
--

INSERT INTO `parttime` (`Employee_ID`, `Contract_end_date`, `Salary`) VALUES
('EMP00021', '2024-12-30', 9500),
('EMP00022', '2023-03-29', 7520),
('EMP00023', '2023-02-13', 9100),
('EMP00024', '2023-04-10', 9999),
('EMP00025', '2025-11-03', 4500),
('EMP00026', '2024-07-15', 8000),
('EMP00027', '2023-08-20', 6000),
('EMP00028', '2024-02-10', 8500),
('EMP00029', '2022-09-30', 7000),
('EMP00030', '2023-11-12', 6000),
('EMP00031', '2023-05-05', 5500),
('EMP00032', '2025-01-01', 9000),
('EMP00033', '2024-10-21', 6500),
('EMP00034', '2023-09-15', 5000),
('EMP00035', '2022-06-30', 7500),
('EMP00036', '2023-07-28', 7000),
('EMP00037', '2024-06-10', 8000),
('EMP00038', '2025-03-05', 5500),
('EMP00039', '2022-12-15', 6500),
('EMP00040', '2024-09-01', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `rd_projects`
--

CREATE TABLE `rd_projects` (
  `Hardware_ID` varchar(10) NOT NULL,
  `Release_Status` tinyint(1) NOT NULL,
  `Launch_Date` date NOT NULL,
  `Mobile_Desktop` tinyint(1) NOT NULL,
  `MSRP` float DEFAULT NULL,
  `Dept_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rd_projects`
--

INSERT INTO `rd_projects` (`Hardware_ID`, `Release_Status`, `Launch_Date`, `Mobile_Desktop`, `MSRP`, `Dept_Code`) VALUES
('CPU00001', 1, '2021-02-02', 1, 240, 'RD'),
('CPU00002', 1, '2022-02-02', 1, 239, 'RD'),
('CPU00003', 1, '2020-12-12', 1, 120, 'RD'),
('CPU00004', 1, '2021-06-17', 1, 340, 'RD'),
('CPU00005', 1, '2019-07-02', 1, 250, 'RD'),
('CPU00006', 1, '2020-08-07', 0, 334, 'RD'),
('CPU00007', 1, '2022-02-02', 0, 314, 'RD'),
('CPU00008', 1, '2020-09-06', 0, 190, 'RD'),
('CPU00009', 0, '2024-12-10', 0, 230, 'RD'),
('CPU00010', 0, '2024-12-10', 0, 330, 'RD'),
('CPU00011', 0, '2024-05-01', 0, 200, 'RD'),
('CPU00012', 0, '2024-07-15', 0, 300, 'RD'),
('CPU00013', 0, '2023-11-11', 0, 150, 'RD'),
('CPU00014', 1, '2022-03-22', 1, 280, 'RD'),
('CPU00015', 1, '2023-01-11', 1, 320, 'RD'),
('CPU00016', 1, '2021-09-17', 1, 230, 'RD'),
('CPU00017', 1, '2022-06-20', 0, 180, 'RD'),
('CPU00018', 1, '2021-12-25', 0, 250, 'RD'),
('CPU00019', 0, '2024-02-15', 0, 170, 'RD'),
('CPU00020', 0, '2024-03-01', 0, 290, 'RD'),
('CPU00021', 0, '2024-08-01', 0, 280, 'RD'),
('CPU00022', 0, '2024-09-01', 0, 350, 'RD'),
('CPU00023', 0, '2023-11-01', 0, 200, 'RD'),
('CPU00024', 1, '2022-04-01', 1, 380, 'RD'),
('CPU00025', 1, '2023-03-01', 1, 420, 'RD'),
('CPU00026', 1, '2021-10-01', 1, 330, 'RD'),
('CPU00027', 1, '2022-07-01', 0, 260, 'RD'),
('CPU00028', 1, '2022-01-01', 0, 310, 'RD'),
('CPU00029', 0, '2024-01-01', 0, 180, 'RD'),
('CPU00030', 0, '2024-06-01', 0, 290, 'RD'),
('GPU00001', 1, '2020-04-02', 1, 560, 'RD'),
('GPU00002', 1, '2022-09-02', 1, 420, 'RD'),
('GPU00003', 1, '2020-05-02', 1, 230, 'RD'),
('GPU00004', 1, '2021-04-12', 1, 400, 'RD'),
('GPU00005', 1, '2022-05-02', 0, 420, 'RD'),
('GPU00006', 1, '2021-05-14', 0, 600, 'RD'),
('GPU00007', 1, '2021-02-02', 0, 350, 'RD'),
('GPU00008', 0, '2022-12-02', 0, 340, 'RD'),
('GPU00009', 0, '2026-04-09', 0, 540, 'RD'),
('GPU00010', 0, '2025-11-01', 0, 320, 'RD'),
('GPU00011', 1, '2022-02-14', 1, 450, 'RD'),
('GPU00012', 1, '2021-07-21', 1, 350, 'RD'),
('GPU00013', 1, '2022-03-19', 1, 570, 'RD'),
('GPU00014', 1, '2023-05-25', 1, 650, 'RD'),
('GPU00015', 1, '2021-12-05', 1, 430, 'RD'),
('GPU00016', 0, '2023-09-01', 0, 450, 'RD'),
('GPU00017', 0, '2024-08-01', 0, 530, 'RD'),
('GPU00018', 0, '2025-02-01', 0, 670, 'RD'),
('GPU00019', 0, '2026-01-01', 0, 720, 'RD'),
('GPU00020', 0, '2026-07-01', 0, 560, 'RD'),
('GPU00021', 1, '2022-06-01', 1, 500, 'RD'),
('GPU00022', 1, '2021-09-01', 1, 310, 'RD'),
('GPU00023', 1, '2022-04-01', 1, 210, 'RD'),
('GPU00024', 1, '2023-06-01', 1, 690, 'RD'),
('GPU00025', 1, '2022-01-01', 1, 410, 'RD'),
('GPU00026', 0, '2023-10-01', 0, 430, 'RD'),
('GPU00027', 0, '2024-09-01', 0, 520, 'RD'),
('GPU00028', 0, '2025-03-01', 0, 670, 'RD'),
('GPU00029', 0, '2026-02-01', 0, 720, 'RD'),
('GPU00030', 0, '2026-08-01', 0, 550, 'RD');

-- --------------------------------------------------------

--
-- Table structure for table `storefront_partners`
--

CREATE TABLE `storefront_partners` (
  `Storefront_ID` varchar(10) NOT NULL,
  `Store_name` varchar(100) DEFAULT NULL,
  `Date_engaged` date DEFAULT NULL,
  `Location_ID` varchar(10) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Telephone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storefront_partners`
--

INSERT INTO `storefront_partners` (`Storefront_ID`, `Store_name`, `Date_engaged`, `Location_ID`, `Email`, `Telephone`) VALUES
('SF0001', 'Starlite', '2018-10-20', 'CORIRE', 'starlite@gmail.com', '0245678954'),
('SF0002', 'Telefonika', '2015-10-20', 'DUBIRE', 'telefonika@gmail.com', '0255670954'),
('SF0003', 'Amazon', '2014-10-20', 'EDIENG', 'amazon@gmail.com', '0598770931'),
('SF0004', 'Bestbuy', '2020-10-20', 'KEYENG', 'bestbuy@yahoo.com', '0123459809'),
('SF0005', 'CanWest', '2022-10-20', 'BRUBELG', 'canwest@icloud.com', '0559871134'),
('SF0006', 'Microcenter', '2019-10-20', 'MANENG', 'microcenter@gmail.com', '0423570897'),
('SF0007', 'Newegg', '2015-09-20', 'LIVENG', 'newegg@yahoo.com', '0577789902'),
('SF0008', 'Overclockers UK', '2017-10-20', 'EDIENG', 'overclockers@yahoo.com', '0132567890'),
('SF0009', 'PC World', '2021-01-20', 'DUBIRE', 'pcworld@hotmail.com', '0793456721'),
('SF0010', 'Scan Computers', '2016-07-20', 'VALSPA', 'scancomputers@gmail.com', '0189267389'),
('SF0011', 'Gamestop', '2013-11-20', 'MANENG', 'gamestop@yahoo.com', '0557893412'),
('SF0012', 'Bestit', '2018-06-20', 'GLASCT', 'bestit@gmail.com', '0298765432'),
('SF0013', 'Computer Alliance', '2014-04-20', 'BARSPA', 'computeraliance@gmail.com', '0756789012'),
('SF0014', 'NCIX', '2012-10-20', 'CORIRE', 'ncix@yahoo.com', '0412345678'),
('SF0015', 'Fry\'s Electronics', '2016-03-20', 'BARSPA', 'fryselectronics@gmail.com', '0887654321'),
('SF0016', 'B&H Photo Video', '2018-10-20', 'MANENG', 'bandh@yahoo.com', '0234567890'),
('SF0017', 'Central Computers', '2019-08-20', 'BRUBELG', 'centralcomputers@gmail.com', '0432567890'),
('SF0018', 'CCL Computers', '2020-05-20', 'BARSPA', 'cclcomputers@hotmail.com', '0198723456'),
('SF0019', 'Currys PC World', '2017-12-20', 'BARSPA', 'curryspcworld@gmail.com', '0798765432'),
('SF0020', 'PC Case Gear', '2015-02-20', 'CORIRE', 'pccasegear@yahoo.com', '0312456789'),
('SF0021', 'AMD', '2000-10-20', 'EDIENG', 'amd@hotmail.com', '0554471134'),
('SF0022', 'Gigabyte', '2013-11-20', 'DUBIRE', 'gigabyte@gmail.com', '0156789432'),
('SF0023', 'EVGA', '2015-02-20', 'LIVENG', 'evga@yahoo.com', '0223456789'),
('SF0024', 'Corsair', '2018-06-20', 'MANENG', 'corsair@gmail.com', '0445678901'),
('SF0025', 'ASUS', '2014-04-20', 'BARSPA', 'asus@gmail.com', '0112345678'),
('SF0026', 'NZXT', '2016-03-20', 'BRUBELG', 'nzxt@hotmail.com', '0334567890'),
('SF0027', 'MSI', '2012-10-20', 'CORIRE', 'msi@yahoo.com', '0557890123'),
('SF0028', 'Thermaltake', '2017-12-20', 'GLASCT', 'thermaltake@gmail.com', '0756789123'),
('SF0029', 'Intel', '2015-10-20', 'BARSPA', 'intel@hotmail.com', '0912345678'),
('SF0030', 'Western Digital', '2020-05-20', 'DUBIRE', 'western_digital@gmail.com', '0998765432'),
('SF0031', 'Seagate', '2016-07-20', 'CORIRE', 'seagate@hotmail.com', '0412345679'),
('SF0032', 'Crucial', '2014-10-20', 'BRUBELG', 'crucial@yahoo.com', '0556789012'),
('SF0033', 'Kingston', '2019-08-20', 'LIVENG', 'kingston@gmail.com', '0434567890'),
('SF0034', 'G.Skill', '2018-10-20', 'MANENG', 'gskill@yahoo.com', '0213456789'),
('SF0035', 'Cooler Master', '2013-11-20', 'VALSPA', 'coolermaster@gmail.com', '0557890153'),
('SF0036', 'be quiet!', '2016-03-20', 'BARSPA', 'bequiet@yahoo.com', '0998765434'),
('SF0037', 'Fractal Design', '2017-10-20', 'MANENG', 'fractaldesign@gmail.com', '0234567800'),
('SF0038', 'Noctua', '2015-09-20', 'DUBIRE', 'noctua@yahoo.com', '0577789012'),
('SF0039', 'EKWB', '2018-10-20', 'GLASCT', 'ekwb@gmail.com', '0134567890'),
('SF0040', 'Samsung', '2019-10-20', 'BRUBELG', 'samsung@hotmail.com', '0898765432');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `User_password` varchar(255) NOT NULL,
  `User_role` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `FName`, `LName`, `User_name`, `User_password`, `User_role`) VALUES
(1, 'Deborah', 'Boateng', 'dboateng', '123', '2'),
(2, 'Michelle', 'Ansah', 'mansah', '123', '2'),
(3, 'Mathew', 'Davis', 'mdavis', '123', '1'),
(4, 'Nana', 'Osei', 'nosei', '123', '1'),
(5, 'Tasha', 'Kent', 'tkent', '123', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_ID`),
  ADD UNIQUE KEY `Branch_Name` (`Branch_Name`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `cpu_details`
--
ALTER TABLE `cpu_details`
  ADD KEY `Hardware_ID` (`Hardware_ID`);

--
-- Indexes for table `cpu_fabricatorpartners`
--
ALTER TABLE `cpu_fabricatorpartners`
  ADD KEY `Hardware_ID` (`Hardware_ID`),
  ADD KEY `Fabricator_ID` (`Fabricator_ID`);

--
-- Indexes for table `cpu_integrators`
--
ALTER TABLE `cpu_integrators`
  ADD KEY `Integrator_ID` (`Integrator_ID`),
  ADD KEY `Hardware_ID` (`Hardware_ID`);

--
-- Indexes for table `cpu_storefront_partners`
--
ALTER TABLE `cpu_storefront_partners`
  ADD KEY `Hardware_ID` (`Hardware_ID`),
  ADD KEY `Storefront_ID` (`Storefront_ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Dept_Code`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD UNIQUE KEY `Company_Email` (`Company_Email`),
  ADD UNIQUE KEY `Personal_Email` (`Personal_Email`),
  ADD KEY `Dept_Code` (`Dept_Code`);

--
-- Indexes for table `fabricator_partners`
--
ALTER TABLE `fabricator_partners`
  ADD PRIMARY KEY (`Fabricator_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Telephone` (`Telephone`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `fulltime`
--
ALTER TABLE `fulltime`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `gpu_details`
--
ALTER TABLE `gpu_details`
  ADD KEY `Hardware_ID` (`Hardware_ID`);

--
-- Indexes for table `gpu_fabricatorpartners`
--
ALTER TABLE `gpu_fabricatorpartners`
  ADD KEY `Hardware_ID` (`Hardware_ID`),
  ADD KEY `Fabricator_ID` (`Fabricator_ID`);

--
-- Indexes for table `gpu_integrators`
--
ALTER TABLE `gpu_integrators`
  ADD KEY `Hardware_ID` (`Hardware_ID`),
  ADD KEY `Integrator_ID` (`Integrator_ID`);

--
-- Indexes for table `gpu_storefront_partners`
--
ALTER TABLE `gpu_storefront_partners`
  ADD KEY `Hardware_ID` (`Hardware_ID`),
  ADD KEY `Storefront_ID` (`Storefront_ID`);

--
-- Indexes for table `integrators`
--
ALTER TABLE `integrators`
  ADD PRIMARY KEY (`Integrator_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Telephone` (`Telephone`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Indexes for table `marketingfinanceprojects`
--
ALTER TABLE `marketingfinanceprojects`
  ADD PRIMARY KEY (`Project_ID`),
  ADD KEY `Dept_Code` (`Dept_Code`);

--
-- Indexes for table `parttime`
--
ALTER TABLE `parttime`
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `rd_projects`
--
ALTER TABLE `rd_projects`
  ADD PRIMARY KEY (`Hardware_ID`),
  ADD KEY `Dept_Code` (`Dept_Code`);

--
-- Indexes for table `storefront_partners`
--
ALTER TABLE `storefront_partners`
  ADD PRIMARY KEY (`Storefront_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Telephone` (`Telephone`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cpu_details`
--
ALTER TABLE `cpu_details`
  ADD CONSTRAINT `cpu_details_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`);

--
-- Constraints for table `cpu_fabricatorpartners`
--
ALTER TABLE `cpu_fabricatorpartners`
  ADD CONSTRAINT `cpu_fabricatorpartners_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`),
  ADD CONSTRAINT `cpu_fabricatorpartners_ibfk_2` FOREIGN KEY (`Fabricator_ID`) REFERENCES `fabricator_partners` (`Fabricator_ID`);

--
-- Constraints for table `cpu_integrators`
--
ALTER TABLE `cpu_integrators`
  ADD CONSTRAINT `cpu_integrators_ibfk_1` FOREIGN KEY (`Integrator_ID`) REFERENCES `integrators` (`Integrator_ID`),
  ADD CONSTRAINT `cpu_integrators_ibfk_2` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`);

--
-- Constraints for table `cpu_storefront_partners`
--
ALTER TABLE `cpu_storefront_partners`
  ADD CONSTRAINT `cpu_storefront_partners_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`),
  ADD CONSTRAINT `cpu_storefront_partners_ibfk_2` FOREIGN KEY (`Storefront_ID`) REFERENCES `storefront_partners` (`Storefront_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Dept_Code`) REFERENCES `departments` (`Dept_Code`);

--
-- Constraints for table `fabricator_partners`
--
ALTER TABLE `fabricator_partners`
  ADD CONSTRAINT `fabricator_partners_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`);

--
-- Constraints for table `fulltime`
--
ALTER TABLE `fulltime`
  ADD CONSTRAINT `fulltime_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `gpu_details`
--
ALTER TABLE `gpu_details`
  ADD CONSTRAINT `gpu_details_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`);

--
-- Constraints for table `gpu_fabricatorpartners`
--
ALTER TABLE `gpu_fabricatorpartners`
  ADD CONSTRAINT `gpu_fabricatorpartners_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`),
  ADD CONSTRAINT `gpu_fabricatorpartners_ibfk_2` FOREIGN KEY (`Fabricator_ID`) REFERENCES `fabricator_partners` (`Fabricator_ID`);

--
-- Constraints for table `gpu_integrators`
--
ALTER TABLE `gpu_integrators`
  ADD CONSTRAINT `gpu_integrators_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`),
  ADD CONSTRAINT `gpu_integrators_ibfk_2` FOREIGN KEY (`Integrator_ID`) REFERENCES `integrators` (`Integrator_ID`);

--
-- Constraints for table `gpu_storefront_partners`
--
ALTER TABLE `gpu_storefront_partners`
  ADD CONSTRAINT `gpu_storefront_partners_ibfk_1` FOREIGN KEY (`Hardware_ID`) REFERENCES `rd_projects` (`Hardware_ID`),
  ADD CONSTRAINT `gpu_storefront_partners_ibfk_2` FOREIGN KEY (`Storefront_ID`) REFERENCES `storefront_partners` (`Storefront_ID`);

--
-- Constraints for table `integrators`
--
ALTER TABLE `integrators`
  ADD CONSTRAINT `integrators_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`);

--
-- Constraints for table `intern`
--
ALTER TABLE `intern`
  ADD CONSTRAINT `intern_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `marketingfinanceprojects`
--
ALTER TABLE `marketingfinanceprojects`
  ADD CONSTRAINT `marketingfinanceprojects_ibfk_1` FOREIGN KEY (`Dept_Code`) REFERENCES `departments` (`Dept_Code`);

--
-- Constraints for table `parttime`
--
ALTER TABLE `parttime`
  ADD CONSTRAINT `parttime_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `rd_projects`
--
ALTER TABLE `rd_projects`
  ADD CONSTRAINT `rd_projects_ibfk_1` FOREIGN KEY (`Dept_Code`) REFERENCES `departments` (`Dept_Code`);

--
-- Constraints for table `storefront_partners`
--
ALTER TABLE `storefront_partners`
  ADD CONSTRAINT `storefront_partners_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
