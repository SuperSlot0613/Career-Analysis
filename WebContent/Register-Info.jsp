<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"   %>
<!DOCTYPE html>
<html>
<head>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Information</title>
</head>
<body>
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
		        <a class="nav-link" href="view">Update Table</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Register_Info">Delete Data</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="contact_Info">Contact Information</a>
		      </li>
		    </ul>
		  </div>
		  </div>
		</nav>
		<h2 style="Align:center">Register Information</h2>
   		<div class="container">
	   		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Sr No.</th>
			      <th scope="col">Name</th>
			      <th scope="col">Phone</th>
			      <th scope="col">Address</th>
			      <th scope="col">Email</th>
			      <th scope="col">password</th>
			      <th scope="col">Exam</th>
			      <th scope="col">StateRank</th>
			      <th scope="col">AllIndiaRank</th>
			      <th scope="col">SeatNumber</th>
			      <th>Action</th>
			    </tr>
			  </thead>
			  <tbody>
			  <% int i=1; %>
			  
			  <c:forEach var="register" items="${Registerlist}">
			    <tr>
			      <th scope="row"><%= i %></th>
			      <td><c:out value="${Register.Name}"></c:out></td>
			      <td><c:out value="${Register.Phone}"></c:out></td>
			      <td><c:out value="${Register.Address}"></c:out></td>
			      <td><c:out value="${Register.Email}"></c:out></td>
			      <td><c:out value="${Register.password}"></c:out></td>
			      <td><c:out value="${Register.Exam}"></c:out></td>
			      <td><c:out value="${Register.StateRank}"></c:out></td>
			      <td><c:out value="${Register.AllIndiaRank}"></c:out></td>
			      <td><c:out value="${Register.SeatNumber}"></c:out></td>
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
</body>
</html>