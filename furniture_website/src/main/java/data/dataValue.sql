use thucHanh1;
go
use MyWebSite;
go

select * from Product
---Account table
insert into Account(accountID,accountName,password,firstName,lastName,
email,birthday,gender,phoneNum,addressAccount,addressOrder,createAt,lastLogin)
values
		('ac001'
		,'user001'
		,'user001'
		,'Le'
		,'Tam'
		,'user001@gmail.com'
		,'04/14/2003'
		,'nam'
		,'123454782'
		,'Ho Chi Minh'
		,'15 Mai Chi Tho,tp.Thu Duc,TP.Ho Chi Minh'
		,GETDATE()
		,GETDATE()),
		--a2
		('ac002'
		,'user002'
		,'user002'
		,'Nguyen'
		,'Tri'
		,'user002@gmail.com'
		,'07/17/2003'
		,'nam'
		,'123454382'
		,'Ha Noi'
		,'81 Nguyen Hue,Dong Da,Ha Noi'
		,GETDATE()
		,GETDATE()),
		--a3
		('ac003'
		,'user003'
		,'user003'
		,'Pham'
		,'Bac'
		,'user003@gmail.com'
		,'10/25/2003'
		,'nam'
		,'125454782'
		,'Ho Chi Minh'
		,'1998 Quoc Lo 1A,Binh Tri Dong,Quan 12,TP.Ho Chi Minh'
		,GETDATE()
		,GETDATE()),
		--a4
		('ac004'
		,'user004'
		,'user004'
		,'Nguyen'
		,'Son'
		,'user004@gmail.com'
		,'11/29/2003'
		,'nam'
		,'123654782'
		,'Ha Noi'
		,'15 Han Mac Tu,Cau Giay,Ha Noi'
		,GETDATE()
		,GETDATE()),
		--a5
		('ac005'
		,'user005'
		,'user005'
		,'Vo'
		,'Tai'
		,'user005@gmail.com'
		,'02/16/2003'
		,'nam'
		,'123344782'
		,'Binh Dinh','Phong An, Cat Trinh,Phu Cat,Binh Dinh'
		,GETDATE()
		,GETDATE()),
		--a6
		('ac006'
		,'user006'
		,'user006'
		,'Ngo'
		,'Tan'
		,'user006@gmail.com'
		,'11/10/2003'
		,'nam'
		,'125454782'
		,'Binh Duong'
		,'142 Quoc lo 1K,Di An,Binh Duong'
		,GETDATE()
		,GETDATE()),
		--a7
		('ac007'
		,'user007'
		,'user007'
		,'Pham','Tuyet'
		,'user007@gmail.com'
		,'08/04/2000'
		,'nu'
		,'125554782'
		,'Ho Chi Minh'
		,'6 Nguyen Van Ba,Linh Dong,tp.Thu Duc,TP.Ho Chi Minh'
		,GETDATE()
		,GETDATE()),
		--a8
		('ac008'
		,'user008'
		,'user008'
		,'Nguyen'
		,'Huong'
		,'user008@gmail.com'
		,'04/04/2000'
		,'nu'
		,'123654782'
		,'Ho Chi Minh'
		,'188/32 Tan Ky Tan Quy, phuong Tan Son Nhi,Binh Tan,TP.Ho Chi Minh'
		,GETDATE()
		,GETDATE()),
		--a9
		('ac009'
		,'user009'
		,'user009'
		,'Ly'
		,'Dan'
		,'user009@gmail.com'
		,'04/24/2000'
		,'nam'
		,'123344782'
		,'Binh Phuoc'
		,'Cong vien Binh Long,Binh Phuoc'
		,GETDATE()
		,GETDATE()),
		--a10
		('ac010'
		,'user010'
		,'user010'
		,'Mai'
		,'Hoa'
		,'user010@gmail.com'
		,'09/02/2000'
		,'nu'
		,'123454342'
		,'Binh Duong'
		,'15 Duong 18,phuong Dong Ba,Di An,Binh Duong'
		,GETDATE()
		,GETDATE()),
		--ac011
		('ac011'
		,'user011'
		,'user011'
		,'Vo'
		,'Hung'
		,'user011@gmail.com'
		,'12/22/2003'
		,'nam'
		,'0938487221'
		,'Ha Noi'
		,'998 Hai Ba Trung,Cau Giay,Ha Noi'
		,GETDATE()
		,GETDATE());

		

go


