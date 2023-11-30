<%@page import="data.Storage"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>

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
<link rel="stylesheet" type="text/css" href="../css/main.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-lg  p-5">


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
				<div class="card" style="width: 18em;">
					<div class="image-container">
						<a href=""> <img src="../img/img_larg/pro_ke3.webp"
							class="card-img-top " alt="...">
						</a>
						<div class="overlay-text">discount</div>
						<div class="viTriTrenPhai">gio hang</div>
					</div>
					<div class="card-body text-bg-light	">
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
</body>
</html>





