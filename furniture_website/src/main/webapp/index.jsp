 
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
<!--bootstrap js-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">


<title>Trang chủ</title>

</head>

<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->

	<!-- container main -->
	<jsp:include page="ProductPortfolio.jsp" />
	<br>
	<jsp:include page="ProductList.jsp" flush="true" />

	<!--end container main -->

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->


</body>

</html>