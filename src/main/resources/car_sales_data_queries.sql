-- create database CarSales
CREATE DATABASE IF NOT EXISTS `CarSales`;

-- Create a table sales person in Car sales database
-- added sales_id, FirstName, City, Commission rate as columns
--added sales_id as primary key
USE `Carsales`;
CREATE TABLE IF NOT EXISTS `Salesperson` (
    sales_id int not null primary key,
    first_name varchar(10),
    city varchar(10),
    commision_rate int
);

---Insert the details of sales person john
SELECT * FROM salesperson;
-- insert the details of the sales person john
INSERT INTO `CarSales`.`salesperson` VALUES('1001','John','London','12');
--insert the details of the sales person Bob
INSERT INTO `CarSales`.`salesperson` VALUES('1002', 'Bob','SanJose','13');
-- insert the details of the sales person Judith
INSERT INTO `CarSales`.`salesperson` VALUES('1004', 'Judith','London','11');
-- insert the details of the sales person Robbin
INSERT INTO `CarSales`.`salesperson` VALUES('1007', 'Robbin','Barcelona','15');
-- insert the details of the sales person Harry
INSERT INTO `CarSales`.`salesperson` VALUES('1003', 'Harry','NewYork','10');
-- insert the details of the sales person James
INSERT INTO `CarSales`.`salesperson` VALUES('1005', 'James','London','26');
-- insert the details of the sales person Charles
INSERT INTO `CarSales`.`salesperson` VALUES('1008', 'Charles','Florida','0');

-- fetch all the details of the sales persons
SELECT * FROM `salesperson`;

-- retrieve the salesperson with the first name Robin and city Barcelona.
SELECT first_name, city FROM `salesperson` WHERE first_name = 'Robbin' AND city = 'Barcelona';

-- get the city and commission rate of John
SELECT  city, commision_rate FROM `salesperson` WHERE first_name = 'John';

-- Fetch all the details of salespersons with a commission rate greater than 15
SELECT * FROM `salesperson` WHERE commision_rate> '15';

-- Fetch all the details of salespersons with a commission rate between 10 and 20.
SELECT * FROM `salesperson` WHERE commision_rate BETWEEN '10' AND '20';

-- Retrieve the first name and city of salespersons who have a commission rate of more than 25.
SELECT first_name, city FROM `salesperson` WHERE commision_rate > '25';

-- Get the first name and city of salespersons who have a commission rate as 0.
SELECT first_name, city FROM `salesperson` WHERE commision_rate = '0';