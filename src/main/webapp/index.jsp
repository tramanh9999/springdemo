<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>Employees List</h1>  
<a href="showEmployeeForm">Add</a>
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Gender</th><th>Edit</th><th>Delete</th>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.id}</td>  
   <td>${emp.name}</td>  
   <td>${emp.gender}</td>
   <td><a href="editEmp?id=${emp.id}">Edit</a></td>
   <td><a href="deleteEmp?id=${emp.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
</table>
</body>
</html>
