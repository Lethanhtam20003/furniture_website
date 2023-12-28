<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: #4CAF50; /* Màu xanh lá */
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

/* Style for input */
input {
	width: 100%;
	box-sizing: border-box;
	padding: 10px;
	margin-top: 5px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	cursor: pointer;
}

/* Add your other CSS styles here */
=======
<title>Trang Đăng Nhập</title>
<style>
	body{
	display:flex;

	justify-content: center;
	height: 100vh;
	margin:0;
	}
	form{
		width: 300px;
		
	}
	input {
	width: 100%;
	margin-bottom:10px;
}


</style>
</head>
<body>

	<div class="login-container">
		
		<form action="login" method="post">
			<h2>Login</h2>
			<p class="text-danger" style = "color:red;text-align:left">${mess}</p>
			
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
	</div>

</body>
</html>