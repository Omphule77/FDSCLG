<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Restaurant</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/color/48/restaurant-.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>

    .container{
      width: 50%;
    }

    </style>
</head>
<body>
    
      <h2 style="margin-top: 90px;;margin-bottom: 3%;color: #10a710;text-align: center;">Add Product</h2>
      <div class="container">
      
        <form action="${pageContext.request.contextPath}/aproduct" method="POST" enctype="multipart/form-data">
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-4">
                <h5>Product Information</h5>
          </div>
          </div>
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="pname" style="border-radius: 20px; padding: 15px;" class="form-control" id="pName" placeholder="Product Name">
            </div>
           
          </div>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="description" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Description">
            </div>
           
          </div>

          <div style="display: flex;" class="row">
            
            <div class="mb-3 col-md-12">
              <select class="form-select" id="exampleSelect" style="border-radius: 20px;  padding: 15px;" name="type">
                <option selected value="Burger">Burger</option>
                <option value="Ice-Cream">Ice-Cream</option>
                <option value="Cake">Cake</option>
                <option value="Fries">Fries</option>
                <option value="Biryani">Biryani</option>
                <option value="Chicken">Chicken</option>
                <option value="Pizza">Pizza</option>
                 <option value="Sandwitch">Sandwitch</option>
              </select>
            </div>
          
          </div>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="price" style="border-radius: 20px; padding: 15px;" class="form-control" id="price" placeholder="Price">
            </div>
           
          </div>
          
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="hidden" name="rname" value="${restro.rname }" style="border-radius: 20px; padding: 15px;" class="form-control" id="price" placeholder="rname">
            </div>
           
          </div>
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
           
            <label for="fileUpload1">Upload File:</label>
            <input type="file" class="form-control-file" id="fileUpload1" name="fileUpload">
              </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="hidden" name="rgst" value="${restro.rgst}" style="border-radius: 20px; padding: 15px;" class="form-control" id="price" placeholder="rgst">
            </div>
           
          </div>

          <div style="display: flex; margin-top: 30px; margin-bottom: 10%;" class="row">
            <div class="mb-3 col-md-12">
              <button type="submit" class="btn btn-primary" style="width: 100%;background-color: #10a710;border-radius: 20px;">Submit</button>
            </div>
            
          </div>
        </form>
     
        
    </div>
   </body>
</html>
