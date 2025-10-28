create database sales;
use sales;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2022-01-15', 250, 'P001'),
(1002, '2022-01-22', 180, 'P002'),
(1003, '2022-02-03', 320, 'P003'),
(1004, '2022-02-20', 210, 'P001'),
(1005, '2022-03-05', 400, 'P004'),
(1006, '2022-03-18', 150, 'P002'),
(1007, '2022-04-02', 275, 'P005'),
(1008, '2022-04-12', 310, 'P003'),
(1009, '2022-05-07', 450, 'P006'),
(1010, '2022-05-21', 290, 'P001'),
(1011, '2022-06-04', 370, 'P004'),
(1012, '2022-06-19', 220, 'P005'),
(1013, '2022-07-10', 310, 'P003'),
(1014, '2022-07-27', 460, 'P006'),
(1015, '2022-08-09', 190, 'P002'),
(1016, '2022-08-25', 330, 'P004'),
(1017, '2022-09-05', 280, 'P005'),
(1018, '2022-09-18', 400, 'P003'),
(1019, '2022-10-03', 500, 'P006'),
(1020, '2022-10-20', 210, 'P001');

SELECT * FROM online_sales LIMIT 10;

SELECT order_id,order_date,DATE_FORMAT(order_date,'%M') as Month FROM  online_sales;
 
SELECT DATE_FORMAT(order_date, '%M %Y') AS month_year,SUM(amount) AS total_revenue FROM online_sales GROUP BY month_year;

SELECT YEAR(order_date) AS sales_year,SUM(amount) AS total_revenue FROM online_sales GROUP BY sales_year;

SELECT product_id,COUNT(DISTINCT order_id) AS total_order FROM online_sales GROUP BY product_id;

SELECT order_id, order_date, amount, product_id FROM online_sales ORDER BY order_date DESC;

SELECT order_id, product_id, amount, order_date FROM online_sales ORDER BY amount DESC LIMIT 10;




