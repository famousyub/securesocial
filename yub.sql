
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `testim`
--

-- --------------------------------------------------------

--
-- Table structure for table `dot_admin_blocked`
--

CREATE TABLE `dot_admin_blocked` (
  `block_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL,
  `blocked_user_ip` int(11) NOT NULL,
  `blocked_time` int(11) NOT NULL DEFAULT '1524910573',
  `because_of` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_ads_click`
--

CREATE TABLE `dot_ads_click` (
  `id` int(11) NOT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ads_id_fk` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `dot_ads_display` (
  `id` int(11) NOT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ads_id_fk` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_ads_note`
--

CREATE TABLE `dot_ads_note` (
  `note_id` int(11) NOT NULL,
  `note_uid_fk` int(11) DEFAULT NULL,
  `note_ads_id_fk` int(11) DEFAULT NULL,
  `review_note` longtext CHARACTER SET utf8,
  `time` int(11) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `dot_ads_notes` (
  `note_id` int(11) NOT NULL,
  `note_uid_fk` int(11) DEFAULT NULL,
  `note_ads_id_fk` int(11) DEFAULT NULL,
  `review_note` longtext CHARACTER SET utf8,
  `time` int(11) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_announcements`
--

CREATE TABLE `dot_announcements` (
  `an_id` int(11) NOT NULL,
  `an_type` enum('success','warning','danger','info') NOT NULL DEFAULT 'success',
  `announce_status` enum('0','1') NOT NULL DEFAULT '1',
  `annnouncement_text` longtext CHARACTER SET utf8mb4,
  `announcement_title` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `announce_time` int(15) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;











CREATE TABLE `dot_announcement_saw` (
  `an_saw_id` int(11) NOT NULL,
  `an_id_fk` int(11) DEFAULT NULL,
  `an_uid_fk` int(11) DEFAULT NULL,
  `an_saw_time` int(15) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_audios`
--

CREATE TABLE `dot_audios` (
  `id` int(11) NOT NULL,
  `audio_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `audio_page_type` enum('wall','chat') CHARACTER SET latin1 DEFAULT 'wall'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `dot_avatars`
--

CREATE TABLE `dot_avatars` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `image_type` enum('avatar','cover') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `dot_backgrounds`
--

CREATE TABLE `dot_backgrounds` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `image_type` enum('background_profile') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;








CREATE TABLE `dot_blocked_users` (
  `block_id` int(11) NOT NULL,
  `blocker_uid_fk` int(11) DEFAULT NULL,
  `blocked_uid_fk` int(11) DEFAULT NULL,
  `blocked_time` int(11) DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_cargos`
--

CREATE TABLE `dot_cargos` (
  `cargo_id` int(11) NOT NULL,
  `cargo_name` varchar(255) DEFAULT NULL,
  `cargo_url` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dot_cargos`
--



INSERT INTO `dot_cargos` (`cargo_id`, `cargo_name`, `cargo_url`) VALUES
(1, 'Ups Cargo', 'https://www.ups.com/'),
(2, 'DHL Express', 'https://www.dhl.com.tr/'),
(3, 'FedEx', 'https://www.fedex.com/'),
(4, 'Yurtiçi Kargo', 'https://www.yurticikargo.com/'),
(5, 'MNG Kargo', 'https://www.mngkargo.com.tr/'),
(6, 'Aras Kargo', 'https://www.araskargo.com.tr/'),
(7, 'TNT Express', 'https://www.tnt.com/');


CREATE TABLE `dot_chat` (
  `msg_id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message_text` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `message_created_time` varchar(11) NOT NULL DEFAULT '1524910573',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(8) DEFAULT NULL,
  `user_ip` varchar(45) DEFAULT NULL,
  `imageid` varchar(25) DEFAULT NULL,
  `videoid` varchar(255) DEFAULT NULL,
  `file_name` varchar(355) CHARACTER SET utf8 DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_extension` varchar(75) DEFAULT NULL,
  `dest` enum('5','30','60') DEFAULT NULL,
  `secret_checked` enum('0','1') NOT NULL DEFAULT '0',
  `q_product_id` int(11) DEFAULT NULL,
  `q_question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_chat_list`
--

CREATE TABLE `dot_chat_list` (
  `created_chat_id` int(11) NOT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_with_user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_time` varchar(11) DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





















SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `testim`
--

-- --------------------------------------------------------

--
-- Table structure for table `dot_admin_blocked`
--

CREATE TABLE `dot_admin_blocked` (
  `block_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL,
  `blocked_user_ip` int(11) NOT NULL,
  `blocked_time` int(11) NOT NULL DEFAULT '1524910573',
  `because_of` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_ads_click`
--

CREATE TABLE `dot_ads_click` (
  `id` int(11) NOT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ads_id_fk` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `dot_ads_display` (
  `id` int(11) NOT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ads_id_fk` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_ads_note`
--

CREATE TABLE `dot_ads_note` (
  `note_id` int(11) NOT NULL,
  `note_uid_fk` int(11) DEFAULT NULL,
  `note_ads_id_fk` int(11) DEFAULT NULL,
  `review_note` longtext CHARACTER SET utf8,
  `time` int(11) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `dot_ads_notes` (
  `note_id` int(11) NOT NULL,
  `note_uid_fk` int(11) DEFAULT NULL,
  `note_ads_id_fk` int(11) DEFAULT NULL,
  `review_note` longtext CHARACTER SET utf8,
  `time` int(11) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_announcements`
--

CREATE TABLE `dot_announcements` (
  `an_id` int(11) NOT NULL,
  `an_type` enum('success','warning','danger','info') NOT NULL DEFAULT 'success',
  `announce_status` enum('0','1') NOT NULL DEFAULT '1',
  `annnouncement_text` longtext CHARACTER SET utf8mb4,
  `announcement_title` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `announce_time` int(15) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;











CREATE TABLE `dot_announcement_saw` (
  `an_saw_id` int(11) NOT NULL,
  `an_id_fk` int(11) DEFAULT NULL,
  `an_uid_fk` int(11) DEFAULT NULL,
  `an_saw_time` int(15) NOT NULL DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_audios`
--

CREATE TABLE `dot_audios` (
  `id` int(11) NOT NULL,
  `audio_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `audio_page_type` enum('wall','chat') CHARACTER SET latin1 DEFAULT 'wall'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `dot_avatars`
--

CREATE TABLE `dot_avatars` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `image_type` enum('avatar','cover') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `dot_backgrounds`
--

CREATE TABLE `dot_backgrounds` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `image_type` enum('background_profile') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;








CREATE TABLE `dot_blocked_users` (
  `block_id` int(11) NOT NULL,
  `blocker_uid_fk` int(11) DEFAULT NULL,
  `blocked_uid_fk` int(11) DEFAULT NULL,
  `blocked_time` int(11) DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_cargos`
--

CREATE TABLE `dot_cargos` (
  `cargo_id` int(11) NOT NULL,
  `cargo_name` varchar(255) DEFAULT NULL,
  `cargo_url` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dot_cargos`
--



INSERT INTO `dot_cargos` (`cargo_id`, `cargo_name`, `cargo_url`) VALUES
(1, 'Ups Cargo', 'https://www.ups.com/'),
(2, 'DHL Express', 'https://www.dhl.com.tr/'),
(3, 'FedEx', 'https://www.fedex.com/'),
(4, 'Yurtiçi Kargo', 'https://www.yurticikargo.com/'),
(5, 'MNG Kargo', 'https://www.mngkargo.com.tr/'),
(6, 'Aras Kargo', 'https://www.araskargo.com.tr/'),
(7, 'TNT Express', 'https://www.tnt.com/');


CREATE TABLE `dot_chat` (
  `msg_id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message_text` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `message_created_time` varchar(11) NOT NULL DEFAULT '1524910573',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(8) DEFAULT NULL,
  `user_ip` varchar(45) DEFAULT NULL,
  `imageid` varchar(25) DEFAULT NULL,
  `videoid` varchar(255) DEFAULT NULL,
  `file_name` varchar(355) CHARACTER SET utf8 DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_extension` varchar(75) DEFAULT NULL,
  `dest` enum('5','30','60') DEFAULT NULL,
  `secret_checked` enum('0','1') NOT NULL DEFAULT '0',
  `q_product_id` int(11) DEFAULT NULL,
  `q_question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dot_chat_list`
--

CREATE TABLE `dot_chat_list` (
  `created_chat_id` int(11) NOT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_with_user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_time` varchar(11) DEFAULT '1524910573'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




















