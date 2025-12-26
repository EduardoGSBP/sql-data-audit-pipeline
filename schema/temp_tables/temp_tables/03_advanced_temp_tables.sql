ALTER TABLE tmp_sales_validation
ADD COLUMN amount_category VARCHAR(20);

UPDATE tmp_sales_validation
SET amount_category =
    CASE
        WHEN amount < 100 THEN 'Baixo'
        WHEN amount BETWEEN 100 AND 500 THEN 'Médio'
        ELSE 'Alto'
    END;
