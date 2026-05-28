CREATE DATABASE sales_project;
USE sales_project;
CREATE TABLE sales (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    profit_margin DECIMAL(10,2),
    profit_status VARCHAR(20),
    sales_category VARCHAR(20)
);
SELECT * FROM sales LIMIT 10; 
SELECT SUM(sales) AS total_revenue
FROM sales; 
SELECT SUM(profit) AS total_profit
FROM sales;
SELECT COUNT(*) AS total_orders
FROM sales; 
SELECT region,
       SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT region,
       SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;
SELECT category,
       SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
SELECT COUNT(*) FROM sales;
TRUNCATE TABLE sales;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 10;
SELECT SUM(sales) AS total_revenue
FROM sales;
SELECT SUM(profit) AS total_profit
FROM sales;
SELECT category,
       SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;