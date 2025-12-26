DELETE FROM sales
WHERE (CURRENT_DATE - sale_date) > 730;
