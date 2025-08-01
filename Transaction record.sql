CREATE DATABASE Transactions;
USE Transactions;
DROP TABLE orders;

CREATE TABLE orders (
    ord_no INT,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

SELECT * FROM orders;

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26,  '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6,'2012-07-27', 3007, 5001),
(70008, 5760,'2012-09-10', 3002, 5001),
(70010, 1983.43,'2012-10-10', 3004, 5006),
(70003, 2480.4,'2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29,  '2012-08-17', 3003, 5007),
(70013, 3045.6,'2012-04-25', 3002, 5001);

SELECT SUM(purch_amt) AS total_purchase FROM orders;
SELECT AVG(purch_amt) AS avg_purchase FROM orders;
SELECT COUNT(DISTINCT salesman_id) AS unique_salespeople FROM orders;
SELECT MAX(purch_amt) AS max_purchase FROM orders;
SELECT MIN(purch_amt) AS min_purchase FROM orders;

SELECT customer_id, MAX(purch_amt) AS max_purchase
FROM orders
GROUP BY customer_id;

SELECT customer_id, ord_date, MAX(purch_amt) AS max_purchase
FROM orders
GROUP BY customer_id, ord_date;

SELECT salesman_id, MAX(purch_amt) AS max_purchase
FROM orders
WHERE ord_date = '2012-08-17'
GROUP BY salesman_id;

SELECT customer_id, ord_date, MAX(purch_amt) AS max_purchase
FROM orders
GROUP BY customer_id, ord_date;

SELECT customer_id, ord_date, MAX(purch_amt) AS max_purchase
FROM orders
WHERE purch_amt BETWEEN 2000 AND 6000
GROUP BY customer_id, ord_date;

SELECT COUNT(*) AS order_count
FROM orders
WHERE ord_date = '2012-08-17';