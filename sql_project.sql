--create data base 

--create table

CREATE TABLE retail_sales
(
        transactions_id	INT PRIMARY KEY,
        sale_date	DATE,
        sale_time	TIME,
        customer_id	INT,
        gender	VARCHAR(20),
        age	INT,
        category VARCHAR(15),	
        quantiy	INT,
        price_per_unit	FLOAT,
        cogs	FLOAT,
        total_sale FLOAT
) 

--To verify table created or no

SELECT * FROM retail_sales

--Checking is there any null value to all column 
SELECT * FROM retail_sales
where 
    transactions_id IS NULL 
    OR  
    sale_date IS NULL 
    OR
    sale_time IS NULL
    OR
    customer_id IS NULL
    OR
    gender IS NULL
    OR
    AGE IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    price_per_unit IS NULL
    OR 
    cogs IS NULL
    OR
    total_sale IS NULL

--Deleting the null value

DELETE FROM retail_sales
where 
    transactions_id IS NULL 
    OR  
    sale_date IS NULL 
    OR
    sale_time IS NULL
    OR
    customer_id IS NULL
    OR
    gender IS NULL
    OR
    AGE IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    price_per_unit IS NULL
    OR 
    cogs IS NULL
    OR
    total_sale IS NULL


--  Query-1 To find the number of sales per month, group the sales data by month and count the total sales for each.

SELECT 
    EXTRACT(month FROM sale_date) AS MONTH,
    COUNT(transactions_id) AS TOTAL_SALES
FROM retail_sales
    GROUP BY month
    ORDER BY month DESC

/*Query-2 To determine which category had the highest sales, 
analyze the sales data by grouping it by category and identifying the one with the highest total sales.*/
SELECT 
    category,
    COUNT(category) AS TOTAL_COUNT,
    SUM(TOTAL_SALE) AS TOTAL_SALES
FROM retail_sales
    GROUP BY category
    ORDER BY TOTAL_SALES DESC

-- Query-3  The top 10 customer is determined based on their Customer ID
SELECT 
    DISTINCT customer_id,
    SUM(customer_id) AS countofcustomer
FROM retail_sales
    GROUP by customer_id
    ORDER by countofcustomer DESC 
    LIMIT 10   

-- Query-4 The highest sales during [Morning/Afternoon/Evening]
SELECT 
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 18 AND 23 THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day,
    ROUND(AVG(total_sale)) AS average_sales
FROM
    retail_sales
    GROUP BY time_of_day
    ORDER BY average_sales DESC

-- Query-5  Age group

SELECT 
    DISTINCT age,
    COUNT(age) AS count_of_age
FROM
    retail_sales
    GROUP BY age
    ORDER BY count_of_age DESC

-- Query-6 The highest Profit via Category
SELECT
    category,
    ROUND(SUM(total_sale-cogs)) AS Profit
FROM
    retail_sales
    GROUP BY category
    ORDER BY Profit DESC




