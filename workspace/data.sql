
-- *** STRUCTURE: `sym_cache` ***
DROP TABLE IF EXISTS `sym_cache`;
CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `sym_entries` ***
DROP TABLE IF EXISTS `sym_entries`;
CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries` ***
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 10, 1, '2010-02-06 12:25:22', '2010-02-06 11:25:22');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 9, 1, '2010-02-06 12:25:04', '2010-02-06 11:25:04');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 10, 1, '2010-02-06 12:25:41', '2010-02-06 11:25:41');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 10, 1, '2010-02-06 12:25:28', '2010-02-06 11:25:28');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 8, 1, '2010-02-06 12:21:36', '2010-02-06 11:21:36');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 13, 1, '2011-12-06 11:16:44', '2011-12-06 10:16:44');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 10, 1, '2010-02-06 12:25:49', '2010-02-06 11:25:49');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 11, 1, '2010-02-06 12:26:18', '2010-02-06 11:26:18');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 11, 1, '2010-02-06 12:26:34', '2010-02-06 11:26:34');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 11, 1, '2010-02-06 12:26:46', '2010-02-06 11:26:46');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 12, 1, '2010-02-06 12:27:48', '2010-02-06 11:27:48');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 13, 1, '2010-02-06 13:51:35', '2010-02-06 12:51:35');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 13, 1, '2010-02-06 13:50:14', '2010-02-06 12:50:14');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 14, 1, '2010-02-06 14:18:14', '2010-02-06 13:18:14');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 14, 1, '2010-02-06 14:18:20', '2010-02-06 13:18:20');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 14, 1, '2010-02-06 14:18:23', '2010-02-06 13:18:23');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 12, 1, '2010-02-06 14:22:33', '2010-02-06 13:22:33');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 12, 1, '2010-02-06 14:22:46', '2010-02-06 13:22:46');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 9, 1, '2010-02-06 16:55:05', '2010-02-06 15:55:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 13, 1, '2010-02-06 17:57:56', '2010-02-06 16:57:56');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 13, 1, '2010-02-06 17:58:47', '2010-02-06 16:58:47');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 11, 1, '2010-02-12 13:46:09', '2010-02-12 12:46:09');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 12, 1, '2011-12-06 10:49:44', '2011-12-06 09:49:44');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 12, 1, '2010-02-08 16:27:55', '2010-02-08 15:27:55');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 8, 1, '2010-02-08 14:50:48', '2010-02-08 13:50:48');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 13, 1, '2010-02-08 03:06:04', '2010-02-08 02:06:04');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 12, 1, '2010-02-08 01:17:35', '2010-02-08 00:17:35');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 14, 1, '2010-02-06 20:57:50', '2010-02-06 19:57:50');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 13, 1, '2010-02-06 20:38:07', '2010-02-06 19:38:07');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 13, 1, '2010-02-06 20:33:33', '2010-02-06 19:33:33');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 13, 1, '2010-02-06 20:32:08', '2010-02-06 19:32:08');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 9, 1, '2010-02-12 13:46:29', '2010-02-12 12:46:29');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 15, 1, '2011-08-04 11:53:40', '2011-08-04 09:53:40');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 15, 1, '2011-08-04 11:54:36', '2011-08-04 09:54:36');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 13, 1, '2011-12-06 11:16:24', '2011-12-06 10:16:24');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 13, 1, '2011-12-06 11:16:18', '2011-12-06 10:16:18');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 13, 1, '2011-12-06 11:17:09', '2011-12-06 10:17:09');

-- *** STRUCTURE: `sym_entries_data_100` ***
DROP TABLE IF EXISTS `sym_entries_data_100`;
CREATE TABLE `sym_entries_data_100` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_100` ***
INSERT INTO `sym_entries_data_100` (`id`, `entry_id`, `relation_id`) VALUES (1, 74, NULL);
INSERT INTO `sym_entries_data_100` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, 13);

-- *** STRUCTURE: `sym_entries_data_101` ***
DROP TABLE IF EXISTS `sym_entries_data_101`;
CREATE TABLE `sym_entries_data_101` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_101` ***
INSERT INTO `sym_entries_data_101` (`id`, `entry_id`, `relation_id`) VALUES (1, 74, NULL);
INSERT INTO `sym_entries_data_101` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, NULL);

-- *** STRUCTURE: `sym_entries_data_102` ***
DROP TABLE IF EXISTS `sym_entries_data_102`;
CREATE TABLE `sym_entries_data_102` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_102` ***
INSERT INTO `sym_entries_data_102` (`id`, `entry_id`, `relation_id`) VALUES (1, 74, NULL);
INSERT INTO `sym_entries_data_102` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, NULL);

-- *** STRUCTURE: `sym_entries_data_26` ***
DROP TABLE IF EXISTS `sym_entries_data_26`;
CREATE TABLE `sym_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_26` ***
INSERT INTO `sym_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 13, 'minor-project', 'Minor Project');
INSERT INTO `sym_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'bugtracker', 'Bugtracker');

-- *** STRUCTURE: `sym_entries_data_27` ***
DROP TABLE IF EXISTS `sym_entries_data_27`;
CREATE TABLE `sym_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_27` ***
INSERT INTO `sym_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 13, NULL, NULL);
INSERT INTO `sym_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 61, NULL, NULL);

-- *** STRUCTURE: `sym_entries_data_28` ***
DROP TABLE IF EXISTS `sym_entries_data_28`;
CREATE TABLE `sym_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_28` ***
INSERT INTO `sym_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 13, 'active', 'Active');
INSERT INTO `sym_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'active', 'Active');

-- *** STRUCTURE: `sym_entries_data_29` ***
DROP TABLE IF EXISTS `sym_entries_data_29`;
CREATE TABLE `sym_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_29` ***
INSERT INTO `sym_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (14, 13, 75);
INSERT INTO `sym_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, NULL);

-- *** STRUCTURE: `sym_entries_data_30` ***
DROP TABLE IF EXISTS `sym_entries_data_30`;
CREATE TABLE `sym_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_30` ***
INSERT INTO `sym_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, 68);
INSERT INTO `sym_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (14, 13, 75);

