<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ojas.daoimpl.*"%>
<%@page import="java.util.*"%>
<%@page import="com.ojas.pojo.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="ISO-8859-1">
<title>ViewAllUsers</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js">
	
</script>





<!-- Datatable plugin CSS file -->

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js">
	
</script>





<script>
	/* Initialization of datatable */

	$(document).ready(function() {

		$('#myTable').DataTable({

			pagingType : 'full_numbers',

		});

	});
</script>
</head>
<body>
	<%
	UserDaoImpl impl = new UserDaoImpl();
	List<UserEntity> li = impl.viewAllUsers();
	application.setAttribute("list", li);
	%>
	<div class="container">

		<div class="row">

			<div class="col-md-12">
				<h1 style="text-align: center;">ViewAllUsers</h1>

				<table class="table" id="myTable" border="3" >
					<thead>
						<tr>
							<th>Id</th>
							<th>FirstName</th>
							<th>LastName</th>
							<th>Email</th>
							<th>UserName</th>
							<th>Password</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<%
					List<UserEntity> viewall = (List<UserEntity>) application.getAttribute("list");
					for (UserEntity view : viewall) {
					%>
					<tbody>
						<tr>
							<td><%=view.getUid()%></td>
							<td><%=view.getFirstName()%></td>
							<td><%=view.getLastName()%></td>
							<td><%=view.getEmail()%></td>
							<td><%=view.getUserName()%></td>
							<td><%=view.getPassword()%></td>
							<td><button type='button' class='btn btn-outline-success'>
									<a href='edit?id=<%=view.getUid()%>'> Edit </a>
								</button></td>
							<td><button type='button' class='btn btn-outline-danger'>
									<a href='delete?id=<%=view.getUid()%>'> Delete </a>
								</button></td>
						</tr>
					</tbody>

					<%
					}
					%>


				</table>

			</div>
		</div>
	</div>
</body>
</html>