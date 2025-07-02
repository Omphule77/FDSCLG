<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/color/48/restaurant-.png">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .card{
        border-bottom-right-radius: 50px;
        border-top-left-radius: 50px;
    }
    .card:hover{
        transition: background-color 0.3s;
        box-shadow:10px 10px 15px 15px;
        transform: translateY(-6px); 
    }
    .card-img-top{
      width: 200px;
      margin-left: 25%;
    }
      </style>
</head>
<body  style="background-color:  #E6E6FA;">
    <h1 style="text-align: center; font-family: Papyrus, fantasy;margin-top: 50px;">WelCome Restaurant</h1>
    <hr>
 <div class="row">
 
   <div class="col-md-4">
    <div class="card"  style="border-top-left-radius: 100px;">
      <img src="<c:url value="/resources/img/addproduct.png" />" width="5" class="card-img-top" alt="..." style="border-top-left-radius: 50px;" >
      <div class="card-body" >
        <h6 style="text-align: left;text-align: center;">Add Product</h6>
        <hr>
        
        <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;"><a href="addproduct/${restro.oemail }" style="text-decoration: none;color:white;">Check In</a></button>
      </div>
    </div>
  </div>

<%-- 
  <div class="col-md-4">
    <div class="card" style="width: 28rem;" style="border-top-left-radius: 100px;">
      <img src="<c:url value="/resources/img/yourproduct.jpg" />" width="5" class="card-img-top" alt="..." style="border-top-left-radius: 50px;">
      <div class="card-body" >
        <h6 style="text-align: left;text-align: center;">Your Product</h6>
        <hr>
       
        <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;">Check In</button>
     
        </div>
    </div>
</div> --%>



<div class="col-md-4">
    <div class="card" style="width: 28rem;" style="border-top-left-radius: 100px;">
      <img src="<c:url value="/resources/img/seeorder.jpg" />" class="card-img-top" alt="..." style="border-top-left-radius: 50px; margin-top:20px;">
      <div class="card-body" >
        <h6 style="text-align: left;text-align: center;"> See Orders</h6>
        <hr>
      
        <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;"><a href="seeorder" style="text-decoration: none;color:white;">Check In</a></button>
     
        </div>
    </div>
 </div>
 
 

<div class="col-md-4">
    <div class="card" style="width: 28rem;" style="border-top-left-radius: 100px;">
    <center> <img width="150" height="150" src="https://img.icons8.com/ios/50/checked-checkbox--v1.png" alt="checked-checkbox--v1" style="border-top-left-radius: 50px; margin-top:20px;" /></center>
      <div class="card-body" >
        <h6 style="text-align: left;text-align: center;"> See Complete Orders</h6>
        <hr>
      
        <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;"><a href="seecompleteorder" style="text-decoration: none;color:white;">Check In</a></button>
     
        </div>
    </div>
 </div>
 
 
 
  </div>
  
  <hr>
  
  <div class="row">
 <div class="col-md-4">
 </div>
   <div class="col-md-4">
    <div class="card"  style="border-top-left-radius: 100px;">
      <img src="<c:url value="/resources/img/addproduct.png" />" width="5" class="card-img-top" alt="..." style="border-top-left-radius: 50px;" >
      <div class="card-body" >
        <h6 style="text-align: left;text-align: center;">Add Reservation Tables</h6>
        <hr>
        
        <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;"><a href="reservation/${restro.oemail }" style="text-decoration: none;color:white;">Check In</a></button>
      </div>
    </div>
  </div>
  </div>
  <hr>
</body>
</html>