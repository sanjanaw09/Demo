<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<center>
<h1>Expense Details</h1>
		<form action="req2" method="post">
			<table>
			<tr>
					<td align="right">Id:</td>
					<td><input type="text" name="id" value="0"></td>
				</tr>
				<tr>
					<td align="right">Category:</td>
					<td><input type="text" name="category"></td>
				</tr>
				<tr>
					<td align="right">Amount:</td>
					<td><input type="text" name="amount" value="0"></td>
				</tr>
				<tr>
					<td align="right">Comments:</td>
					<td><input type="text" name="comments"></td>
				</tr>
				
				<tr>
					<td align="center" colspan="2">
					<input type="submit" name="b1" value="Add">
					<input type="submit" name="b1" value="View">
					<input type="submit" name="b1" value="Delete">
					
					
					</td>
					
				</tr>
			</table>
		</form>
		<h4><font color="green">${status}</font></h4>
				<h3>List of Expense</h3>
		<hr>
		<table border="1">
		<th>Id</th>
			<th>Category</th>
			<th>Amount</th>
			<th>Comments</th>
			<c:forEach var="e" items="${expenses}">
			<tr>
				<td>${e.id}</td>
				<td>${e.category}</td>
				<td>${e.amount}</td>
				<td>${e.comments}</td>
				
			</tr>
			</c:forEach>
		
		</center>
</body>
</html>