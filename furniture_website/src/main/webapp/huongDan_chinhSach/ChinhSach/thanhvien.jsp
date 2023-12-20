<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
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
<title>chính sách thành viên</title>
</head>
<body>
	<div class="imgIntroduc">
		<img src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ    ></a>    Chính sách thành viên</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="info" style="margin: 30px"> 
		<p>Điều kiện chính sách thành viên</p>
		
		<p><b>1. Thẻ thành viên</b></p>
		<p>Điều kiện cấp thẻ thành viên: 
		Khi khách hàng mua hàng trên hệ thống cửa hàng 
		Bean Fashion sẽ được cấp thẻ thành viên.</p>

		<p><b>2. Thẻ VIP</b></p>
		<p><b>Điều kiện nhận thẻ VIP:</b></p>
		<p>+ Có giá trị tổng đơn hàng lớn hơn 15 triệu/ tháng</p>
		<p>+ Mua hàng với giá trị 5 triệu trợ lên</p>
		<p>+ Tham gia các hoạt động, chương trình khuyến mãi của Bean</p>

		<p><b>Lưu ý:</b> Hạn mức 10, 20, 30, 50,100 triệu đồng 
		là tính từ thời điểm bắt đầu mua tới khi lên thẻ.
		 Khi lên thẻ VIP và tích tiếp lên 20 đến 100 triệu, 
		 tổng tiền này là tính từ khi khách hàng mua lần đầu và cộng dồn lên.</p>		
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