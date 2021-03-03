<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"   %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>View Page</title>
  </head>
  <body>
	  <nav class="navbar navbar-expand-lg navbar-light bg-light">
	   	<div class="container">
		  <a class="navbar-brand" href="#">Navbar</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav ml-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="view">Login Information</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Register_Info">Register Information </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="contact_Info">Contact Information</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Dropdown
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		  </div>
		</nav>
		<h2 style="Align:center">Login Information</h2>
   		<div class="container">
	   		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Sr No.</th>
			      <th scope="col">Username</th>
			      <th scope="col">Password</th>
			      <th>Action</th>
			    </tr>
			  </thead>
			  <tbody>
			  <% int i=1; %>
			  
			  <c:forEach var="login" items="${loginlist}">
			    <tr>
			      <th scope="row"><%= i %></th>
			      <td><c:out value="${login.username}"></c:out></td>
			      <td><c:out value="${login.password}"></c:out></td>
			      <td>
			       <a href="show?id=<c:out value="${login.id}"></c:out>">Show</a>
			       <a href="edit?id=<c:out value="${login.id}"></c:out>">Edit</a>
			       <a href="delete?id=<c:out value="${login.id}"></c:out>">Delete</a>
			      </td>
			    </tr>
			    <%i++; %>
			  </c:forEach>
			  </tbody>
			</table>
   		</div>
   	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>