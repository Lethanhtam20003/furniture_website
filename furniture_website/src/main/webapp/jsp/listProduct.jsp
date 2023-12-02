<%@page import="data.Storage"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/css1.css">
<link rel="stylesheet" type="text/css" href="../css/listProductCSS.css">
<style type="text/css">
.nenMo {
	background-color: aliceblue;
	height: 32px;
	width: 32px;
	opacity: 0.7
}

.nenMo:hover {
	opacity: 1;
	background-color: #D8A142;
}

.boGoc {
	border: 0px solid #333;
	border-radius: 20%;
}

.anDoiTuong {
	display: none;
}
</style>
</head>
<body>
	<div class="container-lg  p-5 ">
		<div class="text-center">
			<h2>Top ban chay</h2>
		</div>

		<%
		int index = 0, i = 0, j = 0;
		while (true) {
			if (j == 0) {
		%>
		<div class="row p-2">
			<%
			}
			%>
			<div class="col-3  ">
				<div class="card " style="width: 17em;"
					onmouseover="hienThiDoiTuong('<%=i + "" + j%>')"
					onmouseleave="anDoiTuong('<%=i + "" + j%>')">
					<div class="image-container ">
						<a href=""> <img src="../img/img_larg/pro_ke3.webp"
							class="card-img-top " alt="...">
						</a>
						<div class="overlay-text"></div>
						<div id="addGioHang<%=i + "" + j%>"
							class=" viTriTrenPhai nenMo text-center boGoc anDoiTuong ">
							<img alt="" src="../img/icon/icons8-bag-32.png">
						</div>
					</div>
					<div class="card-body text-bg-light	hienDoiTuong">
						<p>name</p>
						<p class="card-text">price</p>
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
		%>


	</div>
	<script type="text/javascript">
		function hienThiDoiTuong(id) {
			document.getElementById('addGioHang' + id).style.display = 'block';

		}
		function anDoiTuong(id) {
			document.getElementById('addGioHang' + id).style.display = 'none';
		}
	</script>
</body>
</html>





