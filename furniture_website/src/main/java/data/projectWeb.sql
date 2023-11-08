CREATE DATABASE Project_Web;


CREATE TABLE U(
use_id varchar(50) PRIMARY KEY,
use_name varchar(100),
email varchar(250),
pass_word varchar(100),
create_at date,
last_login date,
access varchar(50)
);

CREATE TABLE USER_INFO(
use_id varchar(50) PRIMARY KEY,
first_name varchar(100),
last_name varchar(100),
birthday date,
gender varchar(5),
phoneNumber int,
address_user varchar(1000),
profile_picture image
);

CREATE TABLE REPORT(
report_id varchar(50) PRIMARY KEY,
content varchar(5000),
picture image,
use_id varchar(50),
review_id varchar(50)
);

CREATE TABLE PRODUCTS(
product_id varchar(50) PRIMARY KEY,
product_name varchar(100),
product_group varchar(100),
categories_id varchar(50),
amount int,
price money
);
--drop table PRODUCT_CATEGORIES;
CREATE TABLE PRODUCT_CATEGORIES(
category_id varchar(50) PRIMARY KEY,
category_name varchar(100),
describe varchar(1000),
picture varbinary(max),
url_path varchar(255)
);
--drop table PRODUCT_REVIEW;
CREATE TABLE PRODUCT_REVIEW(
review_id varchar(50) PRIMARY KEY,
use_id varchar(50),
rating int,
title varchar(1000),
content varchar(5000),
create_at date,
updated_at date,
likes int,
dislike int,
priture varbinary(max),
report_id varchar(50),
reply_id varchar(50),
);
--drop table PRODUCT_DETAILS;
CREATE TABLE PRODUCT_DETAILS(
product_id varchar(50) PRIMARY KEY,
brand_name varchar(1000),
supplier_name varchar(1000),
packaged varchar(1000),
meterial varchar(1000),
size varchar(1000),
colors varchar(1000),
efficiency varchar(1000),
pattern varchar(1000),
weight_product varchar(1000),
frame varchar(1000),
thickness varchar(1000),
description_product  varchar(5000)
);
--drop table ORDERS;
CREATE TABLE ORDERS(
orders_id varchar(50) PRIMARY KEY,
use_id varchar(50),
order_date date,
shipping_cost money,
order_status varchar(5000),
coupon_id varchar(50)
);
--drop table ORDERS_DETAILS;
CREATE TABLE ORDERS_DETAILS(
orders_id varchar(50) PRIMARY KEY,
product_id varchar(50),
quantity int ,
total_amount money
);
--drop table COUPONS;
CREATE TABLE COUPONS(
coupon_id varchar(50) PRIMARY KEY,
coupon_code varchar(50),
discount_amount float,
discount_type varchar(50),
expiration_date date,
usage_count float,
mininum_purchase_amount float,
is_active bit,
create_at date,
update_at date,
decription varchar(5000),
user_limit varchar(5000)

);
--drop table PAYMENT;
CREATE TABLE PAYMENT(
payment_id varchar(50) PRIMARY KEY,
use_id varchar(50),
orders_id varchar(50),
payment_method varchar(50),
amount money,
status_payment varchar(5000),
payment_date date,
transact varchar(50),
payment_gateway varchar(50),
invoice_number varchar(50),
create_at date,
update_at date,
add_ress varchar(2000)

);
--drop table ANALYTICS;
CREATE TABLE ANALYTICS(
product_id varchar(50) PRIMARY KEY,
view_s int,
clicks int,
purchases int,
revenue money,
added_toCart bit,
rating float,
review varchar(50),
stocle_lever int,
create_at date,
update_at date
);