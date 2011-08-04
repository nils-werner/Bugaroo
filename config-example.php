<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '17',
			'allow_page_subscription' => '1',
			'lang' => 'en',
			'version' => '2.2.2',
			'pages_table_nest_children' => 'yes',
			'cookie_prefix' => 'sym-',
			'strict_error_handling' => 'yes',
			'session_gc_divisor' => '10',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Bugaroo',
			'useragent' => 'Symphony/2.2.2',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### DATABASE ######
		'database' => array(
			'character_set' => 'utf8',
			'character_encoding' => 'utf8',
			'runtime_character_set_alter' => '1',
			'query_caching' => 'default',
			'host' => 'localhost',
			'port' => '3306',
			'user' => '',
			'password' => null,
			'db' => 'bugaroo',
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'yes',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'H:i',
			'date_format' => 'd F Y',
			'timezone' => 'Europe/Berlin',
			'datetime_separator' => ' ',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### GLOBALRESOURCELOADER ######
		'globalresourceloader' => array(
			'ds-names' => 'index_assignee,index_category,index_issues,index_milestone,index_priority,index_projects,index_status',
			'ds-pages' => '75,76',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0775',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0775',
		),
		########


		###### MEMBERS ######
		'members' => array(
			'cookie-prefix' => 'sym-members',
		),
		########


		###### DUMP_DB ######
		'dump_db' => array(
			'last_sync' => '2011-08-03T17:29:24+02:00',
		),
		########
	);
