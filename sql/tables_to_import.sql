-- Modified tables to import data to Power BI

-- Table: customer
SELECT *
FROM customer
WHERE customer_id IN (
    SELECT customer_id
        FROM sales_order);

-- Table: sales_person
SELECT *
FROM sales_person
WHERE sales_person_id IN (
    SELECT sales_person_id
        FROM sales_order);

-- Table: product_type
SELECT *
FROM product_type
WHERE product_type_id IN (
    SELECT product_type_id
        FROM product);

-- Table: product
SELECT *
FROM product
WHERE product_id IN (
    SELECT product_id
        FROM item);

-- Table: item
SELECT *
FROM item
WHERE item_id IN (
    SELECT item_id
        FROM sales_item);

-- Table: sales_order
SELECT *
FROM sales_order
WHERE sales_order_id IN (
    SELECT sales_order_id
        FROM sales_item);

-- Table: sales_item
SELECT *
FROM sales_item;

-- LOG: Done Importing Data to Power BI
-- Created Age and Age Group columns in the customer table
-- Measures Updated: Total Customers