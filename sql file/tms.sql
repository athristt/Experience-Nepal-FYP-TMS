-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 06:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin', '2022-04-13 11:18:49'),
(3, 'admin', 'admin', '2022-04-20 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `rating`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(20, 7, 'pranav@gmail.com', '2022-05-16', '2022-05-17', 'www', NULL, '2022-05-08 03:06:20', 2, 'a', '2022-05-08 03:13:56'),
(21, 7, 'pranav@gmail.com', '2022-05-30', '2022-05-25', 'aaa', NULL, '2022-05-08 03:15:38', 0, NULL, NULL),
(22, 7, 'pranav@gmail.com', '2021-04-01', '2021-04-10', 'bbb', NULL, '2022-05-08 03:16:30', 0, NULL, NULL),
(23, 7, 'pranav@gmail.com', '2022-05-02', '2022-05-06', 'ccc', NULL, '2022-05-08 03:17:41', 0, NULL, NULL),
(24, 7, 'pranav@gmail.com', '2022-05-05', '2022-05-07', 'yyy', NULL, '2022-05-08 03:20:25', 0, NULL, NULL),
(25, 7, 'pranav@gmail.com', '2022-05-08', '2022-04-10', 'yyy', NULL, '2022-05-08 03:20:59', 0, NULL, NULL),
(26, 7, 'pranav@gmail.com', '2022-05-05', '2022-05-07', 'yyy', NULL, '2022-05-08 04:01:51', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(58, NULL, NULL, NULL, '2022-05-06 08:29:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\">These Booking Terms and Conditions contain important information. It is essential that you read them carefully and understand them. The Booking Terms and Conditions constitutes a legally binding contract between Nepal Hidden Treks &amp; Expedition and you for the services provided by and set out the basis of your legal relationship with Nepal Hidden Treks &amp; Expedition.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">1: Bookings and Payments</span><br style=\"border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">(A)</span>&nbsp;To process a Booking you must send us a completed booking form with 25% non-refundable deposit as detailed below. This will constitute acceptance by you of these Terms and Conditions. We require you a copy of passport and a passport size current photo.<br style=\"border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">(B)</span>&nbsp;All deposits required are per person per trip. Please contact us regarding direct deposit details. A bank service charge should be paid at the time of deposit. We will have receipt of deposit amount from our bank.<br style=\"border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">(C )</span>&nbsp;For Credit Card payment. We accept Visa or MasterCard and a 4% levy will be added for card processing fee.<br style=\"border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">(D)</span>&nbsp;Remaining balance is required to pay before the trip departure date. Nepal Hidden Treks &amp; Expedition reserves the right to cancel your trip should the full amount not be paid in time.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">( E)</span>Nepal Hidden Treks &amp; Expedition will not accept any draft Cheque which take long process to<br style=\"border-radius: 0px !important;\">balance.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">2: Cancellation &amp; Booking Changes</span><br style=\"border-radius: 0px !important;\">(A) When Trip confirmed and done the payment. And if you cancel the trip any circumstances ,25% will be chargeable from your full trip payment.<br style=\"border-radius: 0px !important;\">(B) if any circumstances which can’t start the trip, such no fly bad weather, landslide or politically problem, Nepal Hidden Treks and Expedition suggested to organize similar trip. ,if clients want cancel the trip and not using other suggested trip, we will calculate of the expenses cost such, permit, Hotel, Tax, rest of monies will be refund.<br style=\"border-radius: 0px !important;\">(c) If you are prevented from traveling on the tour by genuine circumstances, for example (without restriction) because of death, injury or serious illness of the passenger, close relative or friend, redundancy or jury service, you may postpone or transfer your booking to another person, provided they meet all the requirements relating to that tour. You must provide proof of why you are unable to travel at the time you change your booking. There will be no options available 14 days before trip departure.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">3: Changes to your Holiday and Pricing</span><br style=\"border-radius: 0px !important;\">Traveling with Nepal Hidden Treks and Expedition requires a degree of flexibility, good humor and an understanding that modes of transport, accommodation and itineraries may change, even after the tour has commenced, without prior notice due to local circumstances such as flight delay, cancellation or postponement due to notorious weather in the Himalayan regions or other unpredictable circumstances such as land-slides, road blockage, flood, snow, political unrest or delay arrival etc. Nepal Hidden Treks and Expedition is unable to refund any monies under the above circumstances due to prior supplier arrangements. If possible we will always endeavor to provide you an alternative or substitute trip of same category.<br style=\"border-radius: 0px !important;\">(A) Monies will not be refundable if you came early from your trip. Due to walk fast, tired or any reason. Even we are unable to provide extra Night Hotel , meal etc.<br style=\"border-radius: 0px !important;\">(B) We do not accept any responsibility for loss on employment, delays or compensation resulting from situations beyond trip control.<br style=\"border-radius: 0px !important;\">(C) Our holidays, tour / trek packages, are based on twin share accommodation. Thus, single room supplement charge will be imposed to clients who do not have another tour participant to share accommodation with.<br style=\"border-radius: 0px !important;\">(D) We reserve the right to revise pricing rates posted in our marketing material, under any circumstances, or on the pressure of various external factors that are further than our control, for instance changes in exchange rate, government action etc.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">4. Travel Insurance</span><br style=\"border-radius: 0px !important;\">Travel insurance is compulsory for all Clients undertaking any tour. It should provide adequate protection for the full duration of the tour to cover personal injury, death, medical expenses, repatriation expenses, helicopter rescue, air ambulance and adequate cover for baggage.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">5. Health &amp; Fitness</span><br style=\"border-radius: 0px !important;\">All our Nepal tours and treks require a level of fitness, there for you should always check with your local GP regarding your health and fitness before you travel. It’s the clients responsibility to notify Nepal Hidden Treks and Expedition of any pre-existing medical condition and/or disability that might reasonably be expected to increase the risk of you required medical attention, that may affect your ability to travel.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">6. Publicity</span><br style=\"border-radius: 0px !important;\">you agree that Nepal Hidden Treks and Expedition may use images of you taken during the trip without recourse to you and without compensation to you, for publicity and promotion purposes only through whatever medium it chooses.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">7. Privacy</span><br style=\"border-radius: 0px !important;\">In order to collect information from you to making a booking through Nepal Hidden Treks and Expedition we ask many questions to obtain the necessary permits etc. No private or personal information that you supply to us when making a booking will be disclosed for any other purposes.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">8. Risk &amp; Liabilities</span><br style=\"border-radius: 0px !important;\">We are committed to providing the best services which will give you a once in a life time journey in this connection, we perform our duties honestly &amp; seriously to make your journey very smooth &amp; pleasant. However, the entire programs in Nepal are conducted strictly under the rules and regulation of their own policies.<br style=\"border-radius: 0px !important;\">Therefore Nepal Hidden Treks and Expedition and its related organization shall not be responsible for any changes in the itinerary due to unavoidable circumstance such as govt. restriction, Land slide, road blockage, flood, snow political unrest, cancellation of flight, delay, sickness or accident, Any extra cost incurring there of shall be borne by the clients on the spots.</p><p style=\"color: rgb(96, 96, 96); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; border-radius: 0px !important;\"><span style=\"font-weight: 700; border-radius: 0px !important;\">9. Our Responsible Tourism Policy</span><br style=\"border-radius: 0px !important;\">Nepal Hidden Treks and Expedition are re-inventing tourism for the benefit of local people, tourists, environment and the tourism industry at large. We ask that you read our Responsible Travel and Ethnic Tourism policy in detail before you book your holiday with us, as we expect that you will adhere to our policy and guidelines while traveling with us.</p>\r\n										'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '																				<div style=\"text-align: justify;\"><p style=\"margin-bottom: 1rem; padding: 0px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\"><span style=\"font-weight: bold; font-size: large;\">About Us</span></p><p style=\"margin-bottom: 1rem; padding: 0px; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\">Tourism Nepal is one of the most popular Tour Operator for Nepal, Tibet, Bhutan and India as providing comprehensive Travel Package for leisure, Group, Charters &amp; small-business traveler, backed by real-time Website &amp; unmatched products.</p><p style=\"margin-bottom: 1rem; padding: 0px; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\">Since its beginning, we have been growing at a fast pace aspiring to emerge as one of the leading travel company in Nepal. The very fact that we are a young company, we are open to new ideas, flexible &amp; adaptable to our clients needs.</p><p style=\"margin-bottom: 1rem; padding: 0px; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\">The organization is headed &amp; professionally managed by people having vast experience in hospitality business. With our central location in Thamel (tourist hub of Kathmandu), we are equipped with requisite infrastructure &amp; an excellent network of ground handling agents covering all of Nepal and its Sub Continent.</p><p style=\"margin-bottom: 1rem; padding: 0px; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\">The organization is handling tours and trekking to Nepal, Tibet, Sikkim and Bhutan and also promoting India and Thailand.</p><p style=\"margin-bottom: 1rem; padding: 0px; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0); font-family: &quot;Pontano Sans&quot;, sans-serif;\">We are committed towards offering a full range of products and services to cater to the specific needs from escorted group and free and independent packages for the general public to incentive and conference packages for corporate firms.</p></div>\r\n										\r\n										'),
(11, 'contact', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif; color: rgb(0, 32, 96); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Chabahil, Kathmandu, Nepal</span><span style=\"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#002060\"><br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Tel.: +977 2 1234322, 7436287<br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Fax.: +977 1 5904362</span><br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Cell: +977 9823234144 (Viber/Whatsapp/Wechat etc.</span><br>\r\n</span>Mail: tourismnepal@gmail.com<o:p></o:p></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Mustang Tour', 'Group Package', 'Kathmandu', 15000, 'Home stay, Dining', 'Tour to Upper Mustang is experience of Trans Himalaya of Nepal bordering Tibet. Explore panoramic mountain views surroundings and scenic Plateau landscape. Upper Mustang also called mini Tibet as it is same landscape, peoples and their cultures are same as Tibetan.', 'mustang.jpg', '2022-03-20 07:46:08', NULL),
(10, 'Annapurna Base Camp Trek (7 days)', 'Group Package', 'Pokhara', 30000, 'Meals, English speaking guide, Food, Lodge, Transportation and Insurance', '7 Days Annapurna base camp trek starts at Kimche, a short drive of 3 hours from Pokhara and one hour trek to Ghandruk village. The trail takes you through forests and fascinating traditional villages of Ghandurk and Chhomrong Gurung village. After reaching Chhomrong Gurung village, we follow the Modi Khola and passes through stands of rhododendron trees and bamboo. By the time you reach the large rock overhanging, known as Hinku Cave, you will have noticed that the vegetation has thinned and the gorge narrowed to be only a few hundred meters wide. Steep snow-clad ridges falling from Hiunchuli on the left and Machhapuchhre on the right from the sanctuary. As we enter the sanctuary, you find yourself in a huge Amphitheatre enclosed by a solid wall of snow-capped peaks. We get to Annapurna base camp hardly. You will see Himchuli, Annapurna South, Barahi Shikhar, Annapurna I, Tent Peak, Singachuli, Glacier Dom, Gangapurna, Annapurna III and Machhapuchhre snow-capped mountains around the Annapurna base camp which makes you worthwhile and happy. After this imaging view, you will trek down to Pokhara via Jhinu Hot Spring.', 'annapurna-base-camp-trekkking.jpg', '2022-03-20 09:33:30', NULL),
(11, '14 Days Everest Base Camp Trek', 'Any', 'Namche Bazzar', 100000, 'All the meals (Breakfast, Launch, Dinner) with Lodge Accommodation Guide and porters, First Aid Kits, Transportation, ', '14 Days Everest Base Camp Trek or EBC Trek (5364m/17598feet) is the best treks in the world and a very well-known adventure trek in Nepal. Tenzing Hillary Lukla Airport, Namche Bazar, Tengboche Monastery, Everest Base camp and Kalapather are the major attraction of this trek. We will see World Highest Mt. Everest, Lhotse, Nuptse, Ama Dablam, Pumori, Makalu and others Himalayas.', 'image_processing20190811-4-ehx69r.jpg', '2022-03-20 09:39:38', NULL),
(12, 'Kathmandu Valley Tour', 'Any (Group or Individual)', 'Kathmandu', 25000, 'Local Tour Operator, Hotel ', 'Kathmandu tour is one of the most popular sightseeing tour in Nepal. Kathmandu city is the capital city of Nepal and is considered as heart of Nepal. Kathmandu valley the political, commercial, cultural hub of Nepal is framed for its natural beauty and historic and holistic places. Kathmandu valley contains three fabled cities, Kathmandu, Patan and Bhaktapur. Kathmandu city has an artistic exposition of graceful temples, elegant palaces, brick paved courtyards and giant streets. It is surrounded by green mountain walls above which tower mighty snowcapped peaks. Kathmandu city has the pilgrimage places for both Hindus and Buddhists.', 'Stock-photo-ID-579759958Patan-.Ancient-city-in-Kathmandu-Valley.-Nepal.jpg', '2022-03-20 09:49:04', NULL),
(13, '3 days Pokhara Tour', 'Individual/Group', 'Pokhara, Kaski', 25000, 'Boating, Sightseeing', 'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore, the Lakeside district has yoga centers and restaurants. In the city’s south, the International Mountain Museum has exhibits on the history of mountaineering and the people of the Himalayas.', 'pokhara.jpg', '2022-03-20 11:42:51', NULL),
(14, 'Paragliding in Pokhara', 'Individual', 'Pokhara', 10000, 'Video, Photos', 'Paragliding in Pokhara allows paragliders to fly over the mountain ranges of the Himalayas, Mount Fish Tail and the entire Pokhara Valley at a height of 1492 meters above ground level. The ride goes on for a duration of 30 minutes in total with the take off and landing.', 'paragliding-nepal.jpeg', '2022-03-20 11:46:58', NULL),
(15, 'Chitwan Jungle Safari', 'Individual/Group', 'Chitwan National Park', 7000, 'Elephant Ride', 'We offer a package tour for Chitwan National Park, where you can have your holidays relaxable with elephant safari, jungle walk, bird watching, canoeing, elephant bathing, culture visit and traditional shows and many more activities to make much enjoyable trip for you.', 'elephant_safari.jpg', '2022-03-20 11:49:52', NULL),
(16, 'Rara Lake Trek', 'Individual/Group', 'Mugu', 40000, 'Pickup, Accommodation, Transport', 'RARA the highest freshwater lake in the Nepalese Himalayas is a spectacular destination to explore the vibrant beauty of nature at an elevation of 2990m in Mugu district. In December 2020 (Christmas time), when the temperature is below the freezing point, we headed to RARA. When traveling from Kathmandu air transportation is a convenient option to save journey-time (Connecting Flight from Nepalgunj, recommend using the early morning flight from KTM-Nepalgunj). ', 'rara.jpg', '2022-03-20 05:17:31', NULL),
(17, 'Gokyo Trek', 'Group Package', 'Khumbu region', 50000, 'Transport, Lodging', 'The Gokyo Lakes Trek is a good alternative to the Everest Base Camp Trek. It leads up the valley west of Everest to the village of Gokyo and to the five sacred lakes on the moraine next to the Ngozumpa glacier. This spectacular two-week climb, which is almost as high as the Everest Base Camp Trek, offers breathtaking views of Everest, but the trails are less crowded and quieter. You will pass traditional Sherpa villages where you will be served local food. The trail follows the Dudhkoshi River to its source - a series of emerald green lakes. Gokyo is a Sherpa village located next to the largest of these lakes. From Gokyo, we ascend to Gokyo Ri (5360m) from where we have a magnificent view of Everest, Lhotse, Cho Oyu and Makalu, Cholatse and Taboche.', 'gokyo-lakes-gokyo-ri-trek.jpg', '2022-03-20 05:19:51', NULL),
(18, 'Tatopani Hot Springs', 'Individual/Group', 'Tatopani', 15000, 'Pickup-drop ', 'The Tatopani Hot Spring Trek is a fascinating trekking adventure landing at a natural hot water spring located at Annapurna region of Nepal. The Tatopani Hot Spring Trek is an dive in to a wild nature and a excellent wonder of nature followed by a visit to the world famous Himalaya panorama of Poon Hill. This trekking adventure is aimed for those travelers who want to stay away from the high altitude of Annapurna circuit but still want to trek on the shadow of Annapurna Himalayas.', 'tatopani.jpg', '2022-03-20 05:23:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(59, 'pranav', '9840584585', 'pranav@gmail.com', '9e1135ff4157f14358c7c94c79aad47d', '2022-05-06 08:16:49', NULL),
(60, 'ramn', '9876543210', 'ram@gmail.com', '4641999a7679fcaef2df0e26d11e3c72', '2022-05-06 08:18:28', NULL),
(61, 'hari', '9874563210', 'hari@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889', '2022-05-06 08:18:59', NULL),
(62, 'giri', '9874563210', 'giri@gmail.com', 'a95bc72cf82d4eaa0874de0175dc2091', '2022-05-06 08:29:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userrating`
--

CREATE TABLE `userrating` (
  `RatingID` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `userrating`
--
ALTER TABLE `userrating`
  ADD PRIMARY KEY (`RatingID`),
  ADD UNIQUE KEY `RatingID` (`RatingID`,`PackageId`),
  ADD UNIQUE KEY `PackageId_3` (`PackageId`,`UserEmail`),
  ADD KEY `PackageId` (`PackageId`,`UserEmail`,`Rating`) USING BTREE,
  ADD KEY `PackageId_2` (`PackageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `userrating`
--
ALTER TABLE `userrating`
  MODIFY `RatingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
