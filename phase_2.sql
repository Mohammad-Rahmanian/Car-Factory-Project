CREATE DATABASE if not exists CarFactory;
USE CarFactory;


CREATE TABLE IF NOT EXISTS brand(
    brand_id INT PRIMARY KEY auto_increment,
    name varchar(50) not null
    );

CREATE TABLE IF NOT EXISTS model(
    model_id INT PRIMARY KEY auto_increment,
    name varchar(50) not null,
    brand_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
    );

CREATE TABLE IF NOT EXISTS car(
    VIN char(8) PRIMARY KEY,
    model_id INT,
    color varchar(30),
    gearbox_type varchar(10),
    check ( gearbox_type='auto' or gearbox_type='manual' ),
    FOREIGN KEY (model_id) REFERENCES model(model_id)
    );

CREATE TABLE IF NOT EXISTS customer(
    national_id char(10) PRIMARY KEY,
    customer_firstname varchar(50) not null,
    customer_lastname varchar(50) not null,
    province_address varchar(50),
    city_address varchar(50),
    street_address varchar(100),
    phone_number char(12) not null
    );

CREATE TABLE IF NOT EXISTS producer(
    producer_id INT PRIMARY KEY auto_increment,
    producer_name varchar(50) not null,
    contract_start_date DATE not null,
    contract_end_date DATE not null,
    manager_name varchar(50),
    office_address varchar(200)
    );

CREATE TABLE IF NOT EXISTS spare_part(
    spare_part_id INT PRIMARY KEY auto_increment,
    spare_part_name varchar(50) not null,
    stock int not null,
    price float(10),
    producer_id INT,
    FOREIGN KEY (producer_id) REFERENCES producer(producer_id)
    );

CREATE TABLE if not exists order_spare_part(
    order_id INT auto_increment,
    spare_part_id int ,
    customer_id char(10) not null ,
    order_date DATETIME default current_timestamp,
    primary key (order_id, spare_part_id),
    FOREIGN KEY (spare_part_id) REFERENCES spare_part(spare_part_id),
    FOREIGN KEY (customer_id) REFERENCES customer(national_id)
    );

CREATE TABLE IF NOT EXISTS order_car(
    order_id INT auto_increment,
    car_id char(8) ,
    customer_id char(10) not null ,
    order_date DATETIME default current_timestamp,
    primary key (order_id, car_id),
    FOREIGN KEY (car_id) REFERENCES car(VIN),
    FOREIGN KEY (customer_id) REFERENCES customer(national_id)
    );