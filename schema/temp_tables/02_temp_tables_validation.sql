-- Tabela temporária para validação geral
CREATE TEMP TABLE tmp_sales_validation AS
SELECT *
FROM sales;

-- Tabela temporária para identificar valores inválidos
CREATE TEMP TABLE tmp_sales_suspicious AS
SELECT *
FROM sales
WHERE amount <= 0;
