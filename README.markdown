Bugaroo
=======

A Symphony-powered issue tracker.

Installation
------------

This repository does not use the standard `install.php` and `install.sql` files for installation. Instead, you have to import the SQL-dumps and create the `manifest/` directory and its structure as well as `config.php` yourself. The repository includes a `config-example.php` file that only needs to be modified to fit your installation (i.e. your MySQL credentials).

 1. Clone the repository to your server
   
         git clone git://github.com/nils-werner/Bugaroo.git
 
 2. Update all submodules
   
         git submodule update --init
 
 3. Flush data.sql and authors.sql into your database
   
         mysql bugaroo < authors.sql
         mysql bugaroo < data.sql
 
 4. Create manifest, manifest/logs, manifest/cache and manifest/tmp
   
         mkdir manifest manifest/logs manifest/cache manifest/tmp
         chmod o+w workspace/ manifest/ -R
 
 5. Copy config-example.php to manifest/config.php and insert your DB credentials
   
         cp config-example.php manifest/config.php
         vim manifest/config.php
 
 6. Copy .htaccess-example to .htaccess
   
         cp .htaccess-example .htaccess
 
 - Login using `bugaroo` both as username and password
