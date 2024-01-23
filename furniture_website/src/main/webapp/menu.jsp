<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="model.Account"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- link css file -->

<!--  dinh dang style -->
<style type="text/css">
.text_link {
	color: white;
	text-decoration: none;
}

.background_button {
	background: #F7DB6A;
}

a {
	font-size: 20px;
	color: black;
	/* hoặc mã màu khác như #008000 hoặc rgb(0, 128, 0) */
	text-decoration: none;
	/* ( loại bỏ gạch chân liên kết) */
}
</style>
<title>menu</title>
</head>
<body>
	<!-- menu -->
	<nav class="navbar navbar-expand-lg bg-success-subtle ">
		<div class="container-xl bg-success-subtle">
			<!-- logo -->
			<nav class="">
				<div class="container-xll image-container ">
					<a class="navbar-brand " href="#"> <img
						src="img/logo/logo_main.png" alt="Bootstrap" height="60"
						width="200">
					</a>
				</div>
			</nav>
			<!-- end logo -->
			<!-- menu item -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto mb-2 mb-lg-0  chuLon">
					<li class="nav-item mx-3"><a class="nav-link active"
						aria-current="page" href="index.jsp">Trang chủ</a></li>

					<li><a class="nav-link mx-3" aria-current="page"
						href="introduction.jsp">Giới thiệu</a></li>
					<li class="nav-item mx-3"><a class="nav-link"
						href="PhanTrang?curentPage=0&acction=">Sản phẩm</a></li>

					<li class="nav-item"><a class="nav-link mx-3" href="news.jsp">Tin
							tức</a></li>
					<li class="nav-item"><a class="nav-link mx-3"
						href="contact.jsp">Liên hệ </a></li>
					<!-- end menu items -->

				</ul>
				<!-- icon -->
				<div class="chuLon bg-success-subtle">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-success-subtle">
						<li class="nav-item">
							<nav class="navbar bg-success-subtle">
								<div class="container">
									<a class="navbar-brand " href="#"> <img
										src="img/icon/icons8-search-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-success-subtle">
								<div class="container">
									<div class="dropdown">
										<a class="navbar-brand  dropdown-toggle" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> <img
											src="img/icon/icons8-person-32.png" alt="Bootstrap"
											width="20">
										</a>
										<ul class="dropdown-menu">

											<%
											Account acc = (Account) session.getAttribute("acc");
											%>
											<%
											if (session.getAttribute("acc") != null) {
											%>

											<li><a class="dropdown-item" href="#">Hello <%=acc.getLastName()%></a></li>
											<li><a class="dropdown-item" href="changePassword.jsp">Đổi
													mật khẩu</a></li>
											<li><a class="dropdown-item" href="customerInfor.jsp">Thông
													tin khách hàng</a></li>
											<li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
											<%
											}
											%>
											<%
											if (session.getAttribute("acc") == null) {
											%>
											<li><a class="dropdown-item" href="login.jsp">Đăng
													nhập</a></li>

											<li><a class="dropdown-item" href="register.jsp">Đăng
													ký</a></li>



											<%
											}
											%>

										</ul>

									</div>
								</div>
							</nav>
						</li>
						<!--  		
						<li class="nav-item">
							<nav class="navbar bg-success-subtle">

								<div class="container position-relative">
									<span
										class="position-absolute pt-2 start-50 translate-middle badge rounded-pill bg-danger">
										0 <span class="visually-hidden">unread messages</span>
									</span> <a class="navbar-brand" href="#"> <img
										src="img/icon/icons8-heart-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
						-->
						<!-- cart -->
						<li class="nav-item">
							<nav class="navbar bg-success-subtle">
								<div class="container position-relative">
									<span
										class="position-absolute pt-2 start-50 translate-middle badge rounded-pill bg-danger">
										<%
										Cart c = (Cart) session.getAttribute("Cart");
										if (session.getAttribute("Cart") == null) {
										%> 0 <%
										} else {
										%> <%=c.getListCartItem().size()%> <%
 										}
 %> <span class="visually-hidden">unread messages</span>
									</span> <a class="navbar-brand"
										href="CartController?actionCart=showPage"> <img
										src="img/icon/icons8-bag-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
					</ul>
				</div>
				<!-- end icon -->
			</div>
			<!--end  menu item -->
		</div>
	</nav>
	<!--end menu-->


</body>
</html>