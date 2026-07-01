-- View all records
SELECT * FROM sales;

-- Display first 10 records
SELECT * FROM sales
LIMIT 10;

-- Sales greater than 1000
SELECT *
FROM sales
WHERE sales > 1000;

-- Order by Sales
SELECT *
FROM sales
ORDER BY sales DESC;

-- Total Sales by Category
SELECT Category,
       SUM(sales) AS Total_Sales
FROM sales
GROUP BY Category;

-- Categories with Total Sales > 100000
SELECT Category,
       SUM(sales) AS Total_Sales
FROM sales
GROUP BY Category
HAVING SUM(sales) > 100000;

-- Subquery
SELECT *
FROM sales
WHERE sales > (
    SELECT AVG(sales)
    FROM sales
);

-- CTE
WITH CategorySales AS (
    SELECT Category,
           SUM(sales) AS TotalSales
    FROM sales
    GROUP BY Category
)
SELECT * FROM CategorySales;

-- Window Function
SELECT
    "Product Name",
    sales,
    RANK() OVER (ORDER BY sales DESC) AS SalesRank
FROM sales;

-- Create View
CREATE VIEW TopSales AS
SELECT
    "Product Name",
    sales
FROM sales
WHERE sales > 1000;

SELECT * FROM TopSales;
