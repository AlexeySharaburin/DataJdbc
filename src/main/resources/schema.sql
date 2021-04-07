create schema netology;

create table CUSTOMERS
(
    id           serial      NOT NULL,
    name         VARCHAR(20) NOT NULL,
    surname      VARCHAR(20) NOT NULL,
    age          integer CHECK (age > 0),
    phone_number VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Sharaburin', 44, '+7(926)209-26-95');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Petr', 'Petrov', 31, '2234567');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('alexey', 'Sidorov', 19, '3234567');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('alexeY', 'Ivanov', 44, '5234567');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Smirnov', 28, '6234567');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Sidor', 'Smirnov', 28, '6238887');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('ALEXEY', 'Titov', 28, '6234567');

create table ORDERS
(
    id          serial      NOT NULL,
    date         timestamp   not null default now(),
    customer_id  integer,
    product_name VARCHAR(20) NOT NULL,
    amount       integer CHECK ( amount > 0 ),
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

insert into ORDERS (product_name, customer_id, amount)
values ('Brot', 1, 10);
insert into ORDERS (product_name, customer_id,amount)
values ('Milk', 2, 20);
insert into ORDERS (product_name, customer_id,amount)
values ('Wine', 3, 22);
insert into ORDERS (product_name, customer_id,amount)
values ('Tomat', 4, 1);
insert into ORDERS (product_name, customer_id,amount)
values ('Potato', 5, 6);
insert into ORDERS (product_name, customer_id,amount)
values ('Butter', 6, 7);
insert into ORDERS (product_name, customer_id,amount)
values ('Cheese', 7, 9);

create INDEX index_customers
    on CUSTOMERS (name);

