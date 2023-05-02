select
    product
from products
join actions a on products.id = a.product_id
join suppliers s on s.id = a.supplier_id
where supplier <> 'IDT';
