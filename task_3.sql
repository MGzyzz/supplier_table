select
    supplier,
    product
from products
join actions a on products.id = a.product_id
join suppliers s on s.id = a.supplier_id
where supplier = 'IDT' and action_date >= '2016-06-01' and action_date <= '2016-08-31'
