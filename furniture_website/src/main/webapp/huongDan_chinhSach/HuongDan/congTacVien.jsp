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
<title>Chương trình cộng tác viên</title>
</head>
<body>

	<div class="imgIntroduc">
		<img alt="" src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ ></a>  Chương trình cộng tác viên</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="turt" style="margin: 30px">
		<p><b>Chính sách hoa hồng chung:</b> là chính sách áp dụng cho toàn bộ sản phẩm
			 trên website ngoại trừ đi các sản phẩm có mức hoa hồng đặc biệt thiết lập
			 tại mục “Chính sách hoa hồng theo sản phẩm”. Khi đối tác giới thiệu các đơn hàng
			 chỉ chứa sản phẩm thông thường (không nằm trong danh sách sản phẩm có hoa hồng đặc biệt)
			 thì sẽ được tính toán mức hoa hồng như chính sách chung.
			 Để thiết lập chính sách hoa hồng chung, bạn cần chọn:</p>
		<p>Kiểu chính sách với 1 trong 2 kiểu chính sách có thể áp dụng là:</p>
			<p>+Phần trăm hoa hồng theo giá trị đơn hàng</p>
			<p>+Số tiền cố định theo mỗi đơn hàng</p>
		<p>Và <b>Giá trị đơn hàng</b> áp dụng theo:</p>
			<p>+Tổng giá trị đơn hàng không có phí vận chuyển: hoa hồng của đối tác
				 được tính trên tổng giá trị đơn hàng trừ đi phí vận chuyển</p>
			<p>+Tổng giá trị đơn hàng bao gồm phí vận chuyển: Hoa hồng của đối tác sẽ được tính
			 trên tổng giá trị đơn hàng có bao gồm phí vận chuyển</p>
		<p><b>Chính sách hoa hồng theo sản phẩm</b> (Tùy chọn): là chính sách chỉ áp dụng
			 cho 1 danh sách sản phẩm hay danh mục sản phẩm tùy chọn.
			 Khi đơn hàng chỉ chứa các sản phẩm có mức hoa hồng đặc biệt
			 thì sẽ áp dụng mức hoa hồng được thiết lập cho từng sản phẩm
			 để tính ra mức hoa hồng cho đối tác. Để thiết lập chính sách hoa hồng
			 theo sản phẩm bạn cần:</p>
		<p>+Lựa chọn sản phẩm, bạn có thể chọn đích danh 1 sản phẩm
			 cụ thể hoặc chọn cả danh mục sản phẩm</p>
		<p>Chọn loại <b>Hoa hồng áp dụng</b>: Theo phần trăm (%) hoặc Theo số tiền (đ)</p>
		<p>Tiếp theo, bạn chọn <b>Xác nhận</b> để hoàn tất thiết lập chính sách hoa hồng cho sản phẩm</p>
		<p>Sau khi <b>Xác nhận</b>, sản phẩm / danh mục sản phẩm thuộc chính sách hoa hồng theo sản phẩm 
			sẽ hiển thị ở mục <b>Danh sách hoa hồng theo sản phẩm</b></p>
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