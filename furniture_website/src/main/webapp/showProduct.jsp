
<%@page import="data.Storage"%>
<%@page import="model.Product"%>
<%@page import="java.util.*"%>
<%@page import="soft.*"%>
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
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/product.css">
<script type="text/javascript" src="js/product.js"></script>

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
<title>san pham</title>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->

	<div class="imgIntroduc backgroundSection ">
		<div class="text-overlay">
			<p>Sản Phẩm</p>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> <a>Sản
						Phẩm</a>

				</p>
			</div>
		</div>
	</div>
	<br class="">
	<!-- row -->
	<div class="row mt-3">
		<!-- category -->
		<div class="col-3 ms-4">
			<div class="container ms-4 pe-4 ">

				<div class=" container col bg-body-tertiary mb-4 border  ">
					Danh Mục Sản Phẩm
					<div class="row m-1">
						<a> Đèn Trang Trí</a>
					</div>
					<div class="row m-1">
						<a>Đồ Trang Trí</a>
					</div>
					<div class="row m-1">
						<a>Đồ Nội Thất</a>
					</div>
					<div class="row m-1">
						<a>Thiết Bị Vệ Sinh</a>
					</div>
					<div class="row m-1">
						<a>Sản Phẩm Thủ Công</a>
					</div>
				</div>

				<div class=" container col   mb-4 border">
					Lọc theo mức giá
					<div class="row m-1">
						<a> 100000</a>
					</div>
					<div class="row m-1">
						<a>500000</a>
					</div>
					<div class="row m-1">
						<a>1000000</a>
					</div>
					<div class="row m-1">
						<a>2000000</a>
					</div>
					<div class="row m-1">
						<a>5000000</a>
					</div>
				</div>
				<div class=" container col  mb-4 border ">
					Phương Thức Sắp Xếp
					<div class="row m-1">
						<a> giá tiền </a>
					</div>
					<div class="row m-1">
						<a>thời gian nhập hàng</a>
					</div>

				</div>

			</div>
		</div>

		<!-- list product -->
		<div class=" col-sm-8  ms-3">
			<div class="container-lg  me-4 ">
				<div class="text-center"></div>
				<%
				List<Product> list = (ArrayList<Product>) session.getAttribute("listCurent");
				int index = 0, i = 0, j = 0;
				for (Product p : list) {
					if (j == 0) {
				%>

				<div class="row p-2 ">
					<%
					}
					%>
					<div class="col-3  ">
						<div class="card  border border-secondary-subtle rounded-2"
							style="width: 15em;"
							onmouseover="hienThiDoiTuong('<%=i + "" + j%>')"
							onmouseleave="anDoiTuong('<%=i + "" + j%>')">
							<!-- ảnh san pham -->
							<div class="image-container ">
								<a href="detailsProduct?idProduct=<%=p.getId()%>"> <img src="<%=p.getImgPath()%>"
									class="card-img-top " alt="...">
								</a>
								<div class="overlay-text"></div>
								<!-- button them gio hang -->
								<div id="addGioHang<%=i + "" + j%>"
									class=" viTriTrenPhai nenMo text-center boGoc anDoiTuong ">
									<img alt="" src="img/icon/icons8-bag-32.png">
								</div>
								<!-- giam gia -->
								<div class="showCoupon overlay-text ">
									<%
									if (p.getCoupon() != null) {
									%>
									<p class="" style="background: red; color: white"><%=p.getCoupon().getDiscountAmount()%></p>
									<%
									}
									%>
								</div>
							</div>
							<!-- thong tin san pham -->
							<div class="card-body text-bg-light	hienDoiTuong">
								<p style="height: 3em">
									<strong> <%=p.getName()%></strong>
								</p>
								<div class="card-text">
									<div class=" chu1Dong">
										<strong class="chuMauDo"><%=p.getPrice()%> </strong>
									</div>
									<%
									if (p.getCoupon() != null) {
									%>
									<div class="chu1Dong text-decoration-line-through chuMauDenMo">pricebefore</div>
									<%
									}
									%>
								</div>
							</div>
						</div>
					</div>
					<%
					if (j == 3) {
					%>
				</div>
				<%
				j = 0;
				i++;
				} else {
				j++;
				}
				if (i == 2) {
				break;
				}
				index++;
				}
				int pageNum = (int) session.getAttribute("pageNum") + 1;
				%>

			</div>
		</div>
		<!-- end list product -->
	</div>
	<div class="container  d-flex justify-content-center">
		<nav aria-label="Page navigation example ">
			<ul class="pagination">
				<%
				for (int in = 1; in <= pageNum; in++) {
				%>

				<li class="page-item"><a class="page-link"
					href="PhanTrang?curentPage=<%=in - 1%>"><%=in%></a></li>
				<%
				}
				%>

			</ul>
		</nav>

	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>