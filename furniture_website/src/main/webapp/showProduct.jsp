
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
<title>san pham</title>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->
	<section class="bg-body-tertiary">
		<div class="container-lg  p-5 ">
			<div class="text-center"></div>
			<%
			List<Product> list = (ArrayList<Product>) session.getAttribute("listCurent");
			int index = 0, i = 0, j = 0;
			for (Product p : list) {
				if (j == 0) {
			%>

			<div class="row p-2">
				<%
				}
				%>
				<div class="col-3  ">
					<div class="card  border border-secondary-subtle rounded-2"
						style="width: 17em;"
						onmouseover="hienThiDoiTuong('<%=i + "" + j%>')"
						onmouseleave="anDoiTuong('<%=i + "" + j%>')">
						<!-- ảnh san pham -->
						<div class="image-container ">
							<a href=""> <img src="<%=p.getImgPath()%>"
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
		</div>
		<div></div>
	</section>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>