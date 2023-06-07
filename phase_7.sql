create assertion check_stock check( not exists(
    select stock
    from spare_part
    where stock = 0
    )
    )
create assertion check_car_order check( not exists(
    select *
    from order_car o1,order_car o2
    where o1.order_id <> o2.order_id and o1.car_id = o2.car_id
    )
    )
