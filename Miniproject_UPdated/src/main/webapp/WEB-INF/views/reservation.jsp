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
    
      <h2 style="margin-top: 90px;;margin-bottom: 3%;color: #10a710;text-align: center;">Add Reservation Tables</h2>
      <div class="container">
      
        <form action="${pageContext.request.contextPath}/rtable" method="POST" enctype="multipart/form-data">
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-4">
                <h5>Tables Information</h5>
          </div>
          </div>
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="ftable" style="border-radius: 20px; padding: 15px;" class="form-control" id="pName" placeholder="Number of Family Tables Avalables">
            </div>
           
          </div>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="rtable" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Number of Regular Tables Avalable">
            </div>
           
          </div>

          <div style="display: flex;" class="row">
            
            <div class="mb-3 col-md-12">
              <select class="form-select" id="exampleSelect" style="border-radius: 20px;  padding: 15px;" name="type">
                <option selected value="60">60 min</option>
                <option value="120">120 min</option>
                <option value="180">180 min</option>
              </select>
            </div>
          
          </div>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="reserved_price" style="border-radius: 20px; padding: 15px;" class="form-control" id="price" placeholder="Reserved Price Per Hour">
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