----Product table
insert into product(productID,productName
,producer,price,type,decription,qualityInStorage,status
,packeged,brandOrigin,meterial,size,wattage,color,thicknessWood
,space,design,timeToUse,imgPath,coupon,dateAdded ) values
	--p1
	('p001'	-- id
	,'Đèn chùm ánh sáng mặt dây chuyền lá thủy tinh'	 -- name
	,'Bean Violight' --  producer
	,2055000  -- price
	,'decorativeLights' -- type
	,'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại 
	-  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm,
	tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, 
	được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... 
	vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn' -- decription
	,5 -- qualityInStorage
	,'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại 
	-  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm,
	tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... 
	vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn
	Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng...
	vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn...' -- status
	,'	1 đèn' -- packeged
	,' Bean Violight ' -- brandOrigin
	,'	Kim loại sơn tỉnh điện + Mika' -- meterial
	,'	D400mm hoặc D600mm' -- size
	,'Cảm ứng không chạm, tăng giảm độ cao' -- wattage
	,'' -- color
	,'' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_den1.webp' --path img
	,'' -- coupon
	,'1/1/2023' --ngay nhap hang
	),

	--p2
	('p002'	-- id
	,'Đôn lục bình đan thủ công trang trí phòng khách'	 -- name
	,'	Bean Oem' --  producer
	,530000  -- price
	,'handMade' -- type
	,'Đôn lục bình là một sản phẩm đa năng, dễ kết hợp với nhiều không gian từ đơn giản đến sang trọng. Sản phẩm thích hợp làm tăng vẻ đẹp của các không gian như phòng khách, phòng ngủ, homestay, quán cà phê' -- decription
	,30 -- qualityInStorage
	,'Đôn lục bình là một sản phẩm đa năng, dễ kết hợp với nhiều không gian từ đơn giản đến sang trọng. Sản phẩm thích hợp làm tăng vẻ đẹp của các không gian như phòng khách, phòng ngủ, homestay, quán cà phê,...Banner
	Ưu điểm của đôn lục bình
	Đôn lục bình có thể dùng làm chiếc bàn phụ, kết hợp với chiếc bàn trà một cách hài hòa để tiếp khách khi cần thiết.
	Đôn lục bình cũng có thể làm một chiếc ghế đôn bắt mắt hoặc một chiếc kệ để đặt một vài món đồ trang trí giúp tăng tính thẩm mỹ cho không gian.
	Bạn còn có thể tận dụng sản phẩm như một chiếc kệ đầu giường mang nét đẹp nhẹ nhàng, đơn giản.
	Màu sắc tự nhiên, mùi hương nhẹ nhàng rất đặc trưng của lục bình và cói sẽ đem lại cho bạn cảm giác bình yên, thư thái.
	Sản phẩm có kiểu dáng nhỏ gọn, tiện dụng, tiết kiệm không gian, dễ dàng xếp gọn hoặc di chuyển trong quá trình sử dụng.
	Đôn lục bình có thời gian sử dụng từ 3 - 5 năm trong môi trường nhiệt độ ôn hoà, không có độ ẩm cao, rất thích hợp với môi trường điều hoà hoặc các căn hộ ở chung cư.
	Chất liệu của đôn lục bình
	Đôn lục bình làm từ chất liệu chính là lục bình, kết hợp cói và bẹ ngô 100% tự nhiên.
	Hướng dẫn sử dụng
	Đôn lục bình có thể dùng làm ghế ngồi hoặc làm bàn đựng đồ trang trí trong phòng khách.
	Bảo quản
	Bảo quản sản phẩm ở nơi khô ráo, tránh ẩm ướt, hạn chế tiếp xúc với ánh nắng mặt trời.' -- status
	,'' -- packeged
	,'	Việt Nam' -- brandOrigin
	,'' -- meterial
	,'40cm x 40cm (rộng x cao)' -- size
	,'' -- wattage
	,'	Tự nhiên' -- color
	,'' -- thicknessWood
	,'' -- space
	,'Nhỏ gọn, dễ di chuyển' -- design
	,'	Lên đến 3 - 5 năm' -- timeToUse
	,'img\img_larg\pro_ghe1.webp' --path img
	,'' -- coupon
	,'1/12/2023' --ngay nhap hang
	),

	--p3
	('p003'	,'Ke giay 6 tang '	
	,'Go MDF' --  producer
	,1000000.0 -- price
	,'decoration' -- type
	,'Co suc chua 18 doi giay, con co the su dung
	de trung bay sach doc, cay canh,lo hoa, chong tray va chong am cao' -- decription
	,20 -- qualityInStorage
	,'
	Bàn Trang Trí MOBILIA BH-488 1.2M được làm bằng chất liệu gỗ MDF bền đẹp, chắc chắn. Chất liệu gỗ cao cấp đã trải qua quá trình xử lý tỉ mỉ, cho khả năng chống mối mọt, chống ẩm mốc, đồng thời chịu lực cao, chịu được các va đập tốt nên không bị biến dạng, cong vênh trong quá trình sử dụng.
	Banner Thiết kế tinh tế, chắc chắn Bàn có thiết kế tinh tế với từng đường nét chế tác tỉ mỉ  tự nhiên đẹp mắt, giúp tạo nên nét trang trọng hơn cho bộ ấm trà hay đĩa hoa quả khi được đặt lên trên. 
	Thuận tiện bảo quản gọn gàng nhiều vật dụng khác nhau Phần ngăn kéo cùng hộc đựng rộng rãi được tích hợp bên dưới, tiện lợi để bạn có thể sắp xếp gọn gàng sách báo hoặc các đồ vật lưu niệm khác... Chân đế nguyên khối chắc chắn, giúp bàn đứng vững hơn và tránh tình trạng bị xô dịch gây ảnh hưởng đến sàn nhà.
	Tạo nét sang trọng cho không gian phòng khách Bàn Trang Trí MOBILIA với màu sắc trang nhã, bạn có thể dễ dàng kết hợp với các vật dụng trang trí nội thất khác, giúp cho không gian phòng khách của gia đình thêm phần sang trọng và hiện đại.
' -- status
	,'No Brand' -- packeged
	,'Viet Nam' -- brandOrigin
	,'Phu kien kem theo: 1 giay huong dan lap rap va 1 bo oc dung de lap dat'-- meterial 
	,'' -- size
	,'' -- wattage
	,'Nau' -- color
	,'18mm' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_ke1.webp' --path img
	,'' -- coupon
	,'3/22/2023' --ngay nhap hang
	),	

	--p4
	('p004'	,'Chậu Lavabo Toto tròn đặt bàn '	
	,'Bean Toto' --  producer
	,3500000.0 -- price
	,'sanitaryEquiment' -- type
	,'Dòng sản phẩm chậu rửa lavabo treo tường American Standard WP-F511 dòng La Vitacủa hãng thiết bị vệ sinh American Standard
	Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn' -- decription
	,15 -- qualityInStorage
	,'Dòng sản phẩm chậu rửa Lavabo Toto tròn đặt bàn dòng La Vitacủa hãng thiết bị vệ sinh American Standard Với đặc tính kháng khẩn, dễ lau chùi Chất liệu của lavabo American Standard WP-F511 bằng sứ cao cấp, chống bám bẩn Kích thước: 600mm Không bao gồm phụ kiện(vòi, bộ xả,...)
	- ĐẶC ĐIỂM NỔI BẬT:
	+ Kiểu dáng độc đáo, hiện đại dạng đặt nổi trên bàn
	+ Thiết kế với lỗ thoát tràn dạng trang trí
	+ Bề mặt nhẵn, mịn dễ dàng vệ sinhBanner
	- Chế Độ Bảo Hành :
	+ Bảo hành 2 năm (24 tháng) với sản phẩm kể từ ngày nhận hàng
	- ĐÓNG GÓI SẢN PHẨM:
	+ Chất lượng hàng mới 100% theo tiêu chuẩn của toto
	+ Đóng gói theo tiêu chuẩn của toto' -- status
	,'Bao gom voi xa va bo xa' -- packeged
	,'Hoa Ky' -- brandOrigin
	,'	Sứ cao cấp, chống bám bẩn' -- meterial
	,'	600mm' -- size
	,'' -- wattage
	,'Trang' -- color
	,'' -- thicknessWood
	,'Dat noi tren ban' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_lavabo3.webp' --path img
	,'' -- coupon
	,'6/24/2023' --ngay nhap hang
	),

	--p5
	('p005'	,'Ghe an Basil HomeLand'	
	,'HomeLand' --  producer
	,750000.0 -- price
	,'decoration' -- type
	,'Thiet ke theo kieu dang co ban, co gam mau phu hop voi khong gian noi that' -- decription
	,20 -- qualityInStorage
	,'' -- status
	,'Bao gom voi xa va bo xa' -- packeged
	,'Viet Nam' -- brandOrigin
	,'Thep boc PVC/PU' -- meterial
	,'Kich thuoc:460x610x980mmH' -- size
	,'' -- wattage
	,'Den,Nau' -- color
	,'' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_ghe5.webp' --path img
	,'' -- coupon
	,'6/5/2023' --ngay nhap hang
	),
	--p6
	('p006'	-- id
	,'Bàn trang trí Mobilia BH-488 1.2M White OAK'	 -- name
	,'' --  producer
	,7000000  -- price
	,'furniture' -- type
	,'Bàn Trang Trí MOBILIA BH-488 1.2M được làm bằng chất liệu gỗ MDF bền đẹp, chắc chắn.
	Chất liệu gỗ cao cấp đã trải qua quá trình xử lý tỉ mỉ, cho khả năng chống mối mọt, chống ẩm mốc,
	đồng thời chịu lực cao, chịu được các va đập tốt nên không bị biến dạng, cong vênh trong quá trình sử dụng.' -- decription
	,20 -- qualityInStorage
	,'Bàn Trang Trí MOBILIA BH-488 1.2M được làm bằng chất liệu gỗ MDF bền đẹp, chắc chắn. 
	Chất liệu gỗ cao cấp đã trải qua quá trình xử lý tỉ mỉ, cho khả năng chống mối mọt, chống ẩm mốc, đồng thời chịu lực cao, chịu được các 
	va đập tốt nên không bị biến dạng, cong vênh trong quá trình sử dụng.Banner
	Thiết kế tinh tế, chắc chắn
	Bàn có thiết kế tinh tế với từng đường nét chế tác tỉ mỉ  tự nhiên đẹp mắt, giúp tạo nên nét trang trọng hơn cho bộ ấm trà hay đĩa hoa quả khi được đặt lên trên.
	Thuận tiện bảo quản gọn gàng nhiều vật dụng khác nhau
	Phần ngăn kéo cùng hộc đựng rộng rãi được tích hợp bên dưới, tiện lợi để bạn có thể sắp xếp gọn gàng sách báo hoặc các đồ vật lưu niệm khác... Chân đế nguyên khối chắc chắn, giúp bàn đứng vững hơn và tránh tình trạng bị xô dịch gây ảnh hưởng đến sàn nhà.
	Tạo nét sang trọng cho không gian phòng khách
	Bàn Trang Trí MOBILIA với màu sắc trang nhã, bạn có thể dễ dàng kết hợp với các vật dụng trang trí nội thất khác, giúp cho không gian phòng khách của gia đình thêm phần sang trọng và hiện đại.' -- status
	,'' -- packeged
	,'SIMPLEHOME (Thương Hiệu Cao Cấp)' -- brandOrigin
	,'Gỗ công nghiệp' -- meterial
	,'120x40x75 cm' -- size
	,'' -- wattage
	,'Sồi' -- color
	,'' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_ban1.webp' --path img
	,'' -- coupon
	,'7/4/2023' --ngay nhap hang
	),

	--p7
	('p007'	-- id
	,'Kệ 3 Tầng 290-3 Trắng'	 -- name
	,'SIMPLEHOME (Thương Hiệu Cao Cấp)' --  producer
	,2490000  -- price
	,'furniture' -- type
	,'Kệ Đa năng nhập khẩu, vừa tiện lợi phù hợp với các mẹ bỉm sữa , tiệm spa để làm xe đẩy spa. kệ spa, kệ để sách kệ để đồ nhà bếp thông minh Sản phẩm được làm bằng chất liệu nhựa ABS, PP có độ bền cao' -- decription
	,33 -- qualityInStorage
	,'Kệ Đa năng nhập khẩu, vừa tiện lợi phù hợp với các mẹ bỉm sữa , tiệm spa để làm xe đẩy spa. kệ spa, kệ để sách kệ để đồ nhà bếp thông minh Sản phẩm được làm bằng chất liệu nhựa ABS, PP có độ bền cao
		Hàng có sẵn
		Có khung sắt chắc chắn.
		Khay được làm nhiều lỗ thoáng tiện và tăng tính thẩm mỹ.
		Kích Thước 42X35X87 Cm khay Nhựa ABS
		Kích thước 42*30*86 Cm Khay Nhựa PP' -- status
	,'' -- packeged
	,'Simplehome' -- brandOrigin
	,'MDF' -- meterial
	,'	80x30x85.5 cm' -- size
	,'' -- wattage
	,'	Trắng' -- color
	,'' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_ghe5.webp' --path img
	,'' -- coupon
	,'5/15/2023' --ngay nhap hang
	),
	
	--p8
	('p008'	-- id
	,'Vòi rửa chén lạnh 2 đầu inox 304 Hobby'	 -- name
	,'Hobby Home Decor' --  producer
	,390000  -- price
	,'sanitaryEquiment' -- type
	,'Vòi rửa chén lạnh 2 đầu inox 304 Hobby được làm từ chất liệu cao cấp sáng bóng, không rỉ sét, vòi tích hợp có 2 cần rửa chén, thuận tiện cho 2 người sử dụng cùng lúc' -- decription
	,15 -- qualityInStoraged
	,'Đặc điểm nổi bật của sản phẩm

Chất liệu: Inox 304 không rỉ sét
Có 2 đầu xả
Tặng kèm dây cấp nước dài 60cm
Phù hợp cho chậu rửa không dùng nước nóng lạnh
Trọng lượng: 834gram
Phù hợp cho mọi chậu rửa chén
Sản phẩm thiết kế phù hợp cho mọi không gian bếp' -- status
	,'1 vòi kèm dây cấp nước dài 60cm' -- packeged
	,'Việt Nam' -- brandOrigin
	,'Inox 304 không rỉ sét' -- meterial
	,'834gram' -- size
	,'' -- wattage
	,'' -- color
	,'' -- thicknessWood
	,'Mọi không gian bếp' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_voi6.webp' --path img
	,'' -- coupon
	,'12/20/2023' --ngay nhap hang
	),

	--p9
	('p009'	-- id
	,'Vòi xịt cho chậu rửa chén Inox 304 Hobby'	 -- name
	,'Hobby Home Decor' --  producer
	, 290000 -- price
	,'sanitaryEquiment' -- type
	,'Vòi xịt cho chậu rửa chén Hobby Home Decor GB1 được làm từ chất liệu inox 304 cao cấp không gỉ, dễ dàng lắp ráp và gắn vào chậu rửa chén bát, giúp các bà nội trợ dễ dàng sử dụng để làm sạch chậu rửa một cách đơn giản, nhẹ nhàng.' -- decription
	, 22-- qualityInStoraged
	,'Vòi xịt cho chậu rửa chén Hobby Home Decor GB1 được làm từ chất liệu inox 304 cao cấp không gỉ, dễ dàng lắp ráp và gắn vào chậu rửa chén bát, giúp các bà nội trợ dễ dàng sử dụng để làm sạch chậu rửa một cách đơn giản, nhẹ nhàng.

Banner

Tính năng và thông tin sản phẩm

Chất liệu Inox 304 không rỉ sét
Phù hợp cho chậu rửa chén có lỗ 23-28mm
Dây vòi xịt 1.5m
Rất tiện để xịt rửa bồn rửa chén
Sản phẩm decor dành cho chung cư căn hộ nhà phố' -- status
	,'	1 vòi kèm dây cấp nước dài 60cm' -- packeged
	,'Trung Quốc' -- brandOrigin
	,'	Inox 304 không rỉ sét' -- meterial
	,'1.5m' -- size
	,'' -- wattage
	,'' -- color
	,'' -- thicknessWood
	,'' -- space
	,'Dành cho chung cư căn hộ nhà phố' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_voi7.webp' --path img
	,'' -- coupon
	,'12/12/2023' --ngay nhap hang
	),

	--p10
	('p010'	-- id
	,'Vòi xả chậu lavabo lạnh Hobby'	 -- name
	,'Hobby Home Decor' --  producer
	,290000  -- price
	,'sanitaryEquiment' -- type
	,'Vòi xả chậu lavabo lạnh Hobby Home Decor LBL2 Inox 304 được thiết kế mang xu hướng sang trọng, hiện đại, phù hợp cho mọi lavabo rửa mặt thông thường từ chậu sứ cho tới chậu đá.' -- decription
	,16 -- qualityInStoraged
	,'Vòi xả chậu lavabo lạnh Hobby Home Decor LBL2 Inox 304 được thiết kế mang xu hướng sang trọng, hiện đại, phù hợp cho mọi lavabo rửa mặt thông thường từ chậu sứ cho tới chậu đá.

Banner

Tính năng nổi bật 

Vòi được làm từ chất liệu inox cao cấp, chống gỉ và oxy hóa
Đầu vòi lavabo được thiết lọc và tạo bọt trong dòng chảy giúp tiết kiệm nước, không bắn nước.
Sản phẩm được làm bằng inox 304 cao cấp đúc nguyên khối độ bền cao, thích nghi với hầu hết mọi môi trường nước, mang lại tuổi thọ cao và khả năng bền đẹp với thời gian.' -- status
	,'' -- packeged
	,'Trung Quốc' -- brandOrigin
	,'Inox 304 không rỉ sét' -- meterial
	,'Lỗ gắn tối thiếu	2cm' -- size
	,'' -- wattage
	,'' -- color
	,'' -- thicknessWood
	,'Mọi chậu rửa từ sứ tới chậu đá' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_voi8.webp' --path img
	,'' -- coupon
	,'5/1/2023' --ngay nhap hang
	),

	--p11
	('p011'	-- id
	,'Đèn chùm ánh sáng mặt dây chuyền lá thủy tinh'	 -- name
	,'Bean Violight' --  producer
	,2055000  -- price
	,'decorativeLights' -- type
	,'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,
	showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn' -- decription
	,4 -- qualityInStoraged
	,'Đèn trang trí phòng khách luôn là một trong những vấn đề quan tâm hàng đầu của mỗi công trình. Mẫu đèn trang trí  chùm hiện đại -  
	thiết kế thả ngang, ống led nghệ thuật DC-4108 với thiết kế đơn giản, hiện đại, tiện nghi, cùng độ bền cao sẽ là một 
	sự lựa chọn mua sắm, tham khảo rất tốt đối với quý Khách hàng. Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ,
	được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn,  showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn
	Sản phẩm với chất liệu kim loại sơn tĩnh điện, sử dụng bóng Led 3 chế độ, được sử dụng rất nhiều trong trang trí phòng khách, bàn ăn, 
	showroom, shop, sảnh lễ tân, văn phòng... vừa đảm bảo ánh sáng tốt, và làm không gian trở nên mới lạ, thu hút hơn...' -- status
	,'1 đèn' -- packeged
	,'	Trung Quốc' -- brandOrigin
	,'	Kim loại sơn tỉnh điện + Mika' -- meterial
	,'	D400mm hoặc D600mm' -- size
	,'	Cảm ứng không chạm, tăng giảm độ cao' -- wattage
	,'' -- color
	,'' -- thicknessWood
	,'' -- space
	,'' -- design
	,'' -- timeToUse
	,'img\img_larg\pro_den8.webp' --path img
	,'' -- coupon
	,'5/25/2023' --ngay nhap hang
	),

	--p12
	('p012'	-- id
	,'Đèn Tre Đám Mây'	 -- name
	,'Làng nghề đan truyền thống Việt Nam' -- producer
	,290000  -- price
	,'HandMade' --  type
	,'Đây là sản phẩm thủ công được làm từ chất liệu tự nhiên tại Việt Nam. 
	Tinh giản, hiện đại nhưng vẫn giữ được hồn cốt chân quê, thẩm mỹ bền vững và đa ứng dụng trong cuộc sống' -- decription
	, 5 -- qualityInStoraged
	,'Sản phẩm thủ công được làm từ tre. Được xử lý và hoàn thiện tỷ mỉ, đa ứng dụng trong cuộc sống đời thường, vệ sinh dễ dàng ' -- status
	,'' -- packeged		 -decorativeLights
	,'' -- brandOrigin	 -decorativeLights							   -furniture
	,'' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'62x43x23cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'màu nâu tự nhiên' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'Thiết kế nhiều kích thước, hình dạng khác nhau' -- design								-decoration    -handMade
	,'10 năm' -- timeToUse										   -handMade
	,'img\productImg\z3351589896993_71679c46d12911bcd0c4688afcd986fb_3b6dd30d92564b9cba351e1b4b01abc0_1024x1024.jpg' --path img
	,'' -- coupon
	,'06/28/2023' --ngay nhap hang
	),

	--p13
	('p013'	-- id
	,'Giường Ngủ Gỗ Tràm MOHO MALAGA'	 -- name
	,'Mr.Nicolai Lehn' -- producer
	,3090000  -- price
	,'Furniture' --  type
	,'Thành phố MALAGA ngập tràn ánh sáng mặt trời, lắng đọng chút yên bình của khung cảnh chim bồ câu trên những cây ngô đồng tại quảng trường chính 
	là nguồn cảm hứng tạo thiết kế cho bộ sưu tập nội thất MALAGA. 
	Kiểu dáng thiết kế tối giản,mang đến sự sang trọng nhưng rất ấm cúng.' -- decription
	, 2 -- qualityInStoraged
	,'Sản phẩm làm từ gỗ tràm tự nhiên đảm bảo độ chắc chắn cao,chống công vênh, mối mọt. Với thiết kế nguyên tấm, 
	phản giường giúp kết cấu của toàn bộ giường ngủ trở nên vững chắc hơn, có thể chịu lực các tấm nệm giày lên đến 30cm.
	Khung đỡ giường ngủ cố định được làm bằng sắt kết hợp với vạt giường gỗ, nhân đôi sự chắc chắn.Thiết kế không chân hiện đại' -- status
	,'' -- packeged		 -decorativeLights
	,'Đan Mạch' -- brandOrigin	 -decorativeLights							   -furniture
	,'Gỗ tràm và gỗ plywood' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'Dài 200cm x Rộng 120cm/160cm/180cm, Cao đến đầu giường 77cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'màu nâu trầm' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'img\productImg\pro_nau_noi_that_moho_giuo_ngu_malaga_302_1m2_1_49fc192023254e1591849c7f359b6d06_master.jpg' --path img
	,'' -- coupon
	,'12/28/2023' --ngay nhap hang
	),

	--p14
		
	('p014'	-- id
	,'Tranh Line Art '	 -- name
	,'' -- producer
	,460000  -- price
	,'Decoration' --  type
	,'Sản phẩm khung kính gỗ bao gồm tranh in KTS chất lượng cao. Nhấn mạnh vẻ đẹp dung dị từ các vật liệu tự nhiên. Phù hợp dành cho nhiều không gian nội thất mộc mạc' -- decription
	, 4 -- qualityInStoraged
	,'Với vật liệu tự nhiên, toát lên vẻ đẹp mộc mạc giản dị. Kích thước đa dạng phù hợp cho nhiều sự lựa chọn của khách hàng' -- status
	,'' -- packeged		 -decorativeLights
	,'Pháp' -- brandOrigin	 -decorativeLights							   -furniture
	,'Gỗ thông và nhựa composite' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'40x60x1.5 cm/ 50x70xx1.5 cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'Màu đa dạng phù hợp không gian của gia đình bạn' -- color								-decoration    -handMade   -furniture
	,'3cm' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'Thiết kế tuy đơn giản nhưng dễ vỡ' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'\img\productImg\pro_khung_go_thong_022225.webp' --path img
	,'' -- coupon
	,'01/14/2024' --ngay nhap hang
	),

		--p15
		
	('p015'	-- id
	,'Bồn Tắm Độc Lập Kramer'	 -- name
	,'Các kỹ sư của Kramer' -- producer
	,26040000  -- price
	,'SanitaryEquiment' --  type
	,'Bồn tắm độc lập Kramer C-3012 nhập khẩu chính hãng, kiểu dáng hiện đại với các ưu điểm vượt trội so với các sản phẩm trên thị trường.
	Với đội ngũ kỹ sư thiết kế giàu kinh nghiệm, nguyên liệu sản xuất an toàn thân thiện môi trường.
	Là mẫu bồn tắm ngâm độc lập, có tính thẩm mỹ cao với công nghệ men phủ nano chống trầy xước, ố vàng.
	Tô điểm thêm cho không gian phòng tắm đẹp, sang trọng và bền bỉ với thời gian' -- decription
	, 2 -- qualityInStoraged
	,'Kích thước thích hợp với phòng tắm không quá lớn. Nguyên vật liệu sản xuất an toàn thân thiện với môi trường.
	Tính thẩm mỹ cao với công nghệ men phủ nano chống trầy xước, ố vàng. Dung tích nước lên tới 350 lít. 
	Lỗ xả được thiết kế ở giữa bồn tắm, dễ dàng xả nước đi sau khi sử dụng xong.
	Khe chống tràn được thiết kế gần thành bồn, với lỗ thoát to và được cách điệu bằng thanh kim loại càng tăng thêm tính thẩm mỹ cho sản phẩm.' -- status
	,'' -- packeged		 -decorativeLights
	,'Đức' -- brandOrigin	 -decorativeLights							   -furniture
	,'Nhựa Acrylic' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'1500 x 700 x 600 mm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'Trắng' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'Lựa chọn vị trí phù hợp trong phòng tắm của khách hàng' -- space																			-SanitaryEquiment
	,'' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'\img\productImg\27.jpg' --path img
	,'' -- coupon
	,'12/14/2023' --ngay nhap hang
	),

	--p016
	('p016'	-- id
	,'Đèn Chùm Pha Lê Hiện Đại'	 -- name
	,'Các kỹ sư của Trung Quốc' -- producer
	,2980000  -- price
	,'Decorative Light' --  type
	,'Thiết kế hiện đại, trang trí phù hợp ở mọi không gian, đơn giản nhưng không kém tinh tế và sang trọng' -- decription
	, 2 -- qualityInStoraged
	,'Chao đèn và tô đáy thả đính viền thẻ pha lê K9.Thân và tay đèn bằng hợp kim xi màu vàng đồng.Thiết kế sang trọng' -- status
	,'1 đèn' -- packeged		 -decorativeLights
	,'Trung Quốc' -- brandOrigin	 -decorativeLights							   -furniture
	,'Hợp kim kim loại, pha lê' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'750-H500' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'Công suất thấp nhưng hiệu năng cao' -- wattage		 -decorativeLights
	,'' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'\img\productImg\den-chum-led-kieu-moi.jpg' --path img
	,'' -- coupon
	,'01/02/2024' --ngay nhap hang
	),

	--p17
	('p017'	-- id
	,'Cây Kim Ngân Đơn x Chậu Gốm Sứ Kanso'	 -- name
	,'người dân Mexico' -- producer
	,200000  -- price
	,'Decoration' --  type
	,'Kim Ngân là loại cây có thân chắc chắn, khá dẻo dai.
	Có màu xanh mướt và hình dáng đặc trưng, xòe rộng như một bàn tay nên người ta thường gọi là lá kép chân vịt hoặc lá chân chim.
	Kim Ngân được mệnh danh là loài cây mang đến nhiều may mắn, tài lộc cho gia đủ nên còn được gọi bằng cái tên tiếng Anh là Money Tree' -- decription
	, 5 -- qualityInStoraged
	,'Phương pháp trồng dễ dàng, trồng không đất, nhỏ gọn phù hợp với mọi không gian trong nhà' -- status
	,'' -- packeged		 -decorativeLights
	,'' -- brandOrigin	 -decorativeLights							   -furniture
	,'' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'6.5 - 10cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'Thiết kế nhỏ và gọn nhẹ' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'img\productImg\kim-ngan-don-9x-garden-4_caebbf27f29f43abb7485124efa78e4c_1024x1024.webp' --path img
	,'' -- coupon
	,'01/10/2024' --ngay nhap hang
	),

	--p18
	('p018'	-- id
	,'Bồn Cầu 1 Khối Geberit Kramer'	 -- name
	,'Kỹ sư của Kramer' -- producer
	,5000000  -- price
	,'SanitaryEquiment' --  type
	,'Là mẫu bồn cầu 1 khối thiết kế phù hợp, chất lượng cao, giảm tối đa lực cho sàn nhà vệ sinh khi lắp đặt.
	Bề mặt của các sản phẩm Bồn Cầu 1 Khối Geberit Kramer KB-8075 được phủ men Ceramic giúp bề mặt luôn sạch sẽ, sáng bóng, ngăn ngừa vi khuẩn tối đa, giúp bồn cầu không bị ố vàng.
	Đường chống tràn giúp nước tràn trực tiếp xuống bồn cầu. Tránh hiện tượng nước tràn ra sàn nhà.' -- decription
	, 3 -- qualityInStoraged
	,'Kích thước phù hợp, lượng nước xả tới 3 lít, thiết kế thân kín sang trọng' -- status
	,'' -- packeged		 -decorativeLights
	,'' -- brandOrigin	 -decorativeLights							   -furniture
	,'Ceramic' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'Không gian đặt phụ thuộc vào kích thước nhà vệ sinh của khách hàng' -- space																			-SanitaryEquiment
	,'' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'img\productImg\8-2.jpg' --path img
	,'' -- coupon
	,'08/10/2023' --ngay nhap hang
	),

	--p19
	('p019'	-- id
	,'Sọt Cói Se Đan Thưa'	 -- name
	,'Làng nghề đan cói truyền thống miền Nam' -- producer
	,630000  -- price
	,'HandMade' --  type
	,'Dùng để đựng đồ, kích thước được làm theo ý khách hàng, trang trí phù hợp ở trong nhà, Chất liệu từ thiên nhiên đem tới không khí trong lành' -- decription
	, 3 -- qualityInStoraged
	,'Đây là sản phẩm thủ công được làm từ chất liệu tự nhiên tại Việt Nam. 
	Chúng mình đã đi dọc vùng nguyên liệu từ Bắc vào Nam, khám phá từng điểm làng nghề lớn nhỏ, để chọn lọc, phát triển.
	Chất liệu tự nhiên, xử lý và hoàn thiện tỉ mỉ.
	Tinh giản, hiện đại nhưng vẫn giữ được hồn cốt chân quê.
	Thẩm mỹ, bền vững, đa ứng dụng cho cuộc sống đời thường.' -- status
	,'' -- packeged		 -decorativeLights
	,'' -- brandOrigin	 -decorativeLights							   -furniture
	,'' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'45 x 32 x 57cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'màu vàng nâu tự nhiên' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'Thiết kế gọn nhẹ nhưng dễ hư hỏng khi va chạm mạnh' -- design								-decoration    -handMade
	,'4 năm' -- timeToUse										   -handMade
	,'img\productImg\h_34_863f448bf42b454096b96f590de17796_1024x1024.jpg' --path img
	,'' -- coupon
	,'09/10/2023' --ngay nhap hang
	),

		--p20
	('p020'	-- id
	,'Bộ Bàn Ăn Gỗ 4 Ghế '	 -- name
	,'' -- producer
	,6950000  -- price
	,'Furniture' --  type
	,'Kích thước phù hợp, màu gỗ tự nhiên thu hút mắt nhìn, có khả năng chịu lực tốt và độ bền cao, thiết kế hiện đại' -- decription
	, 3 -- qualityInStoraged
	,'Sử dụng nhiều loại gỗ từ tự nhiên, Chịu được lực và độ bền cao, kích thước phù hợp với vị trí của nhà' -- status
	,'' -- packeged		 -decorativeLights
	,'Na Uy' -- brandOrigin	 -decorativeLights							   -furniture
	,'Mặt bàn: Gỗ công nghiệp PB, Chân bàn: gỗ cao su tự nhiên,Ghế: gỗ cao su tự nhiên/ gỗ tần bì tự nhiên' -- meterial		 -decorativeLights    						   -furniture		-SanitaryEquiment
	,'Bàn:140 x 75 x 73, Ghế 50x 51x 81cm' -- size			 -decorativeLights	-decoration	   -handMade   -furniture       
	,'' -- wattage		 -decorativeLights
	,'màu vàng nâu tự nhiên' -- color								-decoration    -handMade   -furniture
	,'' -- thicknessWood						-decoration				   -furniture
	,'' -- space																			-SanitaryEquiment
	,'' -- design								-decoration    -handMade
	,'' -- timeToUse										   -handMade
	,'img\productImg\pro_mau_tu_nhien_noi_that_moho_bo_ban_an_oslo_4_ghe_malaga_1_88a11f4edfdc4e02b465f0cbd77b4b18_master.jpg' --path img
	,'' -- coupon
	,'10/10/2023' --ngay nhap hang
	);



	go
