-- create database for the dynamic site
CREATE DATABASE IF NOT EXISTS dynamic;

-- create a new user for the Web app
DELETE FROM mysql.user WHERE User = 'webuser';
CREATE USER 'webuser'@'%' IDENTIFIED BY 'vagrantrocks';

-- grant only the necessary privileges to our new user
GRANT SELECT, INSERT, UPDATE, DELETE ON dynamic.* TO 'webuser'@'%';

-- make this our active database
USE dynamic;

-- create a table to store our wish list items
DROP TABLE IF EXISTS `WishListItem`;
CREATE TABLE IF NOT EXISTS `WishListItem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(255),

  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- start with some data in the table
INSERT INTO WishListItem (name, description) VALUES ('CD book', 'A guide to Continuous Delivery');
INSERT INTO WishListItem (name, description) VALUES ('The Phoenix Project', 'An IT Ops story.');
INSERT INTO WishListItem (name, description) VALUES ('Zero to One', 'Notes on Startups, or How to Build the Future');
