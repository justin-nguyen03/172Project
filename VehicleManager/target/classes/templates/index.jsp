
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Manager</title>
</head>
<body>
<div align="center">	
	<h3 th:inline="text">Welcome [[${#httpServletRequest.remoteUser}]]</h3>
		
	<form th:action="@{/logout}" method="post">
		<input type="submit" value="Logout" />
	</form>
	
	<h1>Vehicle Manager</h1>
	<a href="new">Add New Vehicle</a>
	
	<br/><br/>
	<table border="1" cellpadding="10">
		<thead>
			<tr>
				<th>Vehicle ID</th>
				<th>Make</th>
				<th>Model</th>
				<th>Year</th>
				<th>Price</th>
				<th>Stock</th>
				
				<th sec:authorize="hasRole('ROLE_ADMIN')">Actions</th>				
				
			</tr>
		</thead>
		<tbody>
			<tr th:each="vehicle : ${listVehicle}">
				<td th:text="${vehicle.id}">Product ID</td>
				<td th:text="${vehicle.make}">Make</td>
				<td th:text="${vehicle.model}">Model</td>
				<td th:text="${vehicle.year}">Year</td>
				<td th:text="${vehicle.price}">Price</td>
				<td th:text="${vehicle.stock}">Stock</td>
				<td sec:authorize="hasRole('ROLE_ADMIN')">
					<a th:href="@{'/edit/' + ${vehicle.id}}">Edit</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a th:href="@{'/delete/' + ${vehicle.id}}">Delete</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
