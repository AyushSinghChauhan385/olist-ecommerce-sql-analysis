create table customers (
    customer_id varchar(50) primary key,
    customer_unique_id varchar(50),
    customer_city varchar(100),
    customer_state char(2)
);

create table orders (
    order_id varchar(50) primary key,
    customer_id varchar(50) references customers(customer_id),
    order_status varchar(30),
    order_purchase_timestamp timestamp
);

create table products (
    product_id varchar(50) primary key,
    product_category_name varchar(100)
);

create table order_items (
    order_id varchar(50) references orders(order_id),
    order_item_id int,
    product_id varchar(50) references products(product_id),
    price numeric(10,2),
    primary key(order_id, order_item_id)
);

create table payments (
    order_id varchar(50) references orders(order_id),
    payment_type varchar(30),
    payment_value numeric(10,2)
);
