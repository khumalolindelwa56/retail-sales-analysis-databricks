# retail-sales-analysis-databricks
Retail sales analysis project using Databricks SQL to uncover revenue trends, product performance, customer behavior, and location insights.

# Retail Sales Analysis in Databricks

## Project Overview
This project analyzes retail sales data using Databricks SQL to uncover business insights such as total revenue, top-performing products, category performance, customer spending behavior, and sales trends.

## Objectives
The main objectives of this project were:
- To analyze total sales revenue
- To identify top-performing product categories
- To determine the highest-selling products
- To examine customer purchasing patterns
- To evaluate sales by location and payment method
- To track daily sales trends

## Tools Used
- Databricks
- SQL
- Excel / CSV
- GitHub

## Dataset Description
The dataset contains retail transaction data with the following columns:
- order_id
- order_date
- product_name
- category
- store_location
- customer_gender
- quantity
- unit_price
- payment_method

A calculated revenue field was created in a SQL view:
- revenue = quantity * unit_price

## SQL Analysis Performed

### 1. Total Revenue
Calculated the total revenue generated from all retail sales.

### 2. Average Order Value
Calculated the average amount spent per order.

### 3. Revenue by Category
Analyzed which product categories generated the most revenue.

### 4. Top 5 Products by Revenue
Identified the top-performing products based on total revenue.

### 5. Sales by Location
Compared revenue across store locations.

### 6. Payment Method Analysis
Evaluated which payment methods were used the most.

### 7. Daily Sales Trend
Tracked how sales revenue changed over time.

### 8. Gender Spending Analysis
Compared total spending between male and female customers.

### 9. Quantity vs Revenue by Category
Analyzed which categories sold the highest quantity and which generated the most revenue.

## Data Cleaning
A data quality issue was identified where "Nelspruit" and "Mbombela" referred to the same location. This was standardized during analysis using a CASE statement.

## Key Insights
- Some categories generated high revenue with lower quantities, showing high-value products.
- Other categories sold more units but contributed less revenue, showing lower-priced products.
- Customer and payment behavior patterns could be identified from the sales data.
- Location-based revenue analysis helped show top-performing areas.

## Conclusion
This project demonstrates how SQL in Databricks can be used to perform end-to-end retail sales analysis, from raw transaction data to business insights. It also highlights important data analysis skills such as aggregation, grouping, trend analysis, and data cleaning.

## Author
Lindlewa Khumalo
