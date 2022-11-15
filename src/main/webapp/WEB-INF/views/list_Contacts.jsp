<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>all contacts</title>
</head>
<body>
	<h2>!!All Contacts!!</h2>
	<table border='1'>
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Source</th>
			<th>Billing</th>
		</tr>

		<c:forEach var="con" items="${contacts}">
			<tr>
				<td><a href = "contactInfo?id=${con.id}">${con.firstName}</a></td>
				<td>${con.lastName}</td>
				<td>${con.email}</td>
				<td>${con.mobile}</td>
				<td>${con.source }</td>
				<td><a href = "generateBill?id=${con.id }">Billing</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>