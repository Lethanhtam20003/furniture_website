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
<!--bootstrap js-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<style type="text/css">
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
</style>

<title>Insert title here</title>
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
					<a href="index.jsp" style="color: white">Trang chủ ></a> Tìm Kiếm
				</p>
			</div>
		</div>
	</section>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->

</body>
</html>