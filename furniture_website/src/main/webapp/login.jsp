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
<title>Login Page</title>
<style>
.body-window {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: white;
}

.login-container {
	text-align: center;
	border: 1px solid #ccc;
	padding: 20px;
	width: 300px;
	background-color: #fff; /* Màu nền cho phần nội dung */
}

/* Style for form rows */
.form-row {
	display: flex;
	flex-direction: column;
	margin-bottom: 10px;
}


button {
	width: 80%;
	padding: 10px;
	background-color: #FFCC33;
	color: #fff;
	border: none;
	cursor: pointer;
	margin-right: 40px;
}

/* Add your other CSS styles here */
<
title>Trang Đăng Nhập </title> <style>body {
	display: flex;
	justify-content: center;
	height: 100vh;
	margin-right: 10px;
}

form {
	width: 300px;
}

input {
	width: 80%;
	margin-bottom: 10px;
		box-sizing: border-box;
	padding: 10px;
	margin-top: 5px;
	margin-left: 10px;
}
</style>
</head>
<body>
	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->


	<div class="body-window">
		<div class="login-container">
				<form action="login" method="post">
					<h2 style="margin-right: 40px">Login</h2>
					<p class="text-danger" style="color: red; text-align: left">${mess}</p>
	
					<div class="form-row">
						<input type="text" id="username" name="username"
							placeholder="Username" required>
					</div>
	
					<div class="form-row">
						<input type="password" id="password" name="password"
							placeholder="Password" required>
					</div>
	
					<button type="submit">Sign-in</button>
				</form>
	
				<p>
					Don't have an account? <a href="register.jsp">Register</a>
				</p>
				<p> <a href="forgotPassword.jsp">Forgot password?</a> </p>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->

</body>
</html>