Create Database superstore
use superstore

/* Q1.Total Sales & Profit */
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM super_store;

/*Q2.Sales by Category */
SELECT category, 
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM super_store
GROUP BY category
ORDER BY total_sales DESC;

/*Q3.Top 5 Products by Sales */
select Product_Name,sum(sales) as revenue from super_store
       group by Product_Name order by revenue

/*Q4.Sales by Region */
select Region, sum(sales) as total_sales from Super_store
        group by region order by total_sales

/* Q5. Monthly Sales Trend */
SELECT 
    Year(Order_date) AS year,
    Month(Order_date) AS month,
    SUM(sales) AS revenue
FROM Super_store
GROUP BY  Year(Order_date),Month(Order_date)
ORDER BY Year(Order_date), Month(Order_date);

/* WINDOW FUNCTION*/
/*Q1.Rank Products by Sales*/
SELECT 
    Product_name,
    SUM(sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS rank
FROM Super_store
GROUP BY Product_name;

/* Q2.Top 3 Products in Each Category */
SELECT *
FROM (
    SELECT 
        category,
        product_name,
        SUM(sales) AS total_sales,
        RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS rank
    FROM Super_store
    GROUP BY category, product_name
) t
WHERE rank <= 3;

/*Q3. Running Total of Sales */
SELECT order_date, SUM(sales) AS daily_sales,SUM(SUM(sales)) OVER (ORDER BY order_date) AS running_total
FROM super_store
GROUP BY order_date;

/* Q4.Sales Difference (LAG) */
SELECT order_date, SUM(sales) AS sales,
LAG(SUM(sales)) OVER (ORDER BY order_date) AS previous_day,
SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY order_date) AS difference
FROM super_store
GROUP BY order_date;


    