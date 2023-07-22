-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 07:46 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingmotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '2023-07-05 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2023-07-07 16:24:34', NULL),
(2, 'BMW', '2023-07-07 16:24:50', NULL),
(3, 'Audi', '2023-07-07 16:25:03', NULL),
(4, 'Nissan', '2023-07-07 16:25:13', NULL),
(5, 'Toyota', '2023-07-07 16:25:24', NULL),
(7, 'Volkswagon', '2023-07-08 06:22:13', '2023-07-09 14:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Juja, Muramati Rd', 'kingmotors.ke@gmail.com', '0796588059');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kabixy', 'kingmotors.ke@gmail.com', '0796588059', 'I want to know how to get in touch?', '2023-07-05 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', "<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG> </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to King Motors Rental Cars! By using our services, you acknowledge and agree to the following terms and conditions, which constitute a legally binding agreement between you and King Motors Rental Cars.

Vehicle Reservation and Rental:
When reserving a vehicle, please note that all bookings are subject to availability at the time of reservation. To rent a vehicle, the driver must be at least 20 years old and hold a valid driver's license. Additional age restrictions may apply for certain vehicle categories. The rented vehicle is strictly for personal use and must not be used for any illegal activities, races, competitions, towing, or transporting hazardous materials. Furthermore, the vehicle should not be operated under the influence of alcohol, drugs, or any other substance that impairs the driver's ability to drive safely. It is important to return the vehicle on or before the agreed-upon return time specified in the rental agreement, as late returns may result in additional charges.

Rental Charges and Payment:
Our rental rates are calculated based on the type of vehicle, duration of rental, and applicable fees. Please note that rates are subject to change without prior notice. You will be responsible for any additional charges, such as fuel, optional equipment, tolls, parking fines, and other surcharges, which will be collected at the end of the rental period. Payments for the rental and any additional charges must be made using the accepted payment methods specified by King Motors Rental Cars.

Insurance and Liability:
All rental vehicles come with basic third-party liability insurance coverage. Additional coverage options may be available at an extra cost. As the renter, you are responsible for any damage, loss, or theft of the rented vehicle. Therefore, it is essential to report any incidents to King Motors Rental Cars immediately. You may be held liable for the cost of repair or replacement of the vehicle. By renting our vehicles, you agree to indemnify and hold King Motors Rental Cars harmless from any claims, damages, or liabilities arising from the use of the rented vehicle.

Cancellations and Modifications:
If you need to cancel your reservation, please do so within the specified time frame stated in the reservation confirmation. Failure to cancel within the given time may result in cancellation fees. In case you need to make changes or modifications to your reservation details, kindly inform King Motors Rental Cars in advance. Additional charges may apply for any modifications made.

Privacy and Data Protection:
At King Motors Rental Cars, we may collect and process personal information provided by you for the purpose of the rental agreement and related services. We handle this information in accordance with applicable privacy laws. While we take reasonable measures to safeguard your personal information, we cannot guarantee the security of data transmitted through online platforms.

Governing Law and Jurisdiction:
These terms and conditions are governed by and interpreted in accordance with the laws of the jurisdiction where King Motors Rental Cars operates. Any disputes arising from the rental agreement shall be subject to the exclusive jurisdiction of the courts in that jurisdiction.

Severability:
If any provision of these terms and conditions is found to be invalid or unenforceable, the remaining provisions shall remain in full force and effect. </FONT></P>"),


