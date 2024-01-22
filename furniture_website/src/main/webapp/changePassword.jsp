<%@page import="model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<title>Changed Password Page</title>
<style>
.body-window {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 80vh;
	margin: 0;
	background-color: white;
}

.login-container {
	text-align: center;
	border: 1px solid #ccc;
	padding: 20px;
	width: 500px;
	background-color: #fff; /* Màu nền cho phần nội dung */
}

/* Style for form rows */
.form-row {
	display: flex;
	flex-direction: column;
	margin-bottom: 10px;
}


button {
	width: 60%;
	padding: 10px;
	background-color: #FFCC33;
	color: #fff;
	border: none;
	cursor: pointer;

}

/* Add your other CSS styles here */
<title>Trang Đăng Nhập </title> <style>body {
	display: flex;
	justify-content: center;
	height: 100vh;
	margin-right: 10px;
}

form {
	width: 450px;
}

input {
	width: 75%;
	margin-bottom: 10px;
	box-sizing: border-box;
	padding: 10px;
	margin-top: 5px;
	margin-left: 60px;
}
</style>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->

	<div class="body-window">
		<div class="login-container">
			<form action="change" method="post">
				<h1 style="text-align: center;">Changed Password</h1>
			<%String errorMessage = (String) request.getAttribute("errorMessage");%>
			<%if ((errorMessage) != null) {%>
			<div style="color: red;">
				<%=errorMessage%>
			</div>
			<%}%>
			<%Account account = (Account) session.getAttribute("acc");%>
				<div class="form-row"><input type="password" name="currentpass" placeholder="Current Password" required></div>
				<input type="hidden"  name="user"  value="<%=account.getAccountName()%>">
				<div class="form-row"><input type="password" name="newpass" placeholder="New Password" required></div>
				<div class="form-row"><input type="password" name="confpass" placeholder="Confirm password " required></div>
				<button type="submit">Change</button>
			</form>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->

</body>
</html>