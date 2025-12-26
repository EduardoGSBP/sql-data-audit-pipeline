CREATE TABLE sales_mirror (LIKE sales INCLUDING ALL);

INSERT INTO sales_mirror
SELECT *
FROM sales;
