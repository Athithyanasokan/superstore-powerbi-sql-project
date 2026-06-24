CREATE DATABASE sales_analysis;
USE sales_analysis;

SELECT 
    *
FROM
    orders;
    


ALTER TABLE orders CHANGE `Order Date` order_date varchar(20);

ALTER TABLE orders CHANGE `Ship Date` ship_date VARCHAR(20);

ALTER TABLE orders CHANGE `Customer ID` customer_id VARCHAR(20);

ALTER TABLE orders CHANGE `Customer Name` customer_name VARCHAR(100);

ALTER TABLE orders CHANGE `Ship Mode` ship_mode VARCHAR(100);

alter table orders change `Postal Code` postal_code varchar(20);

alter table orders change `Sub-Category` sub_category varchar(20);

alter table orders drop column order_date_clean;

SHOW TABLES;

SELECT 
    *
FROM
    orders
WHERE
    sales IS NULL;

-- KPI --

SELECT 
    ROUND(SUM(sales), 0) AS total_sales
FROM
    orders;

-- total profit --
SELECT 
    ROUND(SUM(profit), 0) AS total_profit
FROM
    orders;

-- total orders--
SELECT 
    COUNT(*)
FROM
    orders;
    
show columns from orders;