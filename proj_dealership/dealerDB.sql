DROP DATABASE IF EXISTS dealership;
CREATE DATABASE dealership;
USE dealership;

DROP TABLE IF EXISTS Vehicle;
CREATE TABLE Vehicle (
	id LONG,
	name VARCHAR(50),
	type VARCHAR(50),
    brand VARCHAR(50),
    year INT,
    mileage INT
);

DROP TABLE IF EXISTS User;
CREATE TABLE User (
	id LONG,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)
);

INSERT INTO User(id, first_name, last_name, email, password) VALUES(1, 'Tester1', 'Alpha', 'test1@mail.com', 'password1');
INSERT INTO User(id, first_name, last_name, email, password) VALUES(2, 'Tester2', 'Delta', 'test2@mail.com', 'password2');
INSERT INTO User(id, first_name, last_name, email, password) VALUES(3, 'Tester3', 'Gamma', 'test3@mail.com', 'password3');

INSERT INTO Vehicle(id, name, type, brand, year, mileage) VALUES(1, 'Honda Accord', 'sedan', 'Honda', 2021, 13000);
INSERT INTO Vehicle(id, name, type, brand, year, mileage) VALUES(2, 'Honda Civic', 'sedan', 'Honda', 2017, 14000);
INSERT INTO Vehicle(id, name, type, brand, year, mileage) VALUES(3, 'Toyota Camry', 'sedan', 'Toyota', 2018, 15000);
COMMIT;