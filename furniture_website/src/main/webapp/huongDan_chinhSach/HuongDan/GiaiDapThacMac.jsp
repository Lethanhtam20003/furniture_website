<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
</style>
<!--bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<title>Giải đáp thắc mắc</title>
</head>
<body>

	<div class="imgIntroduc">
		<img alt="" src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ ></a>  Giải đáp thắc mắc</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="turl" style="margin: 30px">
		<p><b>Khách hàng ở Tỉnh hoặc ở nước ngoài có mua được trên web không? Cách giao dịch như thế nào?</b></p>
			<p>Hoàn toàn có thể được, Internet đã tạo ra môi trường làm việc không
			 giới hạn khoảng cách địa lý. Hiện nay chúng tôi đã phục vụ 
			 được hơn 600.000 khách hàng trên toàn quốc và ở nước ngoài</p>
			<p>Cách giao dịch khá đơn giản bạn chỉ cần thêm sản phẩm
			 cần mua vào giỏ hàng sau đó tiến hành thanh toán </p>
			<p>Khi đến trang thanh toán thì nhập các thông tin cần thiết như tên,
			 số điện thoại, địa chỉ và tiến hành đặt hàng nhé!</p>
	</div>
	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
	<!-- end footer -->
	  <!--bootstrap js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	</script>

</body>
</html>