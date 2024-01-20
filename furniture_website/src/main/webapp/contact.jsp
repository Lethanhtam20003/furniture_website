<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</style>
<title>Liên hệ</title>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->
	<div class="imgIntroduc">
		<img alt="" src="img/img_larg/breadcrumb.jpg"
			style="width: 1297px; height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> Liên hệ
				</p>
			</div>
		</div>
	</div>
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
		<div class="column">ádjad</div>
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