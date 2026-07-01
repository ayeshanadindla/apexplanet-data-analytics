SELECT *
FROM sales
WHERE sales >
(
    SELECT AVG(sales)
    FROM sales
);