-- *** STRUCTURE: `sym_entries_data_31` ***
DROP TABLE IF EXISTS `sym_entries_data_31`;
CREATE TABLE `sym_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_31` ***
INSERT INTO `sym_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 14, 'post-launch', 'Post Launch');
INSERT INTO `sym_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 33, 'pre-launch', 'Pre Launch');
INSERT INTO `sym_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 73, 'none', '(none)');

-- *** STRUCTURE: `sym_entries_data_32` ***
DROP TABLE IF EXISTS `sym_entries_data_32`;
CREATE TABLE `sym_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_32` ***
INSERT INTO `sym_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 14, NULL, NULL);
INSERT INTO `sym_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 33, NULL, NULL);
INSERT INTO `sym_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 73, NULL, NULL);

-- *** STRUCTURE: `sym_entries_data_33` ***
DROP TABLE IF EXISTS `sym_entries_data_33`;
CREATE TABLE `sym_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_33` ***
INSERT INTO `sym_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (6, 14, 13);
INSERT INTO `sym_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (7, 33, 13);
INSERT INTO `sym_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (10, 73, NULL);

-- *** STRUCTURE: `sym_entries_data_34` ***
DROP TABLE IF EXISTS `sym_entries_data_34`;
CREATE TABLE `sym_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_34` ***
INSERT INTO `sym_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 14, '2010-03-31T00:00:00+02:00', 1269986400, 1269986400);
INSERT INTO `sym_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 33, '2010-02-06T16:54:00+01:00', 1265471640, 1265471640);
INSERT INTO `sym_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (10, 73, '2020-02-12T13:47:00+01:00', 1581511620, 1581511620);

-- *** STRUCTURE: `sym_entries_data_35` ***
DROP TABLE IF EXISTS `sym_entries_data_35`;
CREATE TABLE `sym_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_35` ***
INSERT INTO `sym_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 15, 'low', 'Low');
INSERT INTO `sym_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 16, 'normal', 'Normal');
INSERT INTO `sym_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 17, 'high', 'High');
INSERT INTO `sym_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 18, 'critical', 'Critical');

-- *** STRUCTURE: `sym_entries_data_36` ***
DROP TABLE IF EXISTS `sym_entries_data_36`;
CREATE TABLE `sym_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_36` ***
INSERT INTO `sym_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 19, 'bug', 'Bug');
INSERT INTO `sym_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 20, 'enhancement', 'Enhancement');
INSERT INTO `sym_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 21, 'todo', 'ToDo');
INSERT INTO `sym_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 72, 'none', '(none)');

-- *** STRUCTURE: `sym_entries_data_37` ***
DROP TABLE IF EXISTS `sym_entries_data_37`;
CREATE TABLE `sym_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_37` ***
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 22, 'symphony-umzug', 'Symphony-Umzug');
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 31, 'shop', 'Shop');
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 32, 'daten-importieren', 'Daten importieren');
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 58, 'test', 'Test');
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 62, 'bugtracker-test', 'Bugtracker Test');
INSERT INTO `sym_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 76, 'test-this', 'Test this');

-- *** STRUCTURE: `sym_entries_data_39` ***
DROP TABLE IF EXISTS `sym_entries_data_39`;
CREATE TABLE `sym_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_39` ***
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (81, 22, 13);
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (80, 31, 13);
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (84, 32, 13);
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (83, 58, 13);
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (82, 62, 61);
INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (98, 76, 13);

-- *** STRUCTURE: `sym_entries_data_40` ***
DROP TABLE IF EXISTS `sym_entries_data_40`;
CREATE TABLE `sym_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_40` ***
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (81, 22, 68);
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (80, 31, 68);
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (84, 32, 69);
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (83, 58, 70);
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (82, 62, 69);
INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (98, 76, 75);

-- *** STRUCTURE: `sym_entries_data_41` ***
DROP TABLE IF EXISTS `sym_entries_data_41`;
CREATE TABLE `sym_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_41` ***
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (79, 22, 15);
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (78, 31, 18);
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (82, 32, 15);
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (81, 58, 16);
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (80, 62, 16);
INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (96, 76, 15);

-- *** STRUCTURE: `sym_entries_data_42` ***
DROP TABLE IF EXISTS `sym_entries_data_42`;
CREATE TABLE `sym_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_42` ***
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (79, 22, 20);
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (78, 31, 20);
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (82, 32, 20);
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (81, 58, 72);
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (80, 62, 72);
INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (96, 76, 21);

-- *** STRUCTURE: `sym_entries_data_43` ***
DROP TABLE IF EXISTS `sym_entries_data_43`;
CREATE TABLE `sym_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_43` ***
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (76, 22, 74);
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (75, 31, 74);
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (79, 32, 75);
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (78, 58, 75);
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (77, 62, 75);
INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (93, 76, 74);

-- *** STRUCTURE: `sym_entries_data_44` ***
DROP TABLE IF EXISTS `sym_entries_data_44`;
CREATE TABLE `sym_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_44` ***
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (76, 22, 33);
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (75, 31, 14);
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (79, 32, 14);
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (78, 58, 73);
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (77, 62, 73);
INSERT INTO `sym_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (93, 76, 14);

-- *** STRUCTURE: `sym_entries_data_46` ***
DROP TABLE IF EXISTS `sym_entries_data_46`;
CREATE TABLE `sym_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_46` ***
INSERT INTO `sym_entries_data_46` (`id`, `entry_id`, `value`) VALUES (8, 15, '#4f4f4f');
INSERT INTO `sym_entries_data_46` (`id`, `entry_id`, `value`) VALUES (7, 16, '#000000');
INSERT INTO `sym_entries_data_46` (`id`, `entry_id`, `value`) VALUES (3, 17, '#e68900');
INSERT INTO `sym_entries_data_46` (`id`, `entry_id`, `value`) VALUES (4, 18, '#a30000');

-- *** STRUCTURE: `sym_entries_data_47` ***
DROP TABLE IF EXISTS `sym_entries_data_47`;
CREATE TABLE `sym_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_47` ***
INSERT INTO `sym_entries_data_47` (`id`, `entry_id`, `value`) VALUES (1, 19, '#a30000');
INSERT INTO `sym_entries_data_47` (`id`, `entry_id`, `value`) VALUES (2, 20, '#a2a7d8');
INSERT INTO `sym_entries_data_47` (`id`, `entry_id`, `value`) VALUES (3, 21, '#cbf4c8');
INSERT INTO `sym_entries_data_47` (`id`, `entry_id`, `value`) VALUES (4, 72, '#ffffff');

