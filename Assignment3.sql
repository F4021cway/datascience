 -- ASSIGNMENT 3 for SQL

-- Discount Effects 
-- Generate a report including product IDs and discount effects on whether the increase in the discount rate positively impacts the number of orders for the products.
-- In this assignment, you are expected to generate a solution using SQL with a logical approach. 

-- 1. I would like to see the all product table.
SELECT product_id from product.product;

-- 2. I ordered product_id table.
select * from sale.order_item
order by product_id

-- 3. I grouped products according to their ID and discounts totals.
SELECT product_id, discount, SUM(quantity) as total_quantity
from sale.order_item
group by product_id, discount
order by product_id

-- 4. The query above showed that the relationship between discount rate and the order totals. If there is a linear relationship between discount rate and
-- order totals. I want to write POSITIVE in a new column. Otherwise I want to get NEGATIVE as a result.
SELECT product_id, discount, SUM(quantity) as total_quantity
from sale.order_item
group by product_id, discount
order by product_id)

INSERT (SELECT product_id,


from product.product

-- I could not bring the info from table as Discount effect. The main idea was detecting the pattern of increase. I created a table above but I could not call the positive/negative words.