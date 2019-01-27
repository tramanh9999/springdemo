<jsp:include page="body.jsp"></jsp:include>
<script src="resources/js/script.js"></script>
<h1>Add Employee</h1>
<form:form method="POST" action="addEmp" modelAttribute="employeeEntity">
    ID:<form:input path="id" name=id""></form:input>
	<br />
    Name:<form:input path="name"></form:input>
	<br />
    Gender:<form:checkbox path="gender"></form:checkbox>
	<br />
	<input type="submit" value="Submit">
</form:form>
<jsp:include page="footer.jsp"></jsp:include>