-- add Mr.holmes
insert into customer(national_id, customer_firstname, customer_lastname,
                     province_address, city_address, street_address, phone_number)
values ('1234567810', 'sherlock', 'holmes', 'London', 'London', '212 Baker Street', '+44796268462');
-- add order for Mr.holmes
insert into order_car(car_id, customer_id)
values ('22222222', '1234567810');
-- update Mr,holmes' phone number
update customer
set phone_number = '+44734278008'
where national_id = '1234567810';

-- delete all customers who have not any car's order
DELETE
FROM Customer
WHERE NOT EXISTS(
        SELECT *
        FROM order_car,
             order_spare_part
        WHERE customer.national_id = order_car.customer_id
           OR customer.national_id = order_spare_part.customer_id
    );
