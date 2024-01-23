<%@page import="model.Coupon"%>
<%@page import="model.Account"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.CartItem"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Cart"%>
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

hr {
	height: 4px;
	border: 4px solid black;
}
</style>

<title>Giỏ Hàng</title>
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

	<!-- main body   -->
	<div class="container">
		<%
		Account acc = (Account) session.getAttribute("acc");
		Cart cart = (Cart) session.getAttribute("Cart");
		if (cart.getListCartItem().size() == 0) {
		%>
		<div class=" col container text-center " style="height: 400px">
			<div class="row rounded mx-auto d-block">
				<img class="img-fluid" src="img/icon/icons8-bag-64.png"
					style="height: 64px; width: 64px">
			</div>
			<div class="row">
				<p>khong có sản phẩm nào trong giỏ hàng của bạn</p>
			</div>

		</div>
		<%
		} else {
		%>
		<!-- cart da ton tai -->

		<div class="row container-xl text-center  m-0 p-0 ">
			<div class="row">
				<div class="col-2 text-start  m-0 p-0">
					<p>Sản Phẩm</p>
					<hr>

				</div>
				<div class="col-5   m-0 p-0">
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
				<div class="col-2  m-0 p-0">
					Tổng Tiền
					<hr>
				</div>
				<div class="col-1  m-0 p-0">
					<p style="height: 24px"></p>
					<hr>
				</div>
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

				<div class="col-5  m-0 p-0 text-start "><%=cartItem.getProduct().getName()%></div>

				<div class="col-1  m-0 p-0"><%=cartItem.getPrice()%></div>

				<div class="col-1  m-0 p-0">
					<%

					%>
					<form action="CartController" method="post">
						<input type="hidden" name="idProduct"
							value="<%=cartItem.getProduct().getId()%>"> <input
							type="hidden" name="actionCart" value="addQuanlity">

						<p class="">
							<button class=" bt3" name="type" value="decrement" type="submit"
								style="width: 24px; height: 24px; border: 0; font-size: 20px;">
								<span>-</span>
							</button>
							<input class="text-center border border-dark-subtle" min="1"
								max="99" type="number" value="<%=cartItem.getQuality()%>"
								style="width: 35px; height: 35px; padding: -1;" name="count">
							<button class="bt3"
								style="width: 24px; height: 24px; border: 0; font-size: 20px"
								name="type" value="increment" type="submit">
								<span>+</span>
							</button>
						</p>
					</form>
				</div>
				<%
				int a = (int) (cartItem.getPrice() * cartItem.getQuality());
				%>
				<div class="col-2  m-0 p-0"><%=a%>
					VND
				</div>

				<div class="col-1  m-0 p-0">
					<div class="row">
						<div class="col ">
							<form method="get" action="CartController">
								<input type="hidden" name="idProduct"
									value="<%=cartItem.getProduct().getId()%>"> <input
									type="hidden" name="actionCart" value="selectedCart">
								<button type="submit" style="border: 0">
									<%
									if (cartItem.isSelected()) {
									%>
									<img src="img/icon/icons8-select-16.png">
									<%
									} else {
									%>

									<img src="img/icon/icons8-square-16.png">
									<%
									}
									%>
								</button>
							</form>
						</div>
						<div class="col">
							<form method="get" action="CartController">
								<input type="hidden" name="idProduct"
									value="<%=cartItem.getProduct().getId()%>"> <input
									type="hidden" name="actionCart" value="removeCartItem">
								<button style="border: 0">
									<img src="img/icon/icons8-trash-16.png">
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<%
		}
		%>
		<hr>
		<div class="row" style="height: 100px">
			<div class="col-8">
				<form action="couponControler" method="get">
					<input type="hidden" name="actionCoupon" value="addConpon">
					<div>Địa Chỉ Shop: NLU tp Thủ Đức</div>
					<div>
						<%
						Coupon c = (Coupon) request.getAttribute("coupon");
						%>
						mã Giảm Giá: <span><input type="text"
							placeholder="Nhập mã vào đây" id="conpon" name="couponID">
							<button type="submit">xác nhận mã</button> <%
 if (c != null) {
 %> áp dụng mã giảm <%=c.getDiscountAmount()%> <%
 }
 %></span>
					</div>
				</form>
				<%
				if (acc != null) {
				%>
				<div>
					Địa Chỉ nhận Hàng:
					<%=acc.getAddressOrder()%></div>
				<div>
					Số Điện Thoại
					<%=acc.getPhoneNum()%></div>
				<%
				}
				%>
			</div>
			<div class="col-4 text-start ">
				<table>
					<tr class="">
						<td style="padding-right: 25px">Tổng Số Tiền:</td>
						<td><%=cart.getTotalPriceSelected()%> VND</td>
					</tr>
					<tr>
						<td>Thanh Toán:</td>
						<%
						if (c != null) {
						%>
						<td><%=cart.getTotalPrice(c.getDiscountAmount())%> VND</td>
						<%
						} else
						%>
						<td><%=cart.getTotalPrice2()%> VND</td>

					</tr>
				</table>
			</div>
		</div>
		<div class="row text-center">
			<div class="col-8"></div>
			<div class="col-2">
				<button>
					<a href="PhanTrang?curentPage=0&acction=">Tiếp Tục Mua Hàng</a>
				</button>
			</div>
			<div class="col-2">
				<button>
					<a href="Payment.jsp">thanh toan</a>
				</button>
			</div>
		</div>
	</div>
	<hr>


	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->

</body>
</html>