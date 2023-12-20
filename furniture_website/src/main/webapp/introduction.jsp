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
	

<title>Introduction page</title>
</head>
<body>	

	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->
	
	<div class="imgIntroduc">
		<img alt="" src="img/img_larg/breadcrumb.jpg" style="width: 1297px;height: 250px">
		<div class="text-overlay">
			<p>Giới thiệu</p>
				<div class = text-overlay2>
					<p><a href="index.jsp" style ="color: white">Trang chủ ></a>  Giới thiệu</p>
				</div>
		</div>
	</div>
	<br><br>
	<div id="introduction">
		<p>Bean Furniture tự hào với đội ngũ thiết kế trẻ, luôn sáng tạo luôn cập nhật 
		 các xu hướng thiết kế mới.
		 Thế mạnh chủ lực là tư vấn thiết kế, thi công đồ gỗ. 
		 Với phương châm “Không Đâu Bằng Nhà” Bean Furniture đã tự tin khẳng định chất lượng,
		 dịch vụ và tính thẩm mĩ cao trong từng chi tiết thiết kế, thi công.
		 Luôn mang lại sự hài lòng cho Khách Hàng!</p>
		 <p>Đến với chúng tôi bạn sẽ được quyền lợi:</p>
		 <p><b>Bảo hành chuyên nghiệp:</b> Dịch vụ bảo hành chuyên nghiệp,
		 	 tận tình và chu đáo cho khách hàng</p>
		 <p><b>Giá tốt nhất tại Việt Nam:</b> Tự tin là nhà cung cấp đồ trang trí với giá cả 
		 	tốt nhất tại Việt Nam</p>
		 <p><b>Sản phẩm chính hãng:</b> Chúng tôi cam kết 100% sản phẩm là uy tín, chất lượng cao</p>
		 <%String imgPath ="img/img_larg/image-set-1-7eef45b0-d147-4c83-81b7-ed4cbc7414be.jpg";%>
		  <img alt="introduc" src="<%= imgPath %>">
	  </div>
	  <br>
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