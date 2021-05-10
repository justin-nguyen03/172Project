
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Add New Vehicle</title>
</head>
<body>
	<div align="center">	
		<h1>Add New Vehicle</h1>
		<br/>
		<form action="#" th:action="@{/save}" th:object="${vehicle}" method="post">
			<table border="0" cellpadding="10">
				<tr>
					<td>Make:</td>
					<td><input type="text" th:field="*{make}" /></td>
				</tr>
				<tr>
					<td>Model:</td>
					<td><input type="text" th:field="*{model}" /></td>
				</tr>				
				<tr>
					<td>Year:</td>
					<td><input type="text" th:field="*{year}" /></td>
				</tr>				
				<tr>
					<td>Price:</td>
					<td><input type="text" th:field="*{price}" /></td>
				</tr>	
				<tr>
					<td>Stock:</td>
					<td><input type="text" th:field="*{stock}" /></td>
				</tr>				
				<tr>
					<td colspan="2"><button type="submit">Save</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
