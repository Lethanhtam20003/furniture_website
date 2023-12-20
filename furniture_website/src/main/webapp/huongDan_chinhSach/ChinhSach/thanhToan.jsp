<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
        .text-overlay2{
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
<title>Chính sách thanh toán</title>
</head>
<body>
	<div class="imgIntroduc">
		<img alt="" src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ    ></a>  Chính sách thanh toán</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="info-thanhToan" style="margin: 30px">
		<p><b>Khách hàng thanh toán trực tiếp tại cửa hàng </b></p>
			<p>+ Nhận ưu đãi</p>
			<p>+ Nhận quà tặng kèm</p>
			<p>+ Checkin tại cửa hàng</p>
			
		<p><b>Khách hàng thanh toán online </b></p>
			<p>+ Chuyển khoản trước khi nhận hàng</p>
			<p>+ Quà tặng kèm bất kỳ</p>
			<p>Khách hàng có nhu cầu khiếu nại, đổi trả sản phẩm do lỗi của Bean 
			có thể liên hệ qua Hotline 1900 6750 để được hỗ trợ sớm nhất.</p>
			<p>Tư vấn viên sẽ hướng dẫn khách hàng các bước 
			cần thiết để tiến hành trả thanh toán.</p>
	</div>
	<br>
	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
	<!-- end footer -->
	<!--bootstrap js-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	</script>

</body>
</html>