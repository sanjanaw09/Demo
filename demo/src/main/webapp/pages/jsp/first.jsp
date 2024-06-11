<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Expense Details</h1>
		<form action="req2" method="post">
			<table>
			<tr>
					<td align="right">Id:</td>
					<td><input type="text" name="id" value="${expense.id}" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Category:</td>
					<td><input type="text" name="category" value="${expense.category}"></td>
				</tr>
				<tr>
					<td align="right">Amount:</td>
					<td><input type="text" name="amount" value="${expense.amount}"></td>
				</tr>
				<tr>
					<td align="right">Comments:</td>
					<td><input type="text" name="comments" value="${expense.comments}"></td>
				</tr>
				
				<tr>
					<td align="center" colspan="2">
					<a href="AddExpense">Back</a>&nbsp<input type="submit" name="b1" value="Edit">
					
					</td>
					
				</tr>
			</table>
		</form>
</body>
</html>