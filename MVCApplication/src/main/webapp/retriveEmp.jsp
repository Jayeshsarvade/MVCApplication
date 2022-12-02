<%@page import="java.util.Iterator"%>
<%@page import="ems.bean.Employee"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Employee Details</h2>
<table border="1">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Salary</th>
	</tr>

<%
Object obj = request.getAttribute("empInfo");
if(obj!=null){
	List<Employee> listOfEmp = (List<Employee>)obj;
	Iterator<Employee> li = listOfEmp.iterator();
	while(li.hasNext()){
		Employee emp = li.next();
		%>
		<tr>
			<td> <%=emp.getId() %></td>
			<td><%=emp.getName() %></td>
			<td><%=emp.getSalary() %></td>
		</tr>
		<%
	}
}
%>
</body>
</html>