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