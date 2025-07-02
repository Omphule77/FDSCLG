<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Delivery Boy</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-delivery-boy-cyber-monday-flaticons-lineal-color-flat-icons.png">
     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .container1{
            width: 750px;
            background-color: yellow;
            border-radius: 25px;
          
        }
        .left-div {
  margin-right: auto; /* Pushes the left div to the left */
}

.right-div {
  margin-left: auto; /* Pushes the right div to the right */
}      

.middle-div {
  margin-left: auto;
  margin-right: auto;
}

.round-button {
  border-radius: 50px; /* Make the button round */
  font-size: 15px;
  padding: 20px;
  background: transparent;
  color:black; /* Button text color */
  border: none; /* Remove border */
  cursor: pointer; /* Show pointer cursor on hover */
  transition: transform 0.3s ease; 
}
.round-button:hover{
    color:#10a710 ;
}
    </style>
</head>
<body  style="background-color:  #E6E6FA;">
   <center> <div class="container1" style="background-color: transparent;">
        <h1 style="text-align: center; font-family: Papyrus, fantasy;margin-top: 50px;">WelCome Delivery Boy</h1>
   
    </div></center>
    <div style=" height: 200px;" class="container-fluid">
      <br><br>
      <center>
        <div class="container1" style="display: flex; ">
          <div  class="left-div" style="margin-left: 150px;">
           <a href="#"> <button class="round-button " >New</button></a>
          </div>  
          <div class="middle-div"  >
          <a href="runningorder">  <button class="round-button " >Running</button></a>
          </div>
          <div class="right-div" style="margin-right: 150px;">
            <a href="completeorder">  <button class="round-button " >Complete</button></a>
            </div>
       </div>
    </center>
    </div>
    
    <center> <div class="container1" style="background-color: transparent;">
        <h1 style="text-align: center; font-family: Papyrus, fantasy;">See New Orders</h1>
   
    </div></center>
    
    
    
  <div class="container">
    <div class="row justify-content-center">
        <c:forEach items="${orders}" var="o">
            <div class="col-lg-4 col-md-6 col-sm-12 mb-3">
                <div class="card cl4" style="border: 2px black solid; border-radius: 20px; box-shadow: 5px 5px 5px 5px; margin-top:20px;">
                    <div class="card-body" style="background-color: white; border-radius: 20px 20px 20px 20px;">
                        <div style="display: flex;">
                            <div style="width:50%;">
                                <p style="margin-left:15px">Order Id</p>
                                 <p style="margin-left:15px">Total Amount</p>
                                 <p style="margin-left:15px">Payment Method</p>
                            </div>
                            <div style="width:50%;">
                                <p style="text-align:right;margin-right:25px">${o.id }</p>
                                <p style="text-align:right;margin-right:25px">${o.tprice }</p>
                                 <p style="text-align:right;margin-right:25px">${o.cod}</p>
                            </div>
                        </div>
                        
                        
                        
                        <div class="container" style="height:200px;border:1px black solid;border-radius:10px;margin-bottom:20px;">
                           <div style="display: flex;">
                            <div style="width:50%;">
                                <p style="margin-left:15px">Name:</p>
                                 <p style="margin-left:15px">Phone1:</p>
                                 <p style="margin-left:15px">Phone2:</p>
                                  <p style="margin-left:15px">Address:</p>
                            </div>
                            <div style="width:50%;">
                                <p style="text-align:right;margin-right:25px">${o.name }</p>
                                <p style="text-align:right;margin-right:25px">${o.phone1 }</p>
                                 <p style="text-align:right;margin-right:25px">${o.phone2 }</p>
                                 <p style="text-align:right;margin-right:25px">${o.address }</p>
                            </div>
                        </div>
                        </div>
                        
                        
                            <div class="left-div" >
                               <center> <button class="btn" style="background-color:green;padding-left:35px;padding-right:35px;border-radius:20px;">
                                    <a href="updatedorder/${o.id}" style="text-decoration: none; color:white;">Accept</a>
                                </button> </center>
                            </div>  
                           
                        
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

    
</body>
</html>