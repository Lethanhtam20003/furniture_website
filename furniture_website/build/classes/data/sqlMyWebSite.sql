use thuchanh1;
go
drop database MyWebSite;
go
CREATE DATABASE MyWebSite;
go
use MyWebSite;
go
ALTER DATABASE MyWebSite COLLATE Latin1_General_100_CI_AS_SC_UTF8;

go
create table Account(
	accountID nvarchar(100) primary key,
	accountName nvarchar(100) not null unique,
	password nvarchar(100) not null,
	firstName nvarchar(100) not null,
	lastName nvarchar(100) not null,
	email nvarchar(100) not null,
	birthday Date,
	gender nvarchar(100),
	phoneNum nvarchar(100),
	addressAccount nvarchar(100) not null,
	addressOrder nvarchar(100),
	createAt Date  not null,
	lastLogin Date,
	constraint chk_account_gender check (gender like 'nam' or gender like 'nu')
)
go
create table GroupPro(
	groupID nvarchar(100) primary key,
	name nvarchar(100) not null,
	content nvarchar(1000)
);
go
create table Category(
	categoryID nvarchar(100) primary key,
	name nvarchar(100) not null,
	content nvarchar(1000)
);

go

create table Product(
	productID nvarchar(100) primary key,
	productName nvarchar(100) not null,
	categoryID  nvarchar(100),
	groupID nvarchar(100),
	producer nvarchar(1000), -- thuong hieu
	price float,
	type  nvarchar(1000), -- the loai
	decription nvarchar(4000),  -- mo ta
	qualityInStorage int, -- so luong con lai trong kho
	status nvarchar(4000) , -- 
	packeged  nvarchar(1000), -- cach dong goi
	brandOrigin  nvarchar(1000), -- xuat xu
	meterial nvarchar(1000), -- chat lieu
	size nvarchar(1000), -- kich thuoc
	wattage nvarchar(1000), -- cong xuat
	color nvarchar(1000), -- mua sac
	thicknessWood nvarchar(1000), -- do day cua go
	space nvarchar(1000), -- vi tri de
	design nvarchar(1000), -- thiet ke
	timeToUse nvarchar(1000), -- thoi han su dung
	imgPath nvarchar(1000), -- duong dan link anh
	coupon nvarchar(50), -- chuongtrinh giam gia
	dateAdded date, -- ngay nhap hang
	foreign key (categoryID) references Category(categoryID),
	foreign key (groupID) references GroupPro(groupID)
)
go
create table Cart(
	cartID nvarchar(100) primary key,
	accountID nvarchar(100),
	shppingCost float,
	totalPriceSelected float,
	foreign key (accountID) references Account(accountID)
)

go
create table CartDetails(
	cartID  nvarchar(100),
	productID  nvarchar(100) not null  ,
	qualityProduct int default 1,
	price float,
	isGift bit default 0,
	isAvailable bit default 1,
	primary key (cartID,productID),
	foreign key (productID) references product(productID),
	foreign key (cartID) references Cart(cartID)
)
go
create table Orders(
	orderID  nvarchar(100) primary key,
	createAt date,
	shippingCost float,
	status  nvarchar(100)
)
go
create table OrderDetails(
	OrderID  nvarchar(100),
	productID nvarchar(100) not null ,
	quanlity int default 1,
	totalAmount float,
	primary key (OrderID,productID),
	foreign key (OrderID) references Orders(OrderID),
	foreign key (productID) references Product(productID)
)
go
create table Payment(
	paymentID  nvarchar(100) primary key,
	accountID nvarchar(100) not null,
	orderID nvarchar(100) not null,
	paymentMethod nvarchar(1000) not null,
	amount float,
	status nvarchar(1000),
	transactionPaymen nvarchar(100) ,
	gateway nvarchar(1000),
	invoiceNumber nvarchar(100),
	crateAt date not null,
	doneAT Date,
	address nvarchar(100),
	foreign key (accountID) references Account(accountID),
	foreign key (OrderID) references Orders(OrderID)
)
go
create table Coupon(
	couponID nvarchar(100) primary key,
	code nvarchar(100) not null unique,
	discountAmount float not null,
	discountType nvarchar(100) not null,
	createAt date not null, 
	effectiveDate Date, -- ngay co hieu luc
 	expirationDate date, -- ngay het han
	usageCount float, -- so lan su dung
	minimum_purchase_amount float, -- so tien giam toi thieu
	isActive bit not null,
	accountLimit nvarchar,
	decription nvarchar(1000)
)
go

create table ProductReview(
	reviewID nvarchar(100) primary key,
	accountID nvarchar(100) not null,
	rating int default 0, -- so luoc xem
	title nvarchar(100), 
	content nvarchar(1000),
	createAt date not null,
	likes int default 0,
	dislieks int default 0
)
go

create table NewsBlog(
	blogId nvarchar(100) primary key,
	title nvarchar(1000) not null,
	content nvarchar(4000),
	accountID nvarchar(100),
	views int default 0,
	CreateAt Date
)
go
create table Comment(
	commentID nvarchar(100) primary key,
	userID nvarchar(100) not null, 
	content nvarchar(4000) not null,
	subCommentID nvarchar(100),
	reviewID nvarchar(100),
	blogID nvarchar(100)

)
go
create table Report(
	reportID nvarchar(100) primary key,
	content nvarchar(4000) not null,
	subCommentID nvarchar(100),
	reviewID nvarchar(100),
	blogID nvarchar(100)
)
go

-- insert data

