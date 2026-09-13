-- ==================================================
-- E-Commerce Sales Analysis
-- SQL Analysis
-- ==================================================

-- ==================================================
-- 1.Database Setup
-- ==================================================

CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;

-- ==================================================
-- 2.Data Verification
-- ==================================================

-- Check available tables
SHOW TABLES;

-- Check first 10 rows
SELECT *
FROM ecommerce_sales
LIMIT 10;

-- Check total number of rows
SELECT 
	COUNT(*) AS total_rows
FROM ecommerce_sales;

-- Check table structure and data types
DESCRIBE ecommerce_sales;

-- =============================================
-- 3. Overall Business KPIs
-- =============================================

-- Total Revenue
SELECT 
	ROUND(SUM(total_amount), 2) AS total_revenue
FROM ecommerce_sales;

-- Total Orders
SELECT 
	COUNT(DISTINCT order_id) AS total_orders
FROM ecommerce_sales;

-- Total Customers
SELECT 
	COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_sales;

-- Total Products
SELECT 
	COUNT(DISTINCT product_id) AS total_products
FROM ecommerce_sales;

-- Total Units Sold 
SELECT 
	SUM(quantity) AS total_units_sold
FROM ecommerce_sales;

-- Average Order value
SELECT 
	ROUND(SUM(total_amount) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM ecommerce_sales;

-- Overall return rate
SELECT 
	ROUND(AVG(return_flag) * 100, 2) AS return_rate 
FROM ecommerce_sales;

-- ================================================================
-- 4. Sales Performance
-- ================================================================

-- 4.1 Monthly revenue
SELECT 
	`year_month`,
    ROUND(SUM(`total_amount`), 2) AS revenue
FROM ecommerce_sales
GROUP BY `year_month`
ORDER BY `year_month`;

-- 4.2 Revenue by category
SELECT 
	category,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce_sales
GROUP BY category 
ORDER BY revenue DESC;

-- 4.3 Revenue by region
SELECT 
	region, 
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY revenue DESC;

-- 4.4 Units sold by category
SELECT 
	category, 
    SUM(quantity) AS units_sold
FROM ecommerce_sales
GROUP BY category
ORDER BY units_sold DESC;

-- ===================================================
-- 5. Product Performance
-- ====================================================

-- 5.1 Top 10 products by Revenue
SELECT 
	product_id, 
ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce_sales
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

-- 5.2 Revenue per unit by category
SELECT 
	category,
    ROUND(SUM(total_amount), 2) AS revenue,
    SUM(quantity) AS units_sold,
    ROUND(SUM(total_amount) / SUM(quantity), 2) AS revenue_per_unit
FROM ecommerce_sales
GROUP BY category
ORDER BY revenue_per_unit DESC;

-- =====================================================
-- 6. Customer Analysis
-- =====================================================
-- 6.1 Top 10 customers by Revenue
SELECT 
	customer_id, 
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 10;

-- 6.2 Purchasing behavior by gender
SELECT 
	customer_gender,
    COUNT(DISTINCT customer_id) AS customers,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(total_amount), 2) AS revenue,
    SUM(quantity) AS units_purchased,
    SUM(total_amount) / COUNT(DISTINCT order_id) AS average_order_value
FROM ecommerce_sales
GROUP BY customer_gender
ORDER BY revenue DESC;

-- 6.3 Purchasing Behavior by Age Group
SELECT 
	age_group,
	COUNT(DISTINCT customer_id) AS customers,
	COUNT(DISTINCT order_id) AS orders,
	ROUND(SUM(total_amount), 2) AS revenue,
	SUM(quantity) AS units_purchased,
	ROUND(SUM(total_amount) / COUNT(DISTINCT order_id), 2) AS average_order_value,
	ROUND(SUM(total_amount) / COUNT(DISTINCT customer_id), 2) AS revenue_per_customer
FROM ecommerce_sales
GROUP BY age_group
ORDER BY revenue_per_customer DESC;

-- 6.4 Average orders per customer
SELECT
	ROUND(COUNT(DISTINCT order_id) * 1.0 /
    COUNT(DISTINCT customer_id), 2) AS average_orders_per_customer
FROM ecommerce_sales;

-- 6.5 Average revenue per customer
SELECT 
	ROUND(SUM(total_amount) * 1.0 /
    COUNT(DISTINCT customer_id), 2) AS average_revenue_per_customer
FROM ecommerce_sales;

-- ======================================================
-- 7. Delivery & Operations Analysis
-- ======================================================

-- 7.1 Overall average delivery time
SELECT 
	ROUND(AVG(delivery_time_days), 2) AS average_delivery_time
FROM ecommerce_sales;

-- 7.2 Delivery time by region
SELECT 
	region, 
    ROUND(AVG(delivery_time_days), 2) AS average_delivery_time
FROM ecommerce_sales
GROUP BY region
ORDER BY average_delivery_time DESC;

-- 7.3 Average delivery time by category
SELECT 
	category,
    ROUND(AVG(delivery_time_days), 2) AS average_delivery_time
FROM ecommerce_sales
GROUP BY category
ORDER BY average_delivery_time DESC;

-- =======================================================
-- 8. Return Analysis
-- =======================================================

-- 8.1 Return rate by category
SELECT 
	category, 
    ROUND(AVG(return_flag) *100, 2) AS return_rate
FROM ecommerce_sales
GROUP BY category
ORDER BY return_rate DESC;

-- 8.2 Return rate by region
SELECT 
	region,
    ROUND(AVG(return_flag) * 100, 2) AS return_rate
FROM ecommerce_sales
GROUP BY region
ORDER BY return_rate DESC;

-- ==================================================
-- 9. Discount & Profitability Analysis
-- ==================================================

-- 9.1 Sales performance by discount level
SELECT
	discount,
	COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(total_amount), 2) AS revenue,
    SUM(quantity) AS units_sold,
    ROUND(SUM(total_amount) / COUNT(DISTINCT order_id), 2) AS average_order_value,
    ROUND(AVG(profit_margin), 2) AS average_profit_margin
FROM ecommerce_sales
GROUP BY discount
ORDER BY discount;

