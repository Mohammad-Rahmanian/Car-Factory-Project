CREATE TABLE IF NOT EXISTS brand_logs
(
    id         INT PRIMARY KEY auto_increment,
    brand_id   INT,
    old_name   varchar(20),
    new_name   varchar(20),
    changed_at DATE,
    FOREIGN KEY (brand_id) REFERENCES brand (brand_id)
);

-- trigger for insertion
create trigger Insertion
    AFTER INSERT
    on Brand
    for each row
begin
    INSERT INTO brand_logs(brand_id, old_name, new_name, changed_at) VALUES (NEW.Brand_ID, NULL, NEW.name, now());
end;
-- trigger for updating
create trigger Updating
    AFTER UPDATE
    on Brand
    for each row
begin
    INSERT INTO brand_logs(brand_id, old_name, new_name, changed_at) VALUES (NEW.Brand_ID, OLD.name, NEW.name, now());
end;

insert into brand( name) values('Porsche')
