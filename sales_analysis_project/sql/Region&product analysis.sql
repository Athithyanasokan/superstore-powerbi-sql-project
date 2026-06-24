-- Region Analysis --

-- Sales by Region --

select region, round(sum(sales),2) as total_region_sales from orders group by region order by total_region_sales ;

-- Profit by Region --
select region, round(sum(profit),2) as total_region_profit from orders group by region order by total_region_profit ;


-- Project Analysis --

-- Top 10 Sold Product --

select product_name, round(sum(sales),0) as total_product_sales from orders group by product_name order by total_product_sales desc limit 10;

-- Most profitable product --

select product_name, round(sum(profit),0) as total_product_profit from orders group by product_name  order by total_product_profit desc limit 10;

ALTER TABLE orders
MODIFY order_date DATE;

SET SQL_SAFE_UPDATES = 0;
UPDATE orders
SET order_date_new = STR_TO_DATE(order_date, '%m/%d/%Y');

UPDATE orders
SET ship_date_clean = STR_TO_DATE(ship_date, '%m/%d/%Y');

select order_date_new from orders;
alter table orders drop column order_date;
alter table orders drop column ship_date;

alter table orders change order_date_new order_date date;
alter table orders change ship_date_clean ship_date date;

-- Monthly trends --

SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM orders
GROUP BY Year, Month
ORDER BY Year, Month;






