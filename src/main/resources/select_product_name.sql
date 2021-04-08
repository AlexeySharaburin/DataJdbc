select name, product_name
from orders od
         join customers_table cu on od.customer_id = cu.id
where name = ?;
