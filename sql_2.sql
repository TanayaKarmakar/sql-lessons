SELECT * FROM `second-conquest-403514.de_course.customer_purchases` LIMIT 1000

select * from `second-conquest-403514.de_course.customer_purchases` LIMIT 10;


select * from `second-conquest-403514.de_course.customer_purchases` order by quantity DESC LIMIT 10;

select market_date, customer_id, vendor_id, quantity, cost_to_customer_per_qty, ROUND(quantity * cost_to_customer_per_qty, 2) as total_amt
from `second-conquest-403514.de_course.customer_purchases`;

select market_date, customer_id, product_id, vendor_id, ROUND(cost_to_customer_per_qty * quantity) as total_amt from de_course.customer_purchases;

select customer_id, CONCAT(customer_first_name, " ", customer_last_name) as customer_full_name from de_course.customer LIMIT 10;

select customer_id, customer_first_name, UPPER(customer_last_name) from de_course.customer;


select 
CONCAT(LOWER(SUBSTR(customer_first_name, 1, 1)),UPPER(SUBSTR(customer_first_name,2))) as cust_first_name, 
CONCAT(LOWER(SUBSTR(customer_last_name, 1, 1)),UPPER(SUBSTR(customer_last_name,2))) as cust_last_name 
from de_course.customer;


select * from de_course.product;

select * from de_course.product where product_category_id = 1;

select * from de_course.customer_purchases where customer_id = 4
order by market_date, vendor_id, product_id;


select * from de_course.product where (product_id > 3 and product_id < 8) or product_id = 10;


select * from de_course.customer where customer_first_name = 'Carlos' or customer_last_name = 'Diaz';

select * from de_course.vendor_booth_assignments;

select * from de_course.vendor_booth_assignments where vendor_id = 7 and market_date BETWEEN '2019-04-03' AND '2019-05-16';

select * from de_course.customer where customer_last_name IN ('Diaz','Edwards', 'Wilson');

select * from de_course.customer where customer_first_name like 'Jer%';

select * from de_course.customer where customer_first_name like '_a%' and customer_last_name like '%e';


select * from de_course.product where product_size is null or product_size=' ';

select 
product_id, 
product_name, 
product_size, 
ifnull(product_size, 'Not Available') as substitute from de_course.product;

select * from de_course.customer_purchases where market_date in
(select market_date from de_course.market_date_info where market_rain_flag = 1);

select * from de_course.market_date_info where market_rain_flag = 1;

select * from de_course.customer_purchases;

select *,
CASE 
  WHEN lower(vendor_type) LIKE '%fresh%' THEN 'Fresh'
  ELSE 'Not Fresh' 
END as vendor_category
from de_course.vendor;