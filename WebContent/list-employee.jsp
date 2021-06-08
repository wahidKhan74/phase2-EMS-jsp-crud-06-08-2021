<%@page import="java.util.List"%>
<%@page import="com.mcit.webapp.dao.EmployeeDAO"%>
<%@page import="com.mcit.webapp.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Employee </title>
<style type="text/css">
table,thead, tr, td {
	border: 2px solid black;
	text-align: center;
	padding: 5px;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		List<Employee> list = EmployeeDAO.listOfEmployee();
		request.setAttribute("emplist", list);
		
	%> <br>
	<table>
		<thead>
			<tr>Id </tr>
			<tr>First Name </tr>
			<tr>Last Name </tr>
			<tr>Salary </tr>
			<tr>Department </tr>
		</thead>
		<tbody>
			<core:forEach items="${emplist}" var="emp">
				<tr>
					<td>${emp.getId()}</td>
					<td>${emp.getFirstName()}</td>
					<td>${emp.getLastName()}</td>
					<td>${emp.getSalary()}</td>
					<td>${emp.getDept()}</td>
				</tr>			
			</core:forEach>		
		</tbody>
	
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>