(2, 'Privacy Policy', 'privacy', "<span style=\'color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\'>At King Motors Rental Cars, We prioritize the protection of your privacy and the security of your personal information. This Privacy Policy is designed to explain how we collect, use, and disclose the information you provide to us. By using our services, you agree to comply with the terms and conditions outlined in this Privacy Policy.

Collection of Personal Information:
To facilitate your vehicle reservation and provide our services effectively, we may collect personal information from you. This may include details such as your name, address, contact information, driver's license details, and payment information. We collect this information to fulfill your reservation, offer customer support, and comply with legal obligations.



Use of Personal Information:
We utilize your personal information for the following purposes:
a. Reservation and Rental: We process your vehicle reservation, complete the rental agreement, and deliver the requested services.
b. Communication: We communicate with you regarding your reservation, provide updates, and respond to your inquiries and feedback.
c. Payment Processing: We process payments for your rental and any additional charges incurred.
d. Marketing and Promotions: With your consent, we may use your personal information to send you promotional offers, newsletters, and other marketing communications.
e. Improving Our Services: We analyze usage patterns, gather feedback, and enhance the quality of our services and user experience.
f. Legal Compliance: We comply with applicable laws, regulations, and legal obligations.



Disclosure of Personal Information:
In certain circumstances, we may disclose your personal information to the following parties:
a. Service Providers: Trusted third-party service providers who assist us in delivering our services, such as payment processors, IT service providers, and customer support providers.
b. Legal Requirements: If required by law, court order, or government regulations, we may disclose your personal information.



Data Security:
We implement reasonable measures to protect your personal information from unauthorized access, loss, misuse, alteration, or disclosure. Our security practices include encryption, access controls, and regular system updates. However, please be aware that no method of data transmission over the internet or electronic storage is entirely secure, and we cannot guarantee absolute data security.



Data Retention:
We retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by law. When personal information is no longer required, we securely dispose of or anonymize it.



Third-Party Links:
Our website or services may contain links to third-party websites or services that operate independently from King Motors Rental Cars. We hold no responsibility for the privacy practices of these third-party websites or services. We encourage you to review their privacy policies before providing any personal information.



Your Rights:
You have certain rights regarding your personal information, including the right to access, correct, update, or delete your information. You may also have the right to restrict or object to the processing of your personal information. If you have any questions or concerns about the handling of your personal information or wish to exercise your rights, please contact us using the information provided below.



Updates to the Privacy Policy:
We may update this Privacy Policy periodically to reflect changes in our practices or legal requirements. We will notify you of any material changes by posting the updated Privacy Policy on our website or by other means of communication. We encourage you to review this Privacy Policy periodically.



Contact Us:
If you have any questions, concerns, or requests regarding this Privacy Policy or our privacy practices, please reach out to us at:

King Motors Rental Cars
Address: [Juja, Muramatii Rd]
Email: [kingmotors.ke@gmail.com]
Phone: [0796 588 059]

Please note that this Privacy Policy should be read in conjunction with our Terms and Conditions, which provide additional information concerning the collection, use, and disclosure of personal information.

At King Motors Rental Cars, safeguarding your privacy and ensuring the security of your personal information is of utmost importance. By utilizing our services, you acknowledge and consent to the practices outlined in this Privacy Policy.</span>"),


(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">At King Motors Rental Cars, we take pride in offering a diverse fleet of vehicles to cater to our customers' needs. Whether you're looking for a compact car or a spacious option, we have you covered. Our vehicles come equipped with modern features such as air conditioning, power steering, and electric windows to ensure a comfortable and enjoyable driving experience.

We hold ourselves to high standards when it comes to the quality of our vehicles. All our cars are purchased and maintained exclusively at authorized dealerships, guaranteeing their reliability and performance. We understand the importance of a smooth driving experience, which is why we ensure that our fleet is in top condition and regularly serviced.

Our mission is to be recognized as the national leader in car rental for both companies and the public and private sectors. We achieve this by partnering with our clients to deliver the best and most efficient car rental solutions. Our focus on service excellence drives us to go above and beyond to ensure customer satisfaction. We understand the importance of reliable transportation for businesses and individuals, and we strive to exceed expectations every step of the way.

At King Motors Rental Cars, we are committed to providing a seamless and enjoyable car rental experience. Whether you need a vehicle for business or leisure, we are here to meet your needs with our extensive fleet, superior service, and commitment to excellence.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>'),
(11, 'FAQs', 'Frequently Asked Questions (FAQs) - King Motors Rental Cars', "<span style=\'color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\'>What are the driver requirements for renting a car from King Motors Rental Cars?

To rent a car from us, the driver must be at least 20 years old and hold a valid driver's license. Additional age restrictions may apply for specific vehicle categories.
How can I make a reservation?

Reservations can be made online through our website or by contacting our customer service team via phone or email. Our representatives will guide you through the reservation process and provide assistance as needed.
What types of vehicles do you offer?

We offer a diverse fleet of vehicles, including compact cars, sedans, SUVs, and more. Our aim is to provide options that cater to various needs and preferences.
What documents do I need to present when picking up the rental car?

You will need to present a valid driver's license, a major credit card in the renter's name for payment and security purposes, and any additional documents requested during the reservation process.
Is insurance included in the rental price?

Our rental vehicles come with basic third-party liability insurance coverage. Additional insurance options may be available at an extra cost. We recommend reviewing your own insurance coverage or considering additional coverage options to ensure adequate protection during the rental period.
What is the fuel policy?

We provide the rental car with a full tank of fuel, and we expect it to be returned with a full tank as well. Failure to do so may result in refueling charges in addition to the cost of fuel.
What happens if I return the car late?

It is important to return the car on or before the agreed-upon return time specified in the rental agreement. Late returns may result in additional charges, as outlined in our terms and conditions.
Can I add an additional driver to the rental agreement?

Yes, additional drivers can be added to the rental agreement, subject to meeting the driver requirements and paying any applicable fees.</span>");

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test',	'test@gmail.com',	'0700 000 00',	'00/00/0000',	'SOMEPLACE', 'Somewhere Far street-616',	'Republic',	'City123', '2023-07-12 05:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'The Maruti Suzuki Wagon R is a versatile and practical hatchback known for its spacious interior and fuel efficiency. Key features include a compact design, comfortable seating, ample cargo space, and a responsive infotainment system. With its efficient engine options, the Maruti Suzuki Wagon R delivers excellent fuel consumption, making it an economical choice for city driving.', 1500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:04:35', '2023-07-07 07:27:08'),
(2, 'BMW 5 Series', 2, 'The BMW 5 Series is a luxury sedan known for its elegant design, advanced technology, and exhilarating performance. Key features include a sophisticated exterior, luxurious interior, advanced technology systems, precise handling, and a comprehensive suite of safety features. The BMW 5 Series offers a perfect balance of comfort and performance, with fuel-efficient engine options that prioritize both power and efficiency.', 3500, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-07 07:12:02', '2023-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'The Audi Q8 is a luxury SUV that combines style, performance, and advanced technology. Key features include a sleek design, spacious interior, cutting-edge infotainment system, powerful performance, and a range of safety features. The Audi Q8 delivers a thrilling driving experience while maintaining decent fuel efficiency.', 5000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:19:21', '2023-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Nissan launched the Kicks 2020 with a new turbocharged petrol engine. The Nissan Kicks is a stylish and compact crossover with key features such as a bold design, spacious interior, advanced safety technologies, and user-friendly infotainment system. With its efficient engine options, the Nissan Kicks delivers good fuel economy for an enjoyable and eco-friendly driving experience.', 2500, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2023-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, 'The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3 seconds.', 10000, 'Petrol', 2019, 4, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'The Nissan Sunny 2020 is a reliable sedan offering practicality and efficiency. Key features include a spacious interior, comfortable seating, user-friendly technology, and a range of safety features. With its fuel-efficient engine options, the Nissan Sunny 2020 provides excellent fuel consumption, making it an economical choice for everyday commuting.', 1800, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.

    Toyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 12000, 'Disel', 2020, 7, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2023-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 1200, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2023-07-07 09:23:11', NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;