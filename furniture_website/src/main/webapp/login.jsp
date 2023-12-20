<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<h2>Login</h2>
	<form action="LoginServlet" method="post">
		Username:<input type="text" name ="username" required="required"><br>
		Password:<input type="password" name="password" required="required"><br>
		<input type="submit" value="Login">
	</form>

</body>
</html>