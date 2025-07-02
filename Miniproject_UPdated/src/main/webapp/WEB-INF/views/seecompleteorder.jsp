<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/color/48/restaurant-.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  
</head>
<body style="background-color:  #E6E6FA;">
<h1 style="text-align:center">See Order</h1>

<div class="container mt-3">
		<div class="row">

			<table class="table table-bordered" style="width:100%; border: 2px solid black;">
				<thead >
				
					<tr >
						<th scope="col">Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Date & Time</th>
						<th scope="col">Quatity</th>
						<th scope="col">Note For Restrorant</th>
						<th scope="col">Address</th>
						<th scope="col">Phone1</th>
						<th scope="col">Phone2</th>
						<th scope="col">Total Price</th>
						
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${orders}" var="o">
					<tr>
						<td scope="row">${o.id}</td>
						<td>${o.pname}</td>
						<td>${o.datetime}</td>
						 <td>${o.quantity}</td> 
						<td>${o.note}</td>
						<td>${o.address}</td>
						<td>${o.phone1}</td>
						<td>${o.phone2}</td>
						<td>${o.tprice}</td>
						
					</tr>
					
				</c:forEach>
					
				</tbody>
			</table>
			
			
		<!-- 	<div class="container text-center">
			   <a href="addProduct" class="btn btn-outline-success">Add Product</a>
			</div>  -->
		</div>
	</div>
</body>
</html>