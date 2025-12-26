CREATE TABLE sales (
    id_sale INT PRIMARY KEY,
    customer VARCHAR(100),
    product VARCHAR(100),
    sale_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);
