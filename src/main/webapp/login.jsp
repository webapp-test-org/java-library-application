<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>loginpage</title>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-4">
				<table class="table" border="3" style="width: 700px;border-color:aqua;">
					<tbody>
						<tr>
							<td>

								<div class="text-center">
									<img src="loginlogo.png" alt="Logo">
									<h2>UserLogin</h2>
								</div> <
								<div class="d-flex justify-content-center">
									<form action="login" method="post" style="font-size: 25px">
										<div class="form-group">
											<label for="uname">Username:</label> <input type="text"
												class="form-control" id="uname" placeholder="Enter username"
												name="uname" required>
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group mt-4">
											<label for="pwd">Password:</label> <input type="password"
												class="form-control" id="pwd" placeholder="Enter password"
												name="password" required>
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="form-group form-check mt-3">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" name="remember"
												required> Remember me
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Check this checkbox to
													continue.</div>
											</label>
										</div>
										<div class="mt-3">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>

										<br> <br> <a href="index.jsp" style="padding: 20px">New
											User SignUp</a> <a href="forgotpassword.jsp"
											style="padding: 70px">ForgotPassword</a>

									</form>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-4"></div>

	</div>
</body>
</html>