<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<title>Welcom to Chatting App</title>
<style>
	.error{
		color:red
		}
</style>
</head>
<body>
	<div class="container">
		<div class="col-6 offset-3 align-selg-center">
		<div class="card">
			<div class="card-header bg-info text-white">
				Existing User:: Login Here
			</div>
			
			<div class="card-body">
				<form:form action="loginUser" modelAttribute="user">
				<div class="form-group">
					<label for="Username">Email:</label>
					<form:input path="email" size="30" class="form-control" placeholder="Enter Email"/>
				</div>
				
				<div class="form-group">
					<label for="Password">Password:</label>
					<form:password path="password" size="30" class="form-control" placeholder="Enter Password"/>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
				<input type="submit" name="submit" values="Submit" class="btn btn-primary" />
				</form:form>
				
				<div class="row">
					<div class="col-12">
					
						<c:if test="${not empty error}">
							<p class="alert alert-danger">${error} </p>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="alert alert-warning">${msg} </div>
						</c:if>
					</div>
				
				</div>
				
			</div>
		</div>
		
		</div>
	
	</div>
	
	
	
	
		
</body>
</html>