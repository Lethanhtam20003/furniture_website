<%@page import="java.util.List"%>
<%@page import="model.Account"%>
<%@page import="model.CartItem"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Cart"%>
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
<!--bootstrap js-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
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
<title>Insert title here</title>
</head>

<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->
	<section class="imgIntroduc backgroundSection">
		<div class="text-overlay">
			<p>Giới thiệu</p>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> Giỏ Hàng
				</p>
			</div>
		</div>
	</section>

	<%
	if (session.getAttribute("acc") != null) {
	%><!-- body -->
	<div class="container">
		<p>Sản Phẩm Đã Chọn:</p>
		<%
		Account acc = (Account) session.getAttribute("acc");
		Cart cart = (Cart) session.getAttribute("Cart");
		if (acc == null) {
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		%>
		<div class="row">
			<div class="col-2 text-start  m-0 p-0">Sản Phẩm</div>

			<div class="col-2  m-0 p-0 text-start ">Tên</div>

			<div class="col-1  m-0 p-0">Giá</div>

			<div class="col-1  m-0 p-0">
				<p class="">Số Lượng</p>
			</div>

			<div class="col-2  m-0 p-0">Tổng Cộng</div>
		</div>

		<%
		List<CartItem> cartIteams = cart.getListCartItem();
		for (CartItem cartItem : cartIteams) {
		%>
		<div class="row">
			<div class="col-2 text-start  m-0 p-0">
				<img class="" alt="<%=cartItem.getProduct().getImgPath()%>"
					src="<%=cartItem.getProduct().getImgPath()%>" style="height: 96px">
			</div>

			<div class="col-2  m-0 p-0 text-start "><%=cartItem.getProduct().getName()%></div>

			<div class="col-1  m-0 p-0"><%=cartItem.getPrice()%></div>

			<div class="col-1  m-0 p-0">
				<p class="">
					<%=cartItem.getQuality()%>
				</p>
			</div>
			<%
			int a = (int) (cartItem.getPrice() * cartItem.getQuality());
			%>
			<div class="col-2  m-0 p-0"><%=a%>
				VND
			</div>


		</div>
		<%
		}
		%>
		<div>
			Thông Tin Khách Hàng
			<table>
				<tr>
					<td>Họ và Tên:</td>
					<td><%=acc.getFirstName()%> <%=acc.getLastName()%></td>

				</tr>
				<tr>
					<td>email:</td>
					<td><%=acc.getEmaill()%></td>

				</tr>
				<tr>
					<td>Số Điện Thoại:</td>
					<td><%=acc.getPhoneNum()%></td>

				</tr>
				<tr>
					<td>Địa Chỉ</td>
					<td>
						<%
						if (acc.getAddressOrder() == null || acc.getAddressOrder().equals("")) {
						%> <%=acc.getAddressOrder()%> <%
 } else
 %> <%=acc.getAddressAccount()%>
					</td>

				</tr>
			</table>

		</div>

		<div>
			<button>Thay Đổi Sản Phẩm</button>
			<form action="BuyController" method="post">
				<input type="hidden" name="accId" value="<%=acc.getID()%>">
				<button type="submit">Xác Nhận thanh toán</button>
			</form>

		</div>
		<br> <br>


	</div>
	<%
	} else {
	%>

	<div class="container ">
		<form action="BuyController" method="post">
			<input type="hidden" value="payWithNoneAc" name="action">
			<div class="col">
				<h3>thông Tin Khách Hàng</h3>
				<div class="row">
					<label>tên Khách hang: </label> <input type="text" name="cusName">
				</div>
				<div class="row">
					<label>Số điện thoại:</label> <input type="text" name="phoneNum">
				</div>
				<div class="row">
					<label>Email: </label> <input type="text" name="emial">
				</div>
				<div class="row">
					<label>Địa chỉ nhận Hàng</label> <input type="text" name="address">
				</div>
			</div>
			<div class="">
				<h3>Thông tin sản phẩm</h3>
				<div class="row">
					<div class="col-2 text-start  m-0 p-0">
						<p>Sản Phẩm</p>
						<hr>

					</div>
					<div class="col-4   m-0 p-0">
						<p style="height: 24px"></p>
						<hr>
					</div>
					<div class="col-1  m-0 p-0">
						Giá
						<hr>
					</div>
					<div class="col-1  m-0 p-0">
						Số Lượng
						<hr>
					</div>
					<div class="col-1  m-0 p-0">
						Tổng Tiền
						<hr>
					</div>
					<div class="col-1  m-0 p-0">
						<p style="height: 24px"></p>
						<hr>
					</div>
					<%
					Cart cart = (Cart) session.getAttribute("cart");
					for (CartItem cartItem : cart.getListCartItem()) {
					%>
					<div class="row">
						<div class="col-2 text-start  m-0 p-0">
							<img class="" alt="<%=cartItem.getProduct().getImgPath()%>"
								src="<%=cartItem.getProduct().getImgPath()%>"
								style="height: 50px">
						</div>

						<div class="col-4  m-0 p-0 text-start "><%=cartItem.getProduct().getName()%></div>

						<div class="col-1  m-0 p-0"><%=cartItem.getPrice()%></div>
						<div class="col-1  m-0 p-0"><%=cartItem.getQuality()%></div>

						<%
						int a = (int) (cartItem.getPrice() * cartItem.getQuality());
						%>
						<div class="col-2  m-0 p-0"><%=a%>
							VND
						</div>



						<%
						}
						%>

					</div>

					<div class="container text-center">
						<button style="width: 200px" type="submit">Giao dịch</button>
					</div>
		</form>

	</div>
	</div>
	<%
	}
	%>
	<br>
	<br>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>