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
<title>Chính sách đổi sản phẩm</title>
</head>
<body>
	<div class="imgIntroduc">
		<img alt="" src="../../img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ    ></a>  
														Chính sách đổi sản phầm</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="inf" style="margin: 30px">
		<p>+ Sản phẩm lỗi, hỏng do quá trình sản xuất hoặc vận chuyện</p>
		<p>+ Nằm trong chính sách đổi trả sản phẩm của Bean</p>
		<p>+ Sản phẩm còn nguyên tem mác chưa qua sử dụng và chưa bóc seal</p>
		<p>+ Thời gian đổi trả nhỏ hơn 15 ngày kể từ ngày nhận hàng</p>
		<p>+ Chi phí bảo hành về sản phẩm, vận chuyển khách hàng chịu chi phí </p>
		<p>+ Đối với khách VIP thì khi đổi trả Bean sẽ hỗ trợ miễn phí quá trình đổi trả, sửa chữa</p>
		
		<p><b>Điều kiện đổi trả hàng</b></p>
		<p>Điều kiện về thời gian đổi trả: trong vòng 01 ngày kể từ khi nhận được hàng và phải liên hệ
		 	gọi ngay cho chúng tôi theo số điện thoại trên để được xác nhận đổi trả hàng.</p>
		 
		<p><b>Điều kiện đổi trả hàng:</b></p>
		<p>- Sản phẩm gửi lại phải còn nguyên đai nguyên kiện</p>
		<p>- Phiếu bảo hành (nếu có) và tem của công ty trên sản phẩm còn nguyên vẹn.</p>
		<p>- Sản phẩm đổi/ trả phải còn đầy đủ hộp, giấy Hướng dẫn sử dụng và chưa qua sử dụng.</p>
		<p>- Quý khách chịu chi phí vận chuyển, đóng gói, thu hộ tiền, 
			chi phí liên lạc tối đa tương đương 20% giá trị đơn hàng.</p>
		
		<p><b>Quy trình đổi trả hàng</b></p>
		<p>Bước 1: Sau khi nhận được hàng. Yêu cầu quý vị kiểm tra kỹ 1 lần trước khi nhận hàng.
			 Nếu có vấn đề xin vui lòng liên hệ Trung tâm 
		 	hỗ trợ khách hàng tại thời điểm nhân viên giao hàng còn ở đó</p>
		<p>- Trường hợp sau khi nhân viên giao hàng đã đi</p>
		<p>- Nếu muốn đổi trả hàng có thể liên hệ với chúng tôi để được xử lý 
			và hẹn lịch đổi trả hàng</p>
		<p>Bước 2: Sau khi Trung tâm hỗ trợ khách hàng thông báo lịch hẹn nhận hàng trả</p>
	</div>
	<br>
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