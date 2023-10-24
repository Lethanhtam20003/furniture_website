CREATE DATABASE WEBSTORE;
GO
USE WEBSTORE;
GO
CREATE TABLE USERS(
	user_id varchar(20),
	user_name varchar(20),
	emai varchar(20),
	password varchar(20),
	create_at varchar(20),
	last_login date,
	role varchar(20),
	primary key (user_id)
);
GO
CREATE TABLE USER_INFO 
(
	user_id varchar(20),
	first_name varchar(20),
	last_name varchar(20),
	user_birthday varchar(20),
	gender varchar(20),
	phoneNumber  varchar(20),
	address varchar(20),
	profile_picture varchar(20),
	primary key (user_id),
	FOREIGN key  (user_id) REFERENCES USERS(user_id)
);
go
CREATE TABLE PRODUCTS
(
	product_id varchar(20),
	peoduct_name varchar(20),
	product_description varchar(20),
	price varchar(20),
	primary key (product_id)
);
go