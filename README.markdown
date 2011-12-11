Bugaroo
=======

A Symphony-powered issue tracker.

Installation
------------

This repository does not use the standard `install.php` and `install.sql` files for installation. Instead, you have to import the SQL-dumps and create the `manifest/` directory and its structure as well as `config.php` yourself. The repository includes a `config-example.php` file that only needs to be modified to fit your installation (i.e. your MySQL credentials).

 - Clone the repository to your server
   
         git clone git://github.com/nils-werner/Bugaroo.git
 
 - Update all submodules
   
         git submodule update --init
 
 - Flush data.sql and authors.sql into your database
   
         mysql bugaroo < authors.sql
         mysql bugaroo < data.sql
 
 - Create manifest, manifest/logs, manifest/cache and manifest/tmp
   
         mkdir manifest manifest/logs manifest/cache manifest/tmp
         chmod o+w workspace/ manifest/ -R
 
 - Copy config-example.php to manifest/config.php and insert your DB credentials
   
         cp config-example.php manifest/config.php
 
 - Copy .htaccess-example to .htaccess
   
         cp .htaccess-example .htaccess
 
 - Login using bugaroo both as username and password
