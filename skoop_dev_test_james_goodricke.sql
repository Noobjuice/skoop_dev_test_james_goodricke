-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2019 at 10:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skoop_dev_test_james_goodricke`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(9) NOT NULL,
  `order_id` int(9) NOT NULL,
  `product_code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `address_line_one` varchar(191) NOT NULL,
  `address_line_two` varchar(191) DEFAULT NULL,
  `suburb` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `postcode` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `product_code`, `name`, `email`, `mobile`, `address_line_one`, `address_line_two`, `suburb`, `state`, `postcode`, `country`, `status`) VALUES
(1079, 10953, '5403', 'Aaden Johnson', 'aadenjohnson@email.com', '0491 570 158', '15/222', 'Ann Street', 'Greenwood', 'SA', '6024', 'AU', 'shipped'),
(1080, 10500, '5400', 'Israel Mckenzie', 'israelmckenzie@email.com', '', '208 Maple Lane', '', 'Norlane', 'VIC', '6037', 'AU', 'shipped'),
(1081, 10501, '5404', 'Colt Montoya', 'coltmontoya@email.com', '0491 570 157', '67', '5th Street East', 'Bentleigh', 'NT', '6107', 'AU', 'shipped'),
(1082, 10502, '5404', 'Danny Hendricks', 'dannyhendricks@email.com', '0491 570 110', 'Unit 4 555', 'Pennsylvania Avenue', 'Templestowe', 'VIC', '4556', 'AU', 'shipped'),
(1083, 10503, '5400', 'Omari Lang', 'omarilang@email.com', '', '55 Fairview Avenue', '', 'Axedale', 'SA', '6009', 'AU', 'shipped'),
(1084, 10504, '5401', 'Emanuel Sanchez', 'emanuelsanchez@email.com', '61 491 570 157', '', '15/222 5th Street South', 'KEILOR LODGE', 'QLD', '3051', 'AU', 'shipped'),
(1085, 10505, '5403', 'Grayson Kemp', 'graysonkemp@email.com', '', '44 Route 5', '', 'Golden Square', 'SA', '3683', 'AU', 'shipped'),
(1086, 10506, '5402', 'Mariela Pittman', 'marielapittman@email.com', '', 'Unit 1 555 5th Street', '', 'leanyer', 'ACT', '6031', 'AU', 'shipped'),
(1087, 10507, '5400', 'Asia Gallagher', 'asiagallagher@email.com', '61 491 570 157', '99', 'Hillcrest Avenue', 'Mitchelton', 'VIC', '3182', 'AU', 'shipped'),
(1088, 10508, '5400', 'Elliott Farley', 'elliottfarley@email.com', '0491 570 158', '', 'Unit 7 555 Bridle Lane', 'Clayton South', 'NSW', '6230', 'AU', 'shipped'),
(1089, 10509, '5401', 'Alena Stout', 'alenastout@email.com', '61 491 570 157', 'Unit 7 555', 'Church Street North', 'Carseldine', 'NSW', '3123', 'AU', 'shipped'),
(1090, 10510, '5402', 'Maren Cunningham', 'marencunningham@email.com', '', '13 Hickory Lane', '', 'Farrer', 'ACT', '3083', 'AU', 'shipped'),
(1091, 10511, '5401', 'Jameson Terry', 'jamesonterry@email.com', '', '2/105 Cemetery Road', '', 'Thornbury', 'QLD', '2913', 'AU', 'shipped'),
(1092, 10512, '5400', 'Jameson Terry', 'jamesonterry@email.com', '', '2/105 6th Avenue', '', 'Carrum Downs', 'QLD', '6050', 'AU', 'shipped'),
(1093, 10513, '5402', 'Dakota Lowery', 'dakotalowery@email.com', '0491 570 157', '99', 'River Road', 'Surrey Hills', 'NSW', '3146', 'AU', 'shipped'),
(1094, 10514, '5404', 'Jazlene Lawson', 'jazlenelawson@email.com', '', '14 James Street', '', 'Glenrowan', 'QLD', '3340', 'AU', 'shipped'),
(1095, 10515, '5402', 'Kenneth Shannon', 'kennethshannon@email.com', '', 'Unit 2 555 Wood Street', '', 'North Warrandyte', 'TA', '3147', 'AU', 'shipped'),
(1096, 10516, '5403', 'Logan Coleman', 'logancoleman@email.com', '', '67 Spring Street', '', 'Red Cliffs', 'VIC', '3687', 'AU', 'shipped'),
(1097, 10517, '5404', 'Francis Ortiz', 'francisortiz@email.com', '', 'Unit 2 555 Arlington Avenue', '', 'North Perth', 'QLD', '6023', 'AU', 'shipped'),
(1098, 10518, '5404', 'Adolfo Russell', 'adolforussell@email.com', '0491 570 158', 'Unit 3 555', 'Parker Street', 'Derrimut', 'VIC', '3188', 'AU', 'shipped'),
(1099, 10519, '5402', 'Jasmin Mendoza', 'jasminmendoza@email.com', '', 'Unit 5 555 Redwood Drive', '', 'Stuart Park', 'VIC', '3284', 'AU', 'shipped'),
(1100, 10520, '5403', 'Emanuel Jimenez', 'emanueljimenez@email.com', '61 491 570 157', '', 'Unit 2 555 Edgewood Drive', 'Keilor Lodge', 'NT', '3071', 'AU', 'shipped'),
(1101, 10521, '5402', 'Jasmin Mendoza', 'jasminmendoza@email.com', '', 'Unit 8 555 Crescent Street', '', 'Mount Waverley', 'ACT', '5095', 'AU', 'shipped'),
(1102, 10522, '5404', 'Devyn Mack', 'devynmack@email.com', '0491 570 158', '99', 'Forest Avenue', 'Greensborough', 'SA', '3820', 'AU', 'shipped'),
(1103, 10523, '5402', 'Emilia Hancock', 'emiliahancock@email.com', '0491 570 159', '', '55 Cardinal Drive', 'Mariginiup', 'ACT', '3214', 'AU', 'shipped'),
(1104, 10524, '5402', 'Moshe Kidd', 'moshekidd@email.com', '', 'Unit 7 555 Devon Road', '', 'Ridgewood', 'SA', '3888', 'AU', 'shipped'),
(1105, 10525, '5404', 'Noelle Trujillo', 'noelletrujillo@email.com', '', '99 Maple Street', '', 'Bray Park', 'NSW', '4671', 'AU', 'shipped'),
(1106, 10526, '5402', 'Alec Duncan', 'alecduncan@email.com', '0491 570 156', '44', 'Riverside Drive', 'Heidelberg', 'NT', '6018', 'AU', 'shipped'),
(1107, 10527, '5400', 'Alena Stout', 'alenastout@email.com', '61 491 570 157', 'Unit 8 555', 'Country Club Drive', 'Mitcham', 'ACT', '3193', 'AU', 'shipped'),
(1108, 10528, '5401', 'Marianna Stein', 'mariannastein@email.com', '', 'Unit 3 555 Front Street South', '', 'Heatherton', 'SA', '6005', 'AU', 'shipped'),
(1109, 10529, '5404', 'Jayvon Zimmerman', 'jayvonzimmerman@email.com', '', 'Unit 1 555 West Street', '', 'Garvoc', 'NT', '3018', 'AU', 'shipped'),
(1110, 10530, '5403', 'Cassidy Sullivan', 'cassidysullivan@email.com', '0491 570 157', '44', '7th Avenue', 'Idalia', 'NSW', '4104', 'AU', 'shipped'),
(1111, 10531, '5402', 'Mackenzie Moran', 'mackenziemoran@email.com', '', 'Unit 7 555 Glenwood Avenue', '', 'Plumpton', 'NT', '3931', 'AU', 'shipped'),
(1112, 10532, '5403', 'Johnathon Cline', 'johnathoncline@email.com', '', '44 Augusta Drive', '', 'South PErth', 'NT', '3197', 'AU', 'shipped'),
(1113, 10533, '5401', 'Kelsie Archer', 'kelsiearcher@email.com', '', '55 Mill Road', '', 'Two Rocks', 'QLD', '3824', 'AU', 'shipped'),
(1114, 10534, '5404', 'Annabel Bautista', 'annabelbautista@email.com', '0491 570 156', 'Unit 5 555', 'Canterbury Road', 'Bairnsdale', 'NT', '3190', 'AU', 'shipped'),
(1115, 10535, '5402', 'Adolfo Russell', 'adolforussell@email.com', '0491 570 158', 'Unit 3 555', 'Circle Drive', 'Lower Mitcham', 'QLD', '3192', 'AU', 'shipped'),
(1116, 10536, '5404', 'Akira Carpenter', 'akiracarpenter@email.com', '0491 570 156', 'Unit 2 555', '4th Street West', 'Cheltenham', 'SA', '4500', 'AU', 'shipped'),
(1117, 10537, '5403', 'Bryant Terrell', 'bryantterrell@email.com', '61 491 570 157', '99', '6th Street North', 'Wurruk', 'ACT', '3204', 'AU', 'shipped'),
(1118, 10538, '5400', 'Paityn Rojas', 'paitynrojas@email.com', '', 'Unit 4 555 Mill Street', '', 'Curra', 'SA', '4550', 'AU', 'shipped'),
(1119, 10539, '5403', 'Audrina Harmon', 'audrinaharmon@email.com', '0491 570 158', 'Unit 4 555', 'Maple Lane', 'St James', 'ACT', '4551', 'AU', 'shipped'),
(1120, 10540, '5404', 'Johnathon Cline', 'johnathoncline@email.com', '', '13 Forest Street', '', 'Caroline Springs', 'NT', '6100', 'AU', 'shipped'),
(1121, 10541, '5403', 'Matias Vazquez', 'matiasvazquez@email.com', '', '14 Beechwood Drive', '', 'Edgewater', 'ACT', '2912', 'AU', 'shipped'),
(1122, 10542, '5401', 'Amiya James', 'amiyajames@email.com', '0491 570 156', 'Unit 5 555', 'Madison Avenue', 'Elsternwick', 'TA', '3902', 'AU', 'shipped'),
(1123, 10543, '5403', 'Emilio Wood', 'emiliowood@email.com', '0491 570 159', '', 'Unit 3 555 Hudson Street', 'Maiden Gully', 'VIC', '6027', 'AU', 'shipped'),
(1124, 10544, '5403', 'Keaton Cox', 'keatoncox@email.com', '', '2/105 Briarwood Court', '', 'Clifton hill', 'NT', '4160', 'AU', 'shipped'),
(1125, 10545, '5403', 'Austin Lara', 'austinlara@email.com', '0491 570 110', '2/105', 'College Avenue', 'Parkdale', 'NSW', '4655', 'AU', 'shipped'),
(1126, 10546, '5404', 'Kareem Rubio', 'kareemrubio@email.com', '', '2/105 Madison Court', '', 'Wentworth', 'NSW', '2640', 'AU', 'shipped'),
(1127, 10547, '5403', 'Killian Nielsen', 'killiannielsen@email.com', '', 'Unit 3 555 Forest Drive', '', 'Evatt', 'SA', '3000', 'AU', 'shipped'),
(1128, 10548, '5403', 'Abbey Osborn', 'abbeyosborn@email.com', '0491 570 156', '2/105', 'College Street', 'Manor Lakes', 'TA', '4037', 'AU', 'shipped'),
(1129, 10549, '5404', 'Ada Mata', 'adamata@email.com', '61 491 570 110', '15/222', 'Street Road', 'Clapham', 'NSW', '4054', 'AU', 'shipped'),
(1130, 10550, '5401', 'Noelle Trujillo', 'noelletrujillo@email.com', '', '99 Grant Street', '', 'Doubleview', 'NT', '3228', 'AU', 'shipped'),
(1131, 10551, '5402', 'Averie Solis', 'averiesolis@email.com', '0491 570 156', '13', 'Inverness Drive', 'Strathmore', 'VIC', '3818', 'AU', 'shipped'),
(1132, 10552, '5400', 'Lina Howe', 'linahowe@email.com', '', '44 Lakeview Drive', '', 'Mawson Lakes', 'TA', '4575', 'AU', 'shipped'),
(1133, 10553, '5404', 'Brenda Pearson', 'brendapearson@email.com', '61 491 570 110', '208', 'Jefferson Street', 'St Kilda', 'QLD', '4810', 'AU', 'shipped'),
(1134, 10554, '5400', 'Arielle Powell', 'ariellepowell@email.com', '0491 570 110', '67', 'Garden Street', 'Cashmere', 'QLD', '3052', 'AU', 'shipped'),
(1135, 10555, '5401', 'Jack Proctor', 'jackproctor@email.com', '', 'Unit 1 555 Maiden Lane', '', 'Wangaratta', 'NT', '5034', 'AU', 'shipped'),
(1136, 10556, '5400', 'Kamden Gentry', 'kamdengentry@email.com', '', 'Unit 4 555 Monroe Drive', '', 'Tapping', 'ACT', '6038', 'AU', 'shipped'),
(1137, 10557, '5404', 'Emiliano Macias', 'emilianomacias@email.com', '0491 570 159', '', '67 Hanover Court', 'Churchlands', 'QLD', '6151', 'AU', 'shipped'),
(1138, 10558, '5404', 'Killian Nielsen', 'killiannielsen@email.com', '', 'Unit 3 555 Andover Court', '', 'Laceby', 'QLD', 'Fintona', 'AU', 'shipped'),
(1139, 10559, '5403', 'Mohammed Calderon', 'mohammedcalderon@email.com', '', 'Unit 3 555 Harrison Avenue', '', 'Hurstbridge', 'NT', '3889', 'AU', 'shipped'),
(1140, 10560, '5402', 'Caitlin Townsend', 'caitlintownsend@email.com', '61 491 570 157', 'Unit 1 555', 'Hartford Road', 'Dayboro', 'NT', '3078', 'AU', 'shipped'),
(1141, 10561, '5403', 'Arnav Calderon', 'arnavcalderon@email.com', '0491 570 159', '44', 'Pennsylvania Avenue', 'Highett', 'ACT', '4352', 'AU', 'shipped'),
(1142, 10562, '5404', 'Madyson Matthews', 'madysonmatthews@email.com', '', 'Unit 2 555 Edgewood Road', '', 'East Bendigo', 'NT', '6237', 'AU', 'shipped'),
(1143, 10563, '5401', 'Jefferson Gonzalez', 'jeffersongonzalez@email.com', '', '44 Heritage Drive', '', 'Echuca', 'ACT', '3202', 'AU', 'shipped'),
(1144, 10564, '5402', 'Belen Rhodes', 'belenrhodes@email.com', '0491 570 156', '13', 'Manor Drive', 'East Greenmount', 'ACT', '6020', 'AU', 'shipped'),
(1145, 10565, '5403', 'Jovany Palmer', 'jovanypalmer@email.com', '', '2/105 Summit Street', '', 'Essendon', 'SA', '3732', 'AU', 'shipped'),
(1146, 10566, '5402', 'Maxwell Kaiser', 'maxwellkaiser@email.com', '', 'Unit 1 555 Holly Court', '', 'BUNINYONG', 'NSW', '4311', 'AU', 'shipped'),
(1147, 10567, '5401', 'Averie Solis', 'averiesolis@email.com', '0491 570 156', 'Unit 1 555', 'Valley Road', 'Newtown', 'SA', '4817', 'AU', 'shipped'),
(1148, 10568, '5400', 'Martin Rivera', 'martinrivera@email.com', '', '2/105 5th Avenue', '', 'Burpengary', 'VIC', '6432', 'AU', 'shipped'),
(1149, 10569, '5400', 'Alaina Harding', 'alainaharding@email.com', '0491 570 157', '99', 'Ridge Avenue', 'lucknow', 'NT', '3033', 'AU', 'shipped'),
(1150, 10570, '5404', 'Keshawn Rivers', 'keshawnrivers@email.com', '', '208 West Street', '', 'Brunswick West', 'NSW', '3275', 'AU', 'shipped'),
(1151, 10571, '5404', 'Maxwell Kaiser', 'maxwellkaiser@email.com', '', 'Unit 1 555 Lake Avenue', '', 'Fraser Rise', 'VIC', '3920', 'AU', 'shipped'),
(1152, 10572, '5404', 'Chad Day', 'chadday@email.com', '0491 570 156', '2/105', 'Victoria Court', 'Townsville City', 'ACT', '4358', 'AU', 'shipped'),
(1153, 10573, '5403', 'Clarence Maddox', 'clarencemaddox@email.com', '61 491 570 157', '67', 'Myrtle Avenue', 'Dianella', 'NT', '3206', 'AU', 'shipped'),
(1154, 10574, '5402', 'Dixie Griffin', 'dixiegriffin@email.com', '0491 570 158', 'Unit 4 555', 'White Street', 'Joondanna', 'QLD', '3142', 'AU', 'shipped'),
(1155, 10575, '5401', 'Gunner Archer', 'gunnerarcher@email.com', '', 'Unit 1 555 Somerset Drive', '', 'Ivanhoe', 'ACT', '3040', 'AU', 'shipped'),
(1156, 10576, '5404', 'Jordon Tate', 'jordontate@email.com', '', 'Unit 5 555 1st Avenue', '', 'Kensington', 'NT', '3363', 'AU', 'shipped'),
(1157, 10577, '5400', 'Ivy Wade', 'ivywade@email.com', '', 'Unit 7 555 Hawthorne Avenue', '', 'KENSINGTON, 6151, WA', 'QLD', '3055', 'AU', 'shipped'),
(1158, 10578, '5402', 'Johnathon Reyes', 'johnathonreyes@email.com', '', '44 6th Street North', '', 'Gowanbrae', 'TA', '3099', 'AU', 'shipped'),
(1159, 10579, '5403', 'Mckayla Booker', 'mckaylabooker@email.com', '', 'Unit 1 555 Highland Avenue', '', 'Travancore', 'NT', '6503', 'AU', 'shipped'),
(1160, 10580, '5401', 'Jocelynn Bender', 'jocelynnbender@email.com', '', 'Unit 1 555 Howard Street', '', 'Quarry Hill', 'NT', '2911', 'AU', 'shipped'),
(1161, 10581, '5402', 'Darian Cunningham', 'dariancunningham@email.com', '0491 570 159', '55', 'Somerset Drive', 'Point Cook', 'NSW', '3437', 'AU', 'shipped'),
(1162, 10582, '5404', 'Darion Richard', 'darionrichard@email.com', '0491 570 110', 'Unit 3 555', 'Taylor Street', 'Paynesville', 'ACT', '3023', 'AU', 'shipped'),
(1163, 10583, '5403', 'Joselyn Cantu', 'joselyncantu@email.com', '', 'Unit 7 555 Route 4', '', 'Torquay', 'NSW', '5043', 'AU', 'shipped'),
(1164, 10584, '5403', 'Lamar Roberts', 'lamarroberts@email.com', '', 'Unit 5 555 Oak Lane', '', 'Niddrie', 'NT', '3400', 'AU', 'shipped'),
(1165, 10585, '5402', 'Adolfo Russell', 'adolforussell@email.com', '0491 570 158', '13', 'Woodland Road', 'Mildura', 'QLD', '3754', 'AU', 'shipped'),
(1166, 10586, '5400', 'Javion Pollard', 'javionpollard@email.com', '', '208 Church Street North', '', 'Gympie', 'SA', '3496', 'AU', 'shipped'),
(1167, 10587, '5400', 'Cael Santiago', 'caelsantiago@email.com', '0491 570 158', 'Unit 1 555', 'Creekside Drive', 'Harristown', 'SA', '3106', 'AU', 'shipped'),
(1168, 10588, '5403', 'Carlie Lam', 'carlielam@email.com', '61 491 570 110', 'Unit 4 555', 'Grand Avenue', 'Carine', 'ACT', '6060', 'AU', 'shipped'),
(1169, 10589, '5403', 'Annabelle Curtis', 'annabellecurtis@email.com', '0491 570 110', '44', 'Lafayette Street', 'Tarneit', 'NSW', '6102', 'AU', 'shipped'),
(1170, 10590, '5402', 'Evelin Grant', 'evelingrant@email.com', '', 'Unit 8 555 Broad Street West', '', 'Tahara', 'NSW', '3360', 'AU', 'shipped'),
(1171, 10591, '5403', 'Aspen Stevenson', 'aspenstevenson@email.com', '0491 570 156', '99', 'Willow Avenue', 'cotswold hills', 'NT', '6028', 'AU', 'shipped'),
(1172, 10592, '5403', 'Jack Proctor', 'jackproctor@email.com', '', '14 Park Street', '', 'Brassall', 'VIC', '5037', 'AU', 'shipped'),
(1173, 10593, '5401', 'Kayley Fritz', 'kayleyfritz@email.com', '', '14 Bridge Street', '', 'Middle Ridge', 'NT', '2605', 'AU', 'shipped'),
(1174, 10594, '5403', 'Jazmin Figueroa', 'jazminfigueroa@email.com', '', '67 Forest Drive', '', 'Stirling', 'QLD', '4815', 'AU', 'shipped'),
(1175, 10595, '5403', 'Mireya Wall', 'mireyawall@email.com', '', '44 Holly Drive', '', 'sebastopol', 'NT', '4558', 'AU', 'shipped'),
(1176, 10596, '5400', 'Martin Rivera', 'martinrivera@email.com', '', '2/105 Route 64', '', 'Alfredton', 'NT', '5031', 'AU', 'shipped'),
(1177, 10597, '5404', 'Franklin Mcdonald', 'franklinmcdonald@email.com', '', 'Unit 5 555 Fairway Drive', '', 'Bushland Beach', 'NT', '3910', 'AU', 'shipped'),
(1178, 10598, '5402', 'Lara Callahan', 'laracallahan@email.com', '', 'Unit 8 555 Jackson Street', '', 'South Morang', 'TA', '3158', 'AU', 'shipped'),
(1179, 10599, '5404', 'Elisha Mclean', 'elishamclean@email.com', '0491 570 159', '', '2/105 Hanover Court', 'Lakes Entrance', 'SA', '6036', 'AU', 'shipped'),
(1180, 10600, '5401', 'Abbigail Archer', 'abbigailarcher@email.com', '61 491 570 157', '15/222', 'Railroad Street', 'Ferny Hills', 'NT', '3505', 'AU', 'shipped'),
(1181, 10601, '5403', 'Casey Weber', 'caseyweber@email.com', '0491 570 158', '13', 'Oxford Court', 'Winter Valley', 'NSW', '3805', 'AU', 'shipped'),
(1182, 10602, '5404', 'Camille Bruce', 'camillebruce@email.com', '0491 570 156', 'Unit 1 555', 'Myrtle Street', 'Theodore', 'NSW', '3026', 'AU', 'shipped'),
(1183, 10603, '5403', 'Kymani Gilbert', 'kymanigilbert@email.com', '', 'Unit 8 555 Grand Avenue', '', 'Kingsley', 'ACT', '5251', 'AU', 'shipped'),
(1184, 10604, '5401', 'Ari Frank', 'arifrank@email.com', '0491 570 159', 'Unit 4 555', 'Myrtle Street', 'mildura', 'NSW', '3195', 'AU', 'shipped'),
(1185, 10605, '5404', 'Jordyn Osborne', 'jordynosborne@email.com', '', 'Unit 6 555 Wall Street', '', 'MYSTERTON', 'ACT', '3337', 'AU', 'shipped'),
(1186, 10606, '5403', 'Kristopher Velez', 'kristophervelez@email.com', '', 'Unit 6 555 Old York Road', '', 'Glandore', 'VIC', '3027', 'AU', 'shipped'),
(1187, 10607, '5401', 'Maryjane Ayers', 'maryjaneayers@email.com', '', '99 Lakeview Drive', '', 'Park Orchards', 'QLD', '6231', 'AU', 'shipped'),
(1188, 10608, '5402', 'Johnny Craig', 'johnnycraig@email.com', '', 'Unit 1 555 Bay Street', '', 'Cairnlea', 'TA', '832', 'AU', 'shipped'),
(1189, 10609, '5404', 'Paige Potter', 'paigepotter@email.com', '', 'Unit 3 555 4th Street West', '', 'MELTON', 'NT', '4554', 'AU', 'shipped'),
(1190, 10610, '5404', 'Hailey Dyer', 'haileydyer@email.com', '', '2/105 West Avenue', '', 'Narrogin', 'VIC', '810', 'AU', 'shipped'),
(1191, 10611, '5401', 'Kymani Gilbert', 'kymanigilbert@email.com', '', '15/222 Dogwood Lane', '', 'Glencoe', 'TA', '2914', 'AU', 'shipped'),
(1192, 10612, '5403', 'Antoine Todd', 'antoinetodd@email.com', '0491 570 157', '2/105', '12th Street', 'Keilor', 'ACT', '3101', 'AU', 'shipped'),
(1193, 10613, '5403', 'Haven Morrison', 'havenmorrison@email.com', '', 'Unit 4 555 Columbia Street', '', 'Sale', 'NT', '2648', 'AU', 'shipped'),
(1194, 10614, '5401', 'Everett Huffman', 'everetthuffman@email.com', '', '14 Canterbury Drive', '', 'Box Hill South', 'ACT', '3163', 'AU', 'shipped'),
(1195, 10615, '5400', 'Amiya Potts', 'amiyapotts@email.com', '0491 570 157', 'Unit 4 555', 'Bridle Lane', 'Wantirna South', 'SA', '3151', 'AU', 'shipped'),
(1196, 10616, '5402', 'Karla Patrick', 'karlapatrick@email.com', '', 'Unit 4 555 Cleveland Street', '', 'Morwell', 'ACT', '5153', 'AU', 'shipped'),
(1197, 10617, '5401', 'Emiliano Macias', 'emilianomacias@email.com', '0491 570 159', '', '13 Cherry Street', 'Oakey', 'NT', '2731', 'AU', 'shipped'),
(1198, 10618, '5402', 'Kayla Yoder', 'kaylayoder@email.com', '', 'Unit 4 555 Chestnut Avenue', '', 'Jingili', 'SA', '3154', 'AU', 'shipped'),
(1199, 10619, '5403', 'Keegan Salinas', 'keegansalinas@email.com', '', '15/222 Lantern Lane', '', 'Shelbourne', 'VIC', '3450', 'AU', 'shipped'),
(1200, 10620, '5401', 'Kylan Garza', 'kylangarza@email.com', '', '44 North Avenue', '', 'Aberfeldie', 'NT', '2602', 'AU', 'shipped'),
(1201, 10621, '5403', 'Julius Moyer', 'juliusmoyer@email.com', '', '13 Division Street', '', 'Como', 'ACT', '3028', 'AU', 'shipped'),
(1202, 10622, '5400', 'Jadiel Hayes', 'jadielhayes@email.com', '', '13 York Street', '', 'Mulgrave', 'VIC', '5073', 'AU', 'shipped'),
(1203, 10623, '5402', 'Cadence Vazquez', 'cadencevazquez@email.com', '0491 570 156', '44', '2nd Street North', 'MILDURA', 'VIC', '3127', 'AU', 'shipped'),
(1204, 10624, '5404', 'Benjamin Mullen', 'benjaminmullen@email.com', '0491 570 158', '2/105', 'East Avenue', 'Burnside', 'NSW', '3977', 'AU', 'shipped'),
(1205, 10625, '5404', 'India Higgins', 'indiahiggins@email.com', '', 'Unit 6 555 Cambridge Road', '', 'Glen Waverley', 'SA', '3020', 'AU', 'shipped'),
(1206, 10626, '5403', 'Kiley Kerr', 'kileykerr@email.com', '', '67 Bank Street', '', 'Strathdale', 'NT', '385', 'AU', 'shipped'),
(1207, 10627, '5401', 'Michael Benjamin', 'michaelbenjamin@email.com', '', 'Unit 4 555 Hilltop Road', '', 'Kandanga', 'QLD', '2902', 'AU', 'shipped'),
(1208, 10628, '5400', 'Kassidy Weber', 'kassidyweber@email.com', '', '67 Route 29', '', 'Dennington', 'NT', '3137', 'AU', 'shipped'),
(1209, 10629, '5402', 'Kaylie Terry', 'kaylieterry@email.com', '', '14 Lawrence Street', '', 'Rutherglen', 'NSW', '3975', 'AU', 'shipped'),
(1210, 10630, '5404', 'Bryant Murillo', 'bryantmurillo@email.com', '61 491 570 110', '2/105', 'Route 27', 'Aroona', 'ACT', '3978', 'AU', 'shipped'),
(1211, 10631, '5402', 'Paloma Richard', 'palomarichard@email.com', '', '2/105 Church Road', '', 'Glastonbury', 'NSW', '4560', 'AU', 'shipped'),
(1212, 10632, '5401', 'Izabelle Benton', 'izabellebenton@email.com', '', 'Unit 4 555 Eagle Road', '', 'Morayfield', 'QLD', '4361', 'AU', 'shipped'),
(1213, 10633, '5402', 'Heath Gutierrez', 'heathgutierrez@email.com', '', '55 Arch Street', '', 'Kennington', 'QLD', '6015', 'AU', 'shipped'),
(1214, 10634, '5404', 'Evelin Grant', 'evelingrant@email.com', '', 'Unit 7 555 Cambridge Road', '', 'Glen Iris', 'ACT', '3201', 'AU', 'shipped'),
(1215, 10635, '5404', 'Alyssa Hinton', 'alyssahinton@email.com', '0491 570 156', 'Unit 8 555', 'Hawthorne Lane', 'Wonga Park', 'TA', '3280', 'AU', 'shipped'),
(1216, 10636, '5400', 'Mackenzie Moran', 'mackenziemoran@email.com', '', '67 Maple Lane', '', 'Cawdor', 'TA', '5126', 'AU', 'shipped'),
(1217, 10637, '5401', 'Elliot Nicholson', 'elliotnicholson@email.com', '0491 570 156', '', '15/222 Ivy Lane', 'Cambooya', 'VIC', '6055', 'AU', 'shipped'),
(1218, 10638, '5402', 'Daniel Raymond', 'danielraymond@email.com', '0491 570 110', '99', 'Sunset Drive', 'Ferny Grove', 'ACT', '4154', 'AU', 'shipped'),
(1219, 10639, '5400', 'Michaela Drake', 'michaeladrake@email.com', '', '13 14th Street', '', 'Fulham Gardens', 'NT', '6433', 'AU', 'shipped'),
(1220, 10640, '5400', 'Journey Cross', 'journeycross@email.com', '', '14 Jones Street', '', 'Chiltern', 'QLD', '834', 'AU', 'shipped'),
(1221, 10641, '5401', 'Jessica Gates', 'jessicagates@email.com', '', 'Unit 1 555 5th Street North', '', 'Duncraig', 'TA', '3075', 'AU', 'shipped'),
(1222, 10642, '5400', 'Nikolas Luna', 'nikolasluna@email.com', '', 'Unit 7 555 King Street', '', 'BUNDAMBA', 'TA', '6306', 'AU', 'shipped'),
(1223, 10643, '5404', 'Lilyana Castaneda', 'lilyanacastaneda@email.com', '', '2/105 Franklin Street', '', 'Iluka', 'NT', '6233', 'AU', 'shipped'),
(1224, 10644, '5400', 'Marlon Sanders', 'marlonsanders@email.com', '', '208 Cherry Street', '', 'Wharparilla', 'VIC', '6330', 'AU', 'shipped'),
(1225, 10645, '5403', 'Kaiya Sosa', 'kaiyasosa@email.com', '', '55 York Road', '', 'Bulleen', 'QLD', '6016', 'AU', 'shipped'),
(1226, 10646, '5404', 'Giovani Rhodes', 'giovanirhodes@email.com', '', 'Unit 5 555 Franklin Court', '', 'Canterbury', 'VIC', '3116', 'AU', 'shipped'),
(1227, 10647, '5404', 'Olive Logan', 'olivelogan@email.com', '', 'Unit 4 555 Main Street South', '', 'Karana Downs', 'VIC', '3568', 'AU', 'shipped'),
(1228, 10648, '5403', 'Arthur Glenn', 'arthurglenn@email.com', '0491 570 159', '67', 'Summit Street', 'Albany Creek', 'VIC', '5066', 'AU', 'shipped'),
(1229, 10649, '5401', 'Everett Stephens', 'everettstephens@email.com', '', '44 Hilltop Road', '', 'SIPPY DOWNS', 'QLD', '4156', 'AU', 'shipped'),
(1230, 10650, '5401', 'Madeline Blackwell', 'madelineblackwell@email.com', '', '2/105 Overlook Circle', '', 'Altona', 'TA', '4509', 'AU', 'shipped'),
(1231, 10651, '5403', 'Dustin Macias', 'dustinmacias@email.com', '0491 570 159', '14', 'Lafayette Street', 'Vermont', 'NT', '3079', 'AU', 'shipped'),
(1232, 10652, '5401', 'Carlie Lam', 'carlielam@email.com', '61 491 570 110', 'Unit 4 555', 'Evergreen Drive', 'Springwood', 'ACT', '3130', 'AU', 'shipped'),
(1233, 10653, '5401', 'Kaitlin Mercado', 'kaitlinmercado@email.com', '', '55 Evergreen Drive', '', 'Tamaree', 'NSW', '4380', 'AU', 'shipped'),
(1234, 10654, '5403', 'Johnathan Boyd', 'johnathanboyd@email.com', '', '67 5th Street North', '', 'Langwarrin', 'ACT', '3851', 'AU', 'shipped'),
(1235, 10655, '5403', 'Elena Bass', 'elenabass@email.com', '0491 570 159', '', '15/222 Cross Street', 'Eaglemont', 'ACT', '6147', 'AU', 'shipped'),
(1236, 10656, '5400', 'Averie Solis', 'averiesolis@email.com', '0491 570 156', 'Unit 2 555', 'Park Street', 'Mansfield Park', 'ACT', '3502', 'AU', 'shipped'),
(1237, 10657, '5404', 'Julius Moyer', 'juliusmoyer@email.com', '', 'Unit 8 555 Hillside Drive', '', 'Amamoor', 'SA', '3016', 'AU', 'shipped'),
(1238, 10658, '5401', 'Bruno Reeves', 'brunoreeves@email.com', '0491 570 158', '2/105', 'Cleveland Avenue', 'Balcatta', 'SA', '6059', 'AU', 'shipped'),
(1239, 10659, '5401', 'Anaya English', 'anayaenglish@email.com', '0491 570 159', 'Unit 2 555', 'Dogwood Drive', 'Grange', 'ACT', '3103', 'AU', 'shipped'),
(1240, 10660, '5402', 'Kylan Garza', 'kylangarza@email.com', '', 'Unit 6 555 Laurel Lane', '', 'Rostrevor', 'TA', '2604', 'AU', 'shipped'),
(1241, 10661, '5401', 'Bryce Mendez', 'brycemendez@email.com', '0491 570 157', 'Unit 1 555', 'Meadow Lane', 'Urangan', 'SA', '3034', 'AU', 'shipped'),
(1242, 10662, '5400', 'Leroy Mack', 'leroymack@email.com', '', '14 Franklin Court', '', 'Woodroffe', 'VIC', '2903', 'AU', 'shipped'),
(1243, 10663, '5404', 'Israel Mckenzie', 'israelmckenzie@email.com', '', 'Unit 5 555 Route 70', '', 'Brookfield', 'NSW', '3515', 'AU', 'shipped'),
(1244, 10664, '5400', 'Corbin Barnett', 'corbinbarnett@email.com', '61 491 570 157', 'Unit 8 555', 'Route 17', 'Kaleen', 'QLD', '4503', 'AU', 'shipped'),
(1245, 10665, '5400', 'Emmy Juarez', 'emmyjuarez@email.com', '0491 570 159', '99 Inverness Drive', '', 'Albert Park', 'NT', '3170', 'AU', 'shipped'),
(1246, 10666, '5404', 'Marie Molina', 'mariemolina@email.com', '', '67 Howard Street', '', 'Heathmont', 'TA', '3076', 'AU', 'shipped'),
(1247, 10667, '5400', 'Camila Norris', 'camilanorris@email.com', '0491 570 156', 'Unit 8 555', 'Jackson Street', 'Kirwan', 'NSW', '4171', 'AU', 'shipped'),
(1248, 10668, '5400', 'Johnny Chavez', 'johnnychavez@email.com', '', 'Unit 3 555 Valley Drive', '', 'Alligator Creek', 'ACT', '4567', 'AU', 'shipped'),
(1249, 10669, '5403', 'Lilly Villegas', 'lillyvillegas@email.com', '', 'Unit 1 555 Poplar Street', '', 'Hilbert', 'NSW', '4510', 'AU', 'shipped'),
(1250, 10670, '5400', 'Kaylie Terry', 'kaylieterry@email.com', '', '15/222 Spruce Avenue', '', 'Sunshine', 'SA', '3187', 'AU', 'shipped'),
(1251, 10671, '5400', 'Keshawn Rivers', 'keshawnrivers@email.com', '', '55 Lantern Lane', '', 'Clifton', 'VIC', '3173', 'AU', 'shipped'),
(1252, 10672, '5403', 'Kristen Vega', 'kristenvega@email.com', '', '99 John Street', '', 'Blackburn South', 'NT', '3622', 'AU', 'shipped'),
(1253, 10673, '5403', 'Izayah Tran', 'izayahtran@email.com', '', '67 Clark Street', '', 'Moama', 'NT', '3352', 'AU', 'shipped'),
(1254, 10674, '5403', 'Macie Wells', 'maciewells@email.com', '', '208 Mulberry Lane', '', 'The Palms', 'VIC', '3160', 'AU', 'shipped'),
(1255, 10675, '5401', 'Jacob Reilly', 'jacobreilly@email.com', '', 'Unit 2 555 4th Street South', '', 'Glenmaggie', 'VIC', '5024', 'AU', 'shipped'),
(1256, 10676, '5404', 'Jakayla Flores', 'jakaylaflores@email.com', '', 'Unit 1 555 Spruce Street', '', 'Aspendale', 'ACT', '3140', 'AU', 'shipped'),
(1257, 10677, '5400', 'Jessica Gates', 'jessicagates@email.com', '', 'Unit 1 555 Bridle Lane', '', 'Quinns Rocks', 'NT', '3135', 'AU', 'shipped'),
(1258, 10678, '5403', 'Evelin Grant', 'evelingrant@email.com', '', '44 Main Street', '', 'Malvern East', 'SA', '3556', 'AU', 'shipped'),
(1259, 10679, '5403', 'Journey Cross', 'journeycross@email.com', '', '15/222 Union Street', '', 'Burns Beach', 'NT', '3844', 'AU', 'shipped'),
(1260, 10680, '5400', 'Melody Munoz', 'melodymunoz@email.com', '', '67 Adams Street', '', 'Heyfield', 'NT', '3085', 'AU', 'shipped'),
(1261, 10681, '5401', 'Kira Carter', 'kiracarter@email.com', '', '44 Railroad Avenue', '', 'Dingley Village', 'NT', '3631', 'AU', 'shipped'),
(1262, 10682, '5401', 'Laila Kidd', 'lailakidd@email.com', '', '208 Elm Avenue', '', 'Lilydale', 'QLD', '3930', 'AU', 'shipped'),
(1263, 10683, '5404', 'Marin Berry', 'marinberry@email.com', '', 'Unit 4 555 Delaware Avenue', '', 'Marrara', 'SA', '6714', 'AU', 'shipped'),
(1264, 10684, '5404', 'Cesar Weeks', 'cesarweeks@email.com', '0491 570 159', 'Unit 5 555', 'Sherwood Drive', 'Mount Evelyn', 'TA', '3285', 'AU', 'shipped'),
(1265, 10685, '5404', 'Everett Levy', 'everettlevy@email.com', '', '208 Grand Avenue', '', 'Wakerley', 'NSW', '6148', 'AU', 'shipped'),
(1266, 10686, '5402', 'Bryson James', 'brysonjames@email.com', '0491 570 158', '67', 'Riverside Drive', 'Toowoomba City', 'VIC', '2617', 'AU', 'shipped'),
(1267, 10687, '5402', 'Abbey Osborn', 'abbeyosborn@email.com', '0491 570 157', 'Unit 8 555', 'Buckingham Drive', 'Eatons Hill', 'TA', '4055', 'AU', 'shipped'),
(1268, 10688, '5403', 'Keegan Salinas', 'keegansalinas@email.com', '', 'Unit 8 555 Country Club Drive', '', 'Essendon North', 'QLD', '3003', 'AU', 'shipped'),
(1269, 10689, '5404', 'Alessandro Christian', 'alessandrochristian@email.com', '0491 570 157', '15/222', 'Canal Street', 'Everton Hills', 'TA', '3115', 'AU', 'shipped'),
(1270, 10690, '5400', 'Dean Riddle', 'deanriddle@email.com', '0491 570 159', '67', 'Linden Avenue', 'Taylor\'s Hill', 'ACT', '2612', 'AU', 'shipped'),
(1271, 10691, '5401', 'Johnny Harrison', 'johnnyharrison@email.com', '', '14 2nd Street North', '', 'Valley View', 'QLD', '3180', 'AU', 'shipped'),
(1272, 10692, '5401', 'Alani Shaw', 'alanishaw@email.com', '0491 570 110', '67', 'Penn Street', 'Warner', 'SA', '3132', 'AU', 'shipped'),
(1273, 10693, '5401', 'Dean Riddle', 'deanriddle@email.com', '0491 570 159', 'Unit 4 555', 'Route 27', 'Canina', 'TA', '3044', 'AU', 'shipped'),
(1274, 10694, '5403', 'Johnathon Cline', 'johnathoncline@email.com', '', 'Unit 4 555 Laurel Street', '', 'Wanneroo', 'NT', '3357', 'AU', 'shipped'),
(1275, 10695, '5403', 'Grayson Kemp', 'graysonkemp@email.com', '', '2/105 Briarwood Drive', '', 'Lockwood', 'QLD', '3073', 'AU', 'shipped'),
(1276, 10696, '5400', 'Antoine Todd', 'antoinetodd@email.com', '0491 570 157', '55', 'Penn Street', 'Burwood East', 'VIC', '3037', 'AU', 'shipped'),
(1277, 10697, '5400', 'Everett Levy', 'everettlevy@email.com', '', '15/222 Belmont Avenue', '', 'Mount Louisa', 'SA', '820', 'AU', 'shipped'),
(1278, 10698, '5401', 'Maribel Keller', 'maribelkeller@email.com', '', '55 Sherwood Drive', '', 'Sedgwick', 'TA', '3579', 'AU', 'shipped'),
(1279, 10699, '5400', 'Emanuel Sanchez', 'emanuelsanchez@email.com', '61 491 570 157', '', '208 Hillcrest Avenue', 'Ascot Vale', 'VIC', '3338', 'AU', 'shipped'),
(1280, 10700, '5402', 'Makenna Baxter', 'makennabaxter@email.com', '', 'Unit 2 555 Woodland Drive', '', 'Darley', 'ACT', '4346', 'AU', 'shipped'),
(1281, 10701, '5401', 'Miya Macdonald', 'miyamacdonald@email.com', '', '44 Country Club Road', '', 'Mildura South', 'ACT', '2618', 'AU', 'shipped'),
(1282, 10702, '5402', 'Kolton Sparks', 'koltonsparks@email.com', '', 'Unit 2 555 Atlantic Avenue', '', 'Clarence Park', 'VIC', '3218', 'AU', 'shipped'),
(1283, 10703, '5404', 'Adrien Douglas', 'adriendouglas@email.com', '0491 570 157', 'Unit 5 555', 'Arlington Avenue', 'Ferny grove', 'TA', '3134', 'AU', 'shipped'),
(1284, 10704, '5404', 'Cierra Griffith', 'cierragriffith@email.com', '0491 570 159', 'Unit 5 555', 'Woodland Road', 'McDowall', 'QLD', '3551', 'AU', 'shipped'),
(1285, 10705, '5401', 'Mylie Hanna', 'myliehanna@email.com', '', 'Unit 4 555 Victoria Court', '', 'Knoxfield', 'SA', '2600', 'AU', 'shipped'),
(1286, 10706, '5401', 'Darryl Curry', 'darrylcurry@email.com', '0491 570 110', 'Unit 4 555', 'Main Street South', 'Laverton North', 'VIC', '3186', 'AU', 'shipped'),
(1287, 10707, '5404', 'Ari Frank', 'arifrank@email.com', '0491 570 159', '2/105', 'Cambridge Road', 'Balwyn', 'NSW', '3124', 'AU', 'shipped'),
(1288, 10708, '5401', 'Anna Bond', 'annabond@email.com', '0491 570 158', '55', 'Brandywine Drive', 'Woodford', 'TA', '6054', 'AU', 'shipped'),
(1289, 10709, '5401', 'Lauryn Colon', 'lauryncolon@email.com', '', 'Unit 4 555 Park Avenue', '', 'Campbell', 'TA', '2582', 'AU', 'shipped'),
(1290, 10710, '5404', 'Kayley Ramirez', 'kayleyramirez@email.com', '', 'Unit 1 555 Roberts Road', '', 'Brookdale', 'VIC', '3882', 'AU', 'shipped'),
(1291, 10711, '5402', 'Annie Duran', 'annieduran@email.com', '0491 570 156', '2/105', 'Old York Road', 'East Fremantle', 'VIC', '6101', 'AU', 'shipped'),
(1292, 10712, '5404', 'Dean Bird', 'deanbird@email.com', '0491 570 159', '2/105', 'Taylor Street', 'DIANELLA', 'QLD', '6006', 'AU', 'shipped'),
(1293, 10713, '5402', 'Albert Larsen', 'albertlarsen@email.com', '0491 570 159', 'Unit 6 555', 'Jefferson Avenue', 'Ferny hills', 'QLD', '4520', 'AU', 'shipped'),
(1294, 10714, '5403', 'Kymani Gilbert', 'kymanigilbert@email.com', '', '14 Willow Street', '', 'Wulguru', 'SA', '4301', 'AU', 'shipped'),
(1295, 10715, '5400', 'Kylan Garza', 'kylangarza@email.com', '', 'Unit 7 555 Buckingham Drive', '', 'Invermay', 'VIC', '3939', 'AU', 'shipped'),
(1296, 10716, '5401', 'Paige Potter', 'paigepotter@email.com', '', 'Unit 5 555 Depot Street', '', 'Burdell', 'VIC', '4559', 'AU', 'shipped'),
(1297, 10717, '5403', 'Brennan Carlson', 'brennancarlson@email.com', '61 491 570 110', 'Unit 8 555', 'Lake Avenue', 'Swanfels', 'SA', '3156', 'AU', 'shipped'),
(1298, 10718, '5400', 'Miah Mccoy', 'miahmccoy@email.com', '', 'Unit 4 555 Mill Street', '', 'Rosslea', 'TA', '6315', 'AU', 'shipped'),
(1299, 10719, '5403', 'Michaela Drake', 'michaeladrake@email.com', '', '44 Durham Court', '', 'Maribyrnong', 'SA', '3013', 'AU', 'shipped'),
(1300, 10720, '5402', 'Johnathon Reyes', 'johnathonreyes@email.com', '', '44 Country Club Drive', '', 'Brunswick', 'NSW', '3356', 'AU', 'shipped'),
(1301, 10721, '5401', 'Averie Solis', 'averiesolis@email.com', '0491 570 156', 'Unit 2 555', 'Holly Court', 'Meringandan West', 'SA', '2905', 'AU', 'shipped'),
(1302, 10722, '5402', 'Lamont Mcguire', 'lamontmcguire@email.com', '', '44 Meadow Street', '', 'Keilor DOwns', 'SA', '3919', 'AU', 'shipped'),
(1303, 10723, '5404', 'Enrique Zhang', 'enriquezhang@email.com', '0491 570 156', '15/222 Belmont Avenue', '', 'Shoreham', 'ACT', '812', 'AU', 'shipped'),
(1304, 10724, '5404', 'Jordyn Forbes', 'jordynforbes@email.com', '', '2/105 Locust Lane', '', 'Chirnside Park', 'ACT', '6271', 'AU', 'shipped'),
(1305, 10725, '5402', 'Maribel Keller', 'maribelkeller@email.com', '', '2/105 Monroe Street', '', 'WENDOUREE', 'NSW', '6285', 'AU', 'shipped'),
(1306, 10726, '5402', 'Marshall Lewis', 'marshalllewis@email.com', '', '208 Hill Street', '', 'Drive', 'QLD', '6281', 'AU', 'shipped'),
(1307, 10727, '5404', 'Felicity Fisher', 'felicityfisher@email.com', '', 'Unit 5 555 Bridle Court', '', 'Mentone', 'ACT', '4370', 'AU', 'shipped'),
(1308, 10728, '5401', 'Leyla Campbell', 'leylacampbell@email.com', '', 'Unit 5 555 Walnut Street', '', 'Carlisle', 'SA', '3139', 'AU', 'shipped'),
(1309, 10729, '5402', 'Kylan Garza', 'kylangarza@email.com', '', 'Unit 5 555 4th Street South', '', 'Fulham', 'NT', '3057', 'AU', 'shipped'),
(1310, 10730, '5402', 'Jaliyah Mora', 'jaliyahmora@email.com', '', '13 Oak Street', '', 'South Perth', 'ACT', '3174', 'AU', 'shipped'),
(1311, 10731, '5401', 'Chaz Barr', 'chazbarr@email.com', '0491 570 157', 'Unit 4 555', 'Sycamore Street', 'Thornlands', 'NSW', '4401', 'AU', 'shipped'),
(1312, 10732, '5404', 'Aspen Ortega', 'aspenortega@email.com', '0491 570 159', '208', 'Andover Court', 'Kew', 'NSW', '4371', 'AU', 'shipped'),
(1313, 10733, '5401', 'Marshall Lewis', 'marshalllewis@email.com', '', 'Unit 8 555 Jefferson Court', '', 'Douglas', 'NSW', '2904', 'AU', 'shipped'),
(1314, 10734, '5401', 'Jakayla Flores', 'jakaylaflores@email.com', '', '55 Chestnut Street', '', 'MOONEE PONDS', 'SA', '3277', 'AU', 'shipped'),
(1315, 10735, '5404', 'Jay Torres', 'jaytorres@email.com', '', 'Unit 7 555 Orchard Lane', '', 'Ferndale', 'QLD', '6004', 'AU', 'shipped'),
(1316, 10736, '5401', 'Joselyn Cantu', 'joselyncantu@email.com', '', 'Unit 4 555 Dogwood Drive', '', 'Warrandyte', 'QLD', '3125', 'AU', 'shipped'),
(1317, 10737, '5401', 'Mollie Brewer', 'molliebrewer@email.com', '', '208 Marshall Street', '', 'Noosa Heads', 'QLD', '6525', 'AU', 'shipped'),
(1318, 10738, '5402', 'Cayden Li', 'caydenli@email.com', '0491 570 158', 'Unit 1 555', 'Buckingham Drive', 'Saint Albans', 'NSW', '6105', 'AU', 'shipped'),
(1319, 10739, '5401', 'Maribel Keller', 'maribelkeller@email.com', '', '2/105 Andover Court', '', 'Lalor', 'NT', '6051', 'AU', 'shipped'),
(1320, 10740, '5400', 'Ada Sullivan', 'adasullivan@email.com', '61 491 570 157', '208', 'Madison Avenue', 'Bridgeman Downs', 'VIC', '4061', 'AU', 'shipped'),
(1321, 10741, '5400', 'Matias Vazquez', 'matiasvazquez@email.com', '', 'Unit 1 555 Holly Court', '', 'Crace', 'NSW', '2732', 'AU', 'shipped'),
(1322, 10742, '5400', 'Annabel Bautista', 'annabelbautista@email.com', '0491 570 156', 'Unit 1 555', 'Beech Street', 'Arana Hills', 'VIC', '3301', 'AU', 'shipped'),
(1323, 10743, '5402', 'Giovanni Bray', 'giovannibray@email.com', '', 'Unit 1 555 Locust Lane', '', 'Toorak', 'VIC', '4812', 'AU', 'shipped'),
(1324, 10744, '5402', 'Luz Burton', 'luzburton@email.com', '', '55 Arch Street', '', 'Preston', 'QLD', '3200', 'AU', 'shipped'),
(1325, 10745, '5400', 'Asia Jackson', 'asiajackson@email.com', '61 491 570 110', 'Unit 5 555', 'Colonial Avenue', 'Taylors Hill', 'QLD', '3129', 'AU', 'shipped'),
(1326, 10746, '5401', 'Jessica Liu', 'jessicaliu@email.com', '', 'Unit 4 555 Penn Street', '', 'Flynn', 'QLD', '4505', 'AU', 'shipped'),
(1327, 10747, '5402', 'Kendrick Atkins', 'kendrickatkins@email.com', '', 'Unit 7 555 4th Street', '', 'Irymple', 'NT', '4163', 'AU', 'shipped'),
(1328, 10748, '5404', 'Elliott Farley', 'elliottfarley@email.com', '0491 570 158', '', '55 1st Avenue', 'Bray park', 'QLD', '3150', 'AU', 'shipped'),
(1329, 10749, '5404', 'Jeremy Walls', 'jeremywalls@email.com', '', 'Unit 1 555 Prospect Street', '', 'Killara', 'ACT', '3355', 'AU', 'shipped'),
(1330, 10750, '5401', 'Benjamin Mullen', 'benjaminmullen@email.com', '0491 570 158', '2/105', 'Ivy Lane', 'Rockville', 'VIC', '4811', 'AU', 'shipped'),
(1331, 10751, '5400', 'Magdalena Haley', 'magdalenahaley@email.com', '', '13 Virginia Avenue', '', 'Pine Mountain', 'NT', '3153', 'AU', 'shipped'),
(1332, 10752, '5402', 'Gage Hull', 'gagehull@email.com', '', 'Unit 4 555 Roberts Road', '', 'Braddon', 'SA', '6065', 'AU', 'shipped'),
(1333, 10753, '5404', 'Jasmin Mendoza', 'jasminmendoza@email.com', '', '208 Route 20', '', 'Lagoon Pocket', 'TA', '3070', 'AU', 'shipped'),
(1334, 10754, '5403', 'Maia Burke', 'maiaburke@email.com', '', 'Unit 1 555 Madison Avenue', '', 'BENTLEIGH EAST', 'VIC', '3862', 'AU', 'shipped'),
(1335, 10755, '5401', 'Annabelle Curtis', 'annabellecurtis@email.com', '0491 570 110', 'Unit 3 555', 'Main Street West', 'Warrnambool', 'TA', '3136', 'AU', 'shipped'),
(1336, 10756, '5401', 'Clarence Maddox', 'clarencemaddox@email.com', '61 491 570 157', '15/222', 'Homestead Drive', 'Clyde North', 'ACT', '3916', 'AU', 'shipped'),
(1337, 10757, '5401', 'London Hood', 'londonhood@email.com', '', 'Unit 2 555 Washington Avenue', '', 'Woodend', 'QLD', '2642', 'AU', 'shipped'),
(1338, 10758, '5404', 'Alena Stout', 'alenastout@email.com', '61 491 570 157', '14', 'Cleveland Street', 'Samford Valley', 'SA', '3207', 'AU', 'shipped'),
(1339, 10759, '5401', 'Alexander Farrell', 'alexanderfarrell@email.com', '0491 570 157', 'Unit 7 555', 'Route 32', 'Rosanna', 'NT', '3191', 'AU', 'shipped'),
(1340, 10760, '5400', 'Katie Gregory', 'katiegregory@email.com', '', '99 North Street', '', 'greenwood', 'TA', '4300', 'AU', 'shipped'),
(1341, 10761, '5401', 'Cael Santiago', 'caelsantiago@email.com', '0491 570 158', 'Unit 1 555', 'Canal Street', 'Drouin', 'NSW', '2581', 'AU', 'shipped'),
(1342, 10762, '5400', 'Martha Summers', 'marthasummers@email.com', '', 'Unit 7 555 Bridge Street', '', 'Lake Wendouree', 'NSW', '6226', 'AU', 'shipped'),
(1343, 10763, '5400', 'Leah Everett', 'leaheverett@email.com', '', 'Unit 2 555 White Street', '', 'Greenway', 'QLD', '2611', 'AU', 'shipped'),
(1344, 10764, '5402', 'Heidi Greene', 'heidigreene@email.com', '', 'Unit 2 555 Brookside Drive', '', 'Butler', 'QLD', '838', 'AU', 'shipped'),
(1345, 10765, '5403', 'Iliana Benitez', 'ilianabenitez@email.com', '', 'Unit 5 555 Mulberry Court', '', 'Caversham', 'NSW', '4075', 'AU', 'shipped'),
(1346, 10766, '5402', 'Autumn Smith', 'autumnsmith@email.com', '0491 570 110', '14', 'Pheasant Run', 'Parkville', 'VIC', '3031', 'AU', 'shipped'),
(1347, 10767, '5404', 'Karsyn Harrison', 'karsynharrison@email.com', '', 'Unit 1 555 Adams Street', '', 'Maddington', 'SA', '3189', 'AU', 'shipped'),
(1348, 10768, '5403', 'Katrina Bryant', 'katrinabryant@email.com', '', '2/105 Cedar Court', '', 'City Beach', 'QLD', '3749', 'AU', 'shipped'),
(1349, 10769, '5401', 'Bradyn Patel', 'bradynpatel@email.com', '61 491 570 110', '67', 'Lake Street', 'Floreat', 'QLD', '3021', 'AU', 'shipped'),
(1350, 10770, '5401', 'Mohammed Calderon', 'mohammedcalderon@email.com', '', 'Unit 1 555 Essex Court', '', 'Southside', 'QLD', '6721', 'AU', 'shipped'),
(1351, 10771, '5400', 'Cassidy Sullivan', 'cassidysullivan@email.com', '0491 570 157', 'Unit 3 555', 'Prospect Avenue', 'Botanic Ridge', 'ACT', '6062', 'AU', 'shipped'),
(1352, 10772, '5401', 'Carlie Lam', 'carlielam@email.com', '61 491 570 110', '44', 'Park Place', 'Bald Hills', 'NT', '3178', 'AU', 'shipped'),
(1353, 10773, '5404', 'Arnav Calderon', 'arnavcalderon@email.com', '0491 570 159', 'Unit 2 555', '1st Avenue', 'Balwyn North', 'SA', '3041', 'AU', 'shipped'),
(1354, 10774, '5400', 'Giselle Lang', 'gisellelang@email.com', '', 'Unit 3 555 12th Street', '', 'EDITHVALE', 'NSW', '3113', 'AU', 'shipped'),
(1355, 10775, '5403', 'Luz Burton', 'luzburton@email.com', '', '99 2nd Street', '', 'pascoe vale south', 'QLD', '3167', 'AU', 'shipped'),
(1356, 10776, '5404', 'Nathan Zamora', 'nathanzamora@email.com', '', '67 Willow Drive', '', 'Airport West', 'ACT', '2354', 'AU', 'shipped'),
(1357, 10777, '5401', 'Jazmine Macdonald', 'jazminemacdonald@email.com', '', 'Unit 7 555 Railroad Avenue', '', 'Pascoe Vale South', 'SA', '2607', 'AU', 'shipped'),
(1358, 10778, '5401', 'Kira Carter', 'kiracarter@email.com', '', 'Unit 5 555 Bay Street', '', 'Pie Creek', 'VIC', '3058', 'AU', 'shipped'),
(1359, 10779, '5403', 'Ashlyn Oliver', 'ashlynoliver@email.com', '0491 570 156', '55', 'Devonshire Drive', 'Nunawading', 'VIC', '4814', 'AU', 'shipped'),
(1360, 10780, '5400', 'Emiliano Macias', 'emilianomacias@email.com', '0491 570 159', '', 'Unit 3 555 Monroe Street', 'Mordialloc', 'NSW', '4506', 'AU', 'shipped'),
(1361, 10781, '5402', 'Franklin Mcdonald', 'franklinmcdonald@email.com', '', 'Unit 8 555 Jefferson Street', '', 'Pascoe Vale', 'QLD', '6030', 'AU', 'shipped'),
(1362, 10782, '5400', 'Kristen Vega', 'kristenvega@email.com', '', '15/222 Locust Lane', '', 'Ironbark', 'SA', '2643', 'AU', 'shipped'),
(1363, 10783, '5402', 'Mackenzie Moran', 'mackenziemoran@email.com', '', 'Unit 4 555 High Street', '', 'Caulfield East', 'VIC', '6284', 'AU', 'shipped'),
(1364, 10784, '5400', 'Aleah Hamilton', 'aleahhamilton@email.com', '61 491 570 110', 'Unit 5 555', 'West Avenue', 'East Keilor', 'ACT', '4053', 'AU', 'shipped'),
(1365, 10785, '5403', 'Felicity Fisher', 'felicityfisher@email.com', '', '2/105 Hartford Road', '', 'Gisborne', 'NSW', '3042', 'AU', 'shipped'),
(1366, 10786, '5403', 'Brenda Pearson', 'brendapearson@email.com', '61 491 570 110', 'Unit 4 555', 'Lincoln Street', 'Aitkenvale', 'NSW', '3796', 'AU', 'shipped'),
(1367, 10787, '5403', 'Jaycee Haney', 'jayceehaney@email.com', '', '99 Beechwood Drive', '', 'Rosenthal Heights', 'NSW', '3335', 'AU', 'shipped'),
(1368, 10788, '5401', 'Gina Edwards', 'ginaedwards@email.com', '', '55 Colonial Drive', '', 'Viewbank', 'ACT', '4816', 'AU', 'shipped'),
(1369, 10789, '5402', 'Lina Howe', 'linahowe@email.com', '', 'Unit 4 555 Myrtle Street', '', 'Port Fairy', 'ACT', '2660', 'AU', 'shipped'),
(1370, 10790, '5403', 'Journey Schultz', 'journeyschultz@email.com', '', '67 Grant Street', '', 'Reservoir', 'QLD', '3155', 'AU', 'shipped'),
(1371, 10791, '5401', 'Darian Cunningham', 'dariancunningham@email.com', '0491 570 159', '55', 'Cherry Lane', 'Fairfield', 'TA', '3194', 'AU', 'shipped'),
(1372, 10792, '5404', 'Landen Deleon', 'landendeleon@email.com', '', '67 Mulberry Court', '', 'Allansford', 'SA', '3315', 'AU', 'shipped'),
(1373, 10793, '5400', 'Everett Levy', 'everettlevy@email.com', '', 'Unit 7 555 Railroad Street', '', 'Murarrie', 'SA', '3149', 'AU', 'shipped'),
(1374, 10794, '5404', 'Jamarion Watkins', 'jamarionwatkins@email.com', '', 'Unit 3 555 Laurel Drive', '', 'Wodonga', 'SA', '3752', 'AU', 'shipped'),
(1375, 10795, '5404', 'Luna Whitney', 'lunawhitney@email.com', '', 'Unit 5 555 Aspen Court', '', 'North Booval', 'VIC', '2606', 'AU', 'shipped'),
(1376, 10796, '5403', 'Kristopher Velez', 'kristophervelez@email.com', '', '67 Monroe Drive', '', 'Briagolong', 'QLD', '4516', 'AU', 'shipped'),
(1377, 10797, '5402', 'Israel Mckenzie', 'israelmckenzie@email.com', '', '99 Valley Drive', '', 'SURREY HILLS', 'SA', '3498', 'AU', 'shipped'),
(1378, 10798, '5400', 'Jase Wilkins', 'jasewilkins@email.com', '', 'Unit 1 555 Hickory Lane', '', 'Carnegie', 'VIC', '3111', 'AU', 'shipped'),
(1379, 10799, '5401', 'Cayden Li', 'caydenli@email.com', '0491 570 158', '14', 'Bank Street', 'Berwick', 'QLD', '3909', 'AU', 'shipped'),
(1380, 10800, '5403', 'Luka Middleton', 'lukamiddleton@email.com', '', '67 Orchard Street', '', 'East Perth', 'NSW', '2614', 'AU', 'shipped'),
(1381, 10801, '5404', 'Maximillian Bernard', 'maximillianbernard@email.com', '', 'Unit 7 555 Eagle Street', '', 'Huntly', 'VIC', '6331', 'AU', 'shipped'),
(1382, 10802, '5401', 'Lamont Mcguire', 'lamontmcguire@email.com', '', '2/105 Country Club Road', '', 'Hillarys', 'NT', '3138', 'AU', 'shipped'),
(1383, 10803, '5404', 'Evelin Grant', 'evelingrant@email.com', '', 'Unit 6 555 Liberty Street', '', 'Deepdene', 'VIC', '3350', 'AU', 'shipped'),
(1384, 10804, '5402', 'Abigail Cole', 'abigailcole@email.com', '0491 570 157', 'Unit 2 555', 'Maple Lane', 'Upper Kedron', 'SA', '4035', 'AU', 'shipped'),
(1385, 10805, '5404', 'Arielle Powell', 'ariellepowell@email.com', '0491 570 110', '55', 'Route 4', 'bunya', 'SA', '5012', 'AU', 'shipped'),
(1386, 10806, '5404', 'Aden Hogan', 'adenhogan@email.com', '0491 570 156', '55', 'Old York Road', 'Keperra', 'VIC', '3030', 'AU', 'shipped'),
(1387, 10807, '5403', 'Brennan Carlson', 'brennancarlson@email.com', '61 491 570 110', '208', 'Lexington Drive', 'Currambine', 'VIC', '4164', 'AU', 'shipped'),
(1388, 10808, '5401', 'Annabel Bautista', 'annabelbautista@email.com', '0491 570 156', '14', 'Somerset Drive', 'Heidelberg Heights', 'QLD', '3104', 'AU', 'shipped'),
(1389, 10809, '5402', 'Conor Burns', 'conorburns@email.com', '0491 570 157', '2/105', '2nd Street', 'Florey', 'NT', '3109', 'AU', 'shipped'),
(1390, 10810, '5401', 'Jamie Gordon', 'jamiegordon@email.com', '', '67 Hill Street', '', 'Linton', 'ACT', '830', 'AU', 'shipped'),
(1391, 10811, '5404', 'Kaylen Mcintosh', 'kaylenmcintosh@email.com', '', '2/105 Beechwood Drive', '', 'Berry Springs', 'NT', '3175', 'AU', 'shipped'),
(1392, 10812, '5402', 'Liliana Marquez', 'lilianamarquez@email.com', '', '44 Valley View Drive', '', 'Hillside', 'VIC', '4165', 'AU', 'shipped'),
(1393, 10813, '5402', 'Jakob Banks', 'jakobbanks@email.com', '', '14 Augusta Drive', '', 'Queanbeyan', 'SA', '3121', 'AU', 'shipped'),
(1394, 10814, '5404', 'Moises Becker', 'moisesbecker@email.com', '', '14 Jefferson Street', '', 'Seville Grove', 'SA', '6164', 'AU', 'shipped'),
(1395, 10815, '5403', 'Averie Solis', 'averiesolis@email.com', '0491 570 156', '208', 'Creek Road', 'Westbrook', 'TA', '4521', 'AU', 'shipped'),
(1396, 10816, '5402', 'Casey Weber', 'caseyweber@email.com', '0491 570 158', '44', 'Highland Drive', 'Traveston', 'ACT', '3133', 'AU', 'shipped'),
(1397, 10817, '5402', 'Alyssa Hinton', 'alyssahinton@email.com', '0491 570 156', 'Unit 8 555', 'Mill Road', 'Sandringham', 'SA', '6158', 'AU', 'shipped'),
(1398, 10818, '5401', 'Ansley Estrada', 'ansleyestrada@email.com', '0491 570 158', 'Unit 1 555', 'Poplar Street', 'Johnsonville', 'SA', '3131', 'AU', 'shipped'),
(1399, 10819, '5402', 'Lilly Villegas', 'lillyvillegas@email.com', '', '55 3rd Street', '', 'California Gully', 'NT', '3095', 'AU', 'shipped'),
(1400, 10820, '5401', 'Emilio Wood', 'emiliowood@email.com', '0491 570 159', '', '44 Garden Street', 'Box Hill', 'SA', '3677', 'AU', 'shipped'),
(1401, 10821, '5402', 'Clarence Hess', 'clarencehess@email.com', '0491 570 159', '14', 'Route 44', 'Stepney', 'ACT', '3128', 'AU', 'shipped'),
(1402, 10822, '5403', 'Charlee Griffin', 'charleegriffin@email.com', '61 491 570 157', '208', 'Bank Street', 'Diggers Rest', 'NSW', '3169', 'AU', 'shipped'),
(1403, 10823, '5403', 'Alissa Lawson', 'alissalawson@email.com', '61 491 570 110', '2/105', 'Orchard Avenue', 'Beaumaris', 'SA', '3281', 'AU', 'shipped'),
(1404, 10824, '5400', 'Macie Wells', 'maciewells@email.com', '', '99 4th Street North', '', 'Soldiers Hill', 'QLD', '6747', 'AU', 'shipped'),
(1405, 10825, '5402', 'Gerald Wolf', 'geraldwolf@email.com', '', 'Unit 2 555 South Street', '', 'Long Flat', 'ACT', '3056', 'AU', 'shipped'),
(1406, 10826, '5402', 'Arthur Glenn', 'arthurglenn@email.com', '0491 570 159', 'Unit 7 555', 'Cambridge Court', 'Croydon North', 'SA', '4359', 'AU', 'shipped'),
(1407, 10827, '5403', 'Eliezer Kerr', 'eliezerkerr@email.com', '0491 570 157', '', '14 Holly Court', 'Kewdale', 'TA', '3550', 'AU', 'shipped'),
(1408, 10828, '5404', 'Ari Wall', 'ariwall@email.com', '0491 570 110', '44', 'Country Club Road', 'Bassendean', 'NSW', '6019', 'AU', 'shipped'),
(1409, 10829, '5402', 'Esther Murray', 'esthermurray@email.com', '', 'Unit 4 555 Myrtle Street', '', 'Wilson', 'NSW', '4306', 'AU', 'shipped'),
(1410, 10830, '5404', 'Gunner Archer', 'gunnerarcher@email.com', '', '55 Durham Road', '', 'Keilor Downs', 'NSW', '3747', 'AU', 'shipped'),
(1411, 10831, '5400', 'Ethen Pitts', 'ethenpitts@email.com', '', '67 Parker Street', '', 'west leederville', 'NSW', '3039', 'AU', 'shipped'),
(1412, 10832, '5404', 'Aaden Mckinney', 'aadenmckinney@email.com', '0491 570 158', '14', 'Jackson Avenue', 'WYNDHAM VALE', 'SA', '3024', 'AU', 'shipped'),
(1413, 10833, '5402', 'Maia Burke', 'maiaburke@email.com', '', '208 Colonial Avenue', '', 'Merriwa', 'TA', '3865', 'AU', 'shipped'),
(1414, 10834, '5403', 'Mckayla Booker', 'mckaylabooker@email.com', '', 'Unit 4 555 12th Street', '', 'Patterson Lakes', 'SA', '5333', 'AU', 'shipped'),
(1415, 10835, '5401', 'Johnathan Boyd', 'johnathanboyd@email.com', '', 'Unit 4 555 2nd Street North', '', 'Forest Hill', 'TA', '3336', 'AU', 'shipped'),
(1416, 10836, '5400', 'Marshall Lewis', 'marshalllewis@email.com', '', 'Unit 5 555 Fairview Road', '', 'Ngunnawal', 'VIC', '3921', 'AU', 'shipped'),
(1417, 10837, '5401', 'Melanie Donovan', 'melaniedonovan@email.com', '', 'Unit 2 555 Andover Court', '', 'Durham Lead', 'QLD', '2619', 'AU', 'shipped'),
(1418, 10838, '5402', 'Efrain Lynn', 'efrainlynn@email.com', '0491 570 158', 'Unit 1 555', '2nd Street East', 'Morley', 'ACT', '6312', 'AU', 'shipped'),
(1419, 10839, '5403', 'Amya Roth', 'amyaroth@email.com', '0491 570 110', '15/222', 'Route 2', 'Bentleigh East', 'TA', '3036', 'AU', 'shipped');
INSERT INTO `orders` (`id`, `order_id`, `product_code`, `name`, `email`, `mobile`, `address_line_one`, `address_line_two`, `suburb`, `state`, `postcode`, `country`, `status`) VALUES
(1420, 10840, '5400', 'Dean Riddle', 'deanriddle@email.com', '0491 570 159', 'Unit 1 555', '2nd Street West', 'Eatons Hill', 'ACT', '4818', 'AU', 'shipped'),
(1421, 10841, '5400', 'Madilynn Henderson', 'madilynnhenderson@email.com', '', '14 8th Street South', '', 'Bendigo', 'QLD', '4512', 'AU', 'shipped'),
(1422, 10842, '5401', 'Journey Cross', 'journeycross@email.com', '', '67 Windsor Drive', '', 'Croydon Hills', 'NSW', '822', 'AU', 'shipped'),
(1423, 10843, '5402', 'Journey Schultz', 'journeyschultz@email.com', '', 'Unit 7 555 Magnolia Avenue', '', 'Spring Gully', 'SA', '3821', 'AU', 'shipped'),
(1424, 10844, '5404', 'Atticus Malone', 'atticusmalone@email.com', '0491 570 110', 'Unit 7 555', 'North Avenue', 'Camberwell', 'TA', '6021', 'AU', 'shipped'),
(1425, 10845, '5401', 'Heidi Greene', 'heidigreene@email.com', '', '44 Circle Drive', '', 'Everton', 'ACT', '3166', 'AU', 'shipped'),
(1426, 10846, '5400', 'Katie Humphrey', 'katiehumphrey@email.com', '', '14 Cooper Street', '', 'Croydon', 'QLD', '3630', 'AU', 'shipped'),
(1427, 10847, '5403', 'Dixie Griffin', 'dixiegriffin@email.com', '0491 570 158', 'Unit 4 555', 'Essex Court', 'UPPER KEDRON', 'TA', '3126', 'AU', 'shipped'),
(1428, 10848, '5401', 'Finn Keith', 'finnkeith@email.com', '', '44 Jefferson Avenue', '', 'CAROLINE SPRINGS', 'QLD', '3265', 'AU', 'shipped'),
(1429, 10849, '5404', 'Evan Weaver', 'evanweaver@email.com', '', 'Unit 5 555 Aspen Court', '', 'Murrumba Downs', 'TA', '3690', 'AU', 'shipped'),
(1430, 10850, '5404', 'Lauryn Colon', 'lauryncolon@email.com', '', 'Unit 5 555 Ivy Court', '', 'Corowa', 'NT', '3268', 'AU', 'shipped'),
(1431, 10851, '5402', 'Camron Levine', 'camronlevine@email.com', '0491 570 157', 'Unit 2 555', 'Lafayette Street', 'Maffra', 'TA', '3088', 'AU', 'shipped'),
(1432, 10852, '5402', 'Aden Johns', 'adenjohns@email.com', '61 491 570 110', '67', '5th Street South', 'THE GAP', 'QLD', '3501', 'AU', 'shipped'),
(1433, 10853, '5404', 'Jay Walls', 'jaywalls@email.com', '', '2/105 State Street East', '', 'Burbank', 'SA', '3072', 'AU', 'shipped'),
(1434, 10854, '5403', 'Iliana Benitez', 'ilianabenitez@email.com', '', '67 Rosewood Drive', '', 'cheltenham', 'SA', '6112', 'AU', 'shipped'),
(1435, 10855, '5403', 'Liliana Marquez', 'lilianamarquez@email.com', '', 'Unit 3 555 Morris Street', '', 'Ashby', 'ACT', '3401', 'AU', 'shipped'),
(1436, 10856, '5401', 'Frances Turner', 'francesturner@email.com', '', 'Unit 8 555 2nd Street West', '', 'Brighton', 'SA', '3691', 'AU', 'shipped'),
(1437, 10857, '5403', 'Kadence Sutton', 'kadencesutton@email.com', '', '99 Lafayette Avenue', '', 'Beechworth', 'NSW', '3871', 'AU', 'shipped'),
(1438, 10858, '5404', 'Ethen Stone', 'ethenstone@email.com', '', 'Unit 6 555 8th Street', '', 'Doncaster East', 'TA', '2620', 'AU', 'shipped'),
(1439, 10859, '5400', 'Kamden Gentry', 'kamdengentry@email.com', '', 'Unit 3 555 Harrison Street', '', 'Rapid Creek', 'NT', '3885', 'AU', 'shipped'),
(1440, 10860, '5404', 'Belen Rhodes', 'belenrhodes@email.com', '0491 570 156', 'Unit 3 555', 'Forest Drive', 'Kearneys Spring', 'VIC', '4036', 'AU', 'shipped'),
(1441, 10861, '5401', 'Nelson Estrada', 'nelsonestrada@email.com', '', '67 Cedar Avenue', '', 'Saint James', 'ACT', '6153', 'AU', 'shipped'),
(1442, 10862, '5403', 'Isaac Roth', 'isaacroth@email.com', '', '99 5th Avenue', '', 'North Melbourne', 'NSW', '3068', 'AU', 'shipped'),
(1443, 10863, '5403', 'Alexander Farrell', 'alexanderfarrell@email.com', '0491 570 156', '208', '5th Street East', 'Toowoomba', 'TA', '3185', 'AU', 'shipped'),
(1444, 10864, '5403', 'Makhi Miller', 'makhimiller@email.com', '', '14 Elm Street', '', 'Kelso', 'ACT', '6915', 'AU', 'shipped'),
(1445, 10865, '5401', 'Kai Zimmerman', 'kaizimmerman@email.com', '', 'Unit 4 555 Main Street East', '', 'Kleinton', 'NSW', '6280', 'AU', 'shipped'),
(1446, 10866, '5402', 'Joslyn Valdez', 'joslynvaldez@email.com', '', 'Unit 5 555 Brookside Drive', '', 'DUNDOWRAN BEACH', 'SA', '836', 'AU', 'shipped'),
(1447, 10867, '5402', 'Justice Hanson', 'justicehanson@email.com', '', '99 4th Avenue', '', 'North Bendigo', 'NT', '3300', 'AU', 'shipped'),
(1448, 10868, '5400', 'Lilly Villegas', 'lillyvillegas@email.com', '', '2/105 Pearl Street', '', 'Donvale', 'QLD', '2906', 'AU', 'shipped'),
(1449, 10869, '5403', 'Camron Levine', 'camronlevine@email.com', '0491 570 157', '67', 'West Avenue', 'Riverslea', 'NSW', '3122', 'AU', 'shipped'),
(1450, 10870, '5404', 'Lila Schneider', 'lilaschneider@email.com', '', 'Unit 1 555 7th Street', '', 'Chatsworth', 'SA', '3562', 'AU', 'shipped'),
(1451, 10871, '5401', 'Gage Hull', 'gagehull@email.com', '', '15/222 Valley View Drive', '', 'Warragul', 'VIC', '6951', 'AU', 'shipped'),
(1452, 10872, '5401', 'Donte Mcclure', 'dontemcclure@email.com', '0491 570 159', '99', 'Hanover Court', 'Narre Warren', 'QLD', '3555', 'AU', 'shipped'),
(1453, 10873, '5401', 'Lamar Roberts', 'lamarroberts@email.com', '', '2/105 Evergreen Lane', '', 'WARRAGUL', 'ACT', '3616', 'AU', 'shipped'),
(1454, 10874, '5400', 'Emmett Morales', 'emmettmorales@email.com', '0491 570 157', '99 Broad Street West', '', 'Blackburn Sth', 'VIC', '4305', 'AU', 'shipped'),
(1455, 10875, '5402', 'Kayla Lucero', 'kaylalucero@email.com', '', 'Unit 4 555 Park Avenue', '', 'Bollier', 'SA', '2739', 'AU', 'shipped'),
(1456, 10876, '5401', 'Ayla Melton', 'aylamelton@email.com', '0491 570 156', '55', 'Cedar Avenue', 'East Toowoomba', 'NSW', '3860', 'AU', 'shipped'),
(1457, 10877, '5404', 'Macey Everett', 'maceyeverett@email.com', '', 'Unit 5 555 Bay Street', '', 'Monkland', 'NT', '3148', 'AU', 'shipped'),
(1458, 10878, '5402', 'Dakota Lowery', 'dakotalowery@email.com', '0491 570 157', '13', 'Route 44', 'Taylors Lakes', 'QLD', '3145', 'AU', 'shipped'),
(1459, 10879, '5404', 'Brian Bowen', 'brianbowen@email.com', '61 491 570 157', 'Unit 7 555', 'Church Street', 'Warranwood', 'NT', '5069', 'AU', 'shipped'),
(1460, 10880, '5403', 'Elisha Mclean', 'elishamclean@email.com', '0491 570 159', '', 'Unit 8 555 Route 32', 'Toolong', 'TA', '3678', 'AU', 'shipped'),
(1461, 10881, '5403', 'Justice Hanson', 'justicehanson@email.com', '', 'Unit 4 555 Park Place', '', 'Strathfieldsaye', 'TA', '3283', 'AU', 'shipped'),
(1462, 10882, '5400', 'Alissa Lawson', 'alissalawson@email.com', '61 491 570 110', '44', 'Taylor Street', 'Mt Glorious', 'SA', '5039', 'AU', 'shipped'),
(1463, 10883, '5401', 'Omari Lang', 'omarilang@email.com', '', '55 Prospect Street', '', 'Cottesloe', 'QLD', '4563', 'AU', 'shipped'),
(1464, 10884, '5403', 'Natalie Brandt', 'nataliebrandt@email.com', '', 'Unit 5 555 Primrose Lane', '', 'Connolly', 'SA', '6056', 'AU', 'shipped'),
(1465, 10885, '5400', 'Nina Sellers', 'ninasellers@email.com', '', '2/105 Maple Avenue', '', 'Fitzroy North', 'TA', '6415', 'AU', 'shipped'),
(1466, 10886, '5402', 'Elena Bass', 'elenabass@email.com', '0491 570 159', '67', 'Broadway', 'Annandale', 'NT', '6035', 'AU', 'shipped'),
(1467, 10887, '5401', 'Jakayla Flores', 'jakaylaflores@email.com', '', 'Unit 2 555 Division Street', '', 'South Ripley', 'SA', '6025', 'AU', 'shipped'),
(1468, 10888, '5402', 'Alexander Farrell', 'alexanderfarrell@email.com', '0491 570 110', '44', 'Amherst Street', 'Draper', 'VIC', '3152', 'AU', 'shipped'),
(1469, 10889, '5400', 'Haylee Velazquez', 'hayleevelazquez@email.com', '', '44 Brown Street', '', 'Yanchep', 'ACT', '3840', 'AU', 'shipped'),
(1470, 10890, '5403', 'Belen Rhodes', 'belenrhodes@email.com', '0491 570 156', '55', 'Highland Avenue', 'Wilsonton', 'QLD', '4570', 'AU', 'shipped'),
(1471, 10891, '5402', 'Anaya English', 'anayaenglish@email.com', '0491 570 159', 'Unit 7 555', 'Lexington Drive', 'Melrose Park', 'QLD', '3500', 'AU', 'shipped'),
(1472, 10892, '5401', 'Heath Gutierrez', 'heathgutierrez@email.com', '', '67 Summer Street', '', 'Parkwood', 'SA', '6109', 'AU', 'shipped'),
(1473, 10893, '5403', 'Finnegan Anthony', 'finnegananthony@email.com', '', '67 Fairview Avenue', '', 'St james', 'SA', '3564', 'AU', 'shipped'),
(1474, 10894, '5401', 'Kolten Rhodes', 'koltenrhodes@email.com', '', '99 Hillside Avenue', '', 'Wondunna', 'SA', '3859', 'AU', 'shipped'),
(1475, 10895, '5403', 'Nina Sellers', 'ninasellers@email.com', '', 'Unit 8 555 Taylor Street', '', 'Brabham', 'NSW', '5308', 'AU', 'shipped'),
(1476, 10896, '5404', 'Jillian Richmond', 'jillianrichmond@email.com', '', 'Unit 8 555 Magnolia Avenue', '', 'Woodlands', 'NT', '3114', 'AU', 'shipped'),
(1477, 10897, '5403', 'Devyn Mack', 'devynmack@email.com', '0491 570 158', '14', 'Virginia Street', 'Hawthorn', 'SA', '3108', 'AU', 'shipped'),
(1478, 10898, '5404', 'Jairo Warren', 'jairowarren@email.com', '', '208 Cypress Court', '', 'Karama', 'ACT', '6026', 'AU', 'shipped'),
(1479, 10899, '5401', 'Leonard Nicholson', 'leonardnicholson@email.com', '', '55 North Street', '', 'Mount Lawley', 'VIC', '5252', 'AU', 'shipped'),
(1480, 10900, '5403', 'Hailey Dyer', 'haileydyer@email.com', '', '2/105 Harrison Street', '', 'South Yarra', 'SA', '3105', 'AU', 'shipped'),
(1481, 10901, '5404', 'Cale Perry', 'caleperry@email.com', '0491 570 110', 'Unit 4 555', 'Jackson Street', 'Mernda', 'VIC', '3880', 'AU', 'shipped'),
(1482, 10902, '5404', 'Lilly Villegas', 'lillyvillegas@email.com', '', '2/105 Lake Street', '', 'Northcote', 'NSW', '3293', 'AU', 'shipped'),
(1483, 10903, '5401', 'Abigail Cole', 'abigailcole@email.com', '0491 570 159', '55', 'Hawthorne Lane', 'Merbein', 'SA', '5041', 'AU', 'shipped'),
(1484, 10904, '5400', 'Audrina Harmon', 'audrinaharmon@email.com', '0491 570 158', '67', 'Ridge Avenue', 'ALBANY CREEK', 'ACT', '3850', 'AU', 'shipped'),
(1485, 10905, '5402', 'Luna Whitney', 'lunawhitney@email.com', '', 'Unit 6 555 Tanglewood Drive', '', 'Dicky Beach', 'QLD', '6311', 'AU', 'shipped'),
(1486, 10906, '5400', 'London Hood', 'londonhood@email.com', '', '44 Edgewood Road', '', 'Box Hill Nth', 'VIC', '4362', 'AU', 'shipped'),
(1487, 10907, '5402', 'James Warner', 'jameswarner@email.com', '', '55 Augusta Drive', '', 'Eaglehawk', 'SA', '2900', 'AU', 'shipped'),
(1488, 10908, '5404', 'Jamarion Watkins', 'jamarionwatkins@email.com', '', 'Unit 8 555 Tanglewood Drive', '', 'Brown Hill', 'NSW', '2646', 'AU', 'shipped'),
(1489, 10909, '5400', 'Alexzander Vazquez', 'alexzandervazquez@email.com', '0491 570 158', 'Unit 5 555', 'Main Street East', 'Innaloo', 'TA', '3165', 'AU', 'shipped'),
(1490, 10910, '5400', 'Dominique Singleton', 'dominiquesingleton@email.com', '0491 570 157', '2/105', '4th Street North', 'Rowville', 'TA', '3196', 'AU', 'shipped'),
(1491, 10911, '5401', 'Luca Hawkins', 'lucahawkins@email.com', '', 'Unit 7 555 Ivy Lane', '', 'Chelsea', 'NSW', '6232', 'AU', 'shipped'),
(1492, 10912, '5402', 'Bryson James', 'brysonjames@email.com', '0491 570 158', 'Unit 7 555', 'Cleveland Avenue', 'Flemington', 'VIC', '3038', 'AU', 'shipped'),
(1493, 10913, '5403', 'Leilani Watts', 'leilaniwatts@email.com', '', 'Unit 7 555 Spruce Avenue', '', 'Nicholls', 'QLD', '5019', 'AU', 'shipped'),
(1494, 10914, '5400', 'Chaz Barr', 'chazbarr@email.com', '0491 570 157', 'Unit 7 555', 'Willow Street', 'Keilor East', 'TA', '6078', 'AU', 'shipped'),
(1495, 10915, '5404', 'Alani Shaw', 'alanishaw@email.com', '0491 570 110', 'Unit 4 555', 'Cooper Street', 'Pittsworth', 'NT', '4034', 'AU', 'shipped'),
(1496, 10916, '5402', 'Kymani Gilbert', 'kymanigilbert@email.com', '', 'Unit 7 555 Holly Drive', '', 'Jones Hill', 'VIC', '3216', 'AU', 'shipped'),
(1497, 10917, '5401', 'Nathan Zamora', 'nathanzamora@email.com', '', '15/222 Fairview Road', '', 'Moil', 'NSW', '3264', 'AU', 'shipped'),
(1498, 10918, '5400', 'Humberto Hopkins', 'humbertohopkins@email.com', '', 'Unit 7 555 Magnolia Drive', '', 'Aspendale Gardens', 'SA', '3046', 'AU', 'shipped'),
(1499, 10919, '5402', 'Keshawn Rivers', 'keshawnrivers@email.com', '', '15/222 George Street', '', 'Avondale Heights', 'NSW', '2603', 'AU', 'shipped'),
(1500, 10920, '5401', 'Gina Edwards', 'ginaedwards@email.com', '', '14 Windsor Drive', '', 'Smythes Creek', 'TA', '5093', 'AU', 'shipped'),
(1501, 10921, '5400', 'Jabari Kaiser', 'jabarikaiser@email.com', '', '2/105 Harrison Street', '', 'Ocean Reef', 'QLD', '3172', 'AU', 'shipped'),
(1502, 10922, '5403', 'Maxim Rubio', 'maximrubio@email.com', '', '67 Oxford Court', '', 'South Kalgoorlie', 'NT', '3567', 'AU', 'shipped'),
(1503, 10923, '5403', 'Finn Keith', 'finnkeith@email.com', '', '2/105 Valley Drive', '', 'Gol Gol', 'NSW', '3675', 'AU', 'shipped'),
(1504, 10924, '5403', 'Laila Kidd', 'lailakidd@email.com', '', '44 Front Street South', '', 'Clintonvale', 'NT', '3276', 'AU', 'shipped'),
(1505, 10925, '5403', 'Dillan Vang', 'dillanvang@email.com', '0491 570 156', '2/105', 'Grove Avenue', 'Blackburn North', 'NT', '3351', 'AU', 'shipped'),
(1506, 10926, '5404', 'Jasmin Mendoza', 'jasminmendoza@email.com', '', 'Unit 4 555 Hartford Road', '', 'Bonbeach', 'TA', '3853', 'AU', 'shipped'),
(1507, 10927, '5400', 'Patricia Palmer', 'patriciapalmer@email.com', '', 'Unit 4 555 Maple Street', '', 'Bamawm Extension', 'NT', '2040', 'AU', 'shipped'),
(1508, 10928, '5400', 'London Hood', 'londonhood@email.com', '', '55 Dogwood Lane', '', 'Warwick', 'NSW', '2621', 'AU', 'shipped'),
(1509, 10929, '5402', 'Brennan Carlson', 'brennancarlson@email.com', '61 491 570 110', 'Unit 5 555', 'Cardinal Drive', 'Mont Albert North', 'SA', '3427', 'AU', 'shipped'),
(1510, 10930, '5401', 'Darion Richard', 'darionrichard@email.com', '0491 570 110', 'Unit 5 555', 'Chestnut Avenue', 'Hawthorne', 'SA', '2738', 'AU', 'shipped'),
(1511, 10931, '5403', 'Maribel Keller', 'maribelkeller@email.com', '', 'Unit 8 555 Cooper Street', '', 'Invermay Park', 'NT', '3610', 'AU', 'shipped'),
(1512, 10932, '5400', 'Belen Rhodes', 'belenrhodes@email.com', '0491 570 156', 'Unit 8 555', 'Lake Street', 'Torrington', 'NT', '3358', 'AU', 'shipped'),
(1513, 10933, '5400', 'Kristopher Marsh', 'kristophermarsh@email.com', '', 'Unit 4 555 Mulberry Court', '', 'Kangaroo Flat', 'NSW', '5065', 'AU', 'shipped'),
(1514, 10934, '5403', 'Jay Torres', 'jaytorres@email.com', '', '2/105 Canterbury Road', '', 'North Deep Creek', 'ACT', '4304', 'AU', 'shipped'),
(1515, 10935, '5402', 'Killian Nielsen', 'killiannielsen@email.com', '', '13 Elm Avenue', '', 'Miners Rest', 'ACT', '3183', 'AU', 'shipped'),
(1516, 10936, '5404', 'Aisha Saunders', 'aishasaunders@email.com', '0491 570 156', '99', 'Old York Road', 'Doreen', 'NT', '4356', 'AU', 'shipped'),
(1517, 10937, '5404', 'Alaina Harding', 'alainaharding@email.com', '0491 570 157', '15/222', 'Bayberry Drive', 'warrandyte South', 'VIC', '3084', 'AU', 'shipped'),
(1518, 10938, '5401', 'Kayley Fritz', 'kayleyfritz@email.com', '', '99 Edgewood Road', '', 'Oakleigh', 'ACT', '3976', 'AU', 'shipped'),
(1519, 10939, '5401', 'Alyssa Hinton', 'alyssahinton@email.com', '0491 570 156', 'Unit 2 555', '4th Street West', 'EVERTON HILLS', 'NSW', '3029', 'AU', 'shipped'),
(1520, 10940, '5402', 'Landen Jensen', 'landenjensen@email.com', '', 'Unit 2 555 Manor Drive', '', 'Noble Park', 'NT', '3810', 'AU', 'shipped'),
(1521, 10941, '5401', 'India Higgins', 'indiahiggins@email.com', '', '55 Garfield Avenue', '', 'South Bunbury', 'NSW', '3685', 'AU', 'shipped'),
(1522, 10942, '5403', 'Makenzie Brandt', 'makenziebrandt@email.com', '', '55 Magnolia Avenue', '', 'Ballarat North', 'QLD', '4074', 'AU', 'shipped'),
(1523, 10943, '5402', 'Ashley Bolton', 'ashleybolton@email.com', '0491 570 157', 'Unit 5 555', '11th Street', 'ST JAMES', 'SA', '6014', 'AU', 'shipped'),
(1524, 10944, '5403', 'Alec Duncan', 'alecduncan@email.com', '0491 570 158', 'Unit 6 555', 'Orchard Avenue', 'KEILOR EAST', 'NSW', '4350', 'AU', 'shipped'),
(1525, 10945, '5404', 'Noelle Trujillo', 'noelletrujillo@email.com', '', 'Unit 4 555 Willow Street', '', 'Capel River', 'NT', '4557', 'AU', 'shipped'),
(1526, 10946, '5403', 'Emmy Juarez', 'emmyjuarez@email.com', '0491 570 159', 'Unit 2 555 Locust Lane', '', 'Brisbane', 'ACT', '3858', 'AU', 'shipped'),
(1527, 10947, '5402', 'Alicia Anthony', 'aliciaanthony@email.com', '61 491 570 110', '2/105', 'Essex Court', 'Hawthorn East', 'ACT', '5022', 'AU', 'shipped'),
(1528, 10948, '5401', 'Kayley Ramirez', 'kayleyramirez@email.com', '', 'Unit 2 555 Hamilton Street', '', 'Oak Park', 'VIC', '6111', 'AU', 'shipped'),
(1529, 10949, '5404', 'Adrien Douglas', 'adriendouglas@email.com', '0491 570 159', '44', 'Garfield Avenue', 'HAMPTON', 'TA', '3875', 'AU', 'shipped'),
(1530, 10950, '5400', 'Dylan Proctor', 'dylanproctor@email.com', '61 491 570 157', 'Unit 2 555', 'William Street', 'Yeronga', 'SA', '3141', 'AU', 'shipped'),
(1531, 10951, '5402', 'Maximillian Bernard', 'maximillianbernard@email.com', '', '44 Market Street', '', 'Paradise Beach', 'NSW', '6155', 'AU', 'shipped'),
(1532, 10952, '5401', 'Barrett Morrow', 'barrettmorrow@email.com', '0491 570 158', '14', 'Berkshire Drive', 'Glenvale', 'NT', '4127', 'AU', 'shipped'),
(1533, 10954, '5404', 'Bradyn Patel', 'bradynpatel@email.com', '61 491 570 110', 'Unit 1 555', '10th Street', 'Gatton', 'NSW', '3806', 'AU', 'shipped'),
(1534, 10955, '5401', 'Abigail Cole', 'abigailcole@email.com', '0491 570 157', 'Unit 7 555', 'Route 30', 'Cumberland Park', 'ACT', '5062', 'AU', 'shipped'),
(1535, 10956, '5402', 'Lawrence Haley', 'lawrencehaley@email.com', '', '15/222 Valley View Road', '', 'Mysterton', 'TA', '3912', 'AU', 'shipped'),
(1536, 10957, '5404', 'Kamden Gentry', 'kamdengentry@email.com', '', 'Unit 5 555 Canterbury Road', '', 'West Wodonga', 'SA', '3199', 'AU', 'shipped'),
(1537, 10958, '5402', 'Mollie Brewer', 'molliebrewer@email.com', '', '2/105 Ridge Road', '', 'Scarborough', 'NT', '2350', 'AU', 'shipped'),
(1538, 10959, '5403', 'Ally Pittman', 'allypittman@email.com', '0491 570 110', '67', '12th Street', 'Port Melbourne', 'NT', '3081', 'AU', 'shipped'),
(1539, 10960, '5403', 'Moises Becker', 'moisesbecker@email.com', '', 'Unit 5 555 West Street', '', 'Chelsea Heights', 'ACT', '6069', 'AU', 'shipped'),
(1540, 10961, '5400', 'Natalie Irwin', 'natalieirwin@email.com', '', '14 Durham Road', '', 'Essendon NORTH', 'NT', '6425', 'AU', 'shipped'),
(1541, 10962, '5402', 'Autumn Beltran', 'autumnbeltran@email.com', '61 491 570 110', 'Unit 1 555', 'Woodland Drive', 'Wembley Downs', 'ACT', '6152', 'AU', 'shipped'),
(1542, 10963, '5400', 'Ashley Bolton', 'ashleybolton@email.com', '0491 570 157', 'Unit 6 555', 'Tanglewood Drive', 'East VIC Park', 'VIC', '4343', 'AU', 'shipped'),
(1543, 10964, '5400', 'Mckayla Booker', 'mckaylabooker@email.com', '', 'Unit 8 555 New Street', '', 'VIC Park', 'VIC', '3060', 'AU', 'shipped'),
(1544, 10965, '5400', 'Joe Andrews', 'joeandrews@email.com', '', 'Unit 2 555 Augusta Drive', '', 'Hampton', 'SA', '6430', 'AU', 'shipped'),
(1545, 10966, '5404', 'Jordyn Osborne', 'jordynosborne@email.com', '', '208 10th Street', '', 'Mundingburra', 'QLD', '6011', 'AU', 'shipped'),
(1546, 10967, '5404', 'Daniel Aguirre', 'danielaguirre@email.com', '0491 570 159', 'Unit 4 555', 'Schoolhouse Lane', 'Gunning', 'SA', '4172', 'AU', 'shipped'),
(1547, 10968, '5404', 'Gerald Wolf', 'geraldwolf@email.com', '', 'Unit 7 555 Aspen Court', '', 'Doncaster', 'SA', '3043', 'AU', 'shipped'),
(1548, 10969, '5404', 'Noelle Trujillo', 'noelletrujillo@email.com', '', '13 Walnut Street', '', 'Creswick', 'ACT', '4670', 'AU', 'shipped'),
(1549, 10970, '5402', 'Meadow Hall', 'meadowhall@email.com', '', 'Unit 1 555 Fieldstone Drive', '', 'Mount Crosby', 'QLD', '6313', 'AU', 'shipped'),
(1550, 10971, '5404', 'Bryce Mendez', 'brycemendez@email.com', '0491 570 157', '14', 'Lake Street', 'Salter Point', 'ACT', '2615', 'AU', 'shipped'),
(1551, 10972, '5402', 'Conor Burns', 'conorburns@email.com', '0491 570 157', 'Unit 7 555', 'Summit Street', 'AVONDALE HEIGHTS', 'TA', '6007', 'AU', 'shipped'),
(1552, 10973, '5401', 'Landen Deleon', 'landendeleon@email.com', '', 'Unit 8 555 Sunset Drive', '', 'Richmond', 'VIC', '3107', 'AU', 'shipped'),
(1553, 10974, '5403', 'Charlee Griffin', 'charleegriffin@email.com', '61 491 570 157', 'Unit 6 555', 'Hillcrest Drive', 'Ferntree Gully', 'NT', '3032', 'AU', 'shipped'),
(1554, 10975, '5404', 'Madeline Blackwell', 'madelineblackwell@email.com', '', 'Unit 1 555 Sunset Avenue', '', 'Ballarat East', 'SA', '6122', 'AU', 'shipped'),
(1555, 10976, '5401', 'Moshe Kidd', 'moshekidd@email.com', '', 'Unit 6 555 Tanglewood Drive', '', 'Rosebery', 'NSW', '3205', 'AU', 'shipped'),
(1556, 10977, '5400', 'Kaylie Terry', 'kaylieterry@email.com', '', '67 Woodland Avenue', '', 'Oxley', 'VIC', '3198', 'AU', 'shipped');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(9) NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `created_at`) VALUES
(1, '5400', 'A3 Poster', '2019-01-08 03:52:08'),
(2, '5401', 'Magnets', '2019-01-08 03:52:08'),
(3, '5402', 'Branded Notepad', '2019-01-08 03:52:08'),
(4, '5403', 'Banner Pen', '2019-01-08 03:52:08'),
(5, '5404', 'Giant Inflatable Rubber Duck', '2019-01-08 03:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'user@email.com', '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1557;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
