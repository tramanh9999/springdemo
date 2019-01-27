



<script src="resources/js/script.js"></script>
<jsp:include page="body.jsp"></jsp:include>


<section id="tableSession">
	<div class="container">
		<h1>Employees List</h1>
		<a id="addEmployee" href="showEmployeeForm"><i class="fa fa-tags"
			style="font-size: 24px"></i> Add more student</a>
		<table id="employeeTable">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Edit</th>
				<th>Delete</th>
				<c:forEach var="emp" items="${list}">
					<tr>
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.gender}</td>
						<td><a href="editEmp?id=1"><i
								class="fa fa-pencil-square" style="font-size: 24px"></i></a></td>
						<td><a href="deleteEmp?id=${emp.id}"><i
								class="fa fa-trash-o" style="font-size: 24px"></i></a></td>
					</tr>
					<tr>
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.gender}</td>
						<td><a href="editEmp?id=${emp.id}"><i
								class="fa fa-pencil-square" style="font-size: 24px"></i></a></td>
						<td><a href="deleteEmp?id=${emp.id}"><i
								class="fa fa-trash-o" style="font-size: 24px"></i></a></td>
					</tr>
					<tr>
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.gender}</td>
						<td><a href="editEmp?id=${emp.id}"><i
								class="fa fa-pencil-square" style="font-size: 24px"></i></a></td>
						<td><a href="deleteEmp?id=${emp.id}"><i
								class="fa fa-trash-o" style="font-size: 24px"></i></a></td>
					</tr>
				</c:forEach>
		</table>	
	</div>
</section>


