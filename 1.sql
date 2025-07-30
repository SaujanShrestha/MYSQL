CREATE DATABASE swivtsql; 
USE swivtsql;
CREATE TABLE student(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT NOT NULL
	);
SELECT * FROM student;
INSERT INTO student
(id,name,age)
VALUES
(1001,"SAUJAN SHRESTHA",20);
INSERT INTO student
(id,name,age)
VALUES
(1002,"BENJAMIN RAJBAHAK",19);
INSERT INTO student
(id,name,age)
VALUES
(1003,"SANJAY BISTA",27);
INSERT INTO student
(id,name,age)
VALUES
(1004,"RAMESH TAMANG",21);
INSERT INTO student
(id,name,age)
VALUES
(1005,"KARAN BISHWOKARMA",26);
INSERT INTO student
(id,name,age)
VALUES
(1006,"AMRIT",26);
INSERT INTO student
(id,name,age)
VALUES
(1007,"NISSAN",26);
INSERT INTO student
(id,name,age)
VALUES
(1008,"BIMAL",24);
INSERT INTO student
(id,name,age)
VALUES
(1009,"SUJIT CHAUDHARY",26);
INSERT INTO student
(id,name,age)
VALUES
(1010,"COREY TAYLOR",52);


CREATE DATABASE WASD;
USE WASD;

CREATE TABLE abc1(
	id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT NOT NULL
)auto_increment=1000;

SELECT * FROM abc1;

INSERT INTO abc1
(first_name, last_name, age)
VALUES
('Saujan','Shrestha',20);