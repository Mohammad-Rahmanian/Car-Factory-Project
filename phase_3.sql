-- adding brand
insert into brand(name) values ('BMW');
insert into brand(name) values ('Benz');
insert into brand(name) values ('Audi');

-- adding model
insert into model (name,brand_id) values ('X6',1);
insert into model (name,brand_id) values ('Z4',1);
insert into model (name,brand_id) values ('Cls',2);
insert into model (name,brand_id) values ('S500',2);
insert into model (name,brand_id) values ('R200',3);
insert into model (name,brand_id) values ('SD',3);

-- adding costumer
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('1234567891', 'abbas', 'abbasi', 'tehran', 'tehran', 'valiasr', '091275729162');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('1234763733', 'mamad', 'mamadi', 'zanjan', 'zanjan', 'somewhere', '091276356253');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('3832836873', 'mohamad', 'rahmanian', 'tehran', 'tehran', 'shomal', '091275369169');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('9734829432', 'alireza', 'sabz', 'kerman', 'rafsanjoon', 'valiasr', '093875728562');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('3297647922', 'erfan', 'teimoori', 'tehran', 'tehran', 'piroozi', '093873798562');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('0389372862', 'amir', 'hoseini', 'tehran', 'karaj', 'random', '091975727389');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('2807392369', 'sina', 'shariat', 'kordestan', 'kord', 'str', '091275256324');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('8362826212', 'nima', 'karimi', 'tehran', 'rey', 'jonob', '091373722062');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('0938283897', 'ashkan', 'shakiba', 'bojnord', 'bojnord', 'emam', '091239839362');
insert into customer (national_id, customer_firstname, customer_lastname,
                      province_address, city_address, street_address, phone_number)
values ('3652827619', 'hashem', 'hashempoor', 'tehran', 'tehran', 'mahalati', '091273826162');

-- adding producer
INSERT INTO producer( producer_name, contract_start_date
                    , contract_end_date, manager_name, office_address)
values ('Courtesy', '2008-02-01', '2021-05-04', 'Dennis', 'Ben Lui Drive');
INSERT INTO producer( producer_name, contract_start_date
                    , contract_end_date, manager_name, office_address)
values ('Enviro', '2018-02-01', '2022-06-04', 'Richard', 'Welland Road');
INSERT INTO producer( producer_name, contract_start_date
                    , contract_end_date, manager_name, office_address)
values ('Rose', '2019-03-15', '2022-05-24', 'Reva', 'Leeds Yard');
INSERT INTO producer( producer_name, contract_start_date
                    , contract_end_date, manager_name, office_address)
values ('Dream Home Improvements', '2007-12-21', '2023-03-01', 'Paul', 'Webster Bank');
INSERT INTO producer( producer_name, contract_start_date
                    , contract_end_date, manager_name, office_address)
values ('Dream Home part', '2001-08-21', '2025-03-02', 'logan', 'Random Bank');

-- adding spare part
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 1', 1000, 100, 1);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 2', 2000, 200, 1);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 3', 3000, 300, 2);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 4', 4000, 400, 2);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 5', 5000, 500, 3);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 6', 6000, 600, 3);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 7', 7000, 700, 4);
insert into spare_part (spare_part_name, price, stock, producer_id) values ('Spare Part 8', 8000, 800, 4);

-- adding car
insert into car (VIN, color, model_id, gearbox_type) values ('11111111', 'red', 1, 'manual');
insert into car (VIN, color, model_id, gearbox_type) values ('22222222', 'blue', 2, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('33333333', 'black', 1, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('44444444', 'red', 2, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('55555555', 'green', 2, 'manual');
insert into car (VIN, color, model_id, gearbox_type) values ('66666666', 'black', 2, 'manual');
insert into car (VIN, color, model_id, gearbox_type) values ('77777777', 'white', 1, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('88888888', 'black', 2, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('99999999', 'gray', 1, 'manual');
insert into car (VIN, color, model_id, gearbox_type) values ('10101010', 'gray', 2, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('12345678', 'black', 1, 'auto');
insert into car (VIN, color, model_id, gearbox_type) values ('23456789', 'red', 2, 'manual');
insert into car (VIN, color, model_id, gearbox_type) values ('87652901', 'black', 3, 'manual');

-- adding orders car
insert into order_car(car_id, customer_id) values ('11111111', '8362826212');
insert into order_car(car_id, customer_id) values ('99999999', '8362826212');
insert into order_car(car_id, customer_id) values ('88888888', '3297647922');

-- adding order spare part
insert into order_spare_part(spare_part_id, customer_id) values (3, '8362826212');
insert into order_spare_part(spare_part_id, customer_id) values (5, '2807392369');
insert into order_spare_part(spare_part_id, customer_id) values (2, '8362826212');
