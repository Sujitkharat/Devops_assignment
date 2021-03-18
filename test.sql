CREATE DATABASE IF NOT EXISTS pucsdStudent;

USE pucsdStudent;

CREATE USER IF NOT EXISTS 'pucsd'@'localhost' IDENTIFIED BY 'pucsd';

GRANT ALL PRIVILEGES ON * . * TO 'pucsd'@'localhost';
FLUSH PRIVILEGES;

DROP TABLE IF EXISTS studentData;

CREATE TABLE IF NOT EXISTS studentData
(
Name varchar(20) NOT NULL,
Roll_no varchar(20) NOT NULL,
Address varchar(40) NOT NULL,
Mobile varchar(10) NOT NULL,
PAN_Number varchar(10) NOT NULL
);

INSERT INTO studentData VALUES('Sujit Kharat','N19111020','Karmala','8308112761','SBKPN2712K');
INSERT INTO studentData VALUES('Onkar Bagal','N19111005','Bhigwan','7028376265','BOBPN1357P');
INSERT INTO studentData VALUES('Ankita Uge','N19111041','Yavatmal','7038615227','AAUJP4397L');
INSERT INTO studentData VALUES('Chetan Patil','R19112032','Shahada','8600878829','CSPKN9548T');
INSERT INTO studentData VALUES('Archana Gangurde','R19112012','Nashik','7030811140','APGNK9089S');
