<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
 body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            width: 300px; /* Điều chỉnh kích thước form theo nhu cầu */
            display: flex;
            flex-direction: column;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        label {
            width: 100px; /* Điều chỉnh độ rộng của nhãn */
            margin-right: 10px;
        }

        input {
            flex: 1; /* Chiếm phần còn lại của dòng */
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }S
</style>
<title>Information Customer Page</title>
</head>
<body>
	<div class="body-window">
		<form action="" method="post">
			<div class="font-group">
				<label for="accountID">Account ID:</label> 
				<input type="text"
					id="accountID" name="accountID"> <br> 
					
				<label
					for="accountName">Account Name:</label>
				 <input type="text"
					id="accountName" name="accountName"> <br> 
				
				<label
					for="password">Password:</label> 
				<input type="password"
					id="password" name="password"> <br> 
					
				<label
					for="accountID">Account ID:</label> 
				<input type="text"
					id="accountID" name="accountID"> <br> 
					
				<label
					for="firstName">First Name:</label> 
					
				<input type="text"
					id="firstName" name="firstName"> <br> 
					
				<label
					for="lastName">Last Name:</label> 
				<input type="text" id="lastName"
					name="lastName"> <br> 
					
				<label for="email">Email:</label>
				<input type="text" id="email" name="email"><br>
			</div>

		</form>
	</div>

</body>
</html>