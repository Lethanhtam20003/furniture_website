<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Đăng Nhập</title>
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