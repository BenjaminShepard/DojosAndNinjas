<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>Create New Ninja</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<h1>New Ninja</h1>
	
	<form:form action="/ninjas" method="post" modelAttribute="ninja">
		<div>
			<label>First Name:</label>
			<form:input path="firstName"/>
			<form:errors path="firstName" cssClass="error"/>
		</div>
		<div>
			<label>Last Name:</label>
			<form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"/>
		</div>
		<div>
			<label>Age:</label>
			<form:input path="age"/>
			<form:errors path="age" cssClass="error"/>
		</div>
		<div>
			<label>Dojo</label>
			<form:select path="dojo.id">
				<form:option value="">Select a Dojo</form:option>
				<c:forEach items="${dojos}" var="dojo">
					<form:option value="${dojo.id}">${dojo.name}</form:option>
				</c:forEach>
			</form:select>
		</div>
		<input type="submit" value="Create">
	</form:form>
</body>
</html>