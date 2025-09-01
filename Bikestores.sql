#Total revenue and Total units sold
SELECT 
    SUM(revenue) AS total_revenue,
    SUM(total_units) AS total_units
FROM bike_stores;


# Top 10 customers revenue
SELECT 
    customers,
    SUM(revenue) AS total_spent
FROM bike_stores
GROUP BY customers
ORDER BY total_spent DESC
LIMIT 10;

#Revenue by Product Category
SELECT 
    category_name,
    SUM(revenue) AS category_revenue
FROM bike_stores
GROUP BY category_name
ORDER BY category_revenue DESC;

#Monthly Sales Trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(order_date, '%m/%d/%Y'), '%Y-%m') AS month,
    SUM(revenue) AS monthly_revenue
FROM bike_stores
GROUP BY month
ORDER BY month;

#Revenue by Store
SELECT 
    store_name,
    SUM(revenue) AS store_revenue
FROM bike_stores
GROUP BY store_name
ORDER BY store_revenue DESC;

#Best-Selling Products
SELECT 
    product_name,
    SUM(total_units) AS units_sold,
    SUM(revenue) AS product_revenue
FROM bike_stores
GROUP BY product_name
ORDER BY product_revenue DESC
LIMIT 10;

#Sales by Brand
SELECT 
    brand_name,
    SUM(revenue) AS brand_revenue
FROM bike_stores
GROUP BY brand_name
ORDER BY brand_revenue DESC;










