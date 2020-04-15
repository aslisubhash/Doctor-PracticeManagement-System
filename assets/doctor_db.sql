#
# TABLE STRUCTURE FOR: appointments
#

DROP TABLE IF EXISTS appointments;

CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `whom` tinyint(1) NOT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `contact_id` int(10) unsigned NOT NULL,
  `other` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `motive` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 for approved',
  `is_view` tinyint(1) NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 for closed , default is 0',
  `type_id` tinyint(1) NOT NULL DEFAULT '2',
  `Color` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (46, 'test app', 4, 2, 0, 22, '', '2015-08-31 18:08:00', '0000-00-00 00:00:00', 'greeting', '     dhasjdhahsdhasd', 0, 0, 1, 1, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (47, 'test app', 4, 2, 12, 21, '', '2015-07-07 18:23:00', '0000-00-00 00:00:00', 'greeting', '  dhasjdhahsdhasd', 0, 0, 0, 1, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (49, 'test Assistant', 4, 1, 29, 0, 'Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'test123', '         sdasd', 1, 1, 0, 1, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (53, 'visit', 4, 1, 43, 0, '', '2015-09-01 17:39:00', '0000-00-00 00:00:00', 'sad', '   asdasd', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (57, 'test123', 4, 1, 29, 0, '', '2015-09-01 07:40:00', '0000-00-00 00:00:00', 'sdas', 'dfdsf', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (58, 'fdsdf', 4, 1, 29, 0, '', '2015-08-30 08:00:00', '0000-00-00 00:00:00', 'sdf', 'sfdfdf', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (63, 'jas', 4, 1, 29, 0, '0', '2015-09-25 07:00:00', '0000-00-00 00:00:00', 'mys', '   jas', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (64, 'latest 20155', 4, 1, 29, 0, '0', '2015-08-10 05:01:00', '0000-00-00 00:00:00', 'check atesg', '  hsjhdjhaksd', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (65, '0', 4, 1, 29, 0, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'raju x-ray report checkup', '  213123123', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (66, 'test ', 4, 1, 0, 0, '', '2015-09-21 10:15:00', '0000-00-00 00:00:00', ' test', '', 1, 0, 1, 0, 2, '19');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (67, 'Appointment ', 4, 1, 44, 0, '', '2015-09-23 00:00:00', '2015-09-23 02:30:00', ' ravi pateint', '', 1, 0, 1, 0, 2, '-1');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (68, 'Appointment', 4, 1, 29, 0, '', '2015-10-14 02:15:00', '2015-10-14 04:15:00', ' sd', '', 1, 0, 1, 0, 2, '-1');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (69, 'APpoint 2', 4, 2, 0, 20, '', '2015-10-13 02:00:00', '2015-10-13 04:00:00', ' sd', '', 1, 0, 0, 0, 2, '-1');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (70, 'gjhg', 4, 1, 29, 0, '', '2016-04-30 16:00:00', '0000-00-00 00:00:00', 'skda', ' sdasd', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (71, 'My New Appointment For 3 Feb', 19, 1, 67, 0, '', '2017-02-03 09:15:00', '2017-02-03 09:45:00', 'testing 1', '', 1, 0, 0, 0, 2, '3');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (72, '0', 19, 1, 67, 0, '0', '2017-02-03 03:00:00', '0000-00-00 00:00:00', 'Test Appointment S', ' asasA', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (73, 'hello App', 19, 1, 67, 0, '', '2017-02-03 17:00:00', '0000-00-00 00:00:00', 'test 3', ' test', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (74, 'new app 10 feb', 19, 1, 67, 0, '', '2017-02-10 14:00:00', '0000-00-00 00:00:00', '9001', ' test 4', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (75, 'New Demo Appointment', 19, 1, 75, 0, '', '2017-02-09 13:56:00', '0000-00-00 00:00:00', 'no reason only demo', ' hi frnd', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (76, 'no', 19, 2, 0, 4, '', '2017-02-15 14:08:00', '0000-00-00 00:00:00', 'tets', ' sadsad', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (77, 'un', 19, 3, 0, 0, 'unlcle', '2017-02-21 14:10:00', '0000-00-00 00:00:00', 'sdjhka', ' ', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (78, '0', 19, 1, 67, 0, '0', '2017-02-09 14:14:00', '0000-00-00 00:00:00', 'raju', ' ', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (79, '0', 19, 1, 75, 0, '0', '2017-02-09 14:15:00', '0000-00-00 00:00:00', 'tester', ' ', 1, 0, 0, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (80, '0', 19, 1, 67, 0, '0', '2017-02-13 14:23:00', '0000-00-00 00:00:00', 'hii', ' tests', 1, 0, 1, 0, 2, '');
INSERT INTO appointments (`id`, `title`, `doctor_id`, `whom`, `patient_id`, `contact_id`, `other`, `date`, `end_date`, `motive`, `notes`, `status`, `is_view`, `is_paid`, `is_closed`, `type_id`, `Color`) VALUES (81, 'appointment in cal', 19, 1, 67, 0, '', '2017-02-16 12:00:00', '2017-02-16 13:00:00', ' hi ', '', 1, 0, 1, 0, 2, '1');


#
# TABLE STRUCTURE FOR: assistant_payment
#

DROP TABLE IF EXISTS assistant_payment;

CREATE TABLE `assistant_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assistant_id` int(10) unsigned NOT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `invoice` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO assistant_payment (`id`, `assistant_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (4, 4, 2, '2015-07-16', 50001, '400.00');
INSERT INTO assistant_payment (`id`, `assistant_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (5, 57, 5, '2015-07-30', 50002, '748.00');
INSERT INTO assistant_payment (`id`, `assistant_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (6, 57, 5, '2015-07-13', 50003, '899.00');
INSERT INTO assistant_payment (`id`, `assistant_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (7, 57, 5, '2015-07-29', 50004, '788.00');


#
# TABLE STRUCTURE FOR: blood_group_type
#

DROP TABLE IF EXISTS blood_group_type;

CREATE TABLE `blood_group_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO blood_group_type (`id`, `name`) VALUES (1, 'O-');
INSERT INTO blood_group_type (`id`, `name`) VALUES (2, 'O+');
INSERT INTO blood_group_type (`id`, `name`) VALUES (3, 'A-');
INSERT INTO blood_group_type (`id`, `name`) VALUES (4, 'A+');
INSERT INTO blood_group_type (`id`, `name`) VALUES (5, 'B-');
INSERT INTO blood_group_type (`id`, `name`) VALUES (6, 'B+');
INSERT INTO blood_group_type (`id`, `name`) VALUES (7, 'AB-');
INSERT INTO blood_group_type (`id`, `name`) VALUES (8, 'AB+');


#
# TABLE STRUCTURE FOR: canned_messages
#

DROP TABLE IF EXISTS canned_messages;

CREATE TABLE `canned_messages` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `type` enum('internal','order') NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: case_history
#

DROP TABLE IF EXISTS case_history;

CREATE TABLE `case_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO case_history (`id`, `name`, `doctor_id`) VALUES (1, 'title11', 4);
INSERT INTO case_history (`id`, `name`, `doctor_id`) VALUES (2, 'title32', 4);
INSERT INTO case_history (`id`, `name`, `doctor_id`) VALUES (3, 'title3', 4);


#
# TABLE STRUCTURE FOR: contacts
#

DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (1, 'Kamal', '91891', 'kamal@gmail.com', 'sadasdasd', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (2, 'Dulon Ahmed', '01889272334235', '', 'fdgdg', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (4, 'Contact ', '010101010', 'contact@yahoo.com', 'Address', 19);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (5, 'Name', 'Phone', 'Email', 'Address', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (6, 'Mukesh', '89898', 'mukesh@gmail.com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (7, 'john doe', '11', 'john@admin.,com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (8, 'Name', 'Phone', 'Email', 'Address', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (9, 'Mukesh', '89898', 'mukesh@gmail.com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (10, 'john doe', '11', 'john@admin.,com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (11, 'Name', 'Phone', 'Email', 'Address', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (12, 'Mukesh', '89898', 'mukesh@gmail.com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (13, 'john doe', '11', 'john@admin.,com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (14, 'Name', 'Phone', 'Email', 'Address', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (15, 'Mukesh', '89898', 'mukesh@gmail.com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (16, 'john doe', '11', 'john@admin.,com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (17, 'Name', 'Phone', 'Email', 'Address', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (18, 'Mukesh', '89898', 'mukesh@gmail.com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (19, 'john doe', '11', 'john@admin.,com', 'jodhpur', NULL);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (20, 'shri', '910018818', 'shri@gmail.com', 'pali', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (21, 'Mukesh Godha', '8764200000000000', 'mukesh@gmail.com', 'jodhpur', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (22, 'john doe', '11', 'john@admin.,com', 'jodhpur', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (23, 'shri', '910018818', 'shri@gmail.com', 'pali', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (24, 'eshop 1', '199191', 'eshop@gmail.com', 'sdsa', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (25, 'hello', '87', 'contact@gmail.com', 'ahjs', 4);
INSERT INTO contacts (`id`, `name`, `contact`, `email`, `address`, `doctor_id`) VALUES (26, 'R L  Verma', '08188123898', 'eshop@gmail.com', '1 c road\nSardarpura.', 4);


#
# TABLE STRUCTURE FOR: custom_fields
#

DROP TABLE IF EXISTS custom_fields;

CREATE TABLE `custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `field_type` int(10) unsigned NOT NULL,
  `form` int(10) unsigned NOT NULL,
  `values` text NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO custom_fields (`id`, `name`, `field_type`, `form`, `values`, `doctor_id`) VALUES (1, 'Father Name', 1, 2, '', NULL);
INSERT INTO custom_fields (`id`, `name`, `field_type`, `form`, `values`, `doctor_id`) VALUES (2, 'Country', 2, 2, 'India,Usa,Aus', NULL);
INSERT INTO custom_fields (`id`, `name`, `field_type`, `form`, `values`, `doctor_id`) VALUES (3, 'Type', 3, 2, 'Public,Private,Other', NULL);
INSERT INTO custom_fields (`id`, `name`, `field_type`, `form`, `values`, `doctor_id`) VALUES (4, 'Education', 4, 2, '10,12,Gratuate,PG,PHD', NULL);
INSERT INTO custom_fields (`id`, `name`, `field_type`, `form`, `values`, `doctor_id`) VALUES (5, 'About Yourself', 5, 2, '', NULL);


#
# TABLE STRUCTURE FOR: days
#

DROP TABLE IF EXISTS days;

CREATE TABLE `days` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO days (`id`, `name`) VALUES (1, 'Mon');
INSERT INTO days (`id`, `name`) VALUES (2, 'Tue');
INSERT INTO days (`id`, `name`) VALUES (3, 'Wed');
INSERT INTO days (`id`, `name`) VALUES (4, 'Thu');
INSERT INTO days (`id`, `name`) VALUES (5, 'Fri');
INSERT INTO days (`id`, `name`) VALUES (6, 'Sat');
INSERT INTO days (`id`, `name`) VALUES (7, 'Sun');


#
# TABLE STRUCTURE FOR: disease
#

DROP TABLE IF EXISTS disease;

CREATE TABLE `disease` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (2, 'Cancer', '', NULL);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (3, 'Swine Flu', '', NULL);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (4, 'Skin Elergy', '', NULL);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (5, 'Diabtiease', '', NULL);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (6, 'Blood Presure', '', NULL);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (7, 'Abdominal Aortic Aneurysm', 'Abdominal Aortic Aneurysm', 19);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (8, 'Abdominal Cramps (Heat Cramps)', 'Abdominal Cramps (Heat Cramps)', 19);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (9, 'Back Pain (Low Back Pain)', 'Back Pain (Low Back Pain)', 19);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (10, 'Barium Enema', 'Barium Enema', 19);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (11, 'COld', '', 4);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (12, 'Head Pain', '', 4);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (13, 'Fever', 'dfsdf', 4);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (14, 'cancer', '', 4);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (15, 'swine flu h1 n1', '', 4);
INSERT INTO disease (`id`, `name`, `description`, `doctor_id`) VALUES (16, 'Diabities ss', '', 4);


#
# TABLE STRUCTURE FOR: doctor_payment
#

DROP TABLE IF EXISTS doctor_payment;

CREATE TABLE `doctor_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(10) unsigned NOT NULL,
  `payment_mode_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `invoice` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO doctor_payment (`id`, `doctor_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (4, 5, 2, '2015-07-14', 102, '400.00');
INSERT INTO doctor_payment (`id`, `doctor_id`, `payment_mode_id`, `date`, `invoice`, `amount`) VALUES (5, 61, 1, '2016-04-29', 103, '90000.00');


#
# TABLE STRUCTURE FOR: event_calendar
#

DROP TABLE IF EXISTS event_calendar;

CREATE TABLE `event_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `schedule_category_id` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (1, 'Other schedule', '2015-09-10 12:00:00', '2015-09-10 06:50:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (2, 'sunday off', '2015-08-30 01:00:00', '2015-08-30 02:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (3, 'latest event', '2015-08-31 07:20:00', '2015-08-31 08:20:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (4, 'bbbbbb', '2015-09-11 21:00:00', '2015-09-11 21:30:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (5, 'test 10 sept', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (6, 'hhh', '2015-09-08 07:00:00', '2015-09-08 07:10:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (7, 'helo', '2015-09-08 23:10:00', '2015-09-09 00:40:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (8, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (9, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (10, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (11, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (12, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (13, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);
INSERT INTO event_calendar (`id`, `title`, `starttime`, `endtime`, `schedule_category_id`, `doctor_id`) VALUES (14, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 4);


#
# TABLE STRUCTURE FOR: fees
#

DROP TABLE IF EXISTS fees;

CREATE TABLE `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) unsigned NOT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `invoice` int(10) unsigned NOT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `payment_for` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (1, 0, 5, '190.00', '2015-08-02', 50001, 43, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (2, 0, 5, '9001.00', '2015-07-07', 50002, 30, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (3, 0, 6, '3200.00', '2015-07-05', 50003, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (4, 0, 5, '8881.00', '2015-07-24', 50004, 0, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (6, 0, 5, '9090.00', '2015-08-08', 50005, 43, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (7, 0, 6, '900.00', '2016-08-11', 50006, 44, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (8, 0, 5, '8493.00', '2015-08-07', 50007, 65, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (9, 0, 6, '1111.00', '2015-07-09', 50008, 43, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (10, 0, 5, '1.00', '2015-07-09', 50009, 64, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (11, 0, 7, '2323.00', '2015-08-12', 1, 59, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (12, 0, 8, '787.00', '2015-08-12', 1, 67, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (13, 0, 5, '801.00', '2015-08-31', 50010, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (14, 0, 5, '199.00', '2015-09-11', 50011, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (16, 0, 5, '551.00', '2015-09-30', 50012, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (17, 0, 5, '3223.00', '2015-09-13', 50013, 0, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (18, 0, 5, '99999999.99', '2015-09-05', 50013, 0, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (20, 0, 5, '420.00', '2015-09-05', 50014, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (21, 0, 5, '1000.00', '2015-09-08', 50015, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (22, 0, 5, '16.00', '2015-09-07', 50016, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (23, 0, 6, '43.00', '2015-09-09', 50017, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (24, 0, 6, '899.00', '2016-04-28', 50018, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (25, 0, 5, '780.00', '2016-04-28', 50019, 29, NULL, NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (27, 0, 8, '101.00', '2017-02-08', 3, 75, 'Treatment Fee', NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (28, 0, 8, '9999.00', '2017-02-08', 4, 74, 'Opration Fee', NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (29, 0, 8, '190.00', '2017-02-08', 5, 75, 'Medicine', '90.00');
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (30, 0, 8, '1900.00', '2017-02-08', 6, 67, 'Lab Fee', NULL);
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (31, 0, 8, '200.00', '2017-02-07', 7, 75, 'xray', '10.00');
INSERT INTO fees (`id`, `prescription_id`, `payment_mode_id`, `amount`, `date`, `invoice`, `patient_id`, `payment_for`, `balance`) VALUES (32, 0, 8, '100.00', '2017-02-13', 8, 67, 'x ray', '90.00');


#
# TABLE STRUCTURE FOR: fixed_schedule
#

DROP TABLE IF EXISTS fixed_schedule;

CREATE TABLE `fixed_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `timing_to` time NOT NULL,
  `timing_from` time NOT NULL,
  `work` text NOT NULL,
  `hospital` int(11) NOT NULL,
  `type` tinyint(2) DEFAULT NULL COMMENT 'type 1 for hospital , 2for medical college',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=latin1;

INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (300, 4, '1', '00:00:00', '00:00:00', 'OPD Time@', 0, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (301, 4, '1', '00:00:00', '00:00:00', 'OPD Time@', 1, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (303, 4, '1', '00:00:00', '00:00:00', 'Seminar', 1, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (304, 4, '1', '00:00:00', '00:00:00', 'Patient Visit', 1, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (305, 4, '1', '00:00:00', '00:00:00', 'College Time', 1, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (306, 4, '1', '00:00:00', '00:00:00', 'College Time1', 1, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (308, 4, '2', '00:00:00', '00:00:00', 'test sd sd', 7, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (309, 19, '1', '00:00:00', '00:00:00', 'work', 1, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (310, 19, '1', '00:00:00', '00:00:00', 'work', 1, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (311, 19, '1', '00:00:00', '00:00:00', 'fdgdfg', 1, NULL);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (312, 5, '1', '00:00:00', '00:00:00', 'test app', 9, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (313, 5, '2', '00:00:00', '00:00:00', 'tuesday test', 9, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (314, 5, '1', '00:00:00', '00:00:00', 'test monday', 4, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (315, 5, '1', '00:00:00', '00:00:00', 'II Enings', 4, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (316, 5, '1', '00:00:00', '00:00:00', 'II Enings', 4, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (319, 4, '1', '00:00:00', '00:00:00', 'work uodates', 0, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (320, 4, '1', '00:00:00', '00:00:00', 'sjdjs', 1, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (321, 4, '1', '00:00:00', '00:00:00', 'colg time1', 1, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (332, 4, '4', '00:00:00', '00:00:00', 'Full day', 1, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (333, 4, '1', '00:00:00', '00:00:00', 'Half Day', 1, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (337, 4, '', '05:30:00', '01:00:00', 'yoga', 19, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (346, 4, '1', '05:30:00', '08:00:00', 'II Enings', 2, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (348, 4, '1', '07:30:00', '19:00:00', 'Gym', 2, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (349, 4, '1', '05:30:00', '08:00:00', 'classes', 2, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (350, 4, '1', '06:00:00', '05:00:00', 'OPD1', 2, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (351, 4, '1', '00:30:00', '08:00:00', 'class 1234', 22, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (352, 4, '1', '05:30:00', '05:00:00', 'full day', 22, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (353, 4, '1', '10:15:00', '10:00:00', 'Class U', 20, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (354, 4, '1', '10:15:00', '09:00:00', 'Assistant Interview', 12, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (355, 56, '1', '09:00:00', '19:00:00', 'II Enings', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (356, 4, '2', '09:00:00', '08:00:00', 'OPD IN DELHI AIIMS U', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (357, 4, '6', '09:00:00', '08:00:00', 'II Enings', 19, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (358, 4, '6', '09:00:00', '08:00:00', 'II Enings', 19, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (359, 4, '5', '05:30:00', '08:00:00', 'OPD IN DELHI AIIMS', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (360, 4, '5', '09:00:00', '01:00:00', 'class 1', 1, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (361, 4, '3', '01:00:00', '11:00:00', 'test wednus day', 2, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (362, 4, '3', '15:00:00', '11:00:00', 'DUTY', 18, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (363, 4, '3', '13:15:00', '07:00:00', 'exam', 12, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (364, 4, '1', '09:00:00', '08:00:00', 'OPD IN DELHI AIIMS', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (365, 4, '1', '10:00:00', '06:00:00', 'good morning', 11, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (366, 4, '6', '11:20:00', '01:00:00', 'last day', 11, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (367, 4, '6', '07:30:00', '01:00:00', 'test sat', 11, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (368, 4, '6', '10:00:00', '11:00:00', 'II Enings', 11, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (369, 4, '6', '02:30:00', '01:30:00', 'AIMS DUTY', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (370, 4, '5', '01:30:00', '01:00:00', 'Biology Class', 1, 2);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (371, 4, '3', '01:30:00', '01:00:00', 'hodpital operation', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (372, 4, '3', '01:30:00', '01:00:00', 'hodpital operation', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (374, 4, '3', '01:30:00', '01:00:00', 'hodpital operation', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (376, 4, '3', '01:30:00', '01:00:00', 'hodpital operation', 27, 1);
INSERT INTO fixed_schedule (`id`, `doctor_id`, `day`, `timing_to`, `timing_from`, `work`, `hospital`, `type`) VALUES (377, 4, '5', '15:00:00', '11:50:00', 'lecture ', 27, 1);


#
# TABLE STRUCTURE FOR: hospital_type
#

DROP TABLE IF EXISTS hospital_type;

CREATE TABLE `hospital_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO hospital_type (`id`, `type`) VALUES (1, 'Medical college');
INSERT INTO hospital_type (`id`, `type`) VALUES (2, 'Only Hospital');
INSERT INTO hospital_type (`id`, `type`) VALUES (3, 'Both');


#
# TABLE STRUCTURE FOR: hospitals
#

DROP TABLE IF EXISTS hospitals;

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hospital_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (1, 'ramayan', 5, 'jhffg 16576hfhg', '8890007122', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (6, 'jhsgfjhsff', 5, 'fshfkjshfkjhdf', '778837273', 'Only Hospital');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (7, 'sdsd', 5, 'dsdsd', '8890007122', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (9, 'geetikma', 5, 'fshfkjshfkjhdf', '778837273', '0');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (10, 'hunha', 5, 'fshfkjshfkjhdf', '778837273', '0');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (11, 'jainssd', 5, 'fshfkjshfkjhdf', '778837273', 'Both');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (12, 'jain', 5, 'fshfkjshfkjhdf', '778837273', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (13, 'ttttt', 5, 'fshfkjshfkjhdf', '778837273', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (14, 'vijay nagar', 5, 'jhffg 16576hfhg', '8890007122', 'Both');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (15, 'vijay nagar', 5, 'jhffg 16576hfhg', '9414760753', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (16, 'goa', 5, 'jhffg 16576hfhg', '8890007122', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (17, 'ramayan', 5, 'jhffg 16576hfhg', '8890007122', 'Medical college');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (18, 'MDM Hospital', 4, 'jodhpur', '0291', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (19, 'Goyal Hospital', 4, 'Residancy Road', '678', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (20, 'AIMS Johpur', 4, 'Basni', '0291-89181', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (21, 'Shri Ram Hospital', 4, 'Pal Road jodhpur', '0291-2893813', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (22, 'MGH', 4, 'jsak', '2334', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (24, 'test', 4, 'sad', '3123', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (26, 'AIMS Johpur', 4, 'Basni', '0291-89181', '');
INSERT INTO hospitals (`id`, `name`, `doctor_id`, `address`, `phone`, `hospital_type`) VALUES (27, 'AIMS Delhi INDIA', 4, 'Delhi', '011111111', '');


#
# TABLE STRUCTURE FOR: instruction
#

DROP TABLE IF EXISTS instruction;

CREATE TABLE `instruction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `type` tinyint(2) DEFAULT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (1, 'Daily One Time Before Meal..', 1, 4);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (3, 'Non fasting', 2, 4);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (4, 'Anytime U', 2, 4);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (10, 'new', 2, 4);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (6, 'twice a day', 1, 19);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (7, 'twice a day before male ', 1, 19);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (8, '????? ????? ?????? ???? ????????', 1, 19);
INSERT INTO instruction (`id`, `name`, `type`, `doctor_id`) VALUES (11, 'dont take', 1, 4);


#
# TABLE STRUCTURE FOR: jqcalendar
#

DROP TABLE IF EXISTS jqcalendar;

CREATE TABLE `jqcalendar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `Location` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `IsAllDayEvent` smallint(6) NOT NULL,
  `Color` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `RecurringRule` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `type_id` tinyint(4) NOT NULL DEFAULT '5',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (4, 'hello admin i am here', '', '', '2015-09-11 00:30:00', '2015-09-11 02:00:00', 0, '1', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (6, 'to day i am happy', NULL, NULL, '2015-09-11 11:00:00', '2015-09-11 13:00:00', 0, NULL, NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (10, 'test appointment', '', 'hello raju bro', '2015-09-11 01:00:00', '2015-09-11 00:30:00', 0, '13', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (11, 'my name is mukesh', 'JODHPUR', 'shajdsad', '2015-09-10 03:30:00', '2015-09-10 04:00:00', 0, '-1', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (12, 'my name is mukesh', 'JODHPUR', 'shajdsad', '2015-09-10 03:30:00', '2015-09-10 04:00:00', 0, '-1', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (13, 'my name is mukesh', 'JODHPUR', 'shajdsad', '2015-09-10 03:30:00', '2015-09-10 04:00:00', 0, '-1', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (14, 'my name is mukesh', 'JODHPUR', 'shajdsad', '2015-09-10 03:30:00', '2015-09-10 04:00:00', 0, '-1', NULL, 0, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (21, '', NULL, NULL, '1970-01-01 01:00:00', '1970-01-01 01:00:00', 1, NULL, NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (23, 'uuuuwiuuwiu', '', '\n', '2015-09-11 00:00:00', '2015-09-12 00:00:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (24, 'oooooooooooooo', '', '\n', '2015-09-09 00:00:00', '2015-09-09 00:00:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (25, 'oooooooooooooo', '', '\n', '2015-09-13 00:00:00', '2015-09-13 00:00:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (26, 'oooooooooooooo', '', '\n', '2015-09-10 00:00:00', '2015-09-10 00:00:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (27, 'oooooooooooooo', '', '\n', '2015-09-11 07:30:00', '2015-09-11 08:30:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (28, 'oooooooooooooo', '', '\n', '2015-09-07 00:00:00', '2015-09-07 00:00:00', 1, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (35, '0', NULL, NULL, '2015-09-21 00:15:00', '2015-09-21 05:45:00', 0, NULL, NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (36, 'other', NULL, NULL, '2015-09-23 00:30:00', '2015-09-23 04:30:00', 0, NULL, NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (39, 'sadasd', '', '', '2015-09-24 12:00:00', '1999-11-30 14:30:00', 0, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (40, 'sharma ji ke sath meeting', '0', '0', '2015-09-13 01:00:00', '2015-09-15 04:30:00', 0, '6', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (41, 'test other', '0', '0', '2015-09-30 03:00:00', '2015-09-30 03:30:00', 0, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (42, 'nets sdasd', '0', '0', '2015-09-29 00:30:00', '2015-09-29 03:30:00', 0, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (43, 'dsasdasd', NULL, NULL, '2015-10-15 15:15:00', '2015-10-15 18:00:00', 0, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (44, '999', NULL, NULL, '2015-09-09 02:00:00', '2015-09-09 02:00:00', 0, '-1', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (45, 'Other Tasks', NULL, NULL, '2015-09-30 22:00:00', '2015-10-01 02:30:00', 0, '9', NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (46, 'sdsad', NULL, NULL, '2015-10-01 13:00:00', '2015-10-01 13:30:00', 0, NULL, NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (47, 'Test Othjer', NULL, NULL, '2015-10-12 00:00:00', '2015-10-12 01:15:00', 0, NULL, NULL, 4, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (48, 'hi', NULL, NULL, '2017-02-16 13:30:00', '2017-02-16 14:30:00', 0, NULL, NULL, 19, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (49, 'i am jq', NULL, NULL, '2017-02-14 12:00:00', '2017-02-14 12:40:00', 0, '12', NULL, 19, 5);
INSERT INTO jqcalendar (`Id`, `Subject`, `Location`, `Description`, `StartTime`, `EndTime`, `IsAllDayEvent`, `Color`, `RecurringRule`, `doctor_id`, `type_id`) VALUES (50, 'kk', NULL, NULL, '2017-02-15 11:45:00', '2017-02-15 12:15:00', 0, NULL, NULL, 19, 5);


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS language;

CREATE TABLE `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `flag` text NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO language (`id`, `name`, `flag`, `file`) VALUES (6, 'french', 'french-flag6.jpeg', 'admin_lang.php');


#
# TABLE STRUCTURE FOR: locations
#

DROP TABLE IF EXISTS locations;

CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO locations (`id`, `name`) VALUES (1, 'Jaipur I');
INSERT INTO locations (`id`, `name`) VALUES (2, 'jodhpur');
INSERT INTO locations (`id`, `name`) VALUES (3, 'Bikaner1');


#
# TABLE STRUCTURE FOR: manufacturing_company
#

DROP TABLE IF EXISTS manufacturing_company;

CREATE TABLE `manufacturing_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (1, 'Cipla', '', NULL, NULL, NULL);
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (2, 'American Biocare', 'sadasd', NULL, NULL, NULL);
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (3, 'Ranbaxy Ltd', '', NULL, NULL, NULL);
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (4, 'ACI', 'baxamco', 19, '2015-07-23', '2015-09-26');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (5, 'Beximco', 'Medicine Company', 19, '2015-05-23', '2015-06-23');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (6, 'Square', 'Medicine Company', 19, '2015-05-23', '2015-07-23');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (7, 'Reneta', 'Medicine Company', 19, '2015-05-23', '2015-08-06');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (8, 'Incepta', 'Medicine Company ', 19, '2015-05-23', '2015-11-14');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (9, 'XYZ CARE', 'dfsdfsd', 4, '2015-05-25', '2015-07-30');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (10, 'Globe', 'Manufacturing company ', 19, '2015-05-26', '2015-05-30');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (11, 'Cipls', 'djashd', 4, '2015-07-01', '2015-07-31');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (12, 'test company', 'sdahsa', 4, '2015-07-04', '2022-07-04');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (13, 'himalya Ltd', 'medicine company LTD', 4, '2015-07-01', '2015-07-31');
INSERT INTO manufacturing_company (`id`, `name`, `description`, `doctor_id`, `start_date`, `end_date`) VALUES (14, 'Ranbaxy Ltd', '', 4, '2015-07-01', '2015-08-01');


#
# TABLE STRUCTURE FOR: medical_college
#

DROP TABLE IF EXISTS medical_college;

CREATE TABLE `medical_college` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` text,
  `phone` varchar(45) DEFAULT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (1, 'S N Medical College ', 'Jodhpur', '+ 0 12345678', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (2, 'Jodhpur Medical College & Research Center', 'Jodhpur raj india', '+ 0 12345678', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (3, 'Dhaka', '', '435345', 19);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (4, 'Jodhpur Medical College', 'skadasd', '0191991', 5);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (5, 'My MedicalCollege', 'sad', '13284', 5);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (8, 'fsdfsdf', 'fdsf', '32423', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (9, 'test medical jul', 'pali', '0', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (10, 'test company', 'sdadasdsad', '0', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (11, 'atn medical COllege', '1 c road ', '99991900', 4);
INSERT INTO medical_college (`id`, `name`, `address`, `phone`, `doctor_id`) VALUES (12, 'Jaipur Medical College Raj', 'Sagaaner', '9901929012', 4);


#
# TABLE STRUCTURE FOR: medical_test
#

DROP TABLE IF EXISTS medical_test;

CREATE TABLE `medical_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (2, 'Suger', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (3, 'HBC ', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (4, 'CBC', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (5, 'RBC', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (6, 'WBC', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (7, 'ESR', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (8, 'Hemoglobin', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (9, 'Endoscopy', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (10, 'X-ray', NULL);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (11, 'Sultan Bayezid', 19);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (12, 'CBC', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (13, 'X-ray chest-D', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (14, 'ECG', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (15, 'BSNBNBD', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (16, 'BSNBNBD', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (17, 'sadasd', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (23, 'Blood Presure', 4);
INSERT INTO medical_test (`id`, `name`, `doctor_id`) VALUES (24, 'M TEST U', 4);


#
# TABLE STRUCTURE FOR: medicine
#

DROP TABLE IF EXISTS medicine;

CREATE TABLE `medicine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (1, 'Pyridoxal ', 1, 2, '10 tabs', '55.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (2, 'Levocarnitine', 1, 1, '', '78.00', 0, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (3, 'Matrigel ', 2, 2, '', '120.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (4, 'Durapatite', 2, 1, '', '87.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (5, 'Aprepitant', 4, 2, '', '12.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (6, 'Dolo 650', 4, 3, '', '120.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (7, 'Sultan Bayezid', 1, 1, '', '0.00', 1, NULL);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (8, 'Abdominal Aortic Aneurysm', 6, 4, '', '30.00', 1, 19);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (9, 'Xanax', 5, 4, '', '30.00', 1, 19);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (10, 'Spasverin', 7, 5, 'Pain relif medicine', '30.00', 1, 19);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (11, 'Parashutamole', 8, 9, '', '50.00', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (12, 'Feris-100', 8, 9, '', '89.00', 0, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (13, 'Deriphyiril 10-mg', 8, 0, 'sadasd', '0.00', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (14, 'DOLO 650', 8, 9, '12h12jjsdasad', '78.40', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (15, 'test tab', 10, 12, 'shdhshdsa ', '909.00', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (16, 'uixi tab -500mg', 8, 9, 'hhasjdhsj ', '10.00', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (17, 'Dolopar', 10, 12, 'for fever', '10.90', 1, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (18, 'test medicine', 8, 11, 'oepor', '78.00', 0, 4);
INSERT INTO medicine (`id`, `name`, `category_id`, `company_id`, `description`, `price`, `status`, `doctor_id`) VALUES (19, 'asdasd324', 8, 11, 'sd', '42.00', 0, 4);


#
# TABLE STRUCTURE FOR: medicine_category
#

DROP TABLE IF EXISTS medicine_category;

CREATE TABLE `medicine_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (1, 'B VITAMINS', NULL);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (2, 'BIOCOMPATIBLE MATERIALS', NULL);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (4, 'Anti-Emetics', NULL);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (5, 'Vitamin', 19);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (6, 'Pain relif', 19);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (7, 'BIOMETALS', 19);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (8, 'Category one1', 4);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (9, 'Category two', 4);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (10, 'Category three', 4);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (12, 'Category four', 4);
INSERT INTO medicine_category (`id`, `name`, `doctor_id`) VALUES (13, 'Medicine Category five 5', 4);


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS message;

CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `from_id` int(10) unsigned NOT NULL,
  `to_id` int(10) unsigned NOT NULL,
  `is_view_from` int(10) NOT NULL DEFAULT '0',
  `is_view_to` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (19, '2015-07-06 17:31:49', '<p>tyrty</p>', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (20, '2015-07-06 17:47:13', '<p>hello test1</p>', 4, 30, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (21, '2015-07-07 16:08:15', '<p>asdasddas</p>', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (22, '2015-07-07 17:02:45', '<p>gfdfg</p>', 4, 42, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (23, '2015-07-07 17:05:49', '<p>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sYeBnmwiWzA\" frameborder=\"0\" allowfullscreen&gt;&lt;/iframe&gt;<br></p>', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (26, '2015-07-24 13:09:34', '<p>hello dr rs gehlot</p>', 44, 4, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (27, '2015-07-24 13:09:44', '<p>Good Morning</p>', 44, 4, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (28, '2015-07-24 13:27:14', '<p>hfhg</p>', 4, 44, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (29, '2015-07-24 13:37:08', '<p>sdad</p>', 44, 1, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (30, '2015-07-24 13:37:58', '<p>sdsad</p>', 44, 4, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (31, '2015-07-30 17:01:21', 'fsdfsdfsdf', 4, 44, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (32, '2015-07-30 17:06:06', '<p>nice</p>', 42, 4, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (33, '2015-07-30 17:07:16', 'hello ajesh', 4, 62, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (34, '2015-08-19 11:48:24', 'dfsdfsdf', 4, 44, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (35, '2015-08-19 18:46:18', 'Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all<span>Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all&nbsp;Hello world this is bayezid from Electronic Medical Assistant software wellsconmes you all</span>', 4, 44, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (36, '2015-08-31 14:20:24', 'namste', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (37, '2015-08-31 17:20:28', 'namste', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (38, '2015-08-31 17:52:59', 'hellos', 4, 29, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (40, '2015-08-31 18:00:07', '<b>test&nbsp;<i>dasd&nbsp;<u></u>sdas<u>sadasd</u></i></b>', 29, 4, 0, 0);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (41, '2015-09-04 18:09:21', 'namste&nbsp;', 4, 29, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (42, '2015-09-04 19:02:27', 'kyasjas', 4, 29, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (44, '2015-09-10 15:20:41', '<b>Hello Patient.</b>', 4, 29, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (45, '2017-02-08 14:17:33', 'hi', 19, 75, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (46, '2017-02-08 14:18:36', 'dasd', 19, 75, 0, 1);
INSERT INTO message (`id`, `date_time`, `message`, `from_id`, `to_id`, `is_view_from`, `is_view_to`) VALUES (47, '2017-02-08 14:19:13', 'sdasd', 19, 75, 0, 1);


#
# TABLE STRUCTURE FOR: monthly_schedule
#

DROP TABLE IF EXISTS monthly_schedule;

CREATE TABLE `monthly_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_id` int(2) unsigned zerofill NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `timing_from` time NOT NULL,
  `timing_to` time NOT NULL,
  `work` text NOT NULL,
  `hospital` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=latin1;

INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (446, 01, 5, '12:00:00', '12:00:00', '1', '1');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (447, 01, 5, '12:00:00', '12:00:00', '2', '7');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (448, 01, 5, '12:00:00', '12:00:00', 'ghjgjhgh', '6');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (449, 01, 5, '12:00:00', '12:00:00', '3', '6');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (450, 01, 5, '12:00:00', '12:00:00', '4', '7');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (451, 01, 5, '12:00:00', '12:00:00', '1', '10');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (452, 02, 5, '12:00:00', '12:00:00', '99', '16');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (453, 02, 5, '12:00:00', '12:00:00', '10', '11');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (454, 02, 5, '12:00:00', '12:00:00', '9', '10');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (455, 02, 5, '02:00:00', '03:00:00', '8', '7');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (456, 02, 5, '12:00:00', '12:00:00', '', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (457, 02, 5, '03:00:00', '03:00:00', 'hjhjj', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (458, 02, 5, '12:00:00', '12:00:00', '', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (459, 03, 5, '12:00:00', '12:00:00', '9', '7');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (460, 03, 5, '02:00:00', '12:00:00', 'hghsdghd', '1');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (461, 04, 5, '02:00:00', '02:00:00', '4', '9');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (462, 04, 5, '12:30:00', '12:00:00', '44', '1');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (463, 07, 5, '02:00:00', '12:00:00', 'dfgfgfgf', '6');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (464, 11, 5, '12:00:00', '12:00:00', '11', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (465, 11, 5, '12:00:00', '12:00:00', '111', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (466, 12, 5, '02:00:00', '12:00:00', 'new', '9');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (467, 12, 5, '03:15:00', '12:00:00', 'new2', '14');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (468, 21, 5, '12:00:00', '12:00:00', 'todays 21 yes', '');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (469, 22, 5, '12:00:00', '12:00:00', '22', '16');
INSERT INTO monthly_schedule (`id`, `date_id`, `doctor_id`, `timing_from`, `timing_to`, `work`, `hospital`) VALUES (470, 23, 5, '12:00:00', '12:00:00', '22+1', '6');


#
# TABLE STRUCTURE FOR: notes
#

DROP TABLE IF EXISTS notes;

CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `notes` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (2, 42, 4, 'sad', '2015-08-31 16:52:59');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (4, 30, 4, 'hello&nbsp;', '2015-09-05 12:01:57');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (6, 29, 4, 'dgddf', '2015-09-05 18:47:44');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (7, 29, 4, 'namste raju', '2015-09-07 16:53:59');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (8, 29, 4, '<span>Consult our bower.json to&nbsp;see&nbsp;which versions of&nbsp;jQuery&nbsp;are supported.</span><span>&nbsp;...&nbsp;</span><span>Sometimes it is necessary to use&nbsp;Bootstrap&nbsp;plugins with other&nbsp;UI&nbsp;frameworks.</span><span>&nbsp;.....&nbsp;</span><span>&lt;div class=\"col-md-3&nbsp;col-md-offset-3\"&gt;.col-md-3&nbsp;.col-md-offset-3&lt;/div&gt; &lt;div</span><span>&nbsp;.....&nbsp;</span><span>If no&nbsp;tab&nbsp;was alreadyactive, then the hide.bs.tab&nbsp;and hidden.bs.tab&nbsp;events will not be fired.</span><span>Consult our bower.json to&nbsp;see&nbsp;which versions of&nbsp;jQuery&nbsp;are supported.</span><span>&nbsp;...&nbsp;</span><span>Sometimes it is necessary to use&nbsp;Bootstrap&nbsp;plugins with other&nbsp;UI&nbsp;frameworks.</span><span>&nbsp;.....&nbsp;</span><span>&lt;div class=\"col-md-3&nbsp;col-md-offset-3\"&gt;.col-md-3&nbsp;.col-md-offset-3&lt;/div&gt; &lt;div</span><span>&nbsp;.....&nbsp;</span><span>If no&nbsp;tab&nbsp;was alreadyactive, then the hide.bs.tab&nbsp;and hidden.bs.tab&nbsp;events will not be fired.</span><span>Consult our bower.json to&nbsp;see&nbsp;which versions of&nbsp;jQuery&nbsp;are supported.</span><span>&nbsp;...&nbsp;</span><span>Sometimes it is necessary to use&nbsp;Bootstrap&nbsp;plugins with other&nbsp;UI&nbsp;frameworks.</span><span>&nbsp;.....&nbsp;</span><span>&lt;div class=\"col-md-3&nbsp;col-md-offset-3\"&gt;.col-md-3&nbsp;.col-md-offset-3&lt;/div&gt; &lt;div</span><span>&nbsp;.....&nbsp;</span><span>If no&nbsp;tab&nbsp;was alreadyactive, then the hide.bs.tab&nbsp;and hidden.bs.tab&nbsp;events will not be fired.</span><span>Consult our bower.json to&nbsp;see&nbsp;which versions of&nbsp;jQuery&nbsp;are supported.</span><span>&nbsp;...&nbsp;</span><span>Sometimes it is necessary to use&nbsp;Bootstrap&nbsp;plugins with other&nbsp;UI&nbsp;frameworks.</span><span>&nbsp;.....&nbsp;</span><span>&lt;div class=\"col-md-3&nbsp;col-md-offset-3\"&gt;.col-md-3&nbsp;.col-md-offset-3&lt;/div&gt; &lt;div</span><span>&nbsp;.....&nbsp;</span><span>If no&nbsp;tab&nbsp;was alreadyactive, then the hide.bs.tab&nbsp;and hidden.bs.tab&nbsp;events will not be fired.</span><span>Consult our bower.json to&nbsp;see&nbsp;which versions of&nbsp;jQuery&nbsp;are supported.</span><span>&nbsp;...&nbsp;</span><span>Sometimes it is necessary to use&nbsp;Bootstrap&nbsp;plugins with other&nbsp;UI&nbsp;frameworks.</span><span>&nbsp;.....&nbsp;</span><span>&lt;div class=\"col-md-3&nbsp;col-md-offset-3\"&gt;.col-md-3&nbsp;.col-md-offset-3&lt;/div&gt; &lt;div</span><span>&nbsp;.....&nbsp;</span><span>If no&nbsp;tab&nbsp;was alreadyactive, then the hide.bs.tab&nbsp;and hidden.bs.tab&nbsp;events will not be fired.</span>', '2015-09-08 19:27:05');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (9, 29, 4, 'i am sending notes', '2015-09-09 11:52:13');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (10, 29, 4, 'gdfg', '2015-09-09 11:55:17');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (11, 65, 4, 'hi', '2016-04-29 11:52:20');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (12, 75, 19, 'Hellos Arjun', '2017-02-08 13:01:19');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (13, 75, 19, '<p><p><img src=\"http://localhost/doctor/uploads/wysiwyg/images/4831170.png\"></p><br></p>', '2017-02-08 14:57:39');
INSERT INTO notes (`id`, `patient_id`, `doctor_id`, `notes`, `datetime`) VALUES (14, 74, 19, '<p>hi</p>', '2017-02-13 14:50:36');


#
# TABLE STRUCTURE FOR: notification_setting
#

DROP TABLE IF EXISTS notification_setting;

CREATE TABLE `notification_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to_do_alert` int(10) NOT NULL DEFAULT '1',
  `appointment_alert` int(10) unsigned NOT NULL DEFAULT '1',
  `doctor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: other_schedule
#

DROP TABLE IF EXISTS other_schedule;

CREATE TABLE `other_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `dates` date NOT NULL,
  `timing_from` time NOT NULL,
  `timing_to` time NOT NULL,
  `work` varchar(255) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (2, 7, '2017-03-04', '15:03:00', '06:02:00', 'danicjmm', 0);
INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (4, 7, '2015-05-27', '17:00:00', '04:02:00', 'goa', 0);
INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (15, 5, '2015-05-05', '12:00:00', '12:00:00', 'prayinahgdhjd', 10);
INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (18, 5, '2015-05-06', '12:00:00', '12:00:00', 'hhj', 12);
INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (19, 5, '2015-05-06', '12:00:00', '12:00:00', 'hhhkklll', 13);
INSERT INTO other_schedule (`id`, `doctor_id`, `dates`, `timing_from`, `timing_to`, `work`, `hospital_id`) VALUES (20, 19, '2015-05-22', '12:00:00', '10:45:00', '', 1);


#
# TABLE STRUCTURE FOR: payment_modes
#

DROP TABLE IF EXISTS payment_modes;

CREATE TABLE `payment_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (1, 0, 'Cash');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (2, 0, 'Cheque');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (3, 0, 'other');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (4, 0, 'Paypal Expp');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (5, 4, 'Cash');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (6, 4, 'Cheque');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (7, 5, 'Cash');
INSERT INTO payment_modes (`id`, `doctor_id`, `name`) VALUES (8, 19, 'Cash');


#
# TABLE STRUCTURE FOR: pimages
#

DROP TABLE IF EXISTS pimages;

CREATE TABLE `pimages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `doctor_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO pimages (`id`, `title`, `file_name`, `user_id`, `doctor_id`) VALUES (19, 'First Image', '148655992119691.jpg', 75, 19);
INSERT INTO pimages (`id`, `title`, `file_name`, `user_id`, `doctor_id`) VALUES (20, 'New India', '148656011419842.jpg', 75, 19);
INSERT INTO pimages (`id`, `title`, `file_name`, `user_id`, `doctor_id`) VALUES (21, 'Nns', '148656034019147.jpg', 75, 19);


#
# TABLE STRUCTURE FOR: prescription
#

DROP TABLE IF EXISTS prescription;

CREATE TABLE `prescription` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) unsigned NOT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `medicines` text NOT NULL,
  `tests` text NOT NULL,
  `test_instructions` text NOT NULL,
  `disease` text NOT NULL,
  `oe_description` text NOT NULL,
  `date_time` datetime NOT NULL,
  `remark` text NOT NULL,
  `medicine_instruction` text NOT NULL,
  `case_history` text,
  `case_history_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (6, 0, 3, '[\"Parashutamole\",\"Feris-100\"]', '[\"CBC\"]', '[\"Anytime\",\"\"]', '[\"Head Pain\"]', '', '2015-06-26 06:00:00', '', '[\"Daily One Time Before Meal..\",\"Take it after dinner\",\"\"]', '<p>this is case history</p>', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (7, 0, 18, '[\"Pyridoxal \"]', '[\"\"]', '[\"\"]', '[\"Skin Elergy\"]', '', '2015-05-15 09:32:48', '<p>get wel soon</p>', '[\"daly one tab\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (8, 0, 20, '[\"Pyridoxal \",\"\"]', '[\"Hemoglobin\"]', '[\"\"]', '[\"Skin Elergy\",\"Diabtiease\"]', '', '2015-05-18 05:49:59', '<p>this is test remark</p>', '[\"twice a day\",\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (9, 0, 21, '[\"Pyridoxal \",\"Levocarnitine\",\"Pyridoxal \",\"Levocarnitine\"]', '[\"Endoscopy\"]', '[\"\"]', '[\"Swine Flu\",\"Skin Elergy\"]', '', '2015-05-18 12:30:48', '<p>remork</p>', '[\"3 time a day\",\"2 day\",\"1 day\",\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (10, 0, 23, '[\"Pyridoxal \",\"Levocarnitine\"]', '[\"HBC \",\"CBC\"]', '[\"\",\"\"]', '[\"Blood Presure\"]', '', '2015-05-19 01:39:58', '<p>Bloaaaadted bowled</p>', '[\"0-0-1\",\"3 time a day\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (11, 0, 20, '[\"Pyridoxal \"]', '[\"Endoscopy\"]', '[\"\"]', '[\"Cancer\",\"Swine Flu\",\"Skin Elergy\",\"Diabtiease\"]', '', '2015-05-19 02:38:40', '<p>none</p>', '[\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (12, 0, 21, '[\"Pyridoxal \"]', '[\"\"]', '[\"\"]', '[\"Cancer\"]', '', '2015-05-19 04:31:14', '', '[\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (13, 0, 20, '[\"Pyridoxal \"]', '[\"CBC\"]', '[\"\"]', '[\"Cancer\",\"Swine Flu\",\"Skin Elergy\",\"Diabtiease\",\"Blood Presure\"]', '', '2015-05-20 04:31:02', '<p>REmark</p>', '[\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (14, 0, 21, '[\"Abdominal Aortic Aneurysm\",\"Abdominal Aortic Aneurysm\",\"Xanax\"]', '[\"Sultan Bayezid\",\"\"]', '[\"\",\"\"]', '[\"Abdominal Aortic Aneurysm\",\"Abdominal Cramps (Heat Cramps)\",\"Back Pain (Low Back Pain)\"]', '', '2015-05-23 06:16:12', '<p>none</p>', '[\"\",\"\",\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (15, 0, 20, '[\"Abdominal Aortic Aneurysm\",\"Abdominal Aortic Aneurysm\",\"Abdominal Aortic Aneurysm\"]', '[\"\"]', '[\"\"]', '[\"Abdominal Aortic Aneurysm\",\"Abdominal Cramps (Heat Cramps)\",\"Back Pain (Low Back Pain)\",\"Barium Enema\"]', '', '2015-05-23 08:05:17', '', '[\"\",\"\",\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (16, 0, 20, '[\"Spasverin\",\"Abdominal Aortic Aneurysm\",\"Xanax\"]', '[\"Sultan Bayezid\"]', '[\"\"]', '[\"Barium Enema\"]', '', '2015-05-23 08:36:14', '', '[\"Twice a day\",\"Twice a day\",\"Twice a day\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (17, 0, 21, '[\"Abdominal Aortic Aneurysm\"]', '[\"\"]', '[\"\"]', '[\"Abdominal Cramps (Heat Cramps)\"]', '', '2015-05-23 08:37:19', '', '[\"\\u09a1\\u09be: \\u09ae\\u09cb:. \\u099c\\u09be\\u09b9\\u09be\\u0999\\u09cd\\u0997\\u09c0\\u09b0 \\u0986\\u09b2\\u09ae \\u098f\\u09ae\\u09ac\\u09bf\\u09ac\\u09bf\\u098f\\u09b8 (\\u09a2\\u09be\\u0995\\u09be), \\u098f\\u09ae\\u09b8\\u09bf\\u09aa\\u09bf\\u098f\\u09b8 (\\u09ae\\u09c7\\u09a1\\u09bf\\u09b8\\u09bf\\u09a8) \\u098f\\u09ae\\u09a1\\u09bf (\\u0997\\u09cd\\u09af\\u09be\\u09b8\\u09cd\\u099f\\u09cd\\u09b0\\u09cb\\u098f\\u09a8\\u09cd\\u099f\\u09be\\u09b0\\u09cb\\u09b2\\u099c\\u09bf) \\u09ae\\u09c7\\u09a1\\u09bf\\u09b8\\u09bf\\u09a8, \\u0997\\u09cd\\u09af\\u09be\\u09b8\\u09cd\\u099f\\u09cd\\u09b0\\u09cb \\u0985\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f\\u09ac\\u0982 \\u09b2\\u09bf\\u09ad\\u09be\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (18, 0, 20, '[\"Abdominal Aortic Aneurysm\"]', '[\"Sultan Bayezid\"]', '[\"\"]', '[\"Abdominal Aortic Aneurysm\"]', '', '2015-05-23 14:06:04', '<p>vbjghj</p>', '[\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (19, 0, 20, '[\"Abdominal Aortic Aneurysm\",\"Abdominal Aortic Aneurysm\",\"Abdominal Aortic Aneurysm\",\"\"]', '[\"Sultan Bayezid\"]', '[\"\"]', '[\"Abdominal Aortic Aneurysm\"]', '', '2015-05-24 11:30:19', '', '[\"\",\"\",\"\",\"\"]', NULL, '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (20, 0, 7, '[\"Parashutamole\",\"Feris-100\"]', '[\"X-ray chest\",\"CBC\"]', '[\"Anytime\",\"Anytime\",\"\"]', '[\"COld\",\"Head Pain\"]', '', '1990-06-06 07:19:00', '<p>sdfsdfsd</p>', '[\"\",\"Fasting \",\"\"]', '<p>this is case history sdsad</p>', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (22, 0, 24, '[\"Abdominal Aortic Aneurysm\",\"Xanax\"]', '[\"\",\"\"]', '[\"\",\"\"]', '[\"Abdominal Aortic Aneurysm\",\"Abdominal Cramps (Heat Cramps)\",\"Back Pain (Low Back Pain)\",\"Barium Enema\"]', '', '2015-05-26 10:00:00', '', '[\"twice a day\",\"twice a day before male \"]', '', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (23, 0, 20, '[\"Abdominal Aortic Aneurysm\"]', '[\"\"]', '[\"\"]', '[\"Abdominal Cramps (Heat Cramps)\"]', '', '2015-05-26 10:27:00', '', '[\"twice a day\"]', '<p>et</p>', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (24, 0, 24, '[\"Abdominal Aortic Aneurysm\",\"Xanax\",\"Spasverin\"]', '[\"\"]', '[\"\"]', '[\"Abdominal Aortic Aneurysm\",\"Abdominal Cramps (Heat Cramps)\",\"Back Pain (Low Back Pain)\",\"Barium Enema\"]', '', '2015-06-02 12:14:00', '<p>Remark</p>', '[\"twice a day\",\"twice a day before male \",\"twice a day\"]', '<p>Case History</p>', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (25, 0, 20, '[\"Abdominal Aortic Aneurysm\",\"Xanax\",\"Abdominal Aortic Aneurysm\"]', '[\"\"]', '[\"\"]', '[\"Abdominal Aortic Aneurysm\",\"Abdominal Cramps (Heat Cramps)\",\"Back Pain (Low Back Pain)\",\"Barium Enema\"]', '', '2015-06-04 04:05:00', '', '[\"twice a day\",\"twice a day before male \",\"????? ????? ?????? ???? ????????\"]', '', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (26, 0, 8, '[\"Parashutamole\"]', '[\"CBC\"]', '[\"Anytime\"]', '[\"Head Pain\"]', '', '2015-06-01 05:38:00', '<p>get well soon</p>', '[\"Daily One Time Before Meal..\"]', '<p style=\"margin-left: 20px;\">new case</p>', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (27, 0, 42, '[]', '[]', '[\"\"]', '[\"COld\",\"Head Pain\",\"Fever\",\"swine flu h1 n1\"]', '', '2015-08-15 14:52:00', '<p>test</p>', '[\"\"]', 'n/adsfs', '[\"title11\",\"title32\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (28, 0, 29, '[\"Feris-100\",\"DOLO 650\",\"uixi tab -500mg\"]', '[\"Blood Presure\",\"CBC\",\"ECG\"]', '[\"Anytime U\",\"Anytime U\",\"Anytime U\",\"\"]', '[\"COld\",\"Head Pain\"]', 'yes', '2015-08-13 19:22:00', '0sajdasjodisad', '[\"\",\"\",\"\",\"\"]', 'noÂ ', 'false');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (29, 0, 62, '[\"Parashutamole\",\"Deriphyiril 10-mg\"]', '[\"Blood Presure\",\"CBC\"]', '[\"Non fasting\",\"Anytime U\",\"\"]', '[\"COld\",\"Head Pain\",\"Fever\"]', 'ioiuiuoiouii', '2015-08-04 11:42:00', '<p>come after 15 days</p>', '[\"Daily One Time Before Meal..\",\"Daily One Time Before Meal..\",\"\"]', 'test case history1', 'false');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (30, 0, 62, '[\"Parashutamole\",\"Deriphyiril 10-mg\",\"DOLO 650\"]', '[\"\"]', '[\"\"]', '[\"Head Pain\"]', 'some pain', '2015-08-05 11:47:00', '<p>get wel soon</p>', '[\"Daily One Time Before Meal..\"]', 'test case history', '');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (31, 0, 42, '[\"Deriphyiril 10-mg\",\"Parashutamole\",\"Deriphyiril 10-mg\",\"DOLO 650\",\"Parashutamole\",\"Deriphyiril 10-mg\",\"Feris-100\",\"DOLO 650\",\"uixi tab -500mg\"]', '[\"Blood Presure\",\"CBC\",\"Blood Presure\",\"CBC\",\"ECG\"]', '[\"\",\"\",\"\",\"Non fasting\",\"Anytime U\",\"\",\"Anytime U\",\"Anytime U\",\"Anytime U\",\"\",\"\"]', '[\"swine flu h1 n1\",\"COld\",\"Head Pain\",\"Fever\",\"swine flu h1 n1\",\"Head Pain\",\"COld\",\"Head Pain\",\"Fever\",\"COld\",\"Head Pain\",\"COld\",\"Head Pain\"]', '', '2015-07-06 04:16:00', '<p>test</p>', '[\"Daily One Time Before Meal..\",\"\",\"\",\"Daily One Time Before Meal..\",\"\",\"\",\"\",\"Daily One Time Before Meal..\",\"Daily One Time Before Meal..\",\"\",\"\",\"\",\"\",\"\",\"\"]', 'n/adsfs', '[\"title11\",\"title11\",\"title32\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (33, 0, 29, '[\"Deriphyiril 10-mg\"]', '[\"\"]', '[\"\"]', '[\"swine flu h1 n1\"]', '<p>445</p>', '2015-08-04 06:09:00', '', '[\"Daily One Time Before Meal..\"]', '<p>44</p>', '[\"title11\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (34, 0, 29, '[\"Feris-100\"]', '[\"BSNBNBD\"]', '[\"new\"]', '[\"Head Pain\"]', '<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p>sadsad</p></blockquote>', '2015-08-05 05:56:00', '<p>sad</p>', '[\"dont take\"]', '<p>dsa</p>', '[\"title11\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (35, 0, 43, '[\"Feris-100\",\"Deriphyiril 10-mg\"]', '[\"Blood Presure\",\"CBC\",\"CBC\"]', '[\"Anytime U\",\"new\",\"new\"]', '[\"Head Pain\"]', '<p>sda</p>', '2015-08-06 12:52:00', '<p>sdad</p>', '[\"Daily One Time Before Meal..\",\"Daily One Time Before Meal..\"]', '<p>sda</p>', '[\"title11\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (36, 0, 29, '[]', '[]', '[\"\"]', '[\"COld\"]', '', '2015-08-19 07:29:00', '0', '[\"\"]', '', '[\"title32\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (37, 1001, 29, '[\"Parashutamole\"]', '[]', '[\"\"]', '[\"Fever\"]', 'sad', '2015-08-08 11:49:00', '', '[\"Daily One Time Before Meal..\",\"\"]', 'sad', '[\"title32\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (38, 1002, 68, '[\"Parashutamole\"]', '[\"Blood Presure\"]', '[\"Anytime U\",\"\"]', '[\"COld\"]', 'test', '2015-08-13 19:29:00', '<p>get well soo</p>', '[\"Daily One Time Before Meal..\",\"\"]', 'test', '[\"title11\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (39, 1003, 29, '[\"Parashutamole\"]', '[]', '[\"\"]', '[\"Fever\"]', 'sadsa', '2015-09-07 05:49:00', '<p>updated</p>', '[\"Daily One Time Before Meal..\",\"\"]', 'sdd', '[\"title11\",\"title32\"]');
INSERT INTO prescription (`id`, `prescription_id`, `patient_id`, `medicines`, `tests`, `test_instructions`, `disease`, `oe_description`, `date_time`, `remark`, `medicine_instruction`, `case_history`, `case_history_id`) VALUES (40, 1004, 29, '[\"Parashutamole\"]', '[]', '[\"\"]', '[\"Head Pain\"]', 'sd', '2015-09-08 06:39:00', 'get wel', '[\"Daily One Time Before Meal..\",\"\"]', 'das', '[\"title11\"]');


#
# TABLE STRUCTURE FOR: prescription_template
#

DROP TABLE IF EXISTS prescription_template;

CREATE TABLE `prescription_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `header` text,
  `footer` text,
  `doctor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO prescription_template (`id`, `header`, `footer`, `doctor_id`) VALUES (1, '<table width=\"100%\"><tbody><tr>	<td>		<strong>Dr. Md. Jahangir Alam</strong><br>		MBBS(DHAKA), MCPS(Medicine)<br>		MD(Gastroenterology)<br>		Medicine,Gastro-Intestinal And Liver Specialist<br>		<strong>Associate Professor &amp; Head</strong>	<br>		Dept. of Gastroenterology<br>		Sylhet MAG Osmani Medical Hospital	</td>	<td>		<strong></strong><p></p><p></p><p><p>??: ??:. ????????? ???</p><p>???????? (????), ???????? (???????)</p><p>???? (????????????????????)</p><p>???????, ?????????? ??????? ??? ????? ????????</p><p>?????? ??????? ? ???</p><p>???????????????????? ?? ?????</p><p>????? ????? ?????? ??????? ???? ?????????</p><br></p><p></p><p></p>	</td></tr></tbody></table>', '<table><tbody><tr><td><center><strong>For Appointment</strong></center></td></tr><tr><td>Call: 01735849422 (From 9am) Camber: Trust Medical Service, 16 ModhuShohid,Sylhet</td></tr><tr><td>                                     Visting Time: Sat to Thu (5pm to 8pm)</td></tr></tbody></table>', 4);
INSERT INTO prescription_template (`id`, `header`, `footer`, `doctor_id`) VALUES (2, '<table width=\"100%\"><tbody><tr>	<td>		<strong>Dr. Md. Jahangir Alam</strong><br>		MBBS(DHAKA), MCPS(Medicine)<br>		MD(Gastroenterology)<br>		Medicine,Gastro-Intestinal And Liver Specialist<br>		<strong>Associate Professor & Head</strong>	<br>		Dept. of Gastroenterology<br>		Sylhet MAG Osmani Medical Hospital	</td>	<td><p><strong>Ã Â¦Â¡Ã Â¦Â¾: Ã Â¦Â®Ã Â§â€¹:. Ã Â¦Å“Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦â„¢Ã Â§ÂÃ Â¦â€”Ã Â§â‚¬Ã Â¦Â° Ã Â¦â€ Ã Â¦Â²Ã Â¦Â®</strong><br>Ã Â¦ÂÃ Â¦Â®Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸ (Ã Â¦Â¢Ã Â¦Â¾Ã Â¦â€¢Ã Â¦Â¾), Ã Â¦ÂÃ Â¦Â®Ã Â¦Â¸Ã Â¦Â¿Ã Â¦ÂªÃ Â¦Â¿Ã Â¦ÂÃ Â¦Â¸ (Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¨)<br>Ã Â¦ÂÃ Â¦Â®Ã Â¦Â¡Ã Â¦Â¿ (Ã Â¦â€”Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§ÂÃ Â¦Â°Ã Â§â€¹Ã Â¦ÂÃ Â¦Â¨Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¾Ã Â¦Â°Ã Â§â€¹Ã Â¦Â²Ã Â¦Å“Ã Â¦Â¿)<br>Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¨, Ã Â¦â€”Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§ÂÃ Â¦Â°Ã Â§â€¹ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¤Ã Â§ÂÃ Â¦Â°Ã Â§â€¡ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â²Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¶Ã Â§â€¡Ã Â¦Â·Ã Â¦Å“Ã Â§ÂÃ Â¦Å¾<br><strong>Ã Â¦Â¸Ã Â¦Â¹Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”Ã Â§â‚¬ Ã Â¦â€¦Ã Â¦Â§Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦ÂªÃ Â¦â€¢ Ã Â¦â€œ Ã Â¦Â¹Ã Â§â€¡Ã Â¦Â¡</strong>	<br>Ã Â¦â€”Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§ÂÃ Â¦Â°Ã Â§â€¹Ã Â¦ÂÃ Â¦Â¨Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¾Ã Â¦Â°Ã Â§â€¹Ã Â¦Â²Ã Â¦Å“Ã Â¦Â¿ Ã Â¦ÂÃ Â¦Â° Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦â€”</p></td></tr></tbody></table>', '<table><tbody><tr><td><center><strong>For Appointment</strong></center></td></tr><tr><td>Call: 01735849422 (From 9am) Camber: Trust Medical Service, 16 ModhuShohid,Sylhet</td></tr><tr><td>Visting Time: Sat to Thu (5pm to 8pm)</td></tr></tbody></table>', 19);


#
# TABLE STRUCTURE FOR: rel_days_doctors
#

DROP TABLE IF EXISTS rel_days_doctors;

CREATE TABLE `rel_days_doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(10) unsigned NOT NULL,
  `title` varchar(32) NOT NULL,
  `mon_start` varchar(32) NOT NULL,
  `mon_end` varchar(32) NOT NULL,
  `tue_start` varchar(32) NOT NULL,
  `tue_end` varchar(32) NOT NULL,
  `wed_start` varchar(32) NOT NULL,
  `wed_end` varchar(32) NOT NULL,
  `thu_start` varchar(32) NOT NULL,
  `thu_end` varchar(32) NOT NULL,
  `fri_start` varchar(32) NOT NULL,
  `fri_end` varchar(32) NOT NULL,
  `sat_start` varchar(32) NOT NULL,
  `sat_end` varchar(32) NOT NULL,
  `sun_start` varchar(32) NOT NULL,
  `sun_end` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO rel_days_doctors (`id`, `doctor_id`, `title`, `mon_start`, `mon_end`, `tue_start`, `tue_end`, `wed_start`, `wed_end`, `thu_start`, `thu_end`, `fri_start`, `fri_end`, `sat_start`, `sat_end`, `sun_start`, `sun_end`) VALUES (2, 4, 'Morning ', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM', '07:00 AM', '10:00 AM');
INSERT INTO rel_days_doctors (`id`, `doctor_id`, `title`, `mon_start`, `mon_end`, `tue_start`, `tue_end`, `wed_start`, `wed_end`, `thu_start`, `thu_end`, `fri_start`, `fri_end`, `sat_start`, `sat_end`, `sun_start`, `sun_end`) VALUES (3, 4, 'Evevning', '07:00 PM', '09:00 PM', '07:00 PM', '09:00 PM', '07:00 PM', '09:00 PM', '07:00 PM', '09:00 PM', '07:00 PM', '09:00 PM', '07:00 PM', '09:00 PM', '', '');
INSERT INTO rel_days_doctors (`id`, `doctor_id`, `title`, `mon_start`, `mon_end`, `tue_start`, `tue_end`, `wed_start`, `wed_end`, `thu_start`, `thu_end`, `fri_start`, `fri_end`, `sat_start`, `sat_end`, `sun_start`, `sun_end`) VALUES (5, 19, '', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 PM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM', '12:00 AM');


#
# TABLE STRUCTURE FOR: rel_form_custom_fields
#

DROP TABLE IF EXISTS rel_form_custom_fields;

CREATE TABLE `rel_form_custom_fields` (
  `custom_field_id` int(10) unsigned NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `table_id` int(10) unsigned NOT NULL,
  `form` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (1, 'Arjun F', 75, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (2, 'India', 75, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (3, 'Public', 75, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (4, 'Gratuate', 75, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (5, 'i am good', 75, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (1, 'Arjun Singh', 74, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (2, 'India', 74, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (3, 'Other', 74, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (4, 'Gratuate', 74, 2);
INSERT INTO rel_form_custom_fields (`custom_field_id`, `reply`, `table_id`, `form`) VALUES (5, 'i am good nice', 74, 2);


#
# TABLE STRUCTURE FOR: reports
#

DROP TABLE IF EXISTS reports;

CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) unsigned NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type_id` int(10) unsigned NOT NULL,
  `file` text NOT NULL,
  `remark` text NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `is_view_to` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (3, 3, '2015-05-12 08:03:44', 0, 'gc_settings.sql', 'Send you report file patient one', 1, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (4, 6, '2015-05-12 08:04:02', 0, 'SMT_DB_12_03_2015.sql', 'Patient Two how are you your report is ready', 1, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (5, 3, '2015-05-12 08:03:44', 0, 'script.js', 'Pateint One  plase send me reports', 1, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (6, 3, '2015-05-12 08:03:44', 0, 'index.html', 'This Is My Html FIle', 2, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (7, 3, '2015-05-12 08:03:44', 0, '', 'okk', 2, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (8, 3, '2015-05-12 08:03:44', 0, '', 'Hi i am your new doctor', 4, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (9, 3, '2015-05-12 08:03:44', 0, '', 'Welcome New Dr', 2, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (10, 3, '2015-05-12 08:02:19', 0, '', 'welcome new dr', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (11, 3, '2015-05-12 08:02:19', 0, '', 'welcome new dr', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (12, 6, '2015-05-12 08:02:19', 0, '', 'i will come on next sunday', 3, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (14, 6, '2015-05-13 04:14:23', 0, '', 'i did not get my x-ray reports', 3, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (15, 7, '2015-05-15 09:34:16', 0, '', 'please send you reports', 5, 18, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (16, 7, '2015-05-23 03:21:45', 0, '', 'Okk Dr', 18, 5, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (17, 8, '2015-05-18 05:56:23', 0, '202X200.jpg', 'remark', 19, 20, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (19, 3, '2015-05-28 03:31:58', 0, '', 'testing doctor', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (20, 3, '2015-05-28 03:31:58', 0, '', '123456', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (21, 3, '2015-05-28 03:36:27', 0, '', 'nice', 4, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (22, 3, '2015-05-28 03:58:33', 0, '', 'thank you', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (23, 3, '2015-05-28 03:58:33', 0, '', 'can i meet u', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (24, 3, '2015-05-28 06:04:07', 0, '', 'okk', 2, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (25, 3, '2015-05-28 06:04:35', 0, '', 'yes ye s', 4, 2, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (26, 24, '2015-06-15 03:14:44', 0, 'footer_top_bg.png', 'remark', 19, 24, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (27, 21, '2015-06-15 06:14:04', 0, 'Invoice_1_(2).pdf', 'gdfg', 4, 6, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (28, 6, '2015-06-16 18:14:17', 12, '69470438.png', 'your CBC REPORT Are Normal', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (29, 6, '2015-06-16 18:14:17', 12, 'Clients.csv', 'hellopatient 16/06', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (30, 26, '2015-06-16 18:11:30', 12, 'C-Program_Files_(x86)Amppswwwdoctor-downloads-.pdf', 'hello suesh', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (31, 6, '2015-06-19 12:10:50', 13, '3_(1).htm', 'chest', 3, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (32, 6, '2015-06-19 12:10:50', 12, '', 'asddasd', 3, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (33, 6, '2015-06-22 15:49:27', 13, '', 'plz test', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (34, 26, '2015-06-20 16:15:17', 12, 'gocart-GoCart-324eccb.zip', 'zip', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (35, 26, '2015-06-20 18:15:34', 12, '', 'sdfsdf', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (36, 26, '2015-06-22 13:43:14', 0, '', 'sdasd', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (37, 26, '2015-06-22 13:43:15', 0, '', 'sdasd', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (38, 6, '2015-06-22 15:49:27', 13, '', 'fsdf', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (39, 6, '2015-06-22 15:49:27', 12, '', 'testing form submit', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (40, 6, '2015-06-22 15:49:27', 14, 'ability-web1.zip', '.zip file for suresh', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (41, 20, '2015-06-22 15:30:44', 14, 'admin_lang_(1)3.php', 'ramesh kumar fie', 4, 7, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (42, 6, '2015-06-22 15:49:27', 13, 'ability-web2.zip', 'hello oatient two', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (43, 26, '2015-06-22 15:47:21', 12, '', 'dsfsdf', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (44, 26, '2015-06-22 15:48:37', 12, 'ability-web3.zip', 'adad', 4, 8, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (45, 6, '2015-06-22 15:57:31', 14, 'In_Patient.docx', 'FINAL TEST PATIENT TWO', 4, 3, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (46, 6, '2015-06-22 15:58:26', 14, 'ability-web5.zip', 'i am patient two', 3, 4, 0);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (47, 29, '2015-08-17 11:31:20', 23, 'logo_(1).png', 'logo', 62, 4, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (48, 29, '2015-08-17 11:32:23', 12, 'logo_(1)1.png', 'my cbc logo', 62, 4, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (49, 33, '2015-08-17 11:42:48', 23, '', '4/8/15 rajulal report', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (50, 33, '2015-08-17 12:00:03', 14, '', '4-8 ecg', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (51, 33, '2015-08-17 12:00:48', 15, 'logo_(1)2.png', 'dssad', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (52, 33, '2015-08-18 14:38:41', 23, '', 'by assistant', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (53, 33, '2015-08-18 14:39:07', 23, '', 'by assistant', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (54, 36, '2015-08-18 14:48:59', 15, '', 'test', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (55, 33, '2015-08-18 14:49:55', 15, '', 'i am assistant', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (56, 33, '2015-08-18 14:51:52', 12, '', 'wwww', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (57, 36, '2015-08-18 14:55:04', 0, '', 'welcome', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (58, 36, '2015-08-18 14:55:21', 0, '', 'welsad', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (60, 38, '2015-08-18 14:56:37', 15, '', 'dfsdffds', 57, 68, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (61, 37, '2015-08-18 14:57:58', 16, '', '88', 57, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (63, 37, '2015-09-04 16:05:42', 23, '', 'plz wait for your reports ', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (64, 37, '2015-09-05 16:12:30', 23, '', 'come', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (66, 42, '2015-09-05 17:13:54', 0, '', 'sdasd', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (67, 42, '2015-09-05 17:18:08', 23, '', 'kuch nahi', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (68, 40, '2015-09-08 18:32:25', 23, 'UML.pdf', 'your reports', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (69, 40, '2015-09-08 18:54:43', 12, 'logo.png', 'report', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (70, 40, '2015-09-08 19:06:51', 23, '_home1_atntechn_public_html_doctor__downloads__3.pdf', 'fgfdgdf', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (71, 40, '2015-09-09 12:25:14', 23, '1.csv', 'CSV', 4, 29, 1);
INSERT INTO reports (`id`, `prescription_id`, `date_time`, `type_id`, `file`, `remark`, `from_id`, `to_id`, `is_view_to`) VALUES (72, 40, '2015-09-09 12:27:48', 15, 'Doctor_Notes_New.docx', 'word file', 4, 29, 1);


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `invoice` int(10) unsigned NOT NULL DEFAULT '1',
  `session_hours` int(11) NOT NULL DEFAULT '2',
  `backup_type` tinyint(1) NOT NULL DEFAULT '1',
  `backup_day` text,
  `header_setting` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO settings (`id`, `name`, `image`, `address`, `contact`, `email`, `doctor_id`, `invoice`, `session_hours`, `backup_type`, `backup_day`, `header_setting`) VALUES (1, 'The Doctor Pvt Ltd India', '', 'Sardarpura\r\nJodhpur', '+00 - 000000123', 'dr@admin.com', 0, 100, 2, 1, NULL, 1);
INSERT INTO settings (`id`, `name`, `image`, `address`, `contact`, `email`, `doctor_id`, `invoice`, `session_hours`, `backup_type`, `backup_day`, `header_setting`) VALUES (3, 'DR R S GEHLOT Clinick', 'cl14.jpg', 'A Road\r\nSardarpura', '0291--23232', 'rsgehlot@gmail.com', 4, 50001, 2, 1, NULL, 1);
INSERT INTO settings (`id`, `name`, `image`, `address`, `contact`, `email`, `doctor_id`, `invoice`, `session_hours`, `backup_type`, `backup_day`, `header_setting`) VALUES (4, 'Dr Rajesh  Clinick', 'cl2.jpg', '1 c road\r\nSardarpura', '91092091', 'eshop@gmail.com', 5, 0, 2, 1, NULL, 1);
INSERT INTO settings (`id`, `name`, `image`, `address`, `contact`, `email`, `doctor_id`, `invoice`, `session_hours`, `backup_type`, `backup_day`, `header_setting`) VALUES (5, 'Doctor Care', '4831170.png', '', '', '', 19, 0, 2, 0, NULL, 1);


#
# TABLE STRUCTURE FOR: to_do_list
#

DROP TABLE IF EXISTS to_do_list;

CREATE TABLE `to_do_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_view` int(10) NOT NULL DEFAULT '0',
  `doctor_id` int(10) unsigned NOT NULL,
  `type_id` tinyint(1) NOT NULL DEFAULT '1',
  `Color` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (1, 'Attend A Seminar In COllege', 'Attend A Seminar In COllege', '2015-07-23 00:00:00', '0000-00-00 00:00:00', 1, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (5, 'today', 'sad', '2015-07-23 00:00:00', '0000-00-00 00:00:00', 1, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (6, 'jun', 'sdasjdk', '2015-07-24 00:00:00', '0000-00-00 00:00:00', 1, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (7, 'Sultan Bayezid', 'test ', '2015-05-20 00:00:00', '0000-00-00 00:00:00', 1, 19, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (8, 'do to list', 'discription', '2015-06-03 00:00:00', '0000-00-00 00:00:00', 0, 19, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (9, 'test to do', 'test', '2015-07-31 19:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (10, 'other', 'sd', '2015-07-30 00:00:00', '0000-00-00 00:00:00', 1, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (11, 'Test Assistent', 'by assistant', '2015-07-14 00:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (12, 'other', 'sad', '2015-07-15 00:00:00', '0000-00-00 00:00:00', 0, 56, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (13, 'ssdsd', 'sadasd', '2015-07-07 00:00:00', '0000-00-00 00:00:00', 0, 56, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (14, 'title', '2323', '2015-07-06 00:00:00', '0000-00-00 00:00:00', 0, 56, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (15, 'Test Assistent 1', 'sd', '2015-07-13 00:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (16, 'final test1', 'sjakdjasd', '2015-07-31 06:18:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (17, 'testto do', 'sadsad', '2015-07-31 11:53:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (18, 'test 123', 'sad', '2015-07-31 08:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (19, 'fdsf', 'sdfsdf', '2015-07-31 10:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (20, 'dsady', 'sad', '2015-07-25 21:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (21, 'sdads11111', 'dsadasd', '2015-07-31 20:00:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (38, '0', '', '2015-09-26 01:00:00', '2015-09-26 05:00:00', 0, 4, 1, '0');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (39, '2444', '', '2015-09-24 12:00:00', '1999-11-30 14:30:00', 0, 4, 1, '-1');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (40, 'sadsd', '', '2015-09-21 02:00:00', '0000-00-00 00:00:00', 0, 4, 1, '-1');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (41, 'hhejhje', '', '2015-09-29 03:00:00', '2015-09-29 03:30:00', 0, 4, 1, '13');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (42, 'to do', '', '2015-10-01 00:30:00', '2015-10-01 03:30:00', 0, 4, 1, '7');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (43, 'To DO ', '', '2015-10-15 15:15:00', '2015-10-15 18:00:00', 0, 4, 1, '13');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (44, 'Test All', 'sdjsal', '2016-04-29 11:51:00', '0000-00-00 00:00:00', 0, 4, 1, '');
INSERT INTO to_do_list (`id`, `title`, `description`, `date`, `end_date`, `is_view`, `doctor_id`, `type_id`, `Color`) VALUES (45, 'check calendar', 'done', '2017-02-14 19:03:00', '0000-00-00 00:00:00', 0, 19, 1, '');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `blood_group_id` int(10) unsigned NOT NULL,
  `image` varchar(1000) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `dob` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `user_role` varchar(32) NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `token` varchar(255) NOT NULL,
  `appointment_alert` int(10) unsigned NOT NULL DEFAULT '1',
  `to_do_alert` int(10) unsigned NOT NULL DEFAULT '1',
  `schedule` tinyint(1) DEFAULT '0' COMMENT '1 for monthly 0 for weekly',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (1, 'Mukesh', 4, '', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150509, 'mukeshgodha1991@gmail.com', '876420022', 'sdsad', 'Admin', 0, '1435143974e9f46a44aab39f55067b85ab29652450c77c9084', 1, 1, 1, '2015-07-21 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (4, 'Dr RS Gehlot', 0, 'french-flag5.jpeg', 'rsgehlot', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 19661202, 'rsgehlot@gmail.com', '2147483647', 'Paota', '1', 4, 'expired', 21, 54, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (5, 'Dr Rajesh Baheti', 4, '', 'rajesh', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150501, 'rajehs@gmail.com', '+91829918921', 'Jodhpur Raj\r\n', '1', 0, '', 1, 1, 1, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (19, 'doctor', 0, '', 'doctor', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150501, 'doctor@gmail.com', '9999999999', '', '1', 0, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (22, 'Dr. Himel Ahmed', 2, '', 'himel', '601f1889667efaebb33b8c12572835da3f027f78', 'Male', 19931127, 'himel@yahoo.com', '01778893124', 'Amborkhana', '1', 0, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (29, 'raju ', 8, '', 'raju', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1949, 'raju@admin.com', '8319823900', 'pune maharastra', '2', 4, '144007802061a9e20e1fd1899f1bf4d58bd503a0475b16ffa5', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (30, 'test 2', 0, '', '0', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 19661202, 'test@yahoo.com', '49234', '0', '2', 4, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (42, 'eee rr', 0, '', 'Patient1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150502, 'eee@gmail.cpom', '9019019', '0', '2', 4, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (43, 'suresh', 2, '', '0', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150502, 'suresh@redifmail.com', '901', 'yyyy', '2', 4, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (44, 'ravi Kumar', 4, '', 'Patient1', '2386214c85a898c5705595282bbc78958fa4046a', 'Male', 19661202, 'ravi@gmail.com', '91901910', 'test', '2', 4, '', 1, 1, 0, '2015-07-06 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (57, 'Test Assistant', 0, '', 'Assistant2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150716, '', '8728712', 'hsahkdsd', '3', 4, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (58, 'mukx', 0, '', 'Assistant1', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Male', 20150704, '', '212', '23123', '3', 5, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (59, '?????', 1, '', 'Patient1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 20150502, '', '910910', '1asjasdasd', '2', 5, '', 1, 1, 0, '2015-07-24 14:41:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (61, 'sadhu', 0, '', 'yuerywueyr', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', -2052, 'sdsd@gmail.com', '34023', 'jsdjsd', '1', 0, '', 1, 1, 0, '2015-07-28 17:08:25');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (62, 'ajesh aslam', 1, '', '4Patient1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 2003, 'rajesh@gmail.com', '32343', 'sdahj', '2', 4, '', 1, 1, 0, '2015-07-30 17:06:54');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (64, 'R L Verma', 2, '', '4Patient2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 2000, '', '2910192', 'jsajldf', '2', 4, '', 1, 1, 0, '2015-08-04 13:45:23');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (65, 'shivu', 0, '', '4Patient3', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 12, '', '38249283', 'sad', '2', 4, '', 1, 1, 0, '2015-08-04 13:51:38');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (66, 'karan', 1, '', '4Patient4', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1926, '', '08188123898', 'A Road\nSardarpura', '2', 4, '', 1, 1, 0, '2015-08-04 13:53:35');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (67, 'raju', 1, '', '19Patient1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1937, '', '483294', 'sajdhsad', '2', 19, '', 1, 1, 0, '2015-08-12 18:40:38');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (68, 'ATN TECHNOLGIES JODHPUR RAJASTHAN', 1, '', '4Patient5', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1994, '', '432423', 'sdsad', '2', 4, '', 1, 1, 0, '2015-08-13 19:29:09');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (69, 'ramehs', 1, '', '4Patient6', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Male', 1948, '', '901901901', 'skdjkas dsadk sad', '2', 4, '', 1, 1, 0, '2015-08-31 13:34:45');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (70, 'vishnu', 1, '', '4Patient7', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Male', 1937, '', '81918', 'shjdh shjs d sdhj', '2', 4, '', 1, 1, 0, '2015-08-31 14:36:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (71, 'oh hj ', 1, '', '4Patient8', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 2004, 'test12@gmail.com', '2001212', 'hskahd', '2', 4, '', 1, 1, 0, '2016-04-28 17:10:16');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (73, 'Kalu', 2, '', '4Patient9', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1993, 'kalu@gmail.com', '1212', 'nsdasmnd', '2', 4, '', 1, 1, 0, '2016-04-29 11:50:49');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (74, 'Karan Singh', 1, '', '19Patient2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1994, 'ks@gmail.com', '9182918211', 'kaga', '2', 19, '', 1, 1, 0, '2017-02-03 11:57:21');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (75, 'Arjun Singh', 3, 'avatar.png', 'arjun', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1993, 'Arjun@gmail.com', '8238298', 'paota', '2', 19, '', 1, 1, 0, '2017-02-08 12:08:50');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (76, 'Subham', 1, '', 'subham@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1993, 'subham@gmail.com', '28938293', 'test add', '2', 19, '', 1, 1, 0, '2017-02-09 16:09:14');
INSERT INTO users (`id`, `name`, `blood_group_id`, `image`, `username`, `password`, `gender`, `dob`, `email`, `contact`, `address`, `user_role`, `doctor_id`, `token`, `appointment_alert`, `to_do_alert`, `schedule`, `add_date`) VALUES (77, 'Kaul', 1, '', 'kalu', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Male', 1992, 'Kalu@gmail.com', '9012901', 'test aaa', '2', 19, '', 1, 1, 0, '2017-02-09 16:12:31');


