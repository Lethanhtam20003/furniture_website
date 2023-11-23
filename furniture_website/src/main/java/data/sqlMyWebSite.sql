use thucHanh1;
go
drop database MyWebSite;
go
CREATE DATABASE MyWebSite;
go
use MyWebSite;
go
create table Account(
	accountID varchar(100) primary key,
	accountName varchar(100) not null unique,
	password varchar(100) not null,
	firstName varchar(100) not null,
	lastName varchar(100) not null,
	email varchar(100) not null,
	birthday Date,
	gender varchar(100),
	phoneNum varchar(100),
	addressAccount varchar(100) not null,
	addressOrder varchar(100),
	createAt Date  not null,
	lastLogin Date,
	constraint chk_account_gender check (gender like 'nam' or gender like 'nu')
)
go
create table GroupPro(
	groupID varchar(100) primary key,
	name varchar(100) not null,
	content varchar(1000)
)
go
create table Category(
	categoryID varchar(100) primary key,
	name varchar(100) not null,
	content varchar(1000)
)

go
create table Product(
	productID varchar(100) primary key,
	productName varchar(100) not null,
	categoryID  varchar(100),
	groupID varchar(100),
	wattage varchar(1000),
	producer varchar(1000),
	amount int,
	packeged  varchar(1000),
	brandOrigin  varchar(1000),
	meterial varchar(1000),
	type  varchar(1000),
	color varchar(1000),
	thickness varchar(1000),
	space varchar(1000),
	design varchar(1000),
	timeToUse varchar(1000),
	price float,
	decription varchar(1000),
	status varchar(1000) ,
	qualityInStorage int, -- so luong con lai trong kho
	foreign key (categoryID) references Category(categoryID),
	foreign key (groupID) references GroupPro(groupID)

)
go
create table Cart(
	cartID varchar(100) primary key,
	shppingCost float,
	totalPriceSelected float
)

go
create table CartDetails(
	cartID  varchar(100) primary key,
	productID  varchar(100) not null  ,
	qualityProduct int default 1,
	price float,
	isGift bit default 0,
	isAvailable bit default 1,
	foreign key (productID) references product(productID),
	foreign key (cartID) references Cart(cartID)
)
go
create table Orders(
	orderID  varchar(100) primary key,
	createAt date,
	shippingCost float,
	status  varchar(100)
)
go
create table OrderDetails(
	OrderID  varchar(100) primary key ,
	productID varchaR(100) not null ,
	quanlity int default 1,
	totalAmount float,
	foreign key (OrderID) references Orders(OrderID),
	foreign key (productID) references Product(productID)
)
go
create table Payment(
	paymentID  varchar(100) primary key,
	accountID varchar(100) not null,
	orderID varchar(100) not null,
	paymentMethod varchar(1000) not null,
	amount float,
	status varchar(1000),
	transactionPaymen varchar(100) ,
	gateway varchar(1000),
	invoiceNumber varchar(100),
	crateAt date not null,
	doneAT Date,
	address varchar(100),
	foreign key (accountID) references Account(accountID),
	foreign key (OrderID) references Orders(OrderID)
)
go
create table Coupon(
	couponID varchar(100) primary key,
	code varchar(100) not null unique,
	discountAmount float not null,
	discountType varchar(100) not null,
	createAt date not null, 
	effectiveDate Date, -- ngay co hieu luc
 	expirationDate date, -- ngay het han
	usageCount float, -- so lan su dung
	minimum_purchase_amount float, -- so tien giam toi thieu
	isActive bit not null,
	accountLimit varchar,
	decription varchar(1000)
)
go

create table ProductReview(
	reviewID varchar(100) primary key,
	accountID varchar(100) not null,
	rating int default 0, -- so luoc xem
	title varchar(100), 
	content varchar(1000),
	createAt date not null,
	likes int default 0,
	dislieks int default 0
)
go

create table NewsBlog(
	blogId varchar(100) primary key,
	title varchar(1000) not null,
	content varchar(5000),
	accountID varchar(100),
	views int default 0,
	CreateAt Date
)
go
create table Comment(
	commentID varchar(100) primary key,
	userID varchar(100) not null, 
	content varchar(5000) not null,
	subCommentID varchar(100),
	reviewID varchar(100),
	blogID varchar(100)

)
go
create table Report(
	reportID varchar(100) primary key,
	content varchar(5000) not null,
	subCommentID varchar(100),
	reviewID varchar(100),
	blogID varchar(100)
)
go

-- insert data
insert into Account(accountID,accountName,password,firstName,lastName,
email,birthday,gender,phoneNum,addressAccount,addressOrder,createAt,lastLogin)
values ('ac001','user001','user001','le','tan','user001@gmail.com','04/04/2000','nam',
			'123454782','hcm','hcm',GETDATE(),GETDATE()),
		('ac002','user002','user002','nguyen','tri','user002@gmail.com','05/05/2000','nam',
			'123454782','hn','hn',GETDATE(),GETDATE());
