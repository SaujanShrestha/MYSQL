CREATE DATABASE identity;
USE identity;
DROP TABLE asdf;
CREATE TABLE asdf(
	id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR (50),
    age INT CHECK (age >=18),
    gender VARCHAR(1),
    mobile_number BIGINT
)auto_increment=4000;

SELECT * From asdf;

 INSERT INTO asdf
 (first_name, last_name, age, gender, mobile_number)
 VALUES
 ('James', 'Shrestha', 18, 'M', 9849074290),
 ('Saujan', 'Shrestha', 20, 'M', 9706459339),
 ('Alisha', 'Rai', 20, 'F', 9867453120),
 ('Hari', 'Shrestha', 22, 'O', 9808000701),
 ('Madan', 'Shrestha', 85, 'M', 9876543210),
 ('Madan', 'Shrestha', 85, 'M', 9876543210),
 ('Sanjay', 'Bista', 27, 'M', 9758462103),
 ('Sagar', 'Magar', 65, 'M', 9764318525),
 ('Sara', 'Pariyar', 25, 'F', 9832541002),
 ('Saroj', 'Pariyar', 27, 'M', 9818283868),
 ('Eva', 'Shrestha', 21, 'F', 9865432179);
 
SELECT * From asdf WHERE age <=50 AND gender = 'M';
SELECT * From asdf WHERE age BETWEEN 18 AND 25;
SELECT * From asdf WHERE gender IN ('M','F');
SELECT * From asdf WHERE gender NOT IN ('M','F');

DELETE FROM asdf WHERE id=4005;

SELECT * FROM asdf LIMIT 3;
SELECT first_name FROM asdf ORDER BY age DESC LIMIT 1;