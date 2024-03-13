<%@page import="com.entites.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Note</title>
<%@include file="alljs_css.jsp" %>
</head>
<body>
	
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();		
		Note note =(Note) s.get(Note.class, noteId);
		
		
		s.close();
		%>
		
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note title</label> 
				<input
				name="title" 
				required="required"
					type="text" 
					class="form-control" 
					id="tittle"
					aria-describedby="emailHelp" 
					placeholder="Enter here"
					value="<%=note.getTitle()%>"
					/> 
					
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				name="content"
				required="required"
				id="content" 
				placeholder="Enter your content here"
				class="form-control"
				style="height: 300px;"><%=note.getContent() %>
				</textarea>
				
			</div>
			
			<div class="container text-center">
				<button type="Add" class="btn btn-success">Save</button>
			</div>
			
		</form>
	
</body>
</html>