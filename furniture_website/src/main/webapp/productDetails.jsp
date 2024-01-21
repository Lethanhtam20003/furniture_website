<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<link rel="stylesheet" type="text/css" href="css/product.css">
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

.bang th {
	width: 50rem
}

.bang td {
	width: 50%
}

.bt {
	background-color: #F7B787;
	color: white;
	border: 0;
}

.bt:hover {
	background-color: #F7B990;
	color: black;
}

.bt2 {
	background-color: white;
	color: black;
	border: 1;
}

.bt2:hover {
	background-color: #F7B990;
	color: white;
	border: 0;
}

.bt3 {
	background-color: white;
	color: black;
	border: 1;
	border-color: #B6BBC4;
}

.bt3:hover {
	background-color: #F7B990;
	color: white;
	border: 0;
}

.bt3:focus {
	background-color: #F7B990;
	color: black;
	border: 0;
}

.textColor {
	color: #F7B990;
}

.tb {
	
}
</style>

<script type="text/javascript">
	// Khai báo biến để lưu trữ giá trị
	var count = 1;

	function increment() {
		// Tăng giá trị và cập nhật trên giao diện
		count++;
		document.getElementById('SoLuongMua').value = count;
	}

	function decrement() {
		// Giảm giá trị và cập nhật trên giao diện
		count--;
		if (count < 1) {
			console.log("count is less than 0");
			document.getElementById('SoLuongMua').value = 1;
			count = 1;
		} else {
			document.getElementById('SoLuongMua').value = count;
		}
	}
</script>
<!--bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">

