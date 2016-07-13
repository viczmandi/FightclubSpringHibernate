<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User managment</title>
</head>
<body>
	<h1>Fightclub user data</h1>
	<form:form action="user" method="POST" commandName="user">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td>First name</td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td>User name</td>
				<td><form:input path="userName" /><form:errors path="userName" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="emailAddress" /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><form:radiobutton path="gender" value="Male" />Male <form:radiobutton
						path="gender" value="Female" />Female</td>
			</tr>
			<tr>
				<td>Phone number</td>
				<td><form:input path="phoneNumber" /></td>
			</tr>
			<tr>
				<td>Country</td>
				<td><form:input path="country" /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>Zip code</td>
				<td><form:input path="zipcode" /></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />				
			</tr>
		</table>
	</form:form>
	<br>
	<table border="1">
		<th>User ID</th>
		<th>First name</th>
		<th>Last name</th>
		<th>User name</th>
		<th>Password</th>
		<th>Email</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Phone number</th>
		<th>Country</th>
		<th>City</th>
		<th>Address</th>
		<th>Zip code</th>
		<c:forEach items="${userList}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.userName}</td>
				<td>${user.password}</td>
				<td>${user.emailAddress}</td>
				<td>${user.age}</td>
				<td>${user.gender}</td>
				<td>${user.phoneNumber}</td>
				<td>${user.country}</td>
				<td>${user.city}</td>
				<td>${user.address}</td>
				<td>${user.zipcode}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>