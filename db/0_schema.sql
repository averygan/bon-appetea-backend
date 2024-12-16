CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

CREATE TABLE IF NOT EXISTS vendors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    ratings FLOAT(4,2),
    noOfReviews VARCHAR(50),
    listing VARCHAR(255),
    logo VARCHAR(255),
    price VARCHAR(10),
    deliveryTime VARCHAR(45),
    deliveryFee VARCHAR(20),
    address VARCHAR(255),
    latitude FLOAT(10,6),
    longitude FLOAT(10,6),
    cuisine VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS dishes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT NULL,
    price FLOAT(6,2),
    discount FLOAT(6,2) NULL,
    image VARCHAR(255),
    availability BOOLEAN,
    vendorID INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (vendorID) REFERENCES vendors(id)
);

CREATE TABLE IF NOT EXISTS supermarkets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    listing VARCHAR(255),
    logo VARCHAR(255),
    deliveryTime VARCHAR(45),
    deliveryFee VARCHAR(20),
    address VARCHAR(255),
    latitude FLOAT(10,6),
    longitude FLOAT(10,6),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS products (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT NULL,
    price FLOAT(6,2),
    discount FLOAT(6,2) NULL,
    baseImage VARCHAR(255),
    availability BOOLEAN,
    supermarketID INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (supermarketID) REFERENCES supermarkets(id)
);
