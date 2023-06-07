-- create view supplier_supplies
create view supplier_supplies as
(
select *
from spare_part
         inner join producer p using (producer_id)
    );
-- create view customer_car_orders
create view customer_car_orders as
    (select *
    from customer inner join order_car oc on customer.national_id = oc.customer_id);

-- create view customer_spare_part_orders
create view customer_spare_part_orders as
    (select *
    from customer inner join order_spare_part osc on customer.national_id = osc.customer_id);


-- create view car_brand_model
create view car_brand_model as
(
select c.VIN, c.color, c.gearbox_type, m.model_id, m.name as model_name, b.brand_id, b.name as brand_name
from car c
         inner join model m on c.model_id = m.model_id
         inner join brand b on m.brand_id = b.brand_id
    )
