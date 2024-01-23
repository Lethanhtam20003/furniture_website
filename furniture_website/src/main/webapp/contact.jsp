<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--bootstrap css -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">

<link rel="stylesheet" type="" href="../img/*">
<style type="text/css">
.form-row {
	display: flex;
	flex-direction: column;
	margin-bottom: 10px;
}

input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
}



.imgIntroduc {
	position: relative;
	display: inline-block;
}

.text-overlay {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #F3A270;
	font-size: 30px;
	font-weight: bold;
	text-align: center;
}

.text-overlay2 {
	color: #F3A270;
	font-size: 16px;
	font-weight: normal;
	text-align: center;
}


.column {
	width: 49.5%; /* Đặt chiều rộng cho mỗi cột */
	padding: 10px;
	border: 1px solid #ddd;
}

main {
	display: flex;
	justify-content: space-between;
	padding: 20px;
}
button {
	width: 50%;
	margin-left:150px;
	padding: 10px;
	background-color: #FFCC33;
	color: #fff;
	border: none;
	cursor: pointer;
}

.backgroundSection {
	background-image: url('img/img_larg/breadcrumb.jpg');
	/* Đường dẫn đến hình ảnh */
	background-size: cover;
	/* Tùy chỉnh kích thước hình ảnh để nó che phủ hoàn toàn phần background */
	background-position: center; /* Căn giữa hình ảnh */
	color: #ffffff;
	/* Màu chữ để đảm bảo đọc được trên background hình ảnh */
	height: 200px;
	width: 100%;
}
#map{
height: 400px;
}
</style>
<title>Liên hệ</title>

</head>

<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->

	
	
	<section class="imgIntroduc backgroundSection">
		<div class="text-overlay">
			<p>Giới thiệu</p>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> Liên hệ
				</p>
			</div>
		</div>
	</section>
	<main>
		<div class="column">
			<h6>
				<b>NƠI GIẢI ĐÁP TOÀN BỘ MỌI THẮC MẮC CỦA BẠN?</b>
				</h3>
				<p>Với sứ mệnh "Khách hàng là ưu tiên số 1" chúng tôi luôn mang
					lại giá trị tốt nhất</p>
				<h6>LIÊN HỆ VỚI CHÚNG TÔI</h6>
				<p>Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi và
					chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể.</p>
				<div class="form-row">
					<input type="text" id="fullname" name="fullname"
						placeholder="Full Name" style="">
				</div>
				<div class="form-row">
					<input type="text" id="email" name="email" placeholder="Email"
						style="">
				</div>
				<div class="form-row">
					<input type="text" id="numberPhone" name="numberPhone"
						placeholder="Number Phone" style="">
				</div>
				<div class="form-row">
					<input type="text" id="status" name="status" placeholder="Status"
						style="">
				</div>
				<button type="submit">Send</button>
		</div>
		<div class="column">
			 <iframe
                width="100%"
                height="400"
                frameborder="0"
                scrolling="no"
                marginheight="0"
                marginwidth="0"
                src="https://www.google.com/maps/place/Ph%E1%BA%A7n+m%E1%BB%81m+qu%E1%BA%A3n+l%C3%BD+b%C3%A1n+h%C3%A0ng+Sapo+-+H%E1%BB%93+Ch%C3%AD+Minh/@10.7715264,106.6525131,18z/data=!4m6!3m5!1s0x31752f4964c382dd:0xb61978d7651a271f!8m2!3d10.7715686!4d106.6532635!16s%2Fg%2F11j7nkj2lr?hl=vi-VN&entry=ttu">
            </iframe>
			
		
		</div>
	</main>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->

	<!--bootstrap js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>