-- *** STRUCTURE: `sym_entries_data_49` ***
DROP TABLE IF EXISTS `sym_entries_data_49`;
CREATE TABLE `sym_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_49` ***
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 27, 'Wir versuchen, das noch vor der Veröffentlichung zu schaffen.', '<p>Wir versuchen, das noch vor der Veröffentlichung zu schaffen.</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 26, 'Ne, dazu ist nicht genug Zeit.', '<p>Ne, dazu ist nicht genug Zeit.</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 34, 'Wir müssen aus einem Word-Dokument die Daten importieren', '<p>Wir müssen aus einem Word-Dokument die Daten importieren</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 35, 'Die Augustins wollen einen Shop', '<p>Die Augustins wollen einen Shop</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 54, 'Ist schon etwas wichtiger', '<p>Ist schon etwas wichtiger</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 55, 'Jonny kümmerst du dich drum?', '<p>Jonny kümmerst du dich drum?</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 56, 'Ich werde wohl mal mit dem XML Importer rumspielen müssen.', '<p>Ich werde wohl mal mit dem XML Importer rumspielen müssen.</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 59, 'Irgendwas', '<p>Irgendwas</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 86, NULL, NULL);
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 87, NULL, NULL);
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 88, 'Testing?', '<p>Testing?</p>\n');
INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 89, 'Alles mal ändern.', '<p>Alles mal ändern.</p>\n');

-- *** STRUCTURE: `sym_entries_data_50` ***
DROP TABLE IF EXISTS `sym_entries_data_50`;
CREATE TABLE `sym_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_50` ***
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 69);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 68);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 70);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (75, 86, 75);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (76, 87, 75);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (77, 88, 75);
INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (78, 89, 75);

-- *** STRUCTURE: `sym_entries_data_52` ***
DROP TABLE IF EXISTS `sym_entries_data_52`;
CREATE TABLE `sym_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_52` ***
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 20);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 72);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 20);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 20);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 72);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 20);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 20);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 72);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (75, 86, 19);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (76, 87, 19);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (77, 88, 19);
INSERT INTO `sym_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (78, 89, 21);

-- *** STRUCTURE: `sym_entries_data_53` ***
DROP TABLE IF EXISTS `sym_entries_data_53`;
CREATE TABLE `sym_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_53` ***
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 71);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 71);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 71);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 68);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 68);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 69);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 68);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 71);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (75, 86, 75);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (76, 87, 75);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (77, 88, 75);
INSERT INTO `sym_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (78, 89, 74);

-- *** STRUCTURE: `sym_entries_data_54` ***
DROP TABLE IF EXISTS `sym_entries_data_54`;
CREATE TABLE `sym_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_54` ***
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 33);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 14);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 73);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (75, 86, 33);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (76, 87, 33);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (77, 88, 33);
INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (78, 89, 14);

-- *** STRUCTURE: `sym_entries_data_55` ***
DROP TABLE IF EXISTS `sym_entries_data_55`;
CREATE TABLE `sym_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_55` ***
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 22);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (55, 27, 22);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (57, 34, 32);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (68, 35, 31);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (69, 54, 31);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (61, 55, 31);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (60, 56, 32);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (47, 59, 31);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (75, 86, 76);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (76, 87, 76);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (77, 88, 76);
INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (78, 89, 76);

-- *** STRUCTURE: `sym_entries_data_57` ***
DROP TABLE IF EXISTS `sym_entries_data_57`;
CREATE TABLE `sym_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_57` ***
INSERT INTO `sym_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 28, 'open', 'Open');
INSERT INTO `sym_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 29, 'resolved', 'Resolved');
INSERT INTO `sym_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 30, 'closed', 'Closed');
INSERT INTO `sym_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 57, 'reopened', 'Reopened');

-- *** STRUCTURE: `sym_entries_data_58` ***
DROP TABLE IF EXISTS `sym_entries_data_58`;
CREATE TABLE `sym_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_58` ***
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (71, 22, 29);
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (70, 31, 57);
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (74, 32, 28);
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (73, 58, 29);
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (72, 62, 28);
INSERT INTO `sym_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (88, 76, 57);

-- *** STRUCTURE: `sym_entries_data_59` ***
DROP TABLE IF EXISTS `sym_entries_data_59`;
CREATE TABLE `sym_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_59` ***
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (53, 26, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (52, 27, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (54, 34, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (65, 35, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (66, 54, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (58, 55, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (57, 56, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (44, 59, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (72, 86, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (73, 87, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (74, 88, 28);
INSERT INTO `sym_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (75, 89, 57);

-- *** STRUCTURE: `sym_entries_data_60` ***
DROP TABLE IF EXISTS `sym_entries_data_60`;
CREATE TABLE `sym_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_60` ***
INSERT INTO `sym_entries_data_60` (`id`, `entry_id`, `value`) VALUES (30, 30, 'yes');
INSERT INTO `sym_entries_data_60` (`id`, `entry_id`, `value`) VALUES (32, 29, 'yes');
INSERT INTO `sym_entries_data_60` (`id`, `entry_id`, `value`) VALUES (27, 28, 'yes');
INSERT INTO `sym_entries_data_60` (`id`, `entry_id`, `value`) VALUES (31, 57, 'yes');

-- *** STRUCTURE: `sym_entries_data_61` ***
DROP TABLE IF EXISTS `sym_entries_data_61`;
CREATE TABLE `sym_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_61` ***
INSERT INTO `sym_entries_data_61` (`id`, `entry_id`, `value`) VALUES (27, 30, 'yes');
INSERT INTO `sym_entries_data_61` (`id`, `entry_id`, `value`) VALUES (29, 29, 'no');
INSERT INTO `sym_entries_data_61` (`id`, `entry_id`, `value`) VALUES (24, 28, 'yes');
INSERT INTO `sym_entries_data_61` (`id`, `entry_id`, `value`) VALUES (28, 57, 'no');

-- *** STRUCTURE: `sym_entries_data_62` ***
DROP TABLE IF EXISTS `sym_entries_data_62`;
CREATE TABLE `sym_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_62` ***
INSERT INTO `sym_entries_data_62` (`id`, `entry_id`, `value`) VALUES (24, 30, 'yes');
INSERT INTO `sym_entries_data_62` (`id`, `entry_id`, `value`) VALUES (26, 29, 'yes');
INSERT INTO `sym_entries_data_62` (`id`, `entry_id`, `value`) VALUES (21, 28, 'yes');
INSERT INTO `sym_entries_data_62` (`id`, `entry_id`, `value`) VALUES (25, 57, 'yes');

