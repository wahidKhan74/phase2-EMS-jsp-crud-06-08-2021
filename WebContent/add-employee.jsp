<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>
<body>
	<h1>Add Employee</h1>
	<form method="post" action="submited-employee.jsp" >
	<fieldset>
		<legend>Personal Information</legend>
		First Name: <input type="text" name="firstName" id="firstName"> <br><br>
		Last Name: <input type="text" name="lastName" id="lastName"> <br><br>
		Salary: <input type="text" name="salary" id="salary"> <br><br>
		Department <input type="text" name="dept" id="dept"> <br><br>
		<input type="submit"  value="Submit Employee Data">
	</fieldset>	
</body>
</html>