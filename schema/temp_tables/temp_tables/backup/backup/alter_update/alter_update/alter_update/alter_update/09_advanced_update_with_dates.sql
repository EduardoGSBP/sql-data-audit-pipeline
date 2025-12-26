UPDATE sales s
SET status = 'Antiga'
FROM sales_backup sb
WHERE s.id_sale = sb.id_sale
AND (CURRENT_DATE - sb.sale_date) > 365;
