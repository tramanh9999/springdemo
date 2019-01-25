<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<h1>Edit Employee</h1>  
  <form:form method="POST" action="updateEmp" modelAttribute="employee">
    ID:<form:input path="id"></form:input><br/>
    Name:<form:input path="name"></form:input><br/>
    Gender:<form:checkbox path="gender"></form:checkbox><br/>
    <input type="submit" value="Submit">
  </form:form>
</body>
</html>
