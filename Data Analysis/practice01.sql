drop database if exists my_new_web2;
create database if not exists my_new_web2;
use my_new_web2;

create table users(
user_ID INT PRIMARY KEY AUTO_INCREMENT,
email_adress VARCHAR (100),
first_name VARCHAR (45),
last_name VARCHAR (45)
);
INSERT INTO users
VALUES 
      (DEFAULT, 1, 'gff', 'gfgf', 'ffjf@gmail.com'), 
      (DEFAULT, 2, 'gff', 'gfgf', 'ffjf@gmail.com');
      
      
create table products (
product_ID INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR (45)
);
INSERT INTO products
VALUES 
      (DEFAULT, 'ABC'), 
      (DEFAULT, 'XYZ');
      
CREATE TABLE downloads (
download_ID INT PRIMARY KEY AUTO_INCREMENT,
user_ID INT UNSIGNED NOT NULL,
download_date DATETIME,
filename VARCHAR (50),
product_ID INT NOT NULL,
FOREIGN KEY (user_ID) REFERENCES users(user_ID),
FOREIGN KEY (product_ID) REFERENCES products(product_ID)
);
INSERT INTO downloads
VALUES
      (DEFAULT, 1, 1, now(), 'gfgf', 2),
      (DEFAULT, 2, 2, now(), 'gfgf', 1),
      (DEFAULT, 3, 2, now(), 'gfff', 2);

ALTER TABLE products
ADD price decimal (5, 2) default 9.99,
ADD date_input datetime;

Alter table users
modify column first_name varchar(20) not null;

#answers
use guitar_shop

#1
INSERT INTO categories VALUES (DEFAULT, 'Brass');

#2
update categories
set category_name = 'Woodwinds'
where category_name = 'Brass'

#3
DELETE FROM categories
WHERE category_id = 5;

#Q4
insert into products
values ( default, 4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, now())

#5
update products
set discount_percent = 35
where product_id = 11;

#6
select 
product_code,
product_name,
list_price,
discount_percent
from products;

#7
select concat (first_name, ', ', last_name) as full_name
from customers
where last_name >= 'M'
order by last_name;

#8
select
	peoduct_name,
    list_peice,
    date_added
from products
where list_price > 500 and list_price <2000
order by date_added DESC;

#9
select
		product_name,
        list_price,
        discount_percent,
        ROUND((list_price * discount_percent)/100, 2) as discount_amount,
        ROUND(list_price - (list_price * discount_percent)/100, 2) as discount_price
	from products
    order by discount_price DESC
    limit 5;
    
