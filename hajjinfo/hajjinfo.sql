-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 01:22 PM
-- Server version: 10.4.22-MariaDB-log
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hajjinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add service', 8, 'add_service'),
(30, 'Can change service', 8, 'change_service'),
(31, 'Can delete service', 8, 'delete_service'),
(32, 'Can view service', 8, 'view_service'),
(33, 'Can add perform', 9, 'add_perform'),
(34, 'Can change perform', 9, 'change_perform'),
(35, 'Can delete perform', 9, 'delete_perform'),
(36, 'Can view perform', 9, 'view_perform'),
(37, 'Can add owner', 10, 'add_owner'),
(38, 'Can change owner', 10, 'change_owner'),
(39, 'Can delete owner', 10, 'delete_owner'),
(40, 'Can view owner', 10, 'view_owner'),
(41, 'Can add room', 11, 'add_room'),
(42, 'Can change room', 11, 'change_room'),
(43, 'Can delete room', 11, 'delete_room'),
(44, 'Can view room', 11, 'view_room'),
(45, 'Can add hotel_info', 12, 'add_hotel_info'),
(46, 'Can change hotel_info', 12, 'change_hotel_info'),
(47, 'Can delete hotel_info', 12, 'delete_hotel_info'),
(48, 'Can view hotel_info', 12, 'view_hotel_info'),
(49, 'Can add hadith', 13, 'add_hadith'),
(50, 'Can change hadith', 13, 'change_hadith'),
(51, 'Can delete hadith', 13, 'delete_hadith'),
(52, 'Can view hadith', 13, 'view_hadith');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$hBltgPVbwnMesJSGTDm9YM$Z3m5PBSkTb3uURA25EFP7lnnw2o1w8kdalD2O7fKaNs=', '2023-01-07 09:27:49.050131', 1, 'sahal', '', '', 'sahal.cox@gmail.com', 1, 1, '2023-01-07 09:27:12.615098');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-11 10:08:34.033142', '1', 'Hotel_info object (1)', 2, '[{\"changed\": {\"fields\": [\"Banner\"]}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'Home', 'perform'),
(7, 'Home', 'post'),
(8, 'Home', 'service'),
(12, 'Hotel', 'hotel_info'),
(10, 'Hotel', 'owner'),
(11, 'Hotel', 'room'),
(13, 'QuranHadith', 'hadith'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Home', '0001_initial', '2023-01-07 09:20:54.500248'),
(2, 'Home', '0002_post', '2023-01-07 09:20:54.564078'),
(3, 'Home', '0003_service', '2023-01-07 09:20:54.610951'),
(4, 'Home', '0004_service_slug', '2023-01-07 09:20:54.686751'),
(5, 'Home', '0005_perform', '2023-01-07 09:20:54.733322'),
(6, 'Home', '0006_alter_post_description', '2023-01-07 09:20:54.748282'),
(7, 'Home', '0007_delete_homepost_alter_perform_description_and_more', '2023-01-07 09:20:54.937778'),
(8, 'Hotel', '0001_initial', '2023-01-07 09:20:55.260666'),
(9, 'Hotel', '0002_hotel_info_slug_alter_hotel_info_banner_and_more', '2023-01-07 09:20:55.479318'),
(10, 'QuranHadith', '0001_initial', '2023-01-07 09:20:55.534363'),
(11, 'QuranHadith', '0002_alter_hadith_description', '2023-01-07 09:20:55.629111'),
(12, 'contenttypes', '0001_initial', '2023-01-07 09:20:55.694229'),
(13, 'auth', '0001_initial', '2023-01-07 09:20:56.637534'),
(14, 'admin', '0001_initial', '2023-01-07 09:20:57.012874'),
(15, 'admin', '0002_logentry_remove_auto_add', '2023-01-07 09:20:57.031823'),
(16, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-07 09:20:57.050777'),
(17, 'contenttypes', '0002_remove_content_type_name', '2023-01-07 09:20:57.179429'),
(18, 'auth', '0002_alter_permission_name_max_length', '2023-01-07 09:20:57.298039'),
(19, 'auth', '0003_alter_user_email_max_length', '2023-01-07 09:20:57.332945'),
(20, 'auth', '0004_alter_user_username_opts', '2023-01-07 09:20:57.348904'),
(21, 'auth', '0005_alter_user_last_login_null', '2023-01-07 09:20:57.434182'),
(22, 'auth', '0006_require_contenttypes_0002', '2023-01-07 09:20:57.443159'),
(23, 'auth', '0007_alter_validators_add_error_messages', '2023-01-07 09:20:57.463107'),
(24, 'auth', '0008_alter_user_username_max_length', '2023-01-07 09:20:57.498012'),
(25, 'auth', '0009_alter_user_last_name_max_length', '2023-01-07 09:20:57.532918'),
(26, 'auth', '0010_alter_group_name_max_length', '2023-01-07 09:20:57.563847'),
(27, 'auth', '0011_update_proxy_permissions', '2023-01-07 09:20:57.594753'),
(28, 'auth', '0012_alter_user_first_name_max_length', '2023-01-07 09:20:57.625670'),
(29, 'sessions', '0001_initial', '2023-01-07 09:20:57.697479');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lfm48lgnt0mjurun2y9u3lkrjpkrczpz', '.eJxVjMsOwiAQRf-FtSHlMR1w6d5vIAwDUjU0Ke3K-O_apAvd3nPOfYkQt7WGreclTCzOQonT70YxPXLbAd9ju80yzW1dJpK7Ig_a5XXm_Lwc7t9Bjb1-a3TOKPSJTfaG0XiVgXyxUY--aAMlDQnBaxhsKpFwRAuIDKoAqUxOvD_JYDdm:1pE5UT:jVD5JpnaiHmK3WnazzxhuUIvgKSQb-vMteDgqFDvEiM', '2023-01-21 09:27:49.061132');

-- --------------------------------------------------------

--
-- Table structure for table `home_perform`
--

CREATE TABLE `home_perform` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_post`
--

CREATE TABLE `home_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_service`
--

CREATE TABLE `home_service` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hotel_info`
--

CREATE TABLE `hotel_hotel_info` (
  `id` bigint(20) NOT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `available` int(11) NOT NULL,
  `owner_id` char(32) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_hotel_info`
--

INSERT INTO `hotel_hotel_info` (`id`, `hotel_name`, `banner`, `state`, `city`, `country`, `price`, `available`, `owner_id`, `room_id`, `slug`) VALUES
(1, 'blue sky', 'hotel/photo-1615460549969-36fa19521a4f.jpg', 'chakaria', 'cox\'sbazar', 'BD', '10.00', 2, 'ddb8dfdb7cce45c8919df33218608ed2', 1, 'blue-sky');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_owner`
--

CREATE TABLE `hotel_owner` (
  `id` char(32) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `contact` varchar(128) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_owner`
--

INSERT INTO `hotel_owner` (`id`, `first_name`, `last_name`, `email`, `contact`, `password`) VALUES
('ddb8dfdb7cce45c8919df33218608ed2', 'sahal', 'ahmed', 'sahal.cox@gmail.com', '+8801647146932', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `type`, `image`) VALUES
(1, 'single', 'room/1.jpg'),
(2, 'double', 'room/2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quranhadith_hadith`
--

CREATE TABLE `quranhadith_hadith` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `home_perform`
--
ALTER TABLE `home_perform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_post`
--
ALTER TABLE `home_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_service`
--
ALTER TABLE `home_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Home_service_slug_784a466a` (`slug`);

--
-- Indexes for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `owner_id` (`owner_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `Hotel_hotel_info_hotel_name_0265159a_uniq` (`hotel_name`),
  ADD KEY `Hotel_hotel_info_room_id_ad7a5db1_fk_Hotel_room_id` (`room_id`);

--
-- Indexes for table `hotel_owner`
--
ALTER TABLE `hotel_owner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quranhadith_hadith`
--
ALTER TABLE `quranhadith_hadith`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `home_perform`
--
ALTER TABLE `home_perform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_post`
--
ALTER TABLE `home_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_service`
--
ALTER TABLE `home_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_room`
--
ALTER TABLE `hotel_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quranhadith_hadith`
--
ALTER TABLE `quranhadith_hadith`
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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hotel_hotel_info`
--
ALTER TABLE `hotel_hotel_info`
  ADD CONSTRAINT `Hotel_hotel_info_owner_id_cd43e27b_fk_Hotel_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `hotel_owner` (`id`),
  ADD CONSTRAINT `Hotel_hotel_info_room_id_ad7a5db1_fk_Hotel_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
