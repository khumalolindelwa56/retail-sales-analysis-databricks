-- Use database
USE retail_db;

-- View with calculated revenue
CREATE VIEW retail_sales_view AS
SELECT *,
       quantity * unit_price AS revenue
FROM retail_sales;

-- Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM retail_sales_view;

-- Average Order Value
SELECT ROUND(SUM(revenue) / COUNT(*), 2) AS avg_order_value
FROM retail_sales_view;

-- Revenue by Category
SELECT 
    category,
    SUM(revenue) AS total_amount
FROM retail_sales_view
GROUP BY category
ORDER BY total_amount DESC;

-- Top 5 Products by Revenue
SELECT 
    product_name,
    SUM(revenue) AS total_amount
FROM retail_sales_view
GROUP BY product_name
ORDER BY total_amount DESC
LIMIT 5;

-- Sales by Location
SELECT 
    store_location,
    SUM(revenue) AS total_amount
FROM retail_sales_view
GROUP BY store_location
ORDER BY total_amount DESC;

-- Cleaned Location Analysis
SELECT 
    CASE 
        WHEN store_location = 'Nelspruit' THEN 'Mbombela'
        ELSE store_location
    END AS cleaned_location,
    SUM(revenue) AS total_amount
FROM retail_sales_view
GROUP BY cleaned_location
ORDER BY total_amount DESC;

-- Payment Method Analysis
SELECT 
    payment_method,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY payment_method
ORDER BY total_transactions DESC;

-- Daily Sales Trend
SELECT 
    order_date,
    SUM(revenue) AS total_amount
FROM retail_sales_view
GROUP BY order_date
ORDER BY order_date;

-- Highest Single Order
SELECT 
    order_id,
    product_name,
    store_location,
    revenue
FROM retail_sales_view
ORDER BY revenue DESC
LIMIT 1;

-- Gender Spending Analysis
SELECT 
    customer_gender,
    SUM(revenue) AS total_spent
FROM retail_sales_view
GROUP BY customer_gender
ORDER BY total_spent DESC;

-- Quantity vs Revenue by Category
SELECT 
    category,
    SUM(quantity) AS total_quantity,
    SUM(revenue) AS total_revenue
FROM retail_sales_view
GROUP BY category;
