DELETE FROM sales
WHERE status = 'Cancelada'
AND sale_date < '2022-01-01';
