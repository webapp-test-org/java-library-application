<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ojas.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditPage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<style>
.mb-3 {
	font-size: 25px;
}

#TextInput {
	font-size: 15px;
	color: blue;
}

h1 {
	text-align: center;
	color: maroon;
	font-size: 50px;
}
</style>
</head>
<body>



	<%
	UserEntity u = (UserEntity) request.getAttribute("user");
	%>
	<div class="h1">
		<h1>........Update Details.......</h1>
	</div>
	<div class="d-flex justify-content-center">
		<form action="update" method="post" style="width: 600px">
			<div class="mb-3">
				<input type="hidden" id="TextInput" class="form-control"
					placeholder="Enter id" name="uid" value="<%=u.getUid()%>">
			</div>
			<div class="mb-3">
				<label for="TextInput" class="form-label">FirstName :</label> <input
					type="text" id="TextInput" class="form-control"
					placeholder="Enter first Name" name="fname"
					value="<%=u.getFirstName()%>">
			</div>
			<div class="mb-3">
				<label for="TextInput" class="form-label">LastName :</label> <input
					type="text" id="TextInput" class="form-control"
					placeholder="Enter last Name" name="lname"
					value="<%=u.getLastName()%>">
			</div>
			<div class="mb-3">
				<label for="TextInput" class="form-label">Email :</label> <input
					type="email" id="TextInput" class="form-control"
					placeholder="Enter email" name="email" value="<%=u.getEmail()%>">
			</div>
			<div class="mb-3">
				<label for="TextInput" class="form-label">UserName :</label> <input
					type="text" id="TextInput" class="form-control"
					placeholder="Enter user Name" name="uname"
					value="<%=u.getUserName()%>">
			</div>
			<div class="mb-3">
				<label for="TextInput" class="form-label">Password :</label> <input
					type="password" id="TextInput" class="form-control"
					placeholder="Enter Password" name="password"
					value="<%=u.getPassword()%>">
			</div>
			<br> <br>
			<div class="text-center">
				<input type="submit" value="SaveChanges"
					style="background-color: green; color: white; font-size: 30px;">
			</div>
		</form>

	</div>
</body>
</html>