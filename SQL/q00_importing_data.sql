CREATE database e_commerce_casestudy;
USE e_commerce_casestudy;

ALTER TABLE customers
CHANGE COLUMN `ï»¿customer_id` customer_id INT;

alter table orderdetails
change column `ï»¿order_id` order_id int;

alter table orders
change column `ï»¿order_id` order_id int;

alter table products
change column `ï»¿product_id` product_id int;