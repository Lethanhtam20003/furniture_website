<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/main_css.css">
<title>Trang chủ</title>
</head>

<body>
	<!-- menu -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
		<div class="container-xl">
			<!-- logo -->
			<nav class="navbar bg-body-tertiary">
				<div class="container">
					<a class="navbar-brand" href="#"> <img
						src="img/img_larg/th.jpeg" alt="Bootstrap" height="50">
					</a>
				</div>
			</nav>
			<!-- end logo -->
			<!-- menu item -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto mb-2 mb-lg-0  chuLon">
					<li class="nav-item mx-3"><a class="nav-link active"
						aria-current="page" href="#">Trang chủ</a></li>

					<li><a class="nav-link mx-3" aria-current="page"
						href="introduction.html">Giới thiệu</a></li>
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
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<!-- end drop menu -->
					<li class="nav-item"><a class="nav-link mx-3" href="news.html">Tin
							tức</a></li>
					<li class="nav-item"><a class="nav-link mx-3" href="#">Liên
							hệ </a></li>
					<!-- end menu items -->

				</ul>
				<!-- icon -->
				<div clsss="chuLon">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="img/icon/icons8-search-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="img/icon/icons8-person-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
										src="img/icon/icons8-heart-32.png" alt="Bootstrap" width="20">
									</a>
								</div>
							</nav>
						</li>
						<li class="nav-item">
							<nav class="navbar bg-body-tertiary">
								<div class="container">
									<a class="navbar-brand" href="#"> <img
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

	<!-- container main -->

	<div class="container-fluid">
		<div id="slogan"></div>
		<div id="slogan"></div>
		<div id="slogan"></div>
		<div id="slogan"></div>
		<div id="slogan"></div>

	</div>

	<!--end container main -->

	<!-- footer -->
	<div class="container-xl  " data-bs-theme="light">
		<footer class="py-5  ">
			<div class="row">
				<!-- thong tin shop -->
				<div class="col-6 col-md-3 mb-3">
					<h5>FURNITURE WEB</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2">Với sứ mệnh"khách hàng là ưa tiên
							số 1" chúng tôi luôn mang lại giá trị tốt nhất</li>
						<li class="nav-item mb-2">Địa chỉ:</li>
						<li class="nav-item mb-2">Số điện thoại:</li>
						<li class="nav-item mb-2">Email:</li>
					</ul>
					<div
						class=" d-flex flex-column flex-sm-row justify-content-between py-4   ">
						<ul class="list-unstyled d-flex">
							<li class="ms-1"><a class="link-body-emphasis" href="#">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
								  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
								</svg>
							</a></li>

							<li class="ms-1">
								<a class="link-body-emphasis" href="#">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
								  <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
								</svg>
									
								</a>
							</li>

							<li class="ms-1">
								<a class="link-body-emphasis" href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
									  <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
									</svg>
								</a>
							</li>

							<li class="ms-1">
								<a class="link-body-emphasis" href="#">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
									  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
									</svg>
								</a>
							</li>

						</ul>
					</div>
				</div>
				<!-- chính sách của shop -->
				<div class="col-5 col-md-2 mb-3">
					<h5>Chính sách</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách thành
								viên</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách thanh
								toán</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách đổi sản
								phẩm</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách bảo mật</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách cộng tác
								viên</a></li>
					</ul>
				</div>

				<!-- hướng dãn của shop -->
				<div class="col-5 col-md-2 mb-3">
					<h5>HƯỚNG DẪN</h5>
					<ul class="nav flex-column">
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chính sách thành
								viên</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Hướng dẫn đổi trả</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Hướng dẫn thanh toán</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Chương trình công
								tác</a></li>
						<li class="nav-item mb-2"><a href="#"
							class="nav-link p-0 text-body-secondary">Giải đáp thắc mắc</a></li>
					</ul>
				</div>

				<!-- thanh toán của shop -->
				<div class="col-md-4 offset-md-1 mb-3">
					<form>
						<h5>ĐĂNG KÝ NHẬN TIN</h5>
						<p>Đang ký ngay! Để nhận thât nhiều ưu đãi</p>
						<div class="d-flex flex-column flex-sm-row w-100 gap-2">
							<label for="newsletter1" class="visually-hidden">Email
								address</label> <input id="newsletter1" type="text" class="form-control"
								placeholder="Email address">
							<button class="btn btn-primary" type="button">Subscribe</button>
						</div>
						<div>
							<p class="my-2">HÌNH THỨC THANH TOÁN</p>
							<div
								class="d-flex flex-column flex-sm-row justify-content-between py-4  container-x ">
								<ul class="list-unstyled d-flex">
									<li class="ms-1"><a class="link-body-emphasis" href="#"><img
											class="w-auto   " alt="" src="img/img_larg/payment_1.webp"></a></li>

									<li class="ms-1"><a class="link-body-emphasis" href="#"><img
											class="w-auto  " alt="" src="img/img_larg/payment_2.webp"></a></li>

									<li class="ms-1"><a class="link-body-emphasis" href="#"><img
											class="w-auto  " alt="" src="img/img_larg/payment_3.webp"></a></li>

									<li class="ms-1"><a class="link-body-emphasis" href="#"><img
											class="w-auto " alt="" src="img/img_larg/payment_4.webp"></a></li>

								</ul>
							</div>
						</div>
					</form>
				</div>
			</div>

		</footer>
	</div>
	<!-- end footer -->
	<!--bootstrap js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>

</html>