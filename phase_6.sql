-- changing car table
alter table car add column
    is_sold boolean default false;

-- update all is_sold to true if a car was sold
update car as c set is_sold = true
        where exists(select VIN from order_car where car_id = c.VIN);

-- starting a transaction for buying car (changes the is_sold to true)
start transaction;

insert into order_car (car_id, customer_id) values ('12345678', '1234763733');
update car set is_sold = true where VIN = '12345678';

commit;

-- starting a transaction for someone who bought a spare part
start transaction;

insert into order_spare_part (spare_part_id, customer_id) values (1, '2807392369');
update spare_part set stock = stock - 1 where spare_part_id = 1;

commit;