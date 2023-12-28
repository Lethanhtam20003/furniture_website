<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #4CAF50;
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
	width: 400px;
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
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	cursor: pointer;
}
</style>
</head>
<body>

	<div class="register-container">
		<h2>Register</h2>

		<form action="register" method="post">

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

			<div class="form-group">
				<label for="address">Address:</label> <input type="address"
					id="address" name="address" required>
			</div>

			<div class="form-group">
				<label for="birthday">Birthday:</label> <input type="date"
					id="birthday" name="birthday">
			</div>

			<button type="submit">Register</button>
		</form>

		<p>
			Already have an account? <a href="login.jsp">Login</a>
		</p>
	</div>
</body>
</html>