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
);
go
create table Category(
	categoryID varchar(100) primary key,
	name varchar(100) not null,
	content varchar(1000)
);

go
create table Product(
	productID varchar(100) primary key,
	productName varchar(100) not null,
	categoryID  varchar(100),
	groupID varchar(100),
	producer varchar(1000),
	price float,
	type  varchar(1000),
	decription varchar(1000),
	qualityInStorage int, -- so luong con lai trong kho
	status varchar(1000) ,
	packeged  varchar(1000), -- cach dong goi
	brandOrigin  varchar(1000), -- xuat xu
	meterial varchar(1000), -- chat lieu
	size varchar(1000), -- kich thuoc
	wattage varchar(1000), -- cong xuat
	color varchar(1000), -- mua sac
	thicknessWood varchar(1000), -- do day cua go
	space varchar(1000), -- vi tri de
	design varchar(1000), -- thiet ke
	timeToUse varchar(1000), -- thoi han su dung
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
	productID  varchar(100),
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

---Account table
insert into Account(accountID,accountName,password,firstName,lastName,
email,birthday,gender,phoneNum,addressAccount,addressOrder,createAt,lastLogin)
values ('ac001','user001','user001','Le','Tam','user001@gmail.com','04/14/2003','nam',
			'123454782','Ho Chi Minh','15 Mai Chi Tho,tp.Thu Duc,TP.Ho Chi Minh',GETDATE(),GETDATE()),
		('ac002','user002','user002','Nguyen','Tri','user002@gmail.com','07/17/2003','nam',
			'123454382','Ha Noi','81 Nguyen Hue,Dong Da,Ha Noi',GETDATE(),GETDATE()),
		('ac003','user003','user003','Pham','Bac','user003@gmail.com','10/25/2003','nam',
			'125454782','Ho Chi Minh','1998 Quoc Lo 1A,Binh Tri Dong,Quan 12,TP.Ho Chi Minh',GETDATE(),GETDATE()),
		('ac004','user004','user004','Nguyen','Son','user004@gmail.com','11/29/2003','nam',
			'123654782','Ha Noi','15 Han Mac Tu,Cau Giay,Ha Noi',GETDATE(),GETDATE()),
		('ac005','user005','user005','Vo','Tai','user005@gmail.com','02/16/2003','nam',
			'123344782','Binh Dinh','Phong An, Cat Trinh,Phu Cat,Binh Dinh',GETDATE(),GETDATE()),
		('ac006','user006','user006','Ngo','Tan','user006@gmail.com','11/10/2003','nam',
			'125454782','Binh Duong','142 Quoc lo 1K,Di An,Binh Duong',GETDATE(),GETDATE()),
		('ac007','user007','user007','Pham','Tuyet','user007@gmail.com','08/04/2000','nu',
			'125554782','Ho Chi Minh','6 Nguyen Van Ba,Linh Dong,tp.Thu Duc,TP.Ho Chi Minh',GETDATE(),GETDATE()),
		('ac008','user008','user008','Nguyen','Huong','user008@gmail.com','04/04/2000','nu',
			'123654782','Ho Chi Minh','188/32 Tan Ky Tan Quy, phuong Tan Son Nhi,Binh Tan,TP.Ho Chi Minh',GETDATE(),GETDATE()),
		('ac009','user009','user009','Ly','Dan','user009@gmail.com','04/24/2000','nam',
			'123344782','Binh Phuoc','Cong vien Binh Long,Binh Phuoc',GETDATE(),GETDATE()),
		('ac010','user010','user010','Mai','Hoa','user010@gmail.com','09/02/2000','nu',
			'123454342','Binh Duong','15 Duong 18,phuong Dong Ba,Di An,Binh Duong',GETDATE(),GETDATE());



----GroupPro table
insert into GroupPro(groupID,name,content) values 
('gr001','Do Noi That',''),
('gr002','Do Trang Tri',''),
('gr003','Thiet Bi Ve Sinh',''),
('gr004','Den Trang Tri','');


----Category table
insert into Category(categoryID,name,content) values
('c001','Noi that phong khach',''),
('c002','Noi that phong bep',''),
('c003','Noi that phong ngu',''),
('c004','Noi that phong tam',''),
('c005','Ke sach',''),
('c006','Dong ho treo tuong',''),
('c007','Ban ghe Sofa',''),
('c008','Khung tranh anh',''),
('c009','Bon tam',''),
('c010','Voi sen',''),
('c011','Voi Lavabo',''),
('c012','Chau Lavabo',''),
('c013','Den chum',''),
('c014','Den am tran',''),
('c015','Den tha tran',''),
('c016','Den cay-Den ban','');

----Product table
insert into product(productID,productName,categoryID,groupID,wattage,producer,
packeged,brandOrigin,meterial,type,color,thicknessWood,space,design,timeToUse,price,decription,status,qualityInStorage) values
	('p001','Den chum','c013','gr004','Cam ung khong cham,tang giam do cao','Bean Violight','1 den','Trung Quoc',
	'Kim loai son tinh dien + Mika','decoration','Vang','','','','',1750000.0,
	'thiet ke don gian,hien dai, tien nghi, cung do ben cao','',30);
