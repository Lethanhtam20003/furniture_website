
<%@page import="data.Storage"%>
<%@page import="model.Product"%>
<%@page import="java.util.*"%>
<%@page import="functions.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link rel="stylesheet" type="text/css" href="css/product.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">

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

.decorativeLights, .handMade, .decoration, .sanitaryEquiment, .furniture,
	.allProduct {
	color: red;
}

.p100000, .p500000, .p1000000, .p2000000, .p5000000 {
	color: blue;
}

a:hover {
	color: #F3A270;
}
</style>
<title>Sản Phẩm</title>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->

	<div class="imgIntroduc backgroundSection ">




		<div class="text-overlay">
			<p>Sản Phẩm</p>
			<%
			String category = (String) request.getAttribute("category");
			%>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> <a
						href="PhanTrang?curentPage=0&acction=">Sản Phẩm</a>
					<%
					if (category != null) {
					%>
					<a> > <%=category%></a>
					<%
					}
					%>
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
					<!-- 
				type 
				- decorativeLights
				- handMade
				- decoration
				- sanitaryEquiment
				- furniture
				
				 -->
					<%
					String type = "";
					String price = "";
					if (request.getAttribute("type") != null) {
						type = (String) request.getAttribute("type");
					}
					if (request.getAttribute("price") != null) {
						price = (String) request.getAttribute("price");
					}
					%>
					<h3>Danh Mục Sản Phẩm</h3>
					<div class="row m-1">
						<a class="<%if (type.equals("decorativeLights"))%><%=type%>"
							href="productFiltering?acction=fillter&type=decorativeLights&price=<%=price%>"
							type="post"> Đèn Trang Trí</a>
					</div>
					<div class="row m-1">
						<a class="<%if (type.equals("decoration"))%><%=type%>"
							href="productFiltering?acction=fillter&type=decoration&price=<%=price%>">Đồ
							Trang Trí</a>
					</div>
					<div class="row m-1">
						<a class="<%if (type.equals("furniture"))%><%=type%>"
							href="productFiltering?acction=fillter&type=furniture&price=<%=price%>">Đồ
							Nội Thất</a>
					</div>
					<div class="row m-1">
						<a class="<%if (type.equals("sanitaryEquiment"))%><%=type%>"
							href="productFiltering?acction=fillter&type=sanitaryEquiment&price=<%=price%>">Thiết
							Bị Vệ Sinh</a>
					</div>
					<div class="row m-1">
						<a class="<%if (type.equals("handMade"))%><%=type%>"
							href="productFiltering?acction=fillter&type=handMade&price=<%=price%>">Sản
							Phẩm Thủ Công</a>
					</div>
					<div class="row m-1">
						<a
							class="<%if (session.getAttribute("categoryType") != null) {
	if (session.getAttribute("categoryType").equals("")) {%> allProduct<%}
} else {%>allProduct<%}%> "
							href="PhanTrang?curentPage=0&acction=">Tất cả sản phẩm</a>
					</div>
				</div>

				<%
				String priceCost = "";
				if (request.getAttribute("price") != null) {
					priceCost = "p" + request.getAttribute("price");
				}
				%>
				<div class=" container col   mb-4 border">
					Lọc theo mức giá
					<div class="row m-1">
						<a
							class="<%if (priceCost.equals("p100000")) {%> <%=priceCost%> <%}%> "
							href="productFiltering?acction=fillter&price=100000&type=<%=type%>">
							100000</a>
					</div>
					<div class="row m-1">
						<a
							class="<%if (priceCost.equals("p500000")) {%> <%=priceCost%>  <%}%>"
							href="productFiltering?acction=fillter&price=500000&type=<%=type%>">500.000</a>
					</div>
					<div class="row m-1">
						<a
							class="<%if (priceCost.equals("p1000000")) {%> <%=priceCost%> <%}%> "
							href="productFiltering?acction=fillter&price=1000000&type=<%=type%>">1.000.000</a>
					</div>
					<div class="row m-1">
						<a
							class="<%if (priceCost.equals("p2000000")) {%> <%=priceCost%> <%}%> "
							href="productFiltering?acction=fillter&price=2000000&type=<%=type%>">2.000.000</a>
					</div>
					<div class="row m-1">
						<a
							class="<%if (priceCost.equals("p5000000")) {%> <%=priceCost%>  <%}%>"
							href="productFiltering?acction=fillter&price=5000000&type=<%=type%>">5.000.000</a>
					</div>
				</div>
				<div class=" container col  mb-4 border ">
					Phương Thức Sắp Xếp
					<div class="row m-1">
						<%
						int arrangeNum_softByPrice = 0;// 0: ascending ;1: decrease;2: no soft by price

						if (request.getAttribute("arrangeNum_softByPrice") != null) {
							arrangeNum_softByPrice = (int) request.getAttribute("arrangeNum_softByPrice");
						}
						%>
						<a
							href="productFiltering?acction=softByPrice&arrangeNum_softByPrice=<%=arrangeNum_softByPrice%>&type=<%=type%>&price=<%=price%>">
							giá tiền: <span style="color: green;"> <%
 if (arrangeNum_softByPrice == 1) {
 %> nhỏ đến lớn<%
 } else if (arrangeNum_softByPrice == 2) {
 %> lớn đến nhỏ<%
 }
 %></span>
						</a>
					</div>
					<div class="row m-1">
						<%
						int arrangeNum_softByDate = 0; // 0: ascending ;1: decrease;2: no soft by price

						if (request.getAttribute("arrangeNum_softByDate") != null) {
							arrangeNum_softByDate = (int) request.getAttribute("arrangeNum_softByDate");
						}
						%>
						<a
							href="productFiltering?acction=softByDate&arrangeNum_softByDate=<%=arrangeNum_softByDate%>&type=<%=type%>&price=<%=price%>">thời
							gian nhập hàng:<span style="color: green;"> <%
 if (arrangeNum_softByDate == 1) {
 %> gần nhất<%
 } else if (arrangeNum_softByDate == 2) {
 %> lâu nhất<%
 }
 %></span>
						</a>
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
				if (list.size() == 0) {
				%>
				Khong có san Phẩm!
				<%
				} else {
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
								<a href="detailsProduct?idProduct=<%=p.getId()%>"> <img
									src="<%=p.getImgPath()%>" class="card-img-top " alt="..." >
								</a>
								<div class="overlay-text"></div>
								<!-- button them gio hang -->
								<div id="addGioHang<%=i + "" + j%>"
									class=" viTriTrenPhai nenMo text-center boGoc anDoiTuong ">
									<a
										href="CartController?count=1&actionCart=addCartNoForward&idProduct=<%=p.getId()%>">
										<img alt="" src="img/icon/icons8-bag-32.png">
									</a>
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
				String acction = (String) request.getAttribute("acction");
				for (int in = 1; in <= pageNum; in++) {
				%>

				<li class="page-item"><a class="page-link"
					href="PhanTrang?curentPage=<%=in - 1%>&acction=<%=acction%>"><%=in%></a></li>
				<%
				}
				%>

			</ul>
		</nav>

	</div>
	<%
	if (request.getAttribute("addCartDone") != null) {
	%>
	<script type="text/javascript">
		alert(' Them thanh cong');
	</script>
	<%
	}
	%>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>