<link rel="stylesheet" type="" href="../img/*">
<title>Sản Phẩm</title>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->
	<%
	Product p = (Product) request.getAttribute("product");
	%>
	<section class="imgIntroduc backgroundSection">
		<div class="text-overlay">
			<p><%=p.getName()%></p>
			<div class=text-overlay2>
				<p>
					<a href="index.jsp" style="color: white">Trang chủ ></a> <span><a
						href="PhanTrang?curentPage=0&acction=">Sản Phẩm ></a></span> <a
						href="productFiltering?acction=fillter&type=<%=p.getType()%>&price=">
						<%=p.getCategory(p.getType())%></a> <span style="color: white;">
						></span>
					<%=p.getName()%>
			</div>
		</div>
	</section>
	<div class="container col pt-3">
		<div class="row">
			<div class="col">
				<img class="float-end " src="<%=p.getImgPath()%>"
					alt="<%=p.getName()%>">
			</div>
			<div class="col">
				<h3><%=p.getName()%></h3>
				<p>
					Thương Hiệu: <strong><%=p.getProducer()%> | </strong> Tình Trạng: <strong><%=p.getRemainingAmount()%></strong>
				<hr>
				<p>
					<span class="h3 pe-4 text-danger"><%=p.getPrice()%></span> <span
						class="text-decoration-line-through"> <%=p.getPrice()%></span>
				</p>
				<hr>
				<div class="bg-body-tertiary border p-4 ">
					<strong> Mô tả: </strong>
					<%=p.getDecription()%>

				</div>

				<p class="">
					Số Lượng
					<button class=" bt3" onclick="decrement()"
						style="width: 35px; height: 35px">
						<span>-</span>
					</button>
					<input class="text-center border border-dark-subtle"
						id="SoLuongMua" maxlength="3" type="text" pattern="[0-9]{3}"
						value="1" style="width: 35px; height: 35px; padding: -1;">
					<button class="bt3" onclick="increment()"
						style="width: 35px; height: 35px">
						<span>+</span>
					</button>
				</p>
				<div class="text-center row  mt-2 mb-2 ">
					<button class="text-center col  rounded  bt" style="height: 3rem">mua</button>

				</div>
				<div class="text-center row ">
					<button class="text-center col boder-2 rounded  me-3  bt2"
						style="height: 3rem">Thêm Vào Giỏ Hàng</button>
					<button class="text-center col boder-2 rounded bt2">Nhận
						Thông Tin Tư Vấn</button>

				</div>
				<div class="text-center row textColor mt-3">
					<p class="text-center p-1 col ">Miễn phí vận chuyển tại TP.HCM</p>
					<p class="text-center p-1 col">Bảo hành chính hãng toàn quốc</p>


				</div>
				<div class="text-center row textColor">
					<p class="text-center col">Cam kết chính hãng 100%</p>
					<p class="text-center col">1 đổi 1 nếu sản phẩm lỗi</p>
				</div>
			</div>

		</div>

		<div class="row">
			<div class="col-7 pe-5 ps-5 ">
				<h4>
					<span class="me-3"> Mô tả sản phẩm</span> <span>Hướng dẫn
						mua hàng</span>
				</h4>
				<hr>
				<p><%=p.getStatus()%></p>
			</div>
			<div class="col-5">
				<div></div>
				<table class="bang table table-striped">
					<thead>
						<p style="font-size: 25px">Thông số kỹ thuật</p>
					</thead>
					<hr>
					<%
					String type = p.getType();

					// start switch case
					switch (type) {
					case "decorativeLights":
						ProDecorativeLights proL = (ProDecorativeLights) p;
					%>
					<!-- Tiêu đề cột -->

					<!-- Dữ liệu -->
					<tr>
						<th>xuất xứ</th>
						<td><%=proL.getBrandOrigin()%></td>

					</tr>
					<tr>
						<th>Cách Đóng Gói</th>
						<td><%=proL.getPackaged()%></td>

					</tr>
					<tr>
						<th>Kích thước</th>
						<td><%=proL.getSize()%></td>
					</tr>
					<tr>
						<th>Vật liệu</th>
						<td><%=proL.getMeterial()%></td>
					</tr>
					<tr>
						<th>Nguồn điện áp</th>
						<td><%=proL.getWattage()%></td>
					</tr>
				</table>
				<%
				break;
				// decoration
				case "decoration":
					ProDecoration proD = (ProDecoration) p;
				%>
				<!-- Tiêu đề cột -->

				<!-- Dữ liệu -->

				<tr>
					<th>Màu sắc</th>
					<td><%=proD.getColor()%></td>

				</tr>

				<tr>
					<th>Kích thước</th>
					<td><%=proD.getSize()%></td>
				</tr>
				<tr>
					<th>Thiết kế</th>
					<td><%=proD.getSize()%></td>
				</tr>

				<tr>
					<th>Độ dài của gỗ</th>
					<td><%=proD.getThicknessWood()%></td>
				</tr>


				</table>
				<%
				break;
				case "furniture":
					ProFurniture proF = (ProFurniture) p;
				%>
				<!-- Tiêu đề cột -->

				<!-- Dữ liệu -->

				<tr>
					<th>nhà sản xuất</th>
					<td><%=proF.getBrandOrigin()%></td>

				</tr>

				<tr>
					<th>Chất liệu</th>
					<td><%=proF.getMeterial()%></td>
				</tr>
				<tr>
					<th>Kích thước</th>
					<td><%=proF.getSize()%></td>
				</tr>
				<tr>
					<th>Màu sắc</th>
					<td><%=proF.getColor()%></td>
				</tr>

				<tr>
					<th>Độ dài của gỗ</th>
					<td><%=proF.getThicknessWood()%></td>
				</tr>


				</table>
				<%
				break;
				case "handMade":
					ProHandmade proH = (ProHandmade) p;
				%>
				<!-- Tiêu đề cột -->

				<!-- Dữ liệu -->

				<tr>
					<th>Thiết kế</th>
					<td><%=proH.getDesign()%></td>
				</tr>
				<tr>
					<th>Kích thước</th>
					<td><%=proH.getSize()%></td>
				</tr>
				<tr>
					<th>Màu sắc</th>
					<td><%=proH.getColor()%></td>
				</tr>

				<tr>
					<th>Thời gian sử dụng</th>
					<td><%=proH.getTimeToUse()%></td>

				</tr>



				</table>
				<%
				break;
				case "sanitaryEquiment":
					ProSanitaryEquiment proS = (ProSanitaryEquiment) p;
				%>

				<!-- Tiêu đề cột -->

				<!-- Dữ liệu -->

				<tr>
					<th>Chất liệu</th>
					<td><%=proS.getMeterial()%></td>

				</tr>

				<tr>
					<th>Không Gian Sử dụng</th>
					<td><%=proS.getSpace()%></td>
				</tr>



				</table>
				<%
				break;

				}
				%>

			</div>

		</div>

	</div>
	<div style="height: 200px"></div>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>