/* =========================================================
   PROJETO: SQL DATA AUDIT PIPELINE
   AUTOR: Eduardo
   ========================================================= */


/* =========================================================
   SCHEMA
   (equivale a: schema/01_create_sales_table.sql)
   ========================================================= */

CREATE TABLE sales (
    sale_id INT,
    product VARCHAR(50),
    category VARCHAR(30),
    amount DECIMAL(10,2),
    sale_date DATE
);



/* =========================================================
   TEMP TABLES — VALIDAÇÃO
   (equivale a: temp_tables/02_temp_tables_validation.sql)
   ========================================================= */

CREATE TEMP TABLE tmp_sales_validation AS
SELECT
    sale_id,
    category,
    amount,
    sale_date
FROM sales
WHERE amount IS NOT NULL;



/* =========================================================
   TEMP TABLES — USO AVANÇADO
   (equivale a: temp_tables/03_advanced_temp_tables.sql)
   ========================================================= */

SELECT
    category,
    COUNT(*) AS total_sales,
    SUM(amount) AS total_amount
FROM tmp_sales_validation
GROUP BY category;



/* =========================================================
   BACKUP — TABELA ESPELHO SIMPLES
   (equivale a: backup/04_simple_backup_table.sql)
   ========================================================= */

CREATE TABLE sales_backup AS
SELECT * FROM sales;



/* =========================================================
   BACKUP — TABELA ESPELHO COMPLETA
   (equivale a: backup/05_full_mirror_table.sql)
   ========================================================= */

CREATE TABLE sales_mirror AS
SELECT * FROM sales;



/* =========================================================
   ALTER TABLE — DESIGN
   (equivale a: alter_update/06_alter_table_add_column.sql)
   ========================================================= */

ALTER TABLE sales
ADD status VARCHAR(20) DEFAULT 'Pendente';



/* =========================================================
   UPDATE — BÁSICO
   (equivale a: alter_update/07_basic_update.sql)
   ========================================================= */

UPDATE sales
SET status = 'Concluída';



/* =========================================================
   UPDATE — COM CONDIÇÃO
   (equivale a: alter_update/08_update_with_conditions.sql)
   ========================================================= */

UPDATE sales
SET status = 'Alta Receita'
WHERE amount >= 3000;



/* =========================================================
   UPDATE — AVANÇADO (CASE)
   (equivale a: alter_update/09_advanced_update_with_dates.sql)
   ========================================================= */

ALTER TABLE tmp_sales_validation
ADD COLUMN amount_category VARCHAR(20);

UPDATE tmp_sales_validation
SET amount_category =
    CASE
        WHEN amount < 100 THEN 'Baixo'
        WHEN amount BETWEEN 100 AND 500 THEN 'Médio'
        ELSE 'Alto'
    END;



/* =========================================================
   DELETE — BÁSICO
   (equivale a: delete/10_basic_delete.sql)
   ========================================================= */

DELETE FROM sales
WHERE amount IS NULL;



/* =========================================================
   DELETE — COM CRITÉRIOS
   (equivale a: delete/11_delete_with_criteria.sql)
   ========================================================= */

DELETE FROM sales
WHERE amount < 50
  AND category = 'Acessórios';



/* =========================================================
   DELETE — AVANÇADO (DATEDIFF)
   (equivale a: delete/12_advanced_delete_datediff.sql)
   ========================================================= */

DELETE FROM sales
WHERE DATEDIFF(CURRENT_DATE, sale_date) > 365;