-- *** STRUCTURE: `sym_entries_data_63` ***
DROP TABLE IF EXISTS `sym_entries_data_63`;
CREATE TABLE `sym_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_63` ***
INSERT INTO `sym_entries_data_63` (`id`, `entry_id`, `value`) VALUES (1, 19, 1);
INSERT INTO `sym_entries_data_63` (`id`, `entry_id`, `value`) VALUES (2, 21, 2);
INSERT INTO `sym_entries_data_63` (`id`, `entry_id`, `value`) VALUES (3, 20, 3);
INSERT INTO `sym_entries_data_63` (`id`, `entry_id`, `value`) VALUES (4, 72, 4);

-- *** STRUCTURE: `sym_entries_data_64` ***
DROP TABLE IF EXISTS `sym_entries_data_64`;
CREATE TABLE `sym_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_64` ***
INSERT INTO `sym_entries_data_64` (`id`, `entry_id`, `value`) VALUES (1, 18, 1);
INSERT INTO `sym_entries_data_64` (`id`, `entry_id`, `value`) VALUES (7, 15, 4);
INSERT INTO `sym_entries_data_64` (`id`, `entry_id`, `value`) VALUES (3, 17, 2);
INSERT INTO `sym_entries_data_64` (`id`, `entry_id`, `value`) VALUES (6, 16, 3);

-- *** STRUCTURE: `sym_entries_data_65` ***
DROP TABLE IF EXISTS `sym_entries_data_65`;
CREATE TABLE `sym_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_65` ***
INSERT INTO `sym_entries_data_65` (`id`, `entry_id`, `value`) VALUES (21, 28, 1);
INSERT INTO `sym_entries_data_65` (`id`, `entry_id`, `value`) VALUES (24, 30, 4);
INSERT INTO `sym_entries_data_65` (`id`, `entry_id`, `value`) VALUES (26, 29, 3);
INSERT INTO `sym_entries_data_65` (`id`, `entry_id`, `value`) VALUES (25, 57, 2);

-- *** STRUCTURE: `sym_entries_data_66` ***
DROP TABLE IF EXISTS `sym_entries_data_66`;
CREATE TABLE `sym_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_66` ***
INSERT INTO `sym_entries_data_66` (`id`, `entry_id`, `value`) VALUES (22, 29, 'yes');
INSERT INTO `sym_entries_data_66` (`id`, `entry_id`, `value`) VALUES (20, 30, 'yes');
INSERT INTO `sym_entries_data_66` (`id`, `entry_id`, `value`) VALUES (17, 28, 'no');
INSERT INTO `sym_entries_data_66` (`id`, `entry_id`, `value`) VALUES (21, 57, 'no');

-- *** STRUCTURE: `sym_entries_data_67` ***
DROP TABLE IF EXISTS `sym_entries_data_67`;
CREATE TABLE `sym_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_67` ***
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (62, 32, '2010-02-06T17:25:00+01:00', 1265473500, 1265473500);
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (58, 31, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (59, 22, '2010-02-01T17:26:00+01:00', 1265041560, 1265041560);
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (61, 58, '2010-02-08T01:17:00+01:00', 1265588220, 1265588220);
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (60, 62, '2010-02-08T16:27:00+01:00', 1265642820, 1265642820);
INSERT INTO `sym_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (76, 76, '2011-12-06T10:49:44+01:00', 1323164984, 1323164984);

-- *** STRUCTURE: `sym_entries_data_68` ***
DROP TABLE IF EXISTS `sym_entries_data_68`;
CREATE TABLE `sym_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_68` ***
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (47, 27, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (48, 26, '2010-02-06T17:26:00+01:00', 1265473560, 1265473560);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (49, 34, '2010-02-06T17:25:00+01:00', 1265473500, 1265473500);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (60, 35, '2010-02-02T17:26:00+01:00', 1265127960, 1265127960);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (61, 54, '2010-02-06T20:32:00+01:00', 1265484720, 1265484720);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (53, 55, '2010-02-06T20:33:00+01:00', 1265484780, 1265484780);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (52, 56, '2010-02-06T20:38:00+01:00', 1265485080, 1265485080);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (39, 59, '2010-01-19T03:05:00+01:00', 1263866700, 1263866700);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (67, 86, '2011-12-06T11:16:18+01:00', 1323166578, 1323166578);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (68, 87, '2011-12-06T11:16:24+01:00', 1323166584, 1323166584);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (69, 88, '2011-12-06T11:16:44+01:00', 1323166604, 1323166604);
INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (70, 89, '2011-12-06T11:17:09+01:00', 1323166629, 1323166629);

-- *** STRUCTURE: `sym_entries_data_69` ***
DROP TABLE IF EXISTS `sym_entries_data_69`;
CREATE TABLE `sym_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_69` ***
INSERT INTO `sym_entries_data_69` (`id`, `entry_id`, `value`) VALUES (9, 28, '#58941c');
INSERT INTO `sym_entries_data_69` (`id`, `entry_id`, `value`) VALUES (14, 29, '#ffffcc');
INSERT INTO `sym_entries_data_69` (`id`, `entry_id`, `value`) VALUES (12, 30, '#dedede');
INSERT INTO `sym_entries_data_69` (`id`, `entry_id`, `value`) VALUES (13, 57, '#58941c');

-- *** STRUCTURE: `sym_entries_data_70` ***
DROP TABLE IF EXISTS `sym_entries_data_70`;
CREATE TABLE `sym_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_70` ***
INSERT INTO `sym_entries_data_70` (`id`, `entry_id`, `value`) VALUES (5, 28, '#ffffff');
INSERT INTO `sym_entries_data_70` (`id`, `entry_id`, `value`) VALUES (10, 29, '#8e5c2a');
INSERT INTO `sym_entries_data_70` (`id`, `entry_id`, `value`) VALUES (8, 30, '#000000');
INSERT INTO `sym_entries_data_70` (`id`, `entry_id`, `value`) VALUES (9, 57, '#feff9f');

-- *** STRUCTURE: `sym_entries_data_71` ***
DROP TABLE IF EXISTS `sym_entries_data_71`;
CREATE TABLE `sym_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_71` ***
INSERT INTO `sym_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 33, 'finished', 'Finished');
INSERT INTO `sym_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'active', 'Active');
INSERT INTO `sym_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 73, 'active', 'Active');

