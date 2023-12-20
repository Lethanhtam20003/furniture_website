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
<title>Hướng dẫn mua hàng</title>
</head>
<body>

	<div class="imgIntroduc">
		<img alt="" src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ ></a>  Hướng dẫn mua hàng</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="turt" style="margin: 30px">
		<p>
			<b>Bước 1:</b>Truy cập website và lựa chọn sản phẩm cần mua để mua
			hàng
		</p>

		<p>
			<b>Bước 2:</b>Click và sản phẩm muốn mua, màn hình hiển thị ra pop up
			với các lựa chọn sau
		</p>
				<p>Nếu bạn muốn tiếp tục mua hàng: Bấm vào phần tiếp tục mua hàng
					để lựa chọn thêm sản phẩm vào giỏ hàng</p>
				<p>Nếu bạn muốn xem giỏ hàng để cập nhật sản phẩm: Bấm vào xem giỏ
					hàng</p>
				<p>Nếu bạn muốn đặt hàng và thanh toán cho sản phẩm này vui lòng
					bấm vào: Đặt hàng và thanh toán</p>
		<p>
			<b>Bước 3:</b>Lựa chọn thông tin tài khoản thanh toán
		</p>
		<p>Nếu bạn đã có tài khoản vui lòng nhập thông tin tên đăng nhập là email và mật khẩu vào mục đã có tài khoản trên hệ thống</p>
		<p>Nếu bạn chưa có tài khoản và muốn đăng ký tài khoản vui lòng điền các thông tin cá nhân để tiếp tục đăng ký tài khoản. 
					Khi có tài khoản bạn sẽ dễ dàng theo dõi được đơn hàng của mình</p>
		<p>Nếu bạn muốn mua hàng mà không cần tài khoản vui lòng nhấp chuột
			 vào mục đặt hàng không cần tài khoản</p>
		<p>
			<b>Bước 4:</b>Điền các thông tin của bạn để nhận đơn hàng, lựa chọn hình thức thanh toán và vận chuyển cho đơn hàng của mình
		</p>
		<p>
			<b>Bước 5:</b>Xem lại thông tin đặt hàng, điền chú thích và gửi đơn hàng
		</p>
		<p>Sau khi nhận được đơn hàng bạn gửi chúng tôi sẽ liên hệ bằng cách gọi điện lại
			 để xác nhận lại đơn hàng và địa chỉ của bạn.</p>
		<p>Trân trọng cảm ơn.</p>
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