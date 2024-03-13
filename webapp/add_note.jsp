<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="alljs_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please Fills your Details</h1>
		<br>

		<!--This is adding form  -->

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> 
				<input
				name="title" 
				required="required"
					type="text" 
					class="form-control" 
					id="tittle"
					aria-describedby="emailHelp" 
					placeholder="Enter here"> 
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				name="content"
				required="required"
				id="content" 
				placeholder="Enter your content here"
				class="form-control"
				style="height: 300px;" 
				></textarea>
				
			</div>
			
			<div class="container text-center">
				<button type="Add" class="btn btn-primary">Add</button>
			</div>
			
		</form>



	</div>

</body>
</html>