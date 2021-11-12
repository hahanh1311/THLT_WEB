SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `biz_categories`
--

CREATE TABLE `biz_categories` (
  `BusinessID` varchar(255) NOT NULL,
  `cartID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `BusinessID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Telephone` int(12) NOT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cartID` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biz_categories`
--
ALTER TABLE `biz_categories`
  ADD KEY `pk_category` (`cartID`),
  ADD KEY `pk_bus` (`BusinessID`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`BusinessID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cartID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biz_categories`
--
ALTER TABLE `biz_categories`
  ADD CONSTRAINT `pk_bus` FOREIGN KEY (`BusinessID`) REFERENCES `businesses` (`BusinessID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pk_category` FOREIGN KEY (`cartID`) REFERENCES `categories` (`cartID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
