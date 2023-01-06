<html>
<head>
<title>Register</title>
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
<form action="register" method="post">
	<div>
		<div class="h1">
			<h1>........Registration.......</h1>
		</div>
		<div class="mb-3">
			<label for="TextInput" class="form-label">FirstName :</label> <input
				type="text" id="TextInput" class="form-control"
				placeholder="Enter first Name" name="fname">
		</div>
		<div class="mb-3">
			<label for="TextInput" class="form-label">LastName :</label> <input
				type="text" id="TextInput" class="form-control"
				placeholder="Enter last Name" name="lname">
		</div>
		<div class="mb-3">
			<label for="TextInput" class="form-label">Email :</label> <input
				type="email" id="TextInput" class="form-control"
				placeholder="Enter email" name="email">
		</div>
		<div class="mb-3">
			<label for="TextInput" class="form-label">UserName :</label> <input
				type="text" id="TextInput" class="form-control"
				placeholder="Enter user Name" name="uname">
		</div>
		<div class="mb-3">
			<label for="TextInput" class="form-label">Password :</label> <input
				type="password" id="TextInput" class="form-control"
				placeholder="Enter Password" name="password">
		</div>
		<br>
		<br> <input type="submit" value="Submit"
			style="height: 40px; width: 20%; background: green; color: white; font-size: 25px; ">
	</div>
	</form>
</body>
</html>
