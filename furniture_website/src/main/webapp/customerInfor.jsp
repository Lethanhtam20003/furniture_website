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
<style>
body {
    background: rgb(99, 39, 120)
}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}

</style>
<title>Information Customer Page</title>
</head>
<body>
	 <jsp:useBean id="account" class="model.Account" scope="request"/>
	<div class="container rounded bg-white mt-5 mb-5">
		<div class="row">
			<div class="col-md-3 border-right">
				<div
					class="d-flex flex-column align-items-center text-center p-3 py-5">
					<img class="rounded-circle mt-5" width="150px"
						src="https://louisville.edu/enrollmentmanagement/images/person-icon/image"><span
						class="font-weight-bold"><%= account.getLastName() %></span>
				</div>
			</div>
			<div class="col-md-5 border-right">
				<div class="p-3 py-5">
					<div class="d-flex justify-content-between align-items-center mb-3">
						<h4 class="text-right">Thông tin khách hàng</h4>
					</div>
					<div class="row mt-2">
						<div class="col-md-6">
							<label class="labels">First Name</label><input type="text"
								class="form-control" placeholder="first name" value="<%= account.getFirstName() %>" >
						</div>
						<div class="col-md-6">
							<label class="labels">Last Name</label><input type="text"
								class="form-control" value="<%= account.getLastName() %>" placeholder="last name">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-md-12">
							<label class="labels">Phone Number</label><input type="text"
								class="form-control" placeholder="phone number" value="<%= account.getPhoneNum() %>">
						</div>
						<div class="col-md-12">
							<label class="labels">Email</label><input type="text"
								class="form-control" placeholder="Email" value="<%= account.getEmaill() %>">
						</div>
						<div class="col-md-12">
							<label class="labels">Address</label><input type="text"
								class="form-control" placeholder="Address" value="<%=  account.getAddressAccount()%>">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-md-6">
							<label class="labels">Gender</label><input type="text"
								class="form-control" placeholder="gender" value="<%= account.getGender()%>">
						</div>
						<div class="col-md-6">
							<label class="labels">Birthday</label><input type="date"
								class="form-control" value="<%= account.getBirthday() %>" placeholder="birthday">
						</div>
					</div>
					<div class="mt-5 text-center">
						<button class="btn btn-primary profile-button" type="button" ><a href="index.jsp">Quay lại</a></button>
						<button class="btn btn-primary profile-button" type="button">Chỉnh sửa</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

</body>
</html>