-- *** STRUCTURE: `sym_entries_data_72` ***
DROP TABLE IF EXISTS `sym_entries_data_72`;
CREATE TABLE `sym_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_72` ***
INSERT INTO `sym_entries_data_72` (`id`, `entry_id`, `value`) VALUES (1, 28, 'yes');
INSERT INTO `sym_entries_data_72` (`id`, `entry_id`, `value`) VALUES (5, 57, 'yes');
INSERT INTO `sym_entries_data_72` (`id`, `entry_id`, `value`) VALUES (6, 29, 'yes');
INSERT INTO `sym_entries_data_72` (`id`, `entry_id`, `value`) VALUES (4, 30, 'yes');

-- *** STRUCTURE: `sym_entries_data_73` ***
DROP TABLE IF EXISTS `sym_entries_data_73`;
CREATE TABLE `sym_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_73` ***
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (33, 54, 17);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (32, 35, 15);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (11, 59, 16);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (19, 27, 18);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (25, 55, 17);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (20, 26, 16);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (21, 34, 15);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (24, 56, 15);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (39, 86, 18);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (40, 87, 18);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (41, 88, 18);
INSERT INTO `sym_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (42, 89, 15);

-- *** STRUCTURE: `sym_entries_data_74` ***
DROP TABLE IF EXISTS `sym_entries_data_74`;
CREATE TABLE `sym_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_74` ***
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (38, 32, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (34, 31, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (35, 22, '2010-02-07T18:32:00+01:00', 1265563920, 1265563920);
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (37, 58, '2010-02-08T01:17:00+01:00', 1265588220, 1265588220);
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (36, 62, '2010-02-08T16:27:00+01:00', 1265642820, 1265642820);
INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (52, 76, '2011-12-06T10:49:44+01:00', 1323164984, 1323164984);

-- *** STRUCTURE: `sym_entries_data_75` ***
DROP TABLE IF EXISTS `sym_entries_data_75`;
CREATE TABLE `sym_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_75` ***
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 54, '/uploads/curltest.php', 498, 'unknown', 'a:1:{s:8:\"creation\";s:25:\"2010-02-08T02:44:17+01:00\";}');
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 35, '/uploads/IMG_0295res.jpg', 26019, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-08T02:54:54+01:00\";s:5:\"width\";i:300;s:6:\"height\";i:322;}');
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (25, 86, NULL, NULL, NULL, NULL);
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (26, 87, NULL, NULL, NULL, NULL);
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (27, 88, NULL, NULL, NULL, NULL);
INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 89, NULL, NULL, NULL, NULL);

-- *** STRUCTURE: `sym_entries_data_76` ***
DROP TABLE IF EXISTS `sym_entries_data_76`;
CREATE TABLE `sym_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_76` ***
INSERT INTO `sym_entries_data_76` (`id`, `entry_id`, `value`) VALUES (11, 13, 2);
INSERT INTO `sym_entries_data_76` (`id`, `entry_id`, `value`) VALUES (8, 61, 3);

-- *** STRUCTURE: `sym_entries_data_84` ***
DROP TABLE IF EXISTS `sym_entries_data_84`;
CREATE TABLE `sym_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_84` ***
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (11, 62, 69);
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (12, 58, 70);
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (13, 32, 68);
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (9, 31, 68);
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (10, 22, 68);
INSERT INTO `sym_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (27, 76, 75);

-- *** STRUCTURE: `sym_entries_data_86` ***
DROP TABLE IF EXISTS `sym_entries_data_86`;
CREATE TABLE `sym_entries_data_86` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_86` ***
INSERT INTO `sym_entries_data_86` (`id`, `entry_id`, `value`) VALUES (1, 72, 'yes');

-- *** STRUCTURE: `sym_entries_data_88` ***
DROP TABLE IF EXISTS `sym_entries_data_88`;
CREATE TABLE `sym_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_88` ***
INSERT INTO `sym_entries_data_88` (`id`, `entry_id`, `value`) VALUES (3, 73, 'yes');

-- *** STRUCTURE: `sym_entries_data_94` ***
DROP TABLE IF EXISTS `sym_entries_data_94`;
CREATE TABLE `sym_entries_data_94` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`handle`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_94` ***
INSERT INTO `sym_entries_data_94` (`id`, `entry_id`, `value`, `handle`) VALUES (1, 74, '(nobody)', 'nobody');
INSERT INTO `sym_entries_data_94` (`id`, `entry_id`, `value`, `handle`) VALUES (4, 75, 'nils', 'nils');

-- *** STRUCTURE: `sym_entries_data_95` ***
DROP TABLE IF EXISTS `sym_entries_data_95`;
CREATE TABLE `sym_entries_data_95` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_95` ***
INSERT INTO `sym_entries_data_95` (`id`, `entry_id`, `role_id`) VALUES (1, 74, 1);
INSERT INTO `sym_entries_data_95` (`id`, `entry_id`, `role_id`) VALUES (4, 75, 2);

-- *** STRUCTURE: `sym_entries_data_96` ***
DROP TABLE IF EXISTS `sym_entries_data_96`;
CREATE TABLE `sym_entries_data_96` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`value`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_96` ***
INSERT INTO `sym_entries_data_96` (`id`, `entry_id`, `value`) VALUES (1, 74, 'nobody@bugaroo.symphony-cms.com');
INSERT INTO `sym_entries_data_96` (`id`, `entry_id`, `value`) VALUES (4, 75, 'nils.werner@gmail.com');

-- *** STRUCTURE: `sym_entries_data_97` ***
DROP TABLE IF EXISTS `sym_entries_data_97`;
CREATE TABLE `sym_entries_data_97` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery-code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `reset` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recovery-code` (`recovery-code`),
  KEY `entry_id` (`entry_id`),
  KEY `length` (`length`),
  KEY `password` (`password`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_97` ***
INSERT INTO `sym_entries_data_97` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (1, 74, '11f7908e5a96ef99319757197ce298f604bcd5c9', NULL, 9, 'good', 'no', NULL);
INSERT INTO `sym_entries_data_97` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (4, 75, '85f93bfe9eeebffb668f007583d732447e6ffdec', NULL, 8, 'strong', 'no', NULL);

