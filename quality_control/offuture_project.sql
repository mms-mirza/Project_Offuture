-- CREATE TABLE student.where_project_offuture
-- (
--     row_id         int,
--     order_id       varchar(20),
--     order_date     varchar(12),
--     ship_date      varchar(12),
--     ship_mode      varchar(16),
--     customer_id    varchar(10),
--     customer_name  varchar(50),
--     segment        varchar(15),
--     city           varchar(100),
--     state          varchar(100),
--     country        varchar(15),
--     postal_code    varchar(15),
--     market         varchar(15),
--     region         varchar(20),
--     product_id     varchar(30),
--     category       varchar(20),
--     sub_category   varchar(20),
--     product_name   varchar(100),
--     sales          float,
--     quantity       int,
--     discount       float,
--     profit         float,
--     shipping_cost  float,
--     order_priority varchar(15)
-- );

-- Step 4: Load the Data into the Table
COPY your_table_name(column1, column2, ...) FROM '/path/to/your/csv_file.csv' DELIMITER ',' CSV HEADER;

-- Replace 'your_table_name' with the actual name of your table.
-- Replace 'column1, column2, ...' with the actual column names in your table.
-- Replace '/path/to/your/csv_file.csv' with the actual path to your CSV file.

-- Output full table

select *
from student.where_project_offuture;

-- Check total rows

select
    count(distinct(row_id))
from student.where_project_offuture;

-- Total sales

select
    sum(sales) as total_sales
from student.where_project_offuture;


DELETE FROM student.where_project_offuture;

drop table

SELECT
    COUNT(DISTINCT(ROW_ID))

SELECT product_name
FROM student."2_0_2 Offuture 2011-2014"
WHERE "2_0_2 Offuture 2011-2014".product_name ~ '[^a-zA-Z0-9\s]';

SELECT
    customer_name
FROM
    student.where_project_offuture
WHERE
        customer_name ~ '[^a-zA-Z0-9]';

select customer_name,
count(*)
from student.where_project_offuture
where customer_name like '%Resi%'
group by
    customer_name;



SELECT
    distinct product_name
FROM
    student.where_project_offuture
WHERE
    product_name ~ '[a-zA-Z0-9 ''-]'
ORDER BY
    product_name;

SELECT sales
FROM information_schema.columns
WHERE table_name = 'your_table_name'
  AND (data_type <> expected_data_type1
    OR data_type <> expected_data_type2
    OR ...)

SELECT quantity, pg_typeof(quantity) AS data_type
FROM student.where_project_offuture;

SELECT
    count(*),
    pg_typeof(row_id) AS row_id_type,
    pg_typeof(order_id) AS order_id_type,
    pg_typeof(order_date) AS order_date_type,
    pg_typeof(ship_date) AS ship_date_type,
    pg_typeof(ship_mode) AS ship_mode_type,
    pg_typeof(customer_id) AS customer_id_type,
    pg_typeof(customer_name) AS customer_name_type,
    pg_typeof(segment) AS segment_type,
    pg_typeof(city) AS city_type,
    pg_typeof(state) AS state_type,
    pg_typeof(country) AS country_type,
    pg_typeof(postal_code) AS postal_code_type,
    pg_typeof(market) AS market_type,
    pg_typeof(region) AS region_type,
    pg_typeof(product_id) AS product_id_type,
    pg_typeof(category) AS category_type,
    pg_typeof(sub_category) AS sub_category_type,
    pg_typeof(product_name) AS product_name_type,
    pg_typeof(sales) AS sales_type,
    pg_typeof(quantity) AS quantity_type,
    pg_typeof(discount) AS discount_type,
    pg_typeof(profit) AS profit_type,
    pg_typeof(shipping_cost) AS shipping_cost_type,
    pg_typeof(order_priority) AS order_priority_type
FROM
    student.where_project_offuture
GROUP BY
    row_id_type,
    order_id_type,
    order_date_type,
    ship_date_type,
    ship_mode_type,
    customer_name_type,
    customer_id_type,
    segment_type,
    city_type,
    state_type,
    country_type,
    postal_code_type,
    market_type,
    region_type,
    product_id_type,
    category_type,
    sub_category_type,
    product_name_type,
    sales_type,
    quantity_type,
    discount_type,
    profit_type,
    shipping_cost_type,
    order_priority_type;

SELECT
    column_name,
    data_type
FROM
    information_schema.columns
WHERE
    table_name = 'where_project_offuture';

SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'where_project_offuture';

DELETE FROM student.where_project_offuture;

CREATE TABLE student.where_project_offuture

(
                                       row_id int,
                                       order_id varchar(20),
                                       order_date varchar (15),
                                       ship_date varchar (15),
                                       ship_mode varchar (20),
                                       customer_id varchar (15),
                                       customer_name varchar (50),
                                       segment varchar (16),
                                       city varchar (100),
                                       state varchar (100),
                                       country varchar (40),
                                       postal_code varchar (15),
                                       market varchar (15),
                                       region varchar (20),
                                       product_id varchar (30),
                                       category varchar (20),
                                       sub_category varchar (20),
                                       product_name varchar (150),
                                       sales float,
                                       quantity int,
                                       discount float,
                                       profit float,
                                       shipping_cost float,
                                       order_priority varchar (15)

);


-- find customer records with multiple purchases
SELECT
    count(*),
    customer_id
FROM
    student.where_project_offuture
GROUP BY
    customer_id
HAVING count(*) < 10;

-- bring up all the rows for customer
SELECT
    *
FROM
    student.where_project_offuture
WHERE
        customer_id = 'EB-3870';

-- create table
CREATE TABLE student.where_project_scv

(
    customer_id int,
    customer_name varchar (50),
    different_locations int,
    product_categories varchar (100),
    quantity int,
    total_sales float,
    profit float
);


INSERT INTO student.where_project_scv
(customer_id, customer_name, different_locations, product_categories, quantity, total_sales, profit)
VALUES
    (46996, 'Emily Burns', 5, 'Office Supplies, Furniture, Technology', 8, 184.87, -166.82);


SELECT
    *
FROM
    student.where_project_scv;


------------------------------------------

select
    customer_id,
    count(*)
from
    student.where_project_offuture
where
    customer_name = 'Emily Burns'
group by
    customer_id;




















