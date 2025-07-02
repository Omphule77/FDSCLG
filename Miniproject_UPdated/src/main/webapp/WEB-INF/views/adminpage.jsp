<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/3d-fluency/94/administrator-male--v1.png">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .horizontal-buttons {
          display: flex;
          justify-content: space-between;
          margin-bottom: 20px;
        }
        .zoom-effect {
      transition: transform 0.3s; /* Add smooth transition */
    }

    .zoom-effect:hover {
      transform: scale(1.1); /* Scale the image by 10% on hover */
    }
    
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
    <h1 style="text-align: center; font-family: Papyrus, fantasy;margin-top: 50px;">WelCome Admin</h1>
    <hr>
<div class="container mt-3">
    <h5 style="text-align: center;margin-top: 30px;margin-bottom: 30px;">----------What do you want to add----------</h5>
    <div class="horizontal-buttons">
      <button type="button" class="btn zoom-effect" style="width: 45%;margin-left: 2%;background-color: #3fb43f;padding-top: 50px;padding-bottom: 50px;"><a href="adregister" style="text-decoration: none;color: white;padding-top: 50px;padding-bottom: 50px;padding-left: 150px;padding-right: 150px;">Add Admin</a></button>
      <button type="button" class="btn btn-secondary zoom-effect" style="width: 45%;margin-right: 2%; color: white;"><a href="restroregister" style="text-decoration: none;color: white;padding-top: 50px;padding-bottom: 50px;padding-left: 150px;padding-right: 150px;">Add Restaurants</a></button>
    </div>
    <center><button type="button" class="btn zoom-effect" style="width: 45%;margin-left: 2%;background-color: #f6b02f;padding-top: 50px;padding-bottom: 50px;color: white;"><a href="deliveryregister" style="text-decoration: none;color: white;padding-top: 50px;padding-bottom: 50px;padding-left: 150px;padding-right: 150px;">Add Delivery Boy</a></button></center>
     
  </div>
  <hr>
  
  
  
  <h5 style="text-align: center;margin-top: 30px;margin-bottom: 30px;">----------See Order Details----------</h5>
  
  
  
  
  
  
  <div class="row">
 
 <div class="col-md-2"></div>


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
  
</body>
</html>