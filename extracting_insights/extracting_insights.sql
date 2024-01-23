SELECT
    order_date, SUM(profit) max_profit
FROM
    student.where_project_offuture
WHERE
    order_date like '%2011%'
GROUP BY
    order_date
ORDER BY
    max_profit DESC;
----------
SELECT
    SUM(profit) max_profit
FROM
    student.where_project_offuture
WHERE
    order_date like '%2014%';




SELECT MAX(max_profit)
FROM (
    SELECT SUM(profit) AS max_profit
    FROM student.where_project_offuture
    WHERE order_date LIKE '%2011%'

    UNION ALL

    SELECT SUM(profit) AS max_profit
    FROM student.where_project_offuture
    WHERE order_date LIKE '%2012%'

    UNION ALL

    SELECT SUM(profit) AS max_profit
    FROM student.where_project_offuture
    WHERE order_date LIKE '%2013%'

    UNION ALL

    SELECT SUM(profit) AS max_profit
    FROM student.where_project_offuture
    WHERE order_date LIKE '%2014%'
) AS sub_query;



SELECT
    product_id,
     sum(sales) as sum_sales_2013
FROM
    student.where_project_offuture
WHERE
    order_date like '%2013%' AND product_id = 'OFF-ST-10002905'
GROUP BY
    product_id;

SELECT
    product_id,
    sum(sales) as sum_sales_2013
FROM
    student.where_project_offuture
WHERE
        order_date like '%2014%'
GROUP BY
    product_id;


SELECT
    t1.product_id,
    t1.sum_sales_2013,
    t2.sum_sales_2014,
    CASE
        WHEN t2.sum_sales_2014 > t1.sum_sales_2013 THEN 'Growth'
        WHEN t2.sum_sales_2014 < t1.sum_sales_2013 THEN 'Decline'
        ELSE 'No Change'
        END AS growth_status
FROM
    (SELECT
         product_id,
         SUM(sales) AS sum_sales_2013
     FROM
         student.where_project_offuture
     WHERE
         order_date LIKE '%2013%'
     GROUP BY
         product_id) AS t1
        INNER JOIN
    (SELECT
         product_id,
         SUM(sales) AS sum_sales_2014
     FROM
         student.where_project_offuture
     WHERE
         order_date LIKE '%2014%'
     GROUP BY
         product_id) AS t2
     ON
         t1.product_id = t2.product_id;


select
    product_id,
    product_name,
    sum(quantity) qty
from
    student.where_project_offuture
group by
    product_id, product_name
having
    sum(quantity) = 1
order by
    qty, product_id;


SELECT max_profit, year
FROM (
         SELECT SUM(profit) AS max_profit, '2011' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2011%'

         UNION ALL

         SELECT SUM(profit) AS max_profit, '2012' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2012%'

         UNION ALL

         SELECT SUM(profit) AS max_profit, '2013' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2013%'

         UNION ALL

         SELECT SUM(profit) AS max_profit, '2014' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2014%'
     ) AS sub_query
ORDER BY max_profit DESC;


SELECT year, sales
FROM (
         SELECT SUM(sales) AS sales, '2011' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2011%'

         UNION ALL

         SELECT SUM(sales) AS sales, '2012' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2012%'

         UNION ALL

         SELECT SUM(sales) AS sales, '2013' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2013%'

         UNION ALL

         SELECT SUM(sales) AS sales, '2014' AS year
         FROM student.where_project_offuture
         WHERE order_date LIKE '%2014%'
     ) AS sub_query
ORDER BY sales DESC;

select
    category,
    sum(sales) total_sales
from
    student.where_project_offuture
group by
    category;

select
    category,
    sum(profit) total_profit
from
    student.where_project_offuture
where
    order_date like '%201'
group by
    category
order by
    total_profit desc;

select
    product_name, sum(profit) prof
from
    student.where_project_offuture
where
    sub_category = 'Tables'
group by
    product_name
-- having
--     sum(profit) < 0
order by
    prof;


select sum(prof)
from
    (select
        product_name, sum(profit) prof
    from
        student.where_project_offuture
    where
        sub_category = 'Tables'
    group by
        product_name
    having
        sum(profit) < 0
    order by
        prof) as sub_query;

select sum(prof)
from
    (select
         product_name, sum(profit) prof
     from
         student.where_project_offuture
     where
             sub_category = 'Tables'
     group by
         product_name
     having
             sum(profit) > 0
     order by
         prof) as sub_query;










