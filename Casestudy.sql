USE casestudy;
-- 1 show 10 columns

SELECT *
FROM vrinda_sales
LIMIT 10;

-- 2 Show the  10 columns which is delivered
select sale_id,order_id,order_date,amount
from vrinda_sales
where order_status = 'Delivered'
limit 10;

-- 3 Show the  20 columns which more than 1000;
select *
from vrinda_sales
where amount >1000
limit 20;
  
-- 4 show the 18 columns which is cancelled;
select *
from vrinda_sales
where order_status = 'Cancelled'
limit 18;

-- 4 show the tabel which is between 500 to 2000;
select *
from vrinda_sales
where amount > 500
 and amount < 2000
 order by amount desc
 limit 100;
 
 -- 5  show sale details with product catogery and size;
 select s.sale_id,
 s.order_id,
 s.order_date,
 s.sales_channel,
 s.sku,
 s.qty,
 s.amount,
 p.category,
 p.size
 from vrinda_sales as s
 inner join vrinda_products as p
 on s.sku =  p.sku
 order by order_date desc,amount desc
 limit 50;