-- *** STRUCTURE: `sym_entries_data_98` ***
DROP TABLE IF EXISTS `sym_entries_data_98`;
CREATE TABLE `sym_entries_data_98` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_98` ***
INSERT INTO `sym_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 74, 'nobody', 'Nobody');
INSERT INTO `sym_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 75, 'nils-werner', 'Nils Werner');

-- *** STRUCTURE: `sym_entries_data_99` ***
DROP TABLE IF EXISTS `sym_entries_data_99`;
CREATE TABLE `sym_entries_data_99` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_99` ***
INSERT INTO `sym_entries_data_99` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 75, 'obsessive-media', 'Obsessive Media');

-- *** STRUCTURE: `sym_extensions` ***
DROP TABLE IF EXISTS `sym_extensions`;
CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions` ***
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (75, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (87, 'selectbox_link_field', 'enabled', 1.20);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (77, 'jit_image_manipulation', 'enabled', 1.11);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (78, 'maintenance_mode', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (79, 'markdown', 'enabled', 1.13);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (84, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (85, 'debugdevkit', 'enabled', 1.2);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (89, 'color_chooser_field', 'enabled', '1.2.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (91, 'order_entries', 'enabled', '1.9.6');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (100, 'globalresourceloader', 'enabled', '1.0.5');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (103, 'dump_db', 'enabled', 1.08);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (104, 'members', 'enabled', '1.1.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (101, 'xssfilter', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (105, 'url_router', 'enabled', 1.2);

-- *** STRUCTURE: `sym_extensions_delegates` ***
DROP TABLE IF EXISTS `sym_extensions_delegates`;
CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions_delegates` ***
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (141, 101, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (142, 101, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (143, 101, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (120, 77, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (125, 78, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (124, 78, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (123, 78, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (122, 78, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (140, 84, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (139, 84, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (119, 77, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (121, 78, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (116, 89, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (138, 91, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (118, 100, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (117, 100, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (149, 103, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (148, 103, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (147, 103, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (146, 75, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (145, 85, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (144, 85, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (126, 78, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (127, 78, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (178, 104, '/blueprints/events/new/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (177, 104, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (175, 104, '/backend/', 'AdminPagePreGenerate', 'appendAssets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (176, 104, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (174, 104, '/frontend/', 'EventPostSaveFilter', 'processPostSaveFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (173, 104, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (172, 104, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (171, 104, '/frontend/', 'FrontendParamsResolve', 'addMemberDetailsToPageParams');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (170, 104, '/frontend/', 'FrontendPageResolved', 'checkFrontendPagePermissions');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (179, 104, '/blueprints/events/edit/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (180, 105, '/frontend/', 'FrontendPrePageResolve', 'frontendPrePageResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (181, 105, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (182, 105, '/system/preferences/', 'Save', 'save');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (183, 105, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');

-- *** STRUCTURE: `sym_fields` ***
DROP TABLE IF EXISTS `sym_fields`;
CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields` ***
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Status', 'status', 'selectbox_link', 12, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Title', 'title', 'input', 12, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Title', 'title', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Title', 'title', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Due', 'due', 'date', 9, 'no', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Project', 'project', 'selectbox_link', 9, 'no', 3, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Description', 'description', 'textarea', 9, 'no', 1, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Title', 'title', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Administrators', 'administrators', 'selectbox_link', 8, 'no', 4, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Contributors', 'contributors', 'selectbox_link', 8, 'no', 3, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Status', 'status', 'select', 8, 'no', 2, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (86, 'None', 'none', 'checkbox', 11, 'no', 3, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Project', 'project', 'selectbox_link', 12, 'yes', 8, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Creator', 'creator', 'selectbox_link', 12, 'yes', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Priority', 'priority', 'selectbox_link', 12, 'yes', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Category', 'category', 'selectbox_link', 12, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Assignee', 'assignee', 'selectbox_link', 12, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Milestone', 'milestone', 'selectbox_link', 12, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Description', 'description', 'textarea', 13, 'no', 0, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Color', 'color', 'colorchooser', 10, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Color', 'color', 'colorchooser', 11, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Creator', 'creator', 'selectbox_link', 13, 'yes', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Priority', 'priority', 'selectbox_link', 13, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Category', 'category', 'selectbox_link', 13, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Assignee', 'assignee', 'selectbox_link', 13, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Milestone', 'milestone', 'selectbox_link', 13, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Issue', 'issue', 'selectbox_link', 13, 'yes', 9, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Title', 'title', 'input', 14, 'no', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Status', 'status', 'selectbox_link', 13, 'yes', 8, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Issues', 'issues', 'checkbox', 14, 'no', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Milestones', 'milestones', 'checkbox', 14, 'no', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Projects', 'projects', 'checkbox', 14, 'no', 6, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Order', 'order', 'order_entries', 11, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Order', 'order', 'order_entries', 10, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Order', 'order', 'order_entries', 14, 'no', 8, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Finished', 'finished', 'checkbox', 14, 'no', 7, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Date', 'date', 'date', 12, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Date', 'date', 'date', 13, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Backgroundcolor', 'backgroundcolor', 'colorchooser', 14, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Textcolor', 'textcolor', 'colorchooser', 14, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Status', 'status', 'select', 9, 'no', 2, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Dashboard', 'dashboard', 'checkbox', 14, 'no', 3, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Modified', 'modified', 'date', 12, 'no', 9, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'File', 'file', 'upload', 13, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Order', 'order', 'order_entries', 8, 'no', 5, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Modifier', 'modifier', 'selectbox_link', 12, 'yes', 10, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'None', 'none', 'checkbox', 9, 'no', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (94, 'Username', 'username', 'memberusername', 15, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (95, 'Role', 'role', 'memberrole', 15, 'yes', 4, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (96, 'Email', 'email', 'memberemail', 15, 'yes', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (97, 'Password', 'password', 'memberpassword', 15, 'yes', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (98, 'Name', 'name', 'input', 15, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (99, 'Company', 'company', 'input', 15, 'no', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (100, 'Detailed', 'detailed', 'selectbox_link', 15, 'no', 6, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (101, 'Hide', 'hide', 'selectbox_link', 15, 'no', 7, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (102, 'Subscriptions', 'subscriptions', 'selectbox_link', 15, 'no', 8, 'sidebar', 'no');

-- *** STRUCTURE: `sym_fields_author` ***
DROP TABLE IF EXISTS `sym_fields_author`;
CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_author` ***

-- *** STRUCTURE: `sym_fields_checkbox` ***
DROP TABLE IF EXISTS `sym_fields_checkbox`;
CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_checkbox` ***
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (35, 60, 'on', 'Display in Issues-View');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (36, 61, 'on', 'Display in Milestones-View');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (37, 62, 'on', 'Display in Projects-View');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (38, 66, 'off', 'Counts towards finished percentage');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (34, 72, 'on', 'Display in Dashboard-View');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (50, 86, 'off', 'Placeholder for Anonymous');
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (51, 88, 'off', 'Placeholder for Anonymous');

-- *** STRUCTURE: `sym_fields_colorchooser` ***
DROP TABLE IF EXISTS `sym_fields_colorchooser`;
CREATE TABLE `sym_fields_colorchooser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_colorchooser` ***
INSERT INTO `sym_fields_colorchooser` (`id`, `field_id`) VALUES (10, 46);
INSERT INTO `sym_fields_colorchooser` (`id`, `field_id`) VALUES (17, 47);
INSERT INTO `sym_fields_colorchooser` (`id`, `field_id`) VALUES (14, 69);
INSERT INTO `sym_fields_colorchooser` (`id`, `field_id`) VALUES (15, 70);

-- *** STRUCTURE: `sym_fields_date` ***
DROP TABLE IF EXISTS `sym_fields_date`;
CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_date` ***
INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (48, 68, 'yes');
INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (46, 67, 'yes');
INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (45, 34, 'yes');
INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (47, 74, 'yes');

-- *** STRUCTURE: `sym_fields_input` ***
DROP TABLE IF EXISTS `sym_fields_input`;
CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_input` ***
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (64, 57, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (153, 37, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (144, 31, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (54, 35, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (143, 36, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (152, 26, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 98, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (151, 99, NULL);

-- *** STRUCTURE: `sym_fields_member` ***
DROP TABLE IF EXISTS `sym_fields_member`;
CREATE TABLE `sym_fields_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_member` ***

-- *** STRUCTURE: `sym_fields_memberemail` ***
DROP TABLE IF EXISTS `sym_fields_memberemail`;
CREATE TABLE `sym_fields_memberemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_memberemail` ***
INSERT INTO `sym_fields_memberemail` (`id`, `field_id`) VALUES (3, 96);

-- *** STRUCTURE: `sym_fields_memberlink` ***
DROP TABLE IF EXISTS `sym_fields_memberlink`;
CREATE TABLE `sym_fields_memberlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_memberlink` ***

-- *** STRUCTURE: `sym_fields_memberpassword` ***
DROP TABLE IF EXISTS `sym_fields_memberpassword`;
CREATE TABLE `sym_fields_memberpassword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_expiry` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_memberpassword` ***
INSERT INTO `sym_fields_memberpassword` (`id`, `field_id`, `length`, `strength`, `salt`, `code_expiry`) VALUES (3, 97, 6, 'good', 'bugaroo', '1 hour');

-- *** STRUCTURE: `sym_fields_memberrole` ***
DROP TABLE IF EXISTS `sym_fields_memberrole`;
CREATE TABLE `sym_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_role` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_memberrole` ***
INSERT INTO `sym_fields_memberrole` (`id`, `field_id`, `default_role`) VALUES (4, 95, 1);

-- *** STRUCTURE: `sym_fields_memberusername` ***
DROP TABLE IF EXISTS `sym_fields_memberusername`;
CREATE TABLE `sym_fields_memberusername` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_memberusername` ***
INSERT INTO `sym_fields_memberusername` (`id`, `field_id`, `validator`) VALUES (5, 94, NULL);

-- *** STRUCTURE: `sym_fields_order_entries` ***
DROP TABLE IF EXISTS `sym_fields_order_entries`;
CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_order_entries` ***
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (15, 63, 'yes', 'yes');
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (8, 64, 'yes', 'yes');
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (12, 65, 'yes', 'yes');
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (17, 76, NULL, 'no');

-- *** STRUCTURE: `sym_fields_select` ***
DROP TABLE IF EXISTS `sym_fields_select`;
CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_select` ***
INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (25, 28, 'no', 'Active, Inactive, Finished', NULL, 'yes', 'no');
INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (23, 71, 'no', 'Active,Inactive,Finished', NULL, 'yes', 'no');

-- *** STRUCTURE: `sym_fields_selectbox_link` ***
DROP TABLE IF EXISTS `sym_fields_selectbox_link`;
CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_selectbox_link` ***
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (294, 30, 'yes', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (293, 29, 'yes', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (281, 33, 'no', 26, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (301, 39, 'no', 26, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (295, 40, 'no', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (296, 41, 'no', 35, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (297, 42, 'no', 36, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (298, 43, 'no', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (299, 44, 'no', 31, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (303, 50, 'no', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (305, 52, 'no', 36, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (306, 53, 'no', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (307, 54, 'no', 31, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (309, 55, 'no', 37, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (300, 58, 'no', 57, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (308, 59, 'no', 57, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (304, 73, 'no', 35, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (302, 84, 'no', 98, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (290, 100, 'yes', 26, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (291, 101, 'yes', 26, 20, 'yes');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (292, 102, 'yes', 37, 2000, 'yes');

-- *** STRUCTURE: `sym_fields_taglist` ***
DROP TABLE IF EXISTS `sym_fields_taglist`;
CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_taglist` ***

-- *** STRUCTURE: `sym_fields_textarea` ***
DROP TABLE IF EXISTS `sym_fields_textarea`;
CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_textarea` ***
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (50, 49, 'markdown_extra_with_smartypants', 15);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (47, 32, 'markdown_extra_with_smartypants', 15);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 27, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE: `sym_fields_upload` ***
DROP TABLE IF EXISTS `sym_fields_upload`;
CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_upload` ***
INSERT INTO `sym_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (9, 75, '/workspace/uploads', NULL);

-- *** STRUCTURE: `sym_members_roles` ***
DROP TABLE IF EXISTS `sym_members_roles`;
CREATE TABLE `sym_members_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_members_roles` ***
INSERT INTO `sym_members_roles` (`id`, `name`, `handle`) VALUES (1, 'Public', 'public');
INSERT INTO `sym_members_roles` (`id`, `name`, `handle`) VALUES (2, 'Administrator', 'administrator');
INSERT INTO `sym_members_roles` (`id`, `name`, `handle`) VALUES (3, 'Developer', 'developer');
INSERT INTO `sym_members_roles` (`id`, `name`, `handle`) VALUES (4, 'Client', 'client');
INSERT INTO `sym_members_roles` (`id`, `name`, `handle`) VALUES (5, 'Nobody', 'nobody');

-- *** STRUCTURE: `sym_members_roles_event_permissions` ***
DROP TABLE IF EXISTS `sym_members_roles_event_permissions`;
CREATE TABLE `sym_members_roles_event_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned NOT NULL,
  `event` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`,`event`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_members_roles_event_permissions` ***
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (5, 2, 'edit_issue', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (17, 3, 'edit_issue', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (29, 4, 'edit_issue', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (4, 5, 'login', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (6, 2, 'edit_issue', 'edit', 2);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (7, 2, 'edit_member', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (8, 2, 'edit_member', 'edit', 2);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (9, 2, 'edit_message', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (10, 2, 'edit_message', 'edit', 2);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (11, 2, 'edit_milestone', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (12, 2, 'edit_milestone', 'edit', 2);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (13, 2, 'edit_project', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (14, 2, 'edit_project', 'edit', 2);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (15, 2, 'login', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (16, 2, 'login', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (18, 3, 'edit_issue', 'edit', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (19, 3, 'edit_member', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (20, 3, 'edit_member', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (21, 3, 'edit_message', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (22, 3, 'edit_message', 'edit', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (23, 3, 'edit_milestone', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (24, 3, 'edit_milestone', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (25, 3, 'edit_project', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (26, 3, 'edit_project', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (27, 3, 'login', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (28, 3, 'login', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (30, 4, 'edit_issue', 'edit', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (31, 4, 'edit_member', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (32, 4, 'edit_member', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (33, 4, 'edit_message', 'create', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (34, 4, 'edit_message', 'edit', 1);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (35, 4, 'edit_milestone', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (36, 4, 'edit_milestone', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (37, 4, 'edit_project', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (38, 4, 'edit_project', 'edit', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (39, 4, 'login', 'create', 0);
INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (40, 4, 'login', 'edit', 0);

-- *** STRUCTURE: `sym_members_roles_forbidden_pages` ***
DROP TABLE IF EXISTS `sym_members_roles_forbidden_pages`;
CREATE TABLE `sym_members_roles_forbidden_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`,`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_members_roles_forbidden_pages` ***

-- *** STRUCTURE: `sym_pages` ***
DROP TABLE IF EXISTS `sym_pages`;
CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages` ***
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (82, NULL, 'Issue', 'issue', NULL, 'project/issue', 'issue_issue,issue_issue_messages,project_project,project_project_contributors,project_project_contributors_assignees,project_project_milestones', 'edit_issue,edit_message', 9);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (78, NULL, 'Project', 'project', NULL, 'project', 'project_project,project_project_contributors,project_project_contributors_assignees,project_project_issues,project_project_issues_filtered,project_project_issues_messages,project_project_milestones', NULL, 8);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 18);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 19);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (87, 82, 'New Issue', 'new', 'issue', 'project', 'project_project,project_project_contributors,project_project_contributors_assignees,project_project_milestones', 'edit_issue,edit_message', 10);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (86, NULL, 'Dashboard', 'dashboard', NULL, NULL, 'dashboard_projects,dashboard_projects_issues,dashboard_projects_issues_messages,dashboard_projects_milestones', NULL, 7);

-- *** STRUCTURE: `sym_pages_types` ***
DROP TABLE IF EXISTS `sym_pages_types`;
CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=706 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages_types` ***
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (689, 76, 'hidden');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (698, 86, 'index');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (690, 75, 'hidden');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (702, 78, 'hidden');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (705, 82, 'hidden');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (691, 75, 'maintenance');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (688, 76, 404);

-- *** STRUCTURE: `sym_sections` ***
DROP TABLE IF EXISTS `sym_sections`;
CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `entry_order` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_order_direction` enum('asc','desc') COLLATE utf8_unicode_ci DEFAULT 'asc',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections` ***
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Priority', 'priority', 5, 64, 'asc', 'no', 'Categorization');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Milestones', 'milestones', 1, NULL, 'asc', 'no', 'Projects');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Projects', 'projects', 0, 76, 'asc', 'no', 'Projects');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Category', 'category', 6, 63, 'asc', 'no', 'Categorization');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Issues', 'issues', 2, NULL, 'asc', 'no', 'Issues');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (13, 'Messages', 'messages', 3, 68, 'desc', 'no', 'Issues');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (14, 'Status', 'status', 4, 65, 'asc', 'no', 'Categorization');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (15, 'Members', 'members', 7, NULL, 'asc', 'no', 'Users');

-- *** STRUCTURE: `sym_sections_association` ***
DROP TABLE IF EXISTS `sym_sections_association`;
CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections_association` ***
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (294, 15, 98, 8, 30, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (293, 15, 98, 8, 29, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (281, 8, 26, 9, 33, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (301, 8, 26, 12, 39, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (295, 15, 98, 12, 40, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (296, 10, 35, 12, 41, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (297, 11, 36, 12, 42, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (298, 15, 98, 12, 43, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (299, 9, 31, 12, 44, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (303, 15, 98, 13, 50, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (304, 10, 35, 13, 73, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (305, 11, 36, 13, 52, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (306, 15, 98, 13, 53, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (307, 9, 31, 13, 54, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (309, 12, 37, 13, 55, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (300, 14, 57, 12, 58, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (308, 14, 57, 13, 59, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (302, 15, 98, 12, 84, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (290, 8, 26, 15, 100, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (291, 8, 26, 15, 101, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (292, 12, 37, 15, 102, 'no');

-- *** STRUCTURE: `sym_url_router` ***
DROP TABLE IF EXISTS `sym_url_router`;
CREATE TABLE `sym_url_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('route','redirect') COLLATE utf8_unicode_ci DEFAULT 'route',
  `http301` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_url_router` ***
INSERT INTO `sym_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (53, ':project/:issue', '/issue/:project/:issue', 'route', 'no');
INSERT INTO `sym_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (54, ':project/new', '/issue/new/:project', 'route', 'no');
INSERT INTO `sym_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (55, ':project', '/project/:project', 'route', 'no');
