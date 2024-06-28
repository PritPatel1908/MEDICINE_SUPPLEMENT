-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 03:33 PM
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
-- Database: `medicine_supplement`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add offer', 8, 'add_offer'),
(30, 'Can change offer', 8, 'change_offer'),
(31, 'Can delete offer', 8, 'delete_offer'),
(32, 'Can view offer', 8, 'view_offer'),
(33, 'Can add user', 9, 'add_users'),
(34, 'Can change user', 9, 'change_users'),
(35, 'Can delete user', 9, 'delete_users'),
(36, 'Can view user', 9, 'view_users'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add delivery address', 11, 'add_deliveryaddress'),
(42, 'Can change delivery address', 11, 'change_deliveryaddress'),
(43, 'Can delete delivery address', 11, 'delete_deliveryaddress'),
(44, 'Can view delivery address', 11, 'view_deliveryaddress'),
(45, 'Can add feedback', 12, 'add_feedback'),
(46, 'Can change feedback', 12, 'change_feedback'),
(47, 'Can delete feedback', 12, 'delete_feedback'),
(48, 'Can view feedback', 12, 'view_feedback'),
(49, 'Can add notification', 13, 'add_notification'),
(50, 'Can change notification', 13, 'change_notification'),
(51, 'Can delete notification', 13, 'delete_notification'),
(52, 'Can view notification', 13, 'view_notification'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add order_ detail', 15, 'add_order_detail'),
(58, 'Can change order_ detail', 15, 'change_order_detail'),
(59, 'Can delete order_ detail', 15, 'delete_order_detail'),
(60, 'Can view order_ detail', 15, 'view_order_detail'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add prescription', 17, 'add_prescription'),
(66, 'Can change prescription', 17, 'change_prescription'),
(67, 'Can delete prescription', 17, 'delete_prescription'),
(68, 'Can view prescription', 17, 'view_prescription'),
(69, 'Can add prescription_ detail', 18, 'add_prescription_detail'),
(70, 'Can change prescription_ detail', 18, 'change_prescription_detail'),
(71, 'Can delete prescription_ detail', 18, 'delete_prescription_detail'),
(72, 'Can view prescription_ detail', 18, 'view_prescription_detail'),
(73, 'Can add product', 19, 'add_product'),
(74, 'Can change product', 19, 'change_product'),
(75, 'Can delete product', 19, 'delete_product'),
(76, 'Can view product', 19, 'view_product'),
(77, 'Can add cart_ detail', 20, 'add_cart_detail'),
(78, 'Can change cart_ detail', 20, 'change_cart_detail'),
(79, 'Can delete cart_ detail', 20, 'delete_cart_detail'),
(80, 'Can view cart_ detail', 20, 'view_cart_detail'),
(81, 'Can add sub_ category', 21, 'add_sub_category'),
(82, 'Can change sub_ category', 21, 'change_sub_category'),
(83, 'Can delete sub_ category', 21, 'delete_sub_category'),
(84, 'Can view sub_ category', 21, 'view_sub_category'),
(85, 'Can add product_ review', 22, 'add_product_review'),
(86, 'Can change product_ review', 22, 'change_product_review'),
(87, 'Can delete product_ review', 22, 'delete_product_review'),
(88, 'Can view product_ review', 22, 'view_product_review');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'medicine_supplement_app', 'cart'),
(20, 'medicine_supplement_app', 'cart_detail'),
(6, 'medicine_supplement_app', 'category'),
(7, 'medicine_supplement_app', 'company'),
(11, 'medicine_supplement_app', 'deliveryaddress'),
(12, 'medicine_supplement_app', 'feedback'),
(13, 'medicine_supplement_app', 'notification'),
(8, 'medicine_supplement_app', 'offer'),
(14, 'medicine_supplement_app', 'order'),
(15, 'medicine_supplement_app', 'order_detail'),
(16, 'medicine_supplement_app', 'payment'),
(17, 'medicine_supplement_app', 'prescription'),
(18, 'medicine_supplement_app', 'prescription_detail'),
(19, 'medicine_supplement_app', 'product'),
(22, 'medicine_supplement_app', 'product_review'),
(21, 'medicine_supplement_app', 'sub_category'),
(9, 'medicine_supplement_app', 'users'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-28 13:27:56.595948'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-06-28 13:27:56.620301'),
(3, 'auth', '0001_initial', '2024-06-28 13:27:56.762358'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-06-28 13:27:56.803755'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-06-28 13:27:56.803755'),
(6, 'auth', '0004_alter_user_username_opts', '2024-06-28 13:27:56.818492'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-06-28 13:27:56.824957'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-06-28 13:27:56.828194'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-28 13:27:56.838989'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-06-28 13:27:56.847471'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-28 13:27:56.856131'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-06-28 13:27:56.866474'),
(13, 'auth', '0011_update_proxy_permissions', '2024-06-28 13:27:56.875726'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-28 13:27:56.883996'),
(15, 'medicine_supplement_app', '0001_initial', '2024-06-28 13:27:57.669829'),
(16, 'admin', '0001_initial', '2024-06-28 13:27:57.750474'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-06-28 13:27:57.765804'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-28 13:27:57.865611'),
(19, 'medicine_supplement_app', '0002_product_review', '2024-06-28 13:27:57.993451'),
(20, 'medicine_supplement_app', '0003_order_razorpay_order_id_payment_razorpay_payment_id_and_more', '2024-06-28 13:27:58.078917'),
(21, 'medicine_supplement_app', '0004_payment_razorpay_order_id_alter_payment_order', '2024-06-28 13:27:58.243010'),
(22, 'medicine_supplement_app', '0005_remove_payment_payment_status', '2024-06-28 13:27:58.278061'),
(23, 'medicine_supplement_app', '0006_payment_payment_status', '2024-06-28 13:27:58.303033'),
(24, 'sessions', '0001_initial', '2024-06-28 13:27:58.345534');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_cart`
--

CREATE TABLE `medicine_supplement_app_cart` (
  `cart_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_cart_detail`
--

CREATE TABLE `medicine_supplement_app_cart_detail` (
  `cart_detail_id` bigint(20) NOT NULL,
  `cart_quantity` int(11) DEFAULT NULL,
  `cart_product_price` int(11) DEFAULT NULL,
  `cart_total_price` int(11) DEFAULT NULL,
  `prescription_status` int(11) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_category`
--

CREATE TABLE `medicine_supplement_app_category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `category_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_category`
--

INSERT INTO `medicine_supplement_app_category` (`category_id`, `category_name`, `category_img`) VALUES
(1, 'Ayush', 'media/category_img/Ayush.jpeg'),
(2, 'Fitness', 'media/category_img/Fitness.jpeg'),
(3, 'Treatments', 'media/category_img/Treatments.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_company`
--

CREATE TABLE `medicine_supplement_app_company` (
  `company_id` bigint(20) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_owner_name` varchar(150) DEFAULT NULL,
  `company_owner_email` varchar(150) DEFAULT NULL,
  `company_owner_phone` varchar(150) DEFAULT NULL,
  `company_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_company`
--

INSERT INTO `medicine_supplement_app_company` (`company_id`, `company_name`, `company_owner_name`, `company_owner_email`, `company_owner_phone`, `company_address`) VALUES
(1, 'Rusan Health Care Pvt Ltd', 'Rusan Health Care Pvt Ltd', 'addiction@rhcpl.com', '91123456789', '58-D, Government Industrial Estate,Charkop, Kandivali (West),Mumbai 400 067,Maharashtra'),
(2, 'Aimil Pharmaceuticals (India) Limited', 'Aimil Pharmaceuticals (India) Limited', 'corporate@aimilpharmaceuticals.com', '011-66410000 , 011-25703613', '29794A, 1st Floor, Ranjit Nagar, Near HPK Library, New Delhi-110008'),
(3, 'Sanofi India Limited', 'Sanofi India Limited', 'sanofiindialimited@gmail.com', '+91-7200712345', 'CTS No.117-B L & T Business Park, Saki Vihar Rd, Powai, Mumbai, Maharashtra 400072'),
(4, 'Dabur India Ltd', 'Dabur India Ltd', 'daburcares@dabur.com', '+91-18001031644', '6/3, Asal Ali Road, New Delhi-110002'),
(5, 'Heinz India Pvt Ltd', 'Heinz India Pvt Ltd', 'customercare@zyduswellness.com', '1800 120 6868', 'D-Shivsagar, 7th & 8th Floors, Dr. Annie Besant Road, Worli, Mumbai, Maharashtra 400018'),
(6, 'The Himalaya Drug Company', 'The Himalaya Drug Company', 'care@himalayawellness.com', '1800-208-1930', 'Makali, Bangalore-562162'),
(7, 'Inlife Pharma Private Limited', 'Inlife Pharma Private Limited', 'customercare@inlifehealthcare.com', '8008700222', 'INLIFE Pharma Pvt. Ltd. 110A ,liberty plaza Himayatnagar, Hyderabad, Telangana -500029 INDIA, Email ID : customercare@inlifehealthcare.com , contact no: +91 8008700222'),
(8, 'Adret Retail Pvt Ltd, (Kapiva)', 'Adret Retail Pvt Ltd, (Kapiva)', 'info@kapiva.in', '91-8080177000', 'Regd. Office: 1 Gupta Lane, Kolkata- 700006'),
(9, 'Kerala Ayurveda Ltd', 'Kerala Ayurveda Ltd', 'customercare@keralaayurveda.biz', '1800-103-5790', 'Shop No.IX/285M Panayikulam Post-Alangad Ernakulam 683511'),
(10, 'Bright Lifecare Pvt Ltd', 'Bright Lifecare Pvt Ltd', 'care@healthkart.com', '0124-461-64444', 'Bright lifecare pvt. Ltd Parsvnath Arcadia MG Road sector 14 Gurugram Haryana 122001'),
(11, 'Swati Spentose Pvt Ltd', 'Swati Spentose Pvt Ltd', 'communications@spentose.com', '18002094044', '114, Marine Chambers, 11 New Marine Lines, Mumbai - 400020'),
(14, 'Amway India Enterprises Pvt Ltd', 'Amway India Enterprises Pvt Ltd', 'care@amway.com', '080-39416600', 'Plot No. A-7, SIPCOT Industrial Complex, Pallapatti Village, Nilakottai Taluk, Dindigul-624201, Tamilnadu.'),
(15, 'Patanjali Ayurved Ltd', 'Patanjali Ayurved Ltd', 'feedback@patanjaliayurved.org', '1800-180-4108', 'Vill,-Padartha, Laksar Road, Haridwar-249404, Uttarakhand'),
(16, 'Herbs Nutriproducts Pvt. Ltd.', 'Herbs Nutriproducts Pvt. Ltd.', 'customercare@purenutrition.me', '1800 120 9882', 'G-Block, Office No 512, A-wing, The Capital, Bandra Kurla Complex,, Bandra East,Mumbai City, Maharashtra,, Mumbai, Mumbai,Maharashtra, 400051, India'),
(17, 'Sun Pharmaceutical Industries Ltd', 'Sun Pharmaceutical Industries Ltd', 'myrevital@sunpharma.com', '18001025353', 'Acme Plaza, Andheri - Kurla Road, Andheri (E),Mumbai - 400 059'),
(18, 'Bausch & Lomb India Private Limited', 'Bausch & Lomb India Private Limited', 'bauschlomb@gmail.com', '+91-7200712345', '4th Floor, Tower B, Unitech Business Park, South City â 1, Gurgaon - 122 001 Haryana, India');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_deliveryaddress`
--

CREATE TABLE `medicine_supplement_app_deliveryaddress` (
  `delivery_address_id` bigint(20) NOT NULL,
  `delivery_address` longtext DEFAULT NULL,
  `delivery_address_pincode` varchar(10) DEFAULT NULL,
  `address_type` varchar(50) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_feedback`
--

CREATE TABLE `medicine_supplement_app_feedback` (
  `feedback_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `feedback_message` longtext NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_notification`
--

CREATE TABLE `medicine_supplement_app_notification` (
  `notification_id` bigint(20) NOT NULL,
  `notification_message` longtext DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_offer`
--

CREATE TABLE `medicine_supplement_app_offer` (
  `offer_id` bigint(20) NOT NULL,
  `offer_code` varchar(150) DEFAULT NULL,
  `offer_rate` int(11) DEFAULT NULL,
  `offer_required_amount` int(11) DEFAULT NULL,
  `offer_description` longtext NOT NULL,
  `offer_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_offer`
--

INSERT INTO `medicine_supplement_app_offer` (`offer_id`, `offer_code`, `offer_rate`, `offer_required_amount`, `offer_description`, `offer_img`) VALUES
(2, 'MMO02', 10, 1500, 'From 1st to 31st March 2024, get Flat 18% OFF* (max. discount: Rs. 2000) on PrePaid/COD medicine orders & 20% NMS SuperCash* (max. cashback: Rs. 1000) on ‘PrePaid’ medicine orders. *Minimum order (along with ANY other products) required: Rs 1499.', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_order`
--

CREATE TABLE `medicine_supplement_app_order` (
  `order_id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `order_amount` varchar(20) NOT NULL,
  `order_discount_price` varchar(20) DEFAULT NULL,
  `order_total_amount` decimal(20,2) NOT NULL,
  `shipping_price` decimal(20,2) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `order_delivery_address` longtext DEFAULT NULL,
  `order_delivery_address_pincode` varchar(10) DEFAULT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_tracking_id` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `razorpay_order_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_order_detail`
--

CREATE TABLE `medicine_supplement_app_order_detail` (
  `order_detail_id` bigint(20) NOT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_payment`
--

CREATE TABLE `medicine_supplement_app_payment` (
  `payment_id` bigint(20) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amount` double NOT NULL,
  `payment_method` varchar(150) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `razorpay_payment_id` varchar(100) DEFAULT NULL,
  `razorpay_payment_status` varchar(100) DEFAULT NULL,
  `razorpay_order_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_prescription`
--

CREATE TABLE `medicine_supplement_app_prescription` (
  `prescription_id` bigint(20) NOT NULL,
  `prescription_img` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_prescription_detail`
--

CREATE TABLE `medicine_supplement_app_prescription_detail` (
  `prescription_detail_id` bigint(20) NOT NULL,
  `prescription_message` varchar(150) DEFAULT NULL,
  `prescription_status` varchar(100) NOT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `prescription_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_product`
--

CREATE TABLE `medicine_supplement_app_product` (
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_img` varchar(100) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_discount_price` int(11) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_expirydate` date NOT NULL,
  `product_weight` varchar(150) NOT NULL,
  `product_madein` varchar(150) NOT NULL,
  `product_advantage` longtext NOT NULL,
  `product_disadvantage` longtext NOT NULL,
  `product_prescription_status` int(11) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_product`
--

INSERT INTO `medicine_supplement_app_product` (`product_id`, `product_name`, `product_img`, `product_description`, `product_price`, `product_discount_price`, `product_quantity`, `product_expirydate`, `product_weight`, `product_madein`, `product_advantage`, `product_disadvantage`, `product_prescription_status`, `company_id`, `subcategory_id`) VALUES
(1, '2baconil TTS30 21mg Patch 7\'S', 'media/prduct_img/2baconil_tts30_21mg_patch_7s_36473_0_2.jpg', '2BACONIL TTS30 21MG contains Nicotine which is used to help people stop smoking. It relieves nicotine withdrawal symptoms and cravings when you stop smoking or temporarily reduce smoking in order to facilitate smoking cessation. It is a trans-dermal/skin patch developed using the principle of Nicotine Replacement Therapy (NRT) that helps you quit smoking. This patch when placed on your body gradually releases nicotine throughout the day. It gradually decreases the nicotine intake over 12 weeks (the step-down dosing approach), helping you to quit smoking.\r\n\r\nApply one patch a day to the area that is comfortable and suitable throughout the day. Use as instructed by your physician. It is not recommended for children and adolescents under 18 years of age. Tell your doctor before using this patch if you are suffering from any heart, liver or kidney disease. You must not smoke while using this patch as it can result in dangerous effects.', 1008, 806, 0, '2025-02-12', '15', 'India', 'PREGNANCY\r\n2BACONIL TTS30 21MG should be used with caution in pregnant women. Consult your doctor before taking this medicine.\r\n\r\nBREASTFEEDING\r\n2BACONIL TTS30 21MG is not recommended for use in breastfeeding women unless necessary. Discuss the risks and benefits with your doctor.\r\n\r\nKIDNEY\r\n2BACONIL TTS30 21MG should be used with caution in patients suffering from active kidney diseases. Consult your doctor for advice.\r\n\r\nLIVER\r\n2BACONIL TTS30 21MG should be used with caution in patients suffering from liver function impairment or active liver diseases. Consult your doctor for advice.\r\n\r\nALLERGY\r\nDo not take 2BACONIL TTS30 21MG if you are allergic (hypersensitive) to Nicotine, adhesive tape or any of the ingredients in this patch.\r\n\r\nHEART DISEASE\r\n2BACONIL TTS30 21MG should be used with caution in patients suffering from active heart diseases. Consult your doctor for advice.', '-', 1, 1, 7),
(2, 'Aimil Amyron Syrup 200 ml', 'media/prduct_img/aimil_amyron_syrup_200_ml_0_0.jpg', 'Amyron is a special formula for all ages with vitalizing herbs which contributes to reduction of tiredness & fatigue. Amyron supplements natural iron which helps improve haemoglobin level.', 200, 130, 0, '2026-05-13', '500', 'India', 'A natural health restorative with gentle iron, mineral, vitamin & many more from natural resources.\r\nSupplements easily absorbable natural iron with folic acid.\r\nImproves overall blood picture, improves level of Hb, platelets, RBC’s & WBC’s.\r\nSignificantly improves platelet count.\r\nBoosts body defence system & fastens recovery.', '-', 1, 2, 1),
(3, 'COQ LC Tablet 10\'S', 'media/prduct_img/coq_lc_tablet_10s_53524_0_2.jpg', 'COQ LC Tablet is a comprehensive supplement designed to support vitality and promote cardiovascular health. In each pack containing 10 tablets, this formulation combines Coenzyme Q10 (CoQ10) and L-Carnitine – two potent ingredients known for their synergistic effects on the body.\r\nCoenzyme Q10 is a powerful antioxidant that plays a crucial role in energy production within cells. It supports the health of the heart, brain, and various other organs. L-Carnitine, on the other hand, is involved in the transportation of fatty acids into cells\' mitochondria, contributing to energy production. Together, these ingredients create a dynamic duo to enhance overall vitality, boost energy levels, and maintain cardiovascular well-being. Incorporate COQ LC Tablets into your daily routine for comprehensive support in maintaining a healthy and active lifestyle.', 1200, 950, 3, '2025-08-19', '50', 'India', 'CoQ10 and L-Carnitine contribute to heart health, supporting overall cardiovascular function.\r\nThe combination of these potent ingredients promotes energy production, contributing to increased vitality.\r\nCoenzyme Q10 acts as a powerful antioxidant, helping protect cells from oxidative stress.', '-', 1, 3, 2),
(4, 'Dabur Shilajit Gold Capsule 10\'s (Free 2 Capsule Worth Rs.55) 1\'s', 'media/prduct_img/dabur_shilajit_gold_capsule_20s_0_1.jpg', 'Dabur Shilajit Gold Capsule 10\'s (Free 2 Capsule Worth Rs.55) 1\'s', 280, 200, 7, '2027-01-23', '100', 'India', '-', '-', 1, 4, 1),
(5, 'Glucon-D Nimbu Pani Powder 200 gm', 'media/prduct_img/glucon_d_nimbu_pani_powder_200_gm_0.jpg', 'Glucon-D Nimbu Pani Powder 200 gm', 100, 80, 5, '2027-10-23', '200', 'India', 'Glucon-D Nimbu Pani Powder 200 gm', '-', 1, 5, 3),
(6, 'Himalaya Pilex forte Ointment 30 gm', 'media/prduct_img/himalaya_pilex_forte_ointment_30_gm_0_0.jpg', 'Himalaya Pilex Forte Ointment, presented in a 30 gm tube, is a carefully crafted herbal remedy designed to provide gentle relief from the discomfort associated with hemorrhoids. Enriched with natural ingredients like Yashad bhasma, Shilajeet, Nimba, and Haridra, this ointment offers a unique blend of herbs renowned for their anti-inflammatory and soothing properties. The formulation aims to reduce swelling, itching, and discomfort associated with hemorrhoids, providing a natural and effective solution.\r\nThis ointment is easy to apply and gets to work quickly, making it a convenient addition to your self-care routine. Whether dealing with external or internal hemorrhoids, Himalaya Pilex Forte Ointment offers a reassuring touch of nature for those seeking relief from the symptoms of hemorrhoids. Embrace the power of herbal care with Himalaya, a brand trusted for its commitment to holistic well-being.', 105, 78, 10, '2028-02-03', '30', 'India', 'Enriched with herbal ingredients, it provides natural relief from the discomfort of hemorrhoids.\r\nThe herbal blend aims to reduce swelling and itching associated with hemorrhoids.\r\nThe ointment is easy to apply, allowing for convenient incorporation into your daily routine.', '-', 1, 6, 1),
(7, 'INLIFE Energy Booster Capsules 60\'s', 'media/prduct_img/inlife_energy_booster_capsules_60s_78274_0_1.jpg', 'It contains energy supportive herbs such as Green Coffee Bean, Gokshura (Tribulus Terrestris), Moringa, Shilajit and Ashwagandha which help provide you with extreme focus, energy and alertness without tingling or restlessness feeling. Green Coffee bean and other herbs provide you natural caffeine for focus, attention, energy and alertness that allows you to be your most productive self. This fast-acting booster formula was carefully formulated to provide the perfect blend of herbs to promote healthy performance, positive mood, natural energy and help reach your mind’s full potential.', 799, 499, 5, '2026-02-12', '50', 'India', 'Works as a powerful energy enhancer.\r\n\r\n-Helps increase metabolism.\r\n\r\n-Gives you strength all day.\r\n\r\n-Helps maintain healthy cholesterol levels.\r\n\r\n-Natural safe & effective product.', '-', 1, 7, 3),
(8, 'Inlife Magnesium Glycinate Veg Capsule 120\'s', 'media/prduct_img/inlife_magnesium_glycinate_veg_capsule_120s_181522_0_6.jpg', 'Inlife Magnesium Glycinate Veg Capsule 120\'s', 999, 639, 25, '2025-12-31', '50', 'India', '-', '-', 1, 7, 2),
(9, 'Kapiva Wild Amla Juice 1 ltr', 'media/prduct_img/kapiva_wild_amla_juice_1_ltr_61043_0_7.jpg', 'Discover the natural marvel of Kapiva Wild Amla Juice, a 1-liter elixir designed to elevate your health. Sourced from wild-harvested Amla, this antioxidant-rich juice is a powerhouse of nutrients essential for your well-being. Immerse yourself in its pure essence, carefully extracted to preserve the authenticity of the Indian Gooseberry. With no added preservatives, Kapiva ensures a wholesome experience, promoting a robust immune system and healthy digestion. Versatile and easy to incorporate into your daily routine, this nutrient-packed juice is a delicious way to nourish your body. Choose Kapiva Wild Amla Juice and embark on a journey towards a healthier, more vibrant you.\r\n\r\nKey features\r\nPure Wild Amla Essence\r\nImmerse yourself in the purity of wild-harvested Amla, carefully extracted to retain its natural potency. Kapiva Wild Amla Juice encapsulates the essence of this superfruit, ensuring you get the maximum nutritional benefits in every sip.\r\nRich in Antioxidants\r\nExperience the power of antioxidants that combat free radicals in your body. Kapiva Wild Amla Juice helps boost your immune system, promoting overall health and vitality.\r\nNutrient-Rich Formula\r\nThis juice is a nutritional powerhouse. From supporting healthy skin to promoting digestion, Kapiva Wild Amla Juice provides a holistic approach to well-being.\r\nNo Added Preservatives\r\nEnjoy the goodness of nature without compromise. Kapiva ensures that our Wild Amla Juice is free from artificial preservatives, maintaining the authenticity of this natural elixir.\r\nVersatile Consumption\r\nIncorporate this versatile juice into your daily routine. Whether taken directly, mixed with water, or added to your favorite smoothie, Kapiva Wild Amla Juice seamlessly fits into your lifestyle.', 299, 248, 50, '2026-06-20', '1000', 'India', 'Kapiva Wild Amla Juice delivers a potent dose of antioxidants, combating free radicals in your body. This robust antioxidant action helps boost your immune system, promoting overall health and vitality.\r\nImmerse yourself in a nutritional powerhouse. This juice goes beyond mere taste, supporting healthy skin and promoting digestion. With Kapiva Wild Amla Juice, you\'re embracing a holistic approach to well-being, nourishing your body from the inside out.\r\nEnjoy the goodness of nature without compromise. Kapiva ensures that our Wild Amla Juice is free from artificial preservatives, maintaining the authenticity of this natural elixir. Experience pure, unadulterated nourishment with every sip.\r\nSeamlessly fit the benefits of wild-harvested Amla into your daily routine. Whether taken directly, mixed with water, or blended into your favorite smoothie, Kapiva Wild Amla Juice adapts to your lifestyle, making health a delicious and convenient choice.', '-', 1, 8, 1),
(10, 'Kerala Ayurveda Imugest Tablet (Pack of 10 x 10\'s)', 'media/prduct_img/kerala_ayurveda_imugest_tablet_pack_of_10_x_10_s_0.jpg', 'Imugest Tablet is an effective combination with proven immunomodulatory activities. The ingredients in Imugest are rich in antioxidants and possess free radical scavenging properties. Indicated in cases of immune deficient conditions, Imugest tablet aids a healthy aging process.\r\n', 550, 506, 10, '2025-02-13', '120', 'India', 'Safe and effective immunomodulator\r\nNatural anti-oxidant\r\nHelps prevent recurrent infections\r\nHelps maintain tridosha balance', '-', 1, 9, 1),
(11, 'MuscleBlaze Whey Gold - Rich Milk Chocolate 1 kg', 'media/prduct_img/muscleblaze_whey_gold_rich_milk_chocolate_1_kg_58178_0_6.jpg', '-', 3500, 3399, 4, '0031-02-01', '1000', 'India', '-', '-', 0, 10, 5),
(12, 'Nano-Deca Dietary Supplement 5 mg Powder 15\'s', 'media/prduct_img/nano_deca_dietary_supplement_5_mg_powder_15s_0_1.jpg', '-', 2160, 1728, 23, '2025-12-12', '50', 'India', '-', '-', 1, 11, 1),
(13, 'NUTRILITE GINSENG CHERRY PLUS TABLET 100\'S', 'media/prduct_img/nutrilite_ginseng_cherry_plus_tablet_100s_0_0.jpg', 'Nutrilite Ginseng Cherry Plus Tablet is a unique and comprehensive dietary supplement designed to support your overall well-being. Combining the goodness of ginseng and cherry concentrate, this tablet offers a natural and holistic approach to promoting vitality and health. Ginseng, known for its adaptogenic properties, is celebrated for supporting the body\'s ability to handle stress and enhance resilience. It has been a staple in traditional medicine for centuries, recognized for its potential to boost energy levels and cognitive function.\r\n\r\nThe inclusion of cherry concentrate adds a flavorful twist while contributing antioxidants to the formula. Antioxidants play a crucial role in neutralizing free radicals in the body, supporting a healthy immune system and providing anti-inflammatory benefits. The Nutrilite Ginseng Cherry Plus Tablet is crafted with Nutrilite\'s commitment to quality, ensuring that you receive the pure and potent benefits of these natural ingredients. Incorporate this supplement into your daily routine to experience the synergistic effects of ginseng and cherry for overall wellness. Elevate your vitality with Nutrilite Ginseng Cherry Plus Tablet, embracing a natural and holistic approach to a healthier life.', 3329, 2496, 12, '2026-07-15', '80', 'India', 'Ginseng is known for its adaptogenic properties that support the body\'s ability to handle stress and enhance resilience, promoting natural vitality.\r\nCherry concentrate adds a flavorful twist while contributing antioxidants, supporting a healthy immune system and providing anti-inflammatory benefits.\r\nNutrilite Ginseng Cherry Plus Tablet offers a holistic approach to well-being, combining the goodness of ginseng and cherry concentrate.', '-', 1, 14, 4),
(14, 'Patanjali Ekangveer Ras Powder 10 gm', 'media/prduct_img/patanjali_ekangveer_ras_powder_10_gm_0.jpg', 'Patanjali Ekangveer Ras treats chronic back and leg pain, debilitating effect of stroke and gastric problems. Ekangveer Ras is made through a painstaking process to combine natural and herbal extracts. These components are a natural source of calcium, vitamin D and other nutrients which nourishes our bone structure and relieves us of pains. Ekangveer Ras also has antacid effect which facilitates digestion.', 50, 45, 13, '2027-12-14', '10', 'India', 'Useful in sciatica and nerve-related problems\r\nHeals back and leg pains\r\nFacilitates digestion', '-', 1, 15, 1),
(15, 'Pure Nutrition Magnesium Glycinate with Zinc 350 mg Veg Tablet 60\'s', 'media/prduct_img/pure_nutrition_magnesium_glycinate_with_zinc_350_mg_veg_tablet_60s_431137_0_1.jpg', '-', 649, 623, 12, '2027-05-03', '100', 'India', '-', '-', 1, 16, 2),
(16, 'Volini Gel 75gm', 'media/prduct_img/volini_gel_75gm_46854_0_3.jpg', 'Volini Gel 75gm offers immediate pain relief for the body. Muscle and joint discomfort may be promptly relieved with the use of this Gel. It\'s quite effective for sprains. This gel can efficiently penetrate and operate upon the troublesome area to work on the muscles and bones.\r\n\r\nThis mixture was created scientifically and may be effective for treating knee, joint, shoulder, back, and neck discomfort. The spray\'s microscopic particles penetrate the skin to relieve discomfort in the afflicted region. It works very well for sports injuries as well, including sprains, minor strains, and muscle pulls.\r\nKey Features\r\nFast-Acting Formula:\r\nVolini Gel boasts a fast-acting formula that penetrates deep into the affected area, providing quick relief from pain associated with muscle strains, sprains, and joint pain.\r\n\r\nLong-Lasting Relief:\r\nEnjoy long-lasting relief as the formulation ensures sustained effectiveness, allowing you to go about your daily activities without the hindrance of persistent pain.\r\nEasy Application:\r\nThe gel\'s smooth and non-greasy texture makes it easy to apply, promoting hassle-free use for targeted pain relief.\r\n\r\nDiscover quick and effective pain relief with this painkiller. Its fast-acting formula targets joint and muscle pain, ensuring long-lasting relief for those who seek to regain mobility and maintain an active lifestyle.', 245, 208, 11, '2025-12-16', '90', 'India', 'Volini Gel delivers rapid relief thanks to its fast-acting formula that penetrates deeply into the affected area, providing quick alleviation from muscle strains, sprains, and joint pain.\r\nExperience sustained relief with its long-lasting formulation, ensuring you can go about your daily activities without the hindrance of persistent pain.\r\nThe gel\'s easy application and smooth, non-greasy texture make it ideal for targeted pain relief, allowing you to address specific areas of discomfort with precision.\r\nIt aids in regaining mobility, making it a valuable companion for those seeking to maintain an active lifestyle by managing pain effectively.', '-', 1, 17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_product_review`
--

CREATE TABLE `medicine_supplement_app_product_review` (
  `product_review_id` bigint(20) NOT NULL,
  `product_review_message` longtext DEFAULT NULL,
  `product_rating` int(11) NOT NULL,
  `product_review_date` datetime(6) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_sub_category`
--

CREATE TABLE `medicine_supplement_app_sub_category` (
  `subcategory_id` bigint(20) NOT NULL,
  `subcategory_name` varchar(150) NOT NULL,
  `subcategory_img` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_sub_category`
--

INSERT INTO `medicine_supplement_app_sub_category` (`subcategory_id`, `subcategory_name`, `subcategory_img`, `category_id`) VALUES
(1, 'Ayurvedic', 'media/category_img/Ayurvedic.jpeg', 1),
(2, 'Vitamins And Supplements', 'media/category_img/Vitamins_And_Supplements.jpeg', 2),
(3, 'Health Food And Drinks', 'media/category_img/Health_Food_And_Drinks.jpeg', 2),
(4, 'Ayurvedic Supplements', 'media/category_img/Ayurvedic_Supplements.jpeg', 2),
(5, 'Sports Supplements', 'media/category_img/Sports_Supplements.jpeg', 2),
(7, 'Smoking Cessation Support', 'media/category_img/Smoking_Cessation_Support.jpeg', 2),
(8, 'Diabetes Care', 'media/category_img/Diabetes_Care.jpeg', 3),
(9, 'First Aid', 'media/category_img/First_Aid.jpeg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_users`
--

CREATE TABLE `medicine_supplement_app_users` (
  `user_id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `bod` date DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `education` varchar(150) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `otp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_supplement_app_users`
--

INSERT INTO `medicine_supplement_app_users` (`user_id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`, `phone`, `gender`, `bod`, `address`, `pincode`, `education`, `user_type`, `otp`) VALUES
(1, 'pbkdf2_sha256$720000$rEs3FLBzU1LSl1h5P8lXez$mvJMz3jDtoa9u7Gb/QdqkPOG1p4jK9ZYUMyYXFLYzvE=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-06-28 13:32:35.959021', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_users_groups`
--

CREATE TABLE `medicine_supplement_app_users_groups` (
  `id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_supplement_app_users_user_permissions`
--

CREATE TABLE `medicine_supplement_app_users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_medicine_` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `medicine_supplement_app_cart`
--
ALTER TABLE `medicine_supplement_app_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `medicine_supplement__user_id_5626dc0d_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_cart_detail`
--
ALTER TABLE `medicine_supplement_app_cart_detail`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `medicine_supplement__cart_id_bf9d3160_fk_medicine_` (`cart_id`),
  ADD KEY `medicine_supplement__user_id_fed1dc82_fk_medicine_` (`user_id`),
  ADD KEY `medicine_supplement__product_id_ba4e743d_fk_medicine_` (`product_id`);

--
-- Indexes for table `medicine_supplement_app_category`
--
ALTER TABLE `medicine_supplement_app_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `medicine_supplement_app_company`
--
ALTER TABLE `medicine_supplement_app_company`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_name` (`company_name`),
  ADD UNIQUE KEY `company_owner_email` (`company_owner_email`);

--
-- Indexes for table `medicine_supplement_app_deliveryaddress`
--
ALTER TABLE `medicine_supplement_app_deliveryaddress`
  ADD PRIMARY KEY (`delivery_address_id`),
  ADD KEY `medicine_supplement__user_id_43f340b4_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_feedback`
--
ALTER TABLE `medicine_supplement_app_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `medicine_supplement__user_id_37cfe771_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_notification`
--
ALTER TABLE `medicine_supplement_app_notification`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `medicine_supplement__user_id_6e08c1eb_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_offer`
--
ALTER TABLE `medicine_supplement_app_offer`
  ADD PRIMARY KEY (`offer_id`),
  ADD UNIQUE KEY `offer_code` (`offer_code`);

--
-- Indexes for table `medicine_supplement_app_order`
--
ALTER TABLE `medicine_supplement_app_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `medicine_supplement__user_id_4992c0d7_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_order_detail`
--
ALTER TABLE `medicine_supplement_app_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `medicine_supplement__product_id_04ad84c3_fk_medicine_` (`product_id`),
  ADD KEY `medicine_supplement__order_id_9cafef82_fk_medicine_` (`order_id`),
  ADD KEY `medicine_supplement__user_id_69c0cdc4_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_payment`
--
ALTER TABLE `medicine_supplement_app_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `medicine_supplement__user_id_ef5b258e_fk_medicine_` (`user_id`),
  ADD KEY `medicine_supplement__order_id_728a2f51_fk_medicine_` (`order_id`);

--
-- Indexes for table `medicine_supplement_app_prescription`
--
ALTER TABLE `medicine_supplement_app_prescription`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `medicine_supplement__user_id_d48ca50d_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_prescription_detail`
--
ALTER TABLE `medicine_supplement_app_prescription_detail`
  ADD PRIMARY KEY (`prescription_detail_id`),
  ADD KEY `medicine_supplement__order_detail_id_e6bb1231_fk_medicine_` (`order_detail_id`),
  ADD KEY `medicine_supplement__prescription_id_4064bd27_fk_medicine_` (`prescription_id`),
  ADD KEY `medicine_supplement__user_id_05935080_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_product`
--
ALTER TABLE `medicine_supplement_app_product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `medicine_supplement__subcategory_id_2be3fa8a_fk_medicine_` (`subcategory_id`),
  ADD KEY `medicine_supplement__company_id_d371b18f_fk_medicine_` (`company_id`);

--
-- Indexes for table `medicine_supplement_app_product_review`
--
ALTER TABLE `medicine_supplement_app_product_review`
  ADD PRIMARY KEY (`product_review_id`),
  ADD KEY `medicine_supplement__product_id_8e6e6d41_fk_medicine_` (`product_id`),
  ADD KEY `medicine_supplement__user_id_2c6d9e9d_fk_medicine_` (`user_id`);

--
-- Indexes for table `medicine_supplement_app_sub_category`
--
ALTER TABLE `medicine_supplement_app_sub_category`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD UNIQUE KEY `subcategory_name` (`subcategory_name`),
  ADD KEY `medicine_supplement__category_id_8b24ae2f_fk_medicine_` (`category_id`);

--
-- Indexes for table `medicine_supplement_app_users`
--
ALTER TABLE `medicine_supplement_app_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `medicine_supplement_app_users_groups`
--
ALTER TABLE `medicine_supplement_app_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medicine_supplement_app__users_id_group_id_2d150e94_uniq` (`users_id`,`group_id`),
  ADD KEY `medicine_supplement__group_id_48c71339_fk_auth_grou` (`group_id`);

--
-- Indexes for table `medicine_supplement_app_users_user_permissions`
--
ALTER TABLE `medicine_supplement_app_users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medicine_supplement_app__users_id_permission_id_cfd3b5c8_uniq` (`users_id`,`permission_id`),
  ADD KEY `medicine_supplement__permission_id_3c836d54_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_cart`
--
ALTER TABLE `medicine_supplement_app_cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_cart_detail`
--
ALTER TABLE `medicine_supplement_app_cart_detail`
  MODIFY `cart_detail_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_category`
--
ALTER TABLE `medicine_supplement_app_category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_company`
--
ALTER TABLE `medicine_supplement_app_company`
  MODIFY `company_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_deliveryaddress`
--
ALTER TABLE `medicine_supplement_app_deliveryaddress`
  MODIFY `delivery_address_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_feedback`
--
ALTER TABLE `medicine_supplement_app_feedback`
  MODIFY `feedback_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_notification`
--
ALTER TABLE `medicine_supplement_app_notification`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_offer`
--
ALTER TABLE `medicine_supplement_app_offer`
  MODIFY `offer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_order`
--
ALTER TABLE `medicine_supplement_app_order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_order_detail`
--
ALTER TABLE `medicine_supplement_app_order_detail`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_payment`
--
ALTER TABLE `medicine_supplement_app_payment`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_prescription`
--
ALTER TABLE `medicine_supplement_app_prescription`
  MODIFY `prescription_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_prescription_detail`
--
ALTER TABLE `medicine_supplement_app_prescription_detail`
  MODIFY `prescription_detail_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_product`
--
ALTER TABLE `medicine_supplement_app_product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_product_review`
--
ALTER TABLE `medicine_supplement_app_product_review`
  MODIFY `product_review_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_sub_category`
--
ALTER TABLE `medicine_supplement_app_sub_category`
  MODIFY `subcategory_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_users`
--
ALTER TABLE `medicine_supplement_app_users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_users_groups`
--
ALTER TABLE `medicine_supplement_app_users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_supplement_app_users_user_permissions`
--
ALTER TABLE `medicine_supplement_app_users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_cart`
--
ALTER TABLE `medicine_supplement_app_cart`
  ADD CONSTRAINT `medicine_supplement__user_id_5626dc0d_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_cart_detail`
--
ALTER TABLE `medicine_supplement_app_cart_detail`
  ADD CONSTRAINT `medicine_supplement__cart_id_bf9d3160_fk_medicine_` FOREIGN KEY (`cart_id`) REFERENCES `medicine_supplement_app_cart` (`cart_id`),
  ADD CONSTRAINT `medicine_supplement__product_id_ba4e743d_fk_medicine_` FOREIGN KEY (`product_id`) REFERENCES `medicine_supplement_app_product` (`product_id`),
  ADD CONSTRAINT `medicine_supplement__user_id_fed1dc82_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_deliveryaddress`
--
ALTER TABLE `medicine_supplement_app_deliveryaddress`
  ADD CONSTRAINT `medicine_supplement__user_id_43f340b4_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_feedback`
--
ALTER TABLE `medicine_supplement_app_feedback`
  ADD CONSTRAINT `medicine_supplement__user_id_37cfe771_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_notification`
--
ALTER TABLE `medicine_supplement_app_notification`
  ADD CONSTRAINT `medicine_supplement__user_id_6e08c1eb_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_order`
--
ALTER TABLE `medicine_supplement_app_order`
  ADD CONSTRAINT `medicine_supplement__user_id_4992c0d7_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_order_detail`
--
ALTER TABLE `medicine_supplement_app_order_detail`
  ADD CONSTRAINT `medicine_supplement__order_id_9cafef82_fk_medicine_` FOREIGN KEY (`order_id`) REFERENCES `medicine_supplement_app_order` (`order_id`),
  ADD CONSTRAINT `medicine_supplement__product_id_04ad84c3_fk_medicine_` FOREIGN KEY (`product_id`) REFERENCES `medicine_supplement_app_product` (`product_id`),
  ADD CONSTRAINT `medicine_supplement__user_id_69c0cdc4_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_payment`
--
ALTER TABLE `medicine_supplement_app_payment`
  ADD CONSTRAINT `medicine_supplement__order_id_728a2f51_fk_medicine_` FOREIGN KEY (`order_id`) REFERENCES `medicine_supplement_app_order` (`order_id`),
  ADD CONSTRAINT `medicine_supplement__user_id_ef5b258e_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_prescription`
--
ALTER TABLE `medicine_supplement_app_prescription`
  ADD CONSTRAINT `medicine_supplement__user_id_d48ca50d_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_prescription_detail`
--
ALTER TABLE `medicine_supplement_app_prescription_detail`
  ADD CONSTRAINT `medicine_supplement__order_detail_id_e6bb1231_fk_medicine_` FOREIGN KEY (`order_detail_id`) REFERENCES `medicine_supplement_app_order_detail` (`order_detail_id`),
  ADD CONSTRAINT `medicine_supplement__prescription_id_4064bd27_fk_medicine_` FOREIGN KEY (`prescription_id`) REFERENCES `medicine_supplement_app_prescription` (`prescription_id`),
  ADD CONSTRAINT `medicine_supplement__user_id_05935080_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_product`
--
ALTER TABLE `medicine_supplement_app_product`
  ADD CONSTRAINT `medicine_supplement__company_id_d371b18f_fk_medicine_` FOREIGN KEY (`company_id`) REFERENCES `medicine_supplement_app_company` (`company_id`),
  ADD CONSTRAINT `medicine_supplement__subcategory_id_2be3fa8a_fk_medicine_` FOREIGN KEY (`subcategory_id`) REFERENCES `medicine_supplement_app_sub_category` (`subcategory_id`);

--
-- Constraints for table `medicine_supplement_app_product_review`
--
ALTER TABLE `medicine_supplement_app_product_review`
  ADD CONSTRAINT `medicine_supplement__product_id_8e6e6d41_fk_medicine_` FOREIGN KEY (`product_id`) REFERENCES `medicine_supplement_app_product` (`product_id`),
  ADD CONSTRAINT `medicine_supplement__user_id_2c6d9e9d_fk_medicine_` FOREIGN KEY (`user_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_sub_category`
--
ALTER TABLE `medicine_supplement_app_sub_category`
  ADD CONSTRAINT `medicine_supplement__category_id_8b24ae2f_fk_medicine_` FOREIGN KEY (`category_id`) REFERENCES `medicine_supplement_app_category` (`category_id`);

--
-- Constraints for table `medicine_supplement_app_users_groups`
--
ALTER TABLE `medicine_supplement_app_users_groups`
  ADD CONSTRAINT `medicine_supplement__group_id_48c71339_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `medicine_supplement__users_id_40ac8546_fk_medicine_` FOREIGN KEY (`users_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);

--
-- Constraints for table `medicine_supplement_app_users_user_permissions`
--
ALTER TABLE `medicine_supplement_app_users_user_permissions`
  ADD CONSTRAINT `medicine_supplement__permission_id_3c836d54_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `medicine_supplement__users_id_5c8d64a4_fk_medicine_` FOREIGN KEY (`users_id`) REFERENCES `medicine_supplement_app_users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
