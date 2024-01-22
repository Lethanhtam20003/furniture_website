<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<title>Register</title>
<style>
.body-window {
	font-family: Arial, sans-serif;
	background-color: white;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.register-container {
	text-align: center;
	border: 1px solid #ccc;
	padding: 20px;
	width: 100%;
	background-color: #fff;
}

.form-group {
	display: flex;
	align-items: center;
	margin-bottom: 15px;
}

.form-group label {
	flex: 1;
	text-align: right;
	margin-right: 10px;
}

.form-group input {
	flex: 2;
	box-sizing: border-box;
	padding: 10px;
}

button {
	width: 30%;
	padding: 10px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	cursor: pointer;
}

.column {
	width: 50%; /* Đặt chiều rộng cho mỗi cột */
	padding: 10px;
	border: 1px solid #ddd;
}

main {
	display: flex;
	justify-content: space-between;
	padding: 20px;
}
</style>
</head>
<body>


	<!-- menu -->
	<jsp:include page="menu.jsp" />
	<!--end menu-->



	<div class="body-window">
		<div class="register-container">
			<h2>Register</h2>
			<%
			String errorMessage = (String) request.getAttribute("errorMessage");
			%>
			<%
			if ((errorMessage) != null) {
			%>
			<div style="color: red;">
				<%=errorMessage%>
			</div>
			<%
			}
			%>

			<form action="register" method="post">
				<main>
					<div class="column">
						<div class="form-group">
							<label for="username">Username:</label> <input type="text"
								id="username" name="username" required>
						</div>

						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								id="password" name="password" required>
						</div>

						<div class="form-group">
							<label for="con-password">Confirm Password:</label> <input
								type="password" id="con-password" name="con-password" required>
						</div>

						<div class="form-group">
							<label for="firstName">First Name:</label> <input type="text"
								id="firstName" name="firstName" required>
						</div>

						<div class="form-group">
							<label for="lastName">Last Name:</label> <input type="text"
								id="lastName" name="lastName" required>
						</div>

						<div class="form-group">
							<label for="email">Email:</label> <input type="email" id="email"
								name="email" required>
						</div>
					</div>
					<div class="column">
						<div class="form-group">
							<label for="birthday">Birthday:</label> <input type="date"
								id="birthday" name="birthday">
						</div>
						<div class="form-group">
							<label for="gender">Gender:</label> <input type="text"
								id="gender" name="gender">
						</div>

						<div class="form-group">
							<label for="phoneNum">Phone Number:</label> <input type="text"
								id="phoneNum" name="phoneNum">
						</div>
						<div class="form-group">
							<label for="addres-ac">Address Account:</label> <input
								type="text" id="address-ac" name="adress-ac" required>
						</div>
						<div class="form-group">
							<label for="address">Address Order:</label> <input type="text"
								id="address" name="address" required>
						</div>
					</div>
				</main>

				<button type="submit">Register</button>
			</form>

			<p>
				Already have an account? <a href="login.jsp">Login</a>
			</p>
		</div>
	</div>

		<!-- footer -->
		<jsp:include page="footer.jsp" />
		<!-- end footer -->
</body>
</html>