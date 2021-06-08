<%@page import="com.mcit.webapp.dao.EmployeeDAO"%>
<%@page import="com.mcit.webapp.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submitted Employee</title>
</head>
<body>
		<%  // read params
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String salary = request.getParameter("salary");
			String dept = request.getParameter("dept");		
			//craete employee object
			Employee employee = new Employee(firstName,lastName,Double.parseDouble(salary),dept);
			//save employee object
			EmployeeDAO.addEmployee(employee);
			// redirect sucess
			response.sendRedirect("sucess.jsp?action=created");
		%>

</body>
</html>