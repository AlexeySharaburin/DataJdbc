select *
from ORDERS od
         join CUSTOMERS cu on od.customer_id = cu.id
where name = ?;
