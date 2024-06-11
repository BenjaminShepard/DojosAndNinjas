<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<title>Create Dojo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<h1>New Dojo</h1>
	
	<form:form action="/dojos" method="post" modelAttribute="dojo">
		<div>
			<label>Name:</label>
			<form:input path="name"/>
			<form:errors path="name" cssClass="error" />
		</div>
		<input type="submit" value="Create" />
	</form:form>
</body>
</html>