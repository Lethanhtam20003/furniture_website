<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/main_css.css">
<title>menu</title>
</head>
<body>
	<!-- menu -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
		<div class="container-xl">
			<!-- logo -->
			<nav class="navbar bg-body-tertiary">
				<div class="container">
					<a class="navbar-brand" href="#"> <img
						src="../img/img_larg/th.jpeg" alt="Bootstrap" height="50">
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
					<li class="nav-item mx-3"><a class="nav-link" href="">Sản
							phẩm</a></li>
					<!-- drop menu -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">S</a></li>
						</ul></li>
					<!-- end drop menu -->
					<li class="nav-item"><a class="nav-link mx-3" href="news.jsp">Tin
							tức</a></li>
					<li class="nav-item"><a class="nav-link mx-3"
						href="contact.jsp">Liên hệ </a></li>
					<!-- end menu items -->

				</ul>
				<!-- icon -->
				<div clsss="chuLon">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="../img/icon/icons8-search-32.png" alt="Bootstrap"
										width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="../img/icon/icons8-person-32.png" alt="Bootstrap"
										width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="../img/icon/icons8-heart-32.png" alt="Bootstrap"
										width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="../img/icon/icons8-bag-32.png" alt="Bootstrap" width="20">
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