select
    supplier,
    sum(qty * price)
from
    suppliers
join
    actions a on suppliers.id = a.supplier_id
where extract(year from action_date) = 2016
group by supplier
having sum(qty * price) > (select
                               sum(qty * price)
                           from
                               suppliers
                           join actions a2 on suppliers.id = a2.supplier_id
                           where
                               extract(year from a2.action_date) = 2016 and supplier = 'IDT');
