<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta charset="UTF-8">
<style type="text/css">
.linkXanh {
	font-size: 20px;
	color: green; /* hoặc mã màu khác như #008000 hoặc rgb(0, 128, 0) */
	text-decoration: none; /* ( loại bỏ gạch chân liên kết) */
}

.lui {
	margin-left: -10;
	left: -10;
}

.linkProduct a {
	color: black;
	font-size: 24px;
}

.linkProduct p {
	font-size: 14px;
}

.linkProduct a:hover {
	color: #FF9800;
}
</style>
<script type="text/javascript">
<!-- Tự động chuyển slide sau mỗi 3 giây -->
	setInterval(function() {
		var carousel = new bootstrap.Carousel(document
				.getElementById('carouselExampleIndicators'), {
			interval : 5000
		// Khoảng thời gian giữa các slide, tính bằng mili giây (ở đây là 5 giây)
		});
	}, 3000); // Khoảng thời gian giữa các lần kích hoạt, tính bằng mili giây (ở đây là 3 giây)
</script>
<title>Insert title here</title>
</head>
<body>
	<!-- tieu de -->
	<section>
		<div id="carouselExampleIndicators" class="carousel slide "
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
			</div>
			<div class="carousel-inner ">
				<div class="carousel-item active ">
					<img src="img/img_larg/slider_1.webp" class="d-block w-100"
						alt="Slide 1">
					<!-- card -->
					<div
						class="card position-absolute top-0 start-0 translate-middle-y bg-secondary-subtle "
						style="width: 35rem; height: 18rem; margin-left: 5%; margin-top: 20%">
						<!-- card -->
						<div class="" style="margin: 5%">
							<div class="card-body ">
								<h5 class="card-title">
									<strong> Bán Hàng nội thất online</strong>
								</h5>
								<h2 class="card-subtitle mb-2 text-body-secondary">Danh
									sách sản Phẩm</h2>
								<p class="card-text">Bộ sưu tập xu hướng mang đến nhiều
									thiết kế hiện đại cho căn nhà của bạn</p>
								<button type="button"
									class="btn btn-outline-warning text-bg-warning ">
									<a href="#" class="text_link ">xem ngay</a>
								</button>

							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/img_larg/slider_2.webp" class="d-block w-100"
						alt="Slide 2">
					<!-- card -->
					<div
						class="card position-absolute top-0 start-0 translate-middle-y bg-secondary-subtle "
						style="width: 35rem; height: 18rem; margin-left: 5%; margin-top: 20%">
						<!-- card -->
						<div class="" style="margin: 5%">
							<div class="card-body ">
								<h5 class="card-title">
									<strong> Bán Hàng nội thất online</strong>
								</h5>
								<h2 class="card-subtitle mb-2 text-body-secondary">Sản phẩm
									bán chạy</h2>
								<p class="card-text">Bộ sưu tập xu hướng mang đến nhiều
									thiết kế hiện đại cho căn nhà của bạn</p>
								<button type="button"
									class="btn btn-outline-warning text-bg-warning ">
									<a href="#" class="text_link ">xem ngay</a>
								</button>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<div class="container-xl  linkProduct">
		<div class="row p-2 ">
			<div class="col-6">
				<div class="image-container">
					<a href="PhanTrang?curentPage=0&acction="> <img class=""
						src="img/img_larg/cate_1_img.webp" alt="Mô tả của ảnh"
						height="200" width=" 600">
					</a>
					<div class="overlay-text m-4 m-4">
						<h5>
							<a class="linkXanh" href="PhanTrang?curentPage=0&acction=">Sản
								Phẩm bán chạy</a>
						</h5>
						<p>
							Tiện ích cho nhu cầu sinh hoạt hàng ngày.<br> Giải pháp An
							toàn - Tiết kiệm
						</p>
						<a class="linkXanh" href="PhanTrang?curentPage=0&acction="> <svg
								xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-caret-right "
								viewBox="0 0 16 16" style="margin-top: -10px">
	  									<path
									d="M6 12.796V3.204L11.481 8zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z" />
							</svg> <span>Xem Thêm</span></a>
					</div>

				</div>
			</div>
			<div class="col-2 ">
				<div class=" image-container">
					<a
						href="productFiltering?acction=fillter&type=decorativeLights&price= ">
						<img class=" " src="img/img_larg/cate_2_img.webp"
						alt="Mô tả của ảnh" height="200" width="200">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh"
								href="productFiltering?acction=fillter&type=decorativeLights&price=">Đèn
								trang trí</a>
						</h5>
						<p>Thẩm mỹ độc đáo</p>
					</div>
				</div>

			</div>
			<div class="col-2 ">
				<div class="image-container">
					<a href="productFiltering?acction=fillter&type=decoration&price=">
						<img class=" " src="img/img_larg/cate_3_img.webp"
						alt="Mô tả của ảnh" height="200" width="200">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh"
								href="productFiltering?acction=fillter&type=decoration&price=">Đồ
								trang trí</a>
						</h5>
						<p>Không gian nghệ thuật</p>

					</div>
				</div>
			</div>
			<div class="col-2 ">
				<div class="image-container">
					<a
						href="productFiltering?acction=fillter&type=sanitaryEquiment&price=">
						<img class=" " src="img/img_larg/cate_4_img.webp"
						alt="Mô tả của ảnh" height="200" width="200">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh"
								href="productFiltering?acction=fillter&type=sanitaryEquiment&price=">Thiết
								bị vệ sinh</a>
						</h5>
						<p>Đa dạng mẫu mã</p>

					</div>
				</div>
			</div>
		</div>

		<div class="row p-2">
			<div class="col-6 ">
				<div class="image-container">
					<a href="PhanTrang?curentPage=0&acction="> <img class=" "
						src="img/img_larg/cate_6_img.webp" alt="Mô tả của ảnh"
						height="200" width=" 600">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh" href="PhanTrang?curentPage=0&acction=">Top
								sản phẩm bán chạy hàng đầu</a>
						</h5>
						<p>Thiết kế Đơn giản - Tinh tế - Hiện đại</p>
						<a class="linkXanh" href="PhanTrang?curentPage=0&acction="> <svg
								xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-caret-right "
								viewBox="0 0 16 16" style="margin-top: -10px">
	  									<path
									d="M6 12.796V3.204L11.481 8zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z" />
							</svg> <span>Xem Thêm</span>

						</a>
					</div>
				</div>
			</div>
			<div class="col-2 ">
				<div class="image-container ">
					<a href="productFiltering?acction=fillter&type=furniture&price=">
						<img class=" " src="img/img_larg/cate_7_img.webp"
						alt="Mô tả của ảnh" height="200" width="200">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh"
								href="productFiltering?acction=fillter&type=furniture&price=">Đồ
								nội thất</a>
						</h5>
						<p>Trang trí không gian</p>

					</div>
				</div>
			</div>
			<div class="col-4 ">
				<div class="image-container">
					<a href="productFiltering?acction=fillter&type=handMade&price=">
						<img class=" " src="img/img_larg/cate_5_img.webp"
						alt="Mô tả của ảnh" height="200" width="420">
					</a>
					<div class="overlay-text m-4 ">
						<h5>
							<a class="linkXanh"
								href="productFiltering?acction=fillter&type=handMade&price=">Sản
								Phẩm Thủ Công</a>
						</h5>
						<p>Đường nét chạm khắc tinh tế</p>
						<a class="linkXanh"
							href="productFiltering?acction=fillter&type=handMade&price=">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-caret-right "
								viewBox="0 0 16 16" style="margin-top: -10px">
	  									<path
									d="M6 12.796V3.204L11.481 8zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z" />
							</svg> <span>Xem Thêm</span>

						</a>
					</div>
				</div>
			</div>

		</div>



	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>