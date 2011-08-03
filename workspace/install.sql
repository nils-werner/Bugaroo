
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (35, 60, 'on', 'Display in Issues-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (36, 61, 'on', 'Display in Milestones-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (37, 62, 'on', 'Display in Projects-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (38, 66, 'off', 'Counts towards finished percentage');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (34, 72, 'on', 'Display in Dashboard-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (50, 86, 'off', 'Placeholder for Anonymous');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (49, 87, 'off', 'Placeholder for Anonymous');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (51, 88, 'off', 'Placeholder for Anonymous');

-- *** STRUCTURE: `tbl_fields_colorchooser` ***
DROP TABLE IF EXISTS `tbl_fields_colorchooser`;
CREATE TABLE `tbl_fields_colorchooser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_colorchooser` ***
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (10, 46);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (17, 47);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (14, 69);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (15, 70);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (44, 68, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (41, 67, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (45, 34, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (42, 74, 'yes', 'no');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (141, 89, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (137, 82, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (64, 57, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (106, 37, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (139, 48, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (144, 31, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (54, 35, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (143, 36, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (145, 26, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (140, 24, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (138, 23, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (142, 90, NULL);

-- *** STRUCTURE: `tbl_fields_member` ***
DROP TABLE IF EXISTS `tbl_fields_member`;
CREATE TABLE `tbl_fields_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_member` ***

-- *** STRUCTURE: `tbl_fields_memberlink` ***
DROP TABLE IF EXISTS `tbl_fields_memberlink`;
CREATE TABLE `tbl_fields_memberlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_memberlink` ***

-- *** STRUCTURE: `tbl_fields_memberrole` ***
DROP TABLE IF EXISTS `tbl_fields_memberrole`;
CREATE TABLE `tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_memberrole` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (15, 63, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (8, 64, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (12, 65, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (16, 76, NULL, 'no');

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (24, 28, 'no', 'Active, Inactive, Finished', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (23, 71, 'no', 'Active,Inactive,Finished', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (22, 83, 'no', 'Inactive,Customer,Developer', NULL);

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (283, 30, 'yes', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (282, 29, 'yes', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (281, 33, 'no', 26, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (253, 39, 'no', 26, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (247, 40, 'no', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (248, 41, 'no', 35, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (249, 42, 'no', 36, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (250, 43, 'no', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (251, 44, 'no', 31, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (262, 50, 'no', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (264, 52, 'no', 36, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (265, 53, 'no', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (266, 54, 'no', 31, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (268, 55, 'no', 37, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (252, 58, 'no', 57, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (267, 59, 'no', 57, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (263, 73, 'no', 35, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (254, 84, 'no', 23, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (278, 91, 'yes', 26, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (279, 92, 'yes', 26, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (280, 93, 'yes', 37, 20);

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (46, 49, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (47, 32, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (48, 27, 'pb_markdownextrasmartypants', 15);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (8, 75, '/workspace/uploads', NULL);

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 68, 'nils-werner', 'Nils Werner');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 69, 'johannes-stuehler', 'Johannes Stühler');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 70, 'felix-augustin', 'Felix Augustin');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 71, 'nobody', '(nobody)');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 70, 'felix-augustin-hotmailcom', 'felix_augustin@hotmail.com');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 69, 'johannesstuehler-gmailcom', 'johannes.stuehler@gmail.com');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 68, 'nilswerner-gmailcom', 'nils.werner@gmail.com');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 71, 'nwerner-obsessive-mediade', 'nwerner@obsessive-media.de');

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 13, 'minor-project', 'Minor Project');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'bugtracker', 'Bugtracker');

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 13, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 61, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 13, 'active', 'Active');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (12, 13, 69);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (13, 13, 70);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, NULL);

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, 68);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (13, 13, 68);

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 14, 'post-launch', 'Post Launch');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 33, 'pre-launch', 'Pre Launch');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 73, 'none', '(none)');

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 14, NULL, NULL);
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 33, NULL, NULL);
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 73, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (6, 14, 13);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (7, 33, 13);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (10, 73, NULL);

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 14, '2010-03-31T00:00:00+02:00', 1269986400, 1269986400);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 33, '2010-02-06T16:54:00+01:00', 1265471640, 1265471640);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (10, 73, '2020-02-12T13:47:00+01:00', 1581511620, 1581511620);

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 15, 'low', 'Low');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 16, 'normal', 'Normal');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 17, 'high', 'High');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 18, 'critical', 'Critical');

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_36` ***
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 19, 'bug', 'Bug');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 20, 'enhancement', 'Enhancement');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 21, 'todo', 'ToDo');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 72, 'none', '(none)');

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 22, 'symphony-umzug', 'Symphony-Umzug');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 31, 'shop', 'Shop');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 32, 'daten-importieren', 'Daten importieren');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 58, 'test', 'Test');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 62, 'bugtracker-test', 'Bugtracker Test');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (76, 22, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (75, 31, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (74, 32, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (73, 58, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (72, 62, 61);

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (76, 22, 68);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (75, 31, 68);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (74, 32, 69);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (73, 58, 70);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (72, 62, 69);

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (74, 22, 15);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (73, 31, 18);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (72, 32, 15);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (71, 58, 16);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (70, 62, 16);

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_42` ***
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (74, 22, 20);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (73, 31, 20);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (72, 32, 20);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (71, 58, 72);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (70, 62, 72);

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (71, 22, 71);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (70, 31, 71);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (69, 32, 68);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (68, 58, 71);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (67, 62, 71);

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (71, 22, 33);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (70, 31, 14);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (69, 32, 14);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (68, 58, 73);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (67, 62, 73);

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (8, 15, '#4f4f4f');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (7, 16, '#000000');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (3, 17, '#e68900');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (4, 18, '#a30000');

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (1, 19, '#a30000');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (2, 20, '#a2a7d8');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (3, 21, '#cbf4c8');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (4, 72, '#ffffff');

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_48` ***
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 68, 'obsessive-media', 'Obsessive Media');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 69, 'obsessive-media', 'Obsessive Media');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 70, 'stauden-augustin', 'Stauden Augustin');

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_49` ***
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 27, 'Wir versuchen, das noch vor der Veröffentlichung zu schaffen.', '<p>Wir versuchen, das noch vor der Veröffentlichung zu schaffen.</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 26, 'Ne, dazu ist nicht genug Zeit.', '<p>Ne, dazu ist nicht genug Zeit.</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 34, 'Wir müssen aus einem Word-Dokument die Daten importieren', '<p>Wir müssen aus einem Word-Dokument die Daten importieren</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 35, 'Die Augustins wollen einen Shop', '<p>Die Augustins wollen einen Shop</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 54, 'Ist schon etwas wichtiger', '<p>Ist schon etwas wichtiger</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 55, 'Jonny kümmerst du dich drum?', '<p>Jonny kümmerst du dich drum?</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 56, 'Ich werde wohl mal mit dem XML Importer rumspielen müssen.', '<p>Ich werde wohl mal mit dem XML Importer rumspielen müssen.</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 59, 'Irgendwas', '<p>Irgendwas</p>\n');

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_50` ***
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 69);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 68);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 70);

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_52` ***
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 20);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 72);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 20);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 20);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 72);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 20);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 20);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 72);

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_53` ***
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 71);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 71);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 71);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 68);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 68);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 69);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 68);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 71);

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_54` ***
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 73);

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_55` ***
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 22);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 22);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 32);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 31);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 31);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 31);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 32);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 31);

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_57` ***
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 28, 'open', 'Open');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 29, 'resolved', 'Resolved');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 30, 'closed', 'Closed');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 57, 'reopened', 'Reopened');

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_58` ***
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (66, 22, 29);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (65, 31, 57);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (64, 32, 28);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (63, 58, 29);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (62, 62, 28);

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_59` ***
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (53, 26, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (52, 27, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (54, 34, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (65, 35, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (66, 54, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (58, 55, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (57, 56, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (44, 59, 28);

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_60` ***
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (30, 30, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (32, 29, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (27, 28, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (31, 57, 'yes');

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_61` ***
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (27, 30, 'yes');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (29, 29, 'no');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (24, 28, 'yes');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (28, 57, 'no');

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_62` ***
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (24, 30, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (26, 29, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (21, 28, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (25, 57, 'yes');

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_63` ***
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (1, 19, 1);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (2, 21, 2);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (3, 20, 3);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (4, 72, 4);

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_64` ***
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (1, 18, 1);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (7, 15, 4);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (3, 17, 2);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (6, 16, 3);

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (21, 28, 1);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (24, 30, 4);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (26, 29, 3);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (25, 57, 2);

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (22, 29, 'yes');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (20, 30, 'yes');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (17, 28, 'no');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (21, 57, 'no');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (52, 32, '2010-02-06T17:25:00+01:00', 1265473500, 1265473500);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (53, 31, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (54, 22, '2010-02-01T17:26:00+01:00', 1265041560, 1265041560);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (51, 58, '2010-02-08T01:17:00+01:00', 1265588220, 1265588220);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (50, 62, '2010-02-08T16:27:00+01:00', 1265642820, 1265642820);

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (47, 27, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (48, 26, '2010-02-06T17:26:00+01:00', 1265473560, 1265473560);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (49, 34, '2010-02-06T17:25:00+01:00', 1265473500, 1265473500);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (60, 35, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (61, 54, '2010-02-06T20:32:00+01:00', 1265484720, 1265484720);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (53, 55, '2010-02-06T20:33:00+01:00', 1265484780, 1265484780);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (52, 56, '2010-02-06T20:38:00+01:00', 1265485080, 1265485080);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (39, 59, '2010-01-19T03:05:00+01:00', 1263866700, 1263866700);

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (9, 28, '#58941c');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (14, 29, '#ffffcc');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (12, 30, '#dedede');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (13, 57, '#58941c');

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (5, 28, '#ffffff');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (10, 29, '#8e5c2a');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (8, 30, '#000000');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (9, 57, '#feff9f');

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 33, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'active', 'Active');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 73, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (1, 28, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (5, 57, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (6, 29, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (4, 30, 'yes');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (33, 54, 17);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (32, 35, 15);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (11, 59, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (19, 27, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (25, 55, 17);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (20, 26, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (21, 34, 15);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (24, 56, 15);

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (28, 32, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (29, 31, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (30, 22, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (27, 58, '2010-02-08T01:17:00+01:00', 1265588220, 1265588220);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (26, 62, '2010-02-08T16:27:00+01:00', 1265642820, 1265642820);

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 54, '/uploads/curltest.php', 498, 'unknown', 'a:1:{s:8:\"creation\";s:25:\"2010-02-08T02:44:17+01:00\";}');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 35, '/uploads/IMG_0295res.jpg', 26019, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-08T02:54:54+01:00\";s:5:\"width\";i:300;s:6:\"height\";i:322;}');

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `value`) VALUES (10, 13, 2);
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `value`) VALUES (8, 61, 3);

-- *** STRUCTURE: `tbl_entries_data_82` ***
DROP TABLE IF EXISTS `tbl_entries_data_82`;
CREATE TABLE `tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_82` ***
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 69, 'jonny', 'jonny');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 68, 'nils', 'nils');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 70, 'felix', 'felix');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 71, 'nobody', '(nobody)');

-- *** STRUCTURE: `tbl_entries_data_83` ***
DROP TABLE IF EXISTS `tbl_entries_data_83`;
CREATE TABLE `tbl_entries_data_83` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_83` ***
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 69, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 68, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 70, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 71, 'developer', 'Developer');

-- *** STRUCTURE: `tbl_entries_data_84` ***
DROP TABLE IF EXISTS `tbl_entries_data_84`;
CREATE TABLE `tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_84` ***
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (1, 62, 69);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (2, 58, 70);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (3, 32, 68);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (4, 31, 68);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (5, 22, 68);

-- *** STRUCTURE: `tbl_entries_data_86` ***
DROP TABLE IF EXISTS `tbl_entries_data_86`;
CREATE TABLE `tbl_entries_data_86` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_86` ***
INSERT INTO `tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (1, 72, 'yes');

-- *** STRUCTURE: `tbl_entries_data_87` ***
DROP TABLE IF EXISTS `tbl_entries_data_87`;
CREATE TABLE `tbl_entries_data_87` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_87` ***
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (2, 71, 'yes');
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (47, 68, 'no');
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (33, 70, 'no');
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (32, 69, 'no');

-- *** STRUCTURE: `tbl_entries_data_88` ***
DROP TABLE IF EXISTS `tbl_entries_data_88`;
CREATE TABLE `tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_88` ***
INSERT INTO `tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (3, 73, 'yes');

-- *** STRUCTURE: `tbl_entries_data_89` ***
DROP TABLE IF EXISTS `tbl_entries_data_89`;
CREATE TABLE `tbl_entries_data_89` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_89` ***
INSERT INTO `tbl_entries_data_89` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 68, '098f6bcd4621d373cade4e832627b4f6', '098f6bcd4621d373cade4e832627b4f6');

-- *** STRUCTURE: `tbl_entries_data_90` ***
DROP TABLE IF EXISTS `tbl_entries_data_90`;
CREATE TABLE `tbl_entries_data_90` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_90` ***
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 68, 'abbalaabbala', 'abbalaabbala');

-- *** STRUCTURE: `tbl_entries_data_91` ***
DROP TABLE IF EXISTS `tbl_entries_data_91`;
CREATE TABLE `tbl_entries_data_91` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_91` ***
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (5, 69, 13);
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (6, 70, 13);
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (22, 68, 13);

-- *** STRUCTURE: `tbl_entries_data_92` ***
DROP TABLE IF EXISTS `tbl_entries_data_92`;
CREATE TABLE `tbl_entries_data_92` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_92` ***
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `relation_id`) VALUES (19, 68, NULL);
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `relation_id`) VALUES (4, 69, NULL);
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `relation_id`) VALUES (5, 70, NULL);

-- *** STRUCTURE: `tbl_entries_data_93` ***
DROP TABLE IF EXISTS `tbl_entries_data_93`;
CREATE TABLE `tbl_entries_data_93` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_93` ***
INSERT INTO `tbl_entries_data_93` (`id`, `entry_id`, `relation_id`) VALUES (26, 68, 62);
INSERT INTO `tbl_entries_data_93` (`id`, `entry_id`, `relation_id`) VALUES (25, 68, 22);

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 10, 1, '2010-02-06 12:25:22', '2010-02-06 11:25:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 9, 1, '2010-02-06 12:25:04', '2010-02-06 11:25:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 10, 1, '2010-02-06 12:25:41', '2010-02-06 11:25:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 10, 1, '2010-02-06 12:25:28', '2010-02-06 11:25:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 8, 1, '2010-02-06 12:21:36', '2010-02-06 11:21:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 7, 1, '2010-02-12 01:42:16', '2010-02-12 00:42:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 7, 1, '2010-02-12 01:46:48', '2010-02-12 00:46:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 7, 1, '2010-02-12 13:38:54', '2010-02-12 12:38:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 10, 1, '2010-02-06 12:25:49', '2010-02-06 11:25:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 11, 1, '2010-02-06 12:26:18', '2010-02-06 11:26:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 11, 1, '2010-02-06 12:26:34', '2010-02-06 11:26:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 11, 1, '2010-02-06 12:26:46', '2010-02-06 11:26:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 12, 1, '2010-02-06 12:27:48', '2010-02-06 11:27:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 13, 1, '2010-02-06 13:51:35', '2010-02-06 12:51:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 13, 1, '2010-02-06 13:50:14', '2010-02-06 12:50:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 14, 1, '2010-02-06 14:18:14', '2010-02-06 13:18:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 14, 1, '2010-02-06 14:18:20', '2010-02-06 13:18:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 14, 1, '2010-02-06 14:18:23', '2010-02-06 13:18:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 12, 1, '2010-02-06 14:22:33', '2010-02-06 13:22:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 12, 1, '2010-02-06 14:22:46', '2010-02-06 13:22:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 9, 1, '2010-02-06 16:55:05', '2010-02-06 15:55:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 13, 1, '2010-02-06 17:57:56', '2010-02-06 16:57:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 13, 1, '2010-02-06 17:58:47', '2010-02-06 16:58:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 11, 1, '2010-02-12 13:46:09', '2010-02-12 12:46:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 7, 1, '2010-02-12 13:45:46', '2010-02-12 12:45:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 12, 1, '2010-02-08 16:27:55', '2010-02-08 15:27:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 8, 1, '2010-02-08 14:50:48', '2010-02-08 13:50:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 13, 1, '2010-02-08 03:06:04', '2010-02-08 02:06:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 12, 1, '2010-02-08 01:17:35', '2010-02-08 00:17:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 14, 1, '2010-02-06 20:57:50', '2010-02-06 19:57:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 13, 1, '2010-02-06 20:38:07', '2010-02-06 19:38:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 13, 1, '2010-02-06 20:33:33', '2010-02-06 19:33:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 13, 1, '2010-02-06 20:32:08', '2010-02-06 19:32:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 9, 1, '2010-02-12 13:46:29', '2010-02-12 12:46:29');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (75, 'export_ensemble', 'enabled', 1.9);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (87, 'selectbox_link_field', 'enabled', 1.14);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (77, 'jit_image_manipulation', 'enabled', 1.05);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (78, 'maintenance_mode', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (79, 'markdown', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (84, 'profiledevkit', 'enabled', '1.0.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (85, 'debugdevkit', 'enabled', '1.0.5');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (88, 'eventex', 'enabled', 1.01);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (89, 'color_chooser_field', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (91, 'order_entries', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (100, 'globalresourceloader', 'enabled', '1.0.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (95, 'databasemanipulator', 'enabled', 0.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (94, 'asdc', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (96, 'parampool_to_xml', 'enabled', 1.0);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (98, 'smtp_email_library', 'enabled', 1.1);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (65, 75, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (81, 85, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (80, 85, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (67, 77, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (72, 78, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (71, 78, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (70, 78, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (69, 78, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (68, 78, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (79, 84, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (78, 84, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (66, 77, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (73, 78, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (82, 89, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (83, 91, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (84, 91, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (108, 100, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (109, 100, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (94, 98, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'cbAppendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (95, 98, '/system/preferences/', 'Save', 'cbSavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (96, 98, '/blueprints/events/new/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (97, 98, '/blueprints/events/edit/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (98, 98, '/blueprints/events/new/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (99, 98, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (100, 98, '/frontend/', 'EventPostSaveFilter', 'cbSendEmailSMTPFilter');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Status', 'status', 'selectbox_link', 12, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Title', 'title', 'input', 12, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Title', 'title', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Title', 'title', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Due', 'due', 'date', 9, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Project', 'project', 'selectbox_link', 9, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Description', 'description', 'textarea', 9, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Title', 'title', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Administrators', 'administrators', 'selectbox_link', 8, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Contributors', 'contributors', 'selectbox_link', 8, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Status', 'status', 'select', 8, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (86, 'None', 'none', 'checkbox', 11, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Email', 'email', 'input', 7, 'yes', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Name', 'name', 'input', 7, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Project', 'project', 'selectbox_link', 12, 'yes', 8, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Creator', 'creator', 'selectbox_link', 12, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Priority', 'priority', 'selectbox_link', 12, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Category', 'category', 'selectbox_link', 12, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Assignee', 'assignee', 'selectbox_link', 12, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Milestone', 'milestone', 'selectbox_link', 12, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Description', 'description', 'textarea', 13, 'no', 0, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Color', 'color', 'colorchooser', 10, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Color', 'color', 'colorchooser', 11, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Company', 'company', 'input', 7, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Creator', 'creator', 'selectbox_link', 13, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Priority', 'priority', 'selectbox_link', 13, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Category', 'category', 'selectbox_link', 13, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Assignee', 'assignee', 'selectbox_link', 13, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Milestone', 'milestone', 'selectbox_link', 13, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Issue', 'issue', 'selectbox_link', 13, 'yes', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Title', 'title', 'input', 14, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Status', 'status', 'selectbox_link', 13, 'yes', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Issues', 'issues', 'checkbox', 14, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Milestones', 'milestones', 'checkbox', 14, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Projects', 'projects', 'checkbox', 14, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Order', 'order', 'order_entries', 11, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Order', 'order', 'order_entries', 10, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Order', 'order', 'order_entries', 14, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Finished', 'finished', 'checkbox', 14, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Date', 'date', 'date', 12, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Date', 'date', 'date', 13, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Backgroundcolor', 'backgroundcolor', 'colorchooser', 14, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Textcolor', 'textcolor', 'colorchooser', 14, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Status', 'status', 'select', 9, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Dashboard', 'dashboard', 'checkbox', 14, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Modified', 'modified', 'date', 12, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'File', 'file', 'upload', 13, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Order', 'order', 'order_entries', 8, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (83, 'Role', 'role', 'select', 7, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Username', 'username', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Modifier', 'modifier', 'selectbox_link', 12, 'yes', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (87, 'None', 'none', 'checkbox', 7, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'None', 'none', 'checkbox', 9, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (89, 'Password', 'password', 'input', 7, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (90, 'Token', 'token', 'input', 7, 'no', 6, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (91, 'Detailed', 'detailed', 'selectbox_link', 7, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (92, 'Hide', 'hide', 'selectbox_link', 7, 'no', 9, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (93, 'Suscriptions', 'suscriptions', 'selectbox_link', 7, 'no', 10, 'sidebar', 'no');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (82, NULL, 'Issue', 'issue', NULL, 'issue', 'issue_issue,issue_issue_messages', NULL, 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (78, NULL, 'Project', 'project', NULL, 'project', 'project_project,project_project_issues,project_project_issues_filtered,project_project_issues_messages,project_project_milestones', NULL, 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (83, NULL, 'Edit', 'edit', NULL, 'project', NULL, NULL, 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (84, 83, 'Issue', 'issue', 'edit', 'issue', NULL, NULL, 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (85, 83, 'Milestone', 'milestone', 'edit', 'milestone', NULL, NULL, 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 11);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (89, 88, 'Login', 'login', 'user', 'response', NULL, NULL, 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (87, 82, 'New Issue', 'new', 'issue', NULL, NULL, NULL, 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (86, NULL, 'Dashboard', 'dashboard', NULL, NULL, 'dashboard_projects,dashboard_projects_issues,dashboard_projects_issues_messages,dashboard_projects_milestones', NULL, 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (88, NULL, 'User', 'user', NULL, 'name', NULL, NULL, 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (90, 88, 'Logout', 'logout', 'user', NULL, NULL, NULL, 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (91, 88, 'Edit', 'edit', 'user', NULL, NULL, NULL, 10);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (689, 76, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (698, 86, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (690, 75, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (695, 85, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (697, 78, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (696, 82, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (691, 75, 'maintenance');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (688, 76, 404);
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (694, 88, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (693, 89, 'hidden');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Priority', 'priority', 5, 64, 'asc', 'no', 'Categorization');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Milestones', 'milestones', 1, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Projects', 'projects', 0, 76, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Users', 'users', 7, NULL, 'asc', 'no', 'Users');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Category', 'category', 6, 63, 'asc', 'no', 'Categorization');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Issues', 'issues', 2, NULL, 'asc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (13, 'Messages', 'messages', 3, 68, 'desc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (14, 'Status', 'status', 4, 65, 'asc', 'no', 'Categorization');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (283, 7, 23, 8, 30, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (282, 7, 23, 8, 29, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (281, 8, 26, 9, 33, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (253, 8, 26, 12, 39, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (247, 7, 23, 12, 40, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (248, 10, 35, 12, 41, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (249, 11, 36, 12, 42, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (250, 7, 23, 12, 43, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (251, 9, 31, 12, 44, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (262, 7, 23, 13, 50, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (263, 10, 35, 13, 73, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (264, 11, 36, 13, 52, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (265, 7, 23, 13, 53, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (266, 9, 31, 13, 54, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (268, 12, 37, 13, 55, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (252, 14, 57, 12, 58, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (267, 14, 57, 13, 59, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (254, 7, 23, 12, 84, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (278, 8, 26, 7, 91, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (279, 8, 26, 7, 92, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (280, 12, 37, 7, 93, 'no');
