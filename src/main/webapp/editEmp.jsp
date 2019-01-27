<jsp:include page="body.jsp"></jsp:include>
<script src="resources/js/script.js"></script>

<section id="inputForm">
	<div class="container">
		<h1>Update Information</h1>
		<form method="POST" action="addEmp" modelAttribute="employeeEntity">
			ID: <input type="text" path="id" placeholder="Input ID"></input><br />
			Name: <input type="text" path="name" placeholder="Input name"></input><br />
			Gender: <input type="checkbox" path="gender">
			</checkbox>
			<br /> <input type="submit" value="Update">
		</form>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>