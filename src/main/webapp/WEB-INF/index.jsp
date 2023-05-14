<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<h1>Welcome!</h1>
<p>Join our growing community</p>

<div class="container">
<form:form action="/register" method="post" modelAttribute="newUser">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">Register</td>
	        </tr>
	    </thead>
	    <thead>
	    	<tr>
	            <td class="float-left">Username:</td>
	            <td class="float-left">
	            	<form:errors path="userName" class="text-danger"/>
					<form:input class="input" path="userName"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Email:</td>
	            <td class="float-left">
	            	<form:errors path="email" class="text-danger"/>
					<form:input class="input" path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Password:</td>
	            <td class="float-left">
	            	<form:errors path="password" class="text-danger"/>
					<form:input type="password" class="input" path="password"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Confirm PW:</td>
	            <td class="float-left">
	            	<form:errors path="confirm" class="text-danger"/>
					<form:input type="password" class="input" path="confirm"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
</div>
<hr>
<div class="container">
<form:form action="/login" method="post" modelAttribute="newLogin">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">Log In</td>
	        </tr>
	    </thead>
	    <thead>
	        <tr>
	            <td class="float-left">Email:</td>
	            <td class="float-left">
	            	<form:errors path="email" class="text-danger"/>
					<form:input class="input" path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Password:</td>
	            <td class="float-left">
	            	<form:errors path="password" class="text-danger"/>
					<form:input type="password" class="input" path="password"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
</div>

</body>
</html>