----Cart table
insert into Cart(cartID,accountID,shppingCost,totalPriceSelected) values
('ca001','ac001',30000.0,0.0),
('ca002','ac002',50000.0,0.0),
('ca003','ac003',70000.0,0.0),
('ca004','ac004',100000.0,0.0);

----CartDetails table
insert into CartDetails(cartID,productID,qualityProduct,price,isGift,isAvailable) values
('ca001','p002',1,530000.0,0,1),
('ca001','p001',1,2055000.0,0,1),
('ca002','p001',2,2055000.0 *2,1,1),
('ca003','p003',5,1000000.0*5,0,1),
('ca004','p004',7,3500000.0*7,0,1),
('ca003','p005',3,750000.0*3,1,1);

----Order table
insert into Orders(orderID,createAt,shippingCost,status) values
('or001','11/14/2023',70000.0,''),
('or002','10/28/2023',30000.0,''),
('or003','09/30/2023',100000.0,''),
('or004','12/15/2023',50000.0,'');

----OrderDetails table
insert into OrderDetails(OrderID,productID,quanlity,totalAmount) values
('or001','p002',10,5000000.0),
('or002','p002',10,5000000.0),
('or002','p003',10,5000000.0),
('or003','p002',10,5000000.0),
('or004','p002',10,5000000.0),
('or004','p003',10,5000000.0);


