CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

CREATE TABLE IF NOT EXISTS vendors (
    vendor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    ratings FLOAT(4,2),
    no_of_reviews VARCHAR(50),
    listing VARCHAR(255),
    logo VARCHAR(255),
    price VARCHAR(10),
    delivery_time VARCHAR(45),
    delivery_fee VARCHAR(20),
    address VARCHAR(255),
    latitude FLOAT(10,6),
    longitude FLOAT(10,6),
    PRIMARY KEY (vendor_id)
);

CREATE TABLE IF NOT EXISTS cuisines (
    cuisines_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45),
    PRIMARY KEY (cuisines_id)
);

CREATE TABLE IF NOT EXISTS vendor_cuisines (
    vendor_cuisines_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    vendor_id INT UNSIGNED NOT NULL,
    cuisines_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (vendor_cuisines_id),
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id),
    FOREIGN KEY (cuisines_id) REFERENCES cuisines(cuisines_id)
);

CREATE TABLE IF NOT EXISTS dishes (
    dishes_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT NULL,
    price FLOAT(6,2),
    discount FLOAT(6,2) NULL,
    image VARCHAR(255),
    availability BOOLEAN,
    vendor_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (dishes_id),
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

CREATE TABLE IF NOT EXISTS supermarkets (
    supermarkets_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    listing VARCHAR(255),
    logo VARCHAR(255),
    delivery_time VARCHAR(45),
    delivery_fee VARCHAR(20),
    address VARCHAR(255),
    latitude FLOAT(10,6),
    longitude FLOAT(10,6),
    PRIMARY KEY (supermarkets_id)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT NULL,
    price FLOAT(6,2),
    discount FLOAT(6,2) NULL,
    base_image VARCHAR(255),
    availability BOOLEAN,
    supermarkets_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (supermarkets_id) REFERENCES supermarkets(supermarkets_id)
);
