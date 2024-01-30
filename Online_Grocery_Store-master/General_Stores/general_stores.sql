

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `added_date`, `email`, `password`, `name`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `mrp_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `price`, `quantity`, `total_price`, `customer_id`, `product_id`, `mrp_price`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `contact_date` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_date`, `email`, `message`, `name`, `subject`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `valid` bit(1) NOT NULL,
  `pin_code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `address`, `added_date`, `email`, `gender`, `name`, `password`, `phone`, `valid`, `pin_code`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `amount` double NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_address_type` varchar(15) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_num` int(11) NOT NULL,
  `pin_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `active`, `amount`, `customer_address`, `customer_address_type`, `customer_email`, `customer_name`, `customer_phone`, `order_date`, `order_num`, `pin_code`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_status` varchar(25) NOT NULL,
  `mrp_price` double NOT NULL,
  `payment_mode` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `amount`, `price`, `quantity`, `order_id`, `product_id`, `payment_id`, `order_status`, `mrp_price`, `payment_mode`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `code` varchar(5) NOT NULL,
  `create_date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `mrp_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `active`, `code`, `create_date`, `description`, `image`, `name`, `price`, `mrp_price`) VALUES


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CART_CUST_FK` (`customer_id`),
  ADD KEY `CART_PROD_FK` (`product_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  ADD UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_o6e714ot0hclyvhlcte6vc4mr` (`order_num`),
  ADD UNIQUE KEY `UKo6e714ot0hclyvhlcte6vc4mr` (`order_num`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ORDER_DETAIL_ORD_FK` (`order_id`),
  ADD KEY `ORDER_DETAIL_PROD_FK` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
