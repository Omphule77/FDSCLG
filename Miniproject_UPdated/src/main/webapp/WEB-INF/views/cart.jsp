<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wel-Come Customer</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-welcome-rage-room-flaticons-lineal-color-flat-icons.png">

 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                        
   <style>
    
        
   </style>
</head>

<body style="background-color: #E6E6FA;">

<br>
 <h3 style="text-align:center;">-----------Cart----------</h3>
    <br>

  <div class="container">
    <div class="row justify-content-center">
        <c:forEach items="${cart1}" var="c">
            <div class="col-lg-7 mb-3">
                <div class="card cl4" style="border: 2px black solid; border-radius: 20px; box-shadow: 5px 5px 5px 5px; margin-top:20px;">
                   <div class="card-body" style=" border-radius: 20px 20px 20px 20px;">
                   <div></div>
                   
                   <div style="display: flex; " >
                          <div style="width: 50%;">
                                <img  src="<c:url value="/resources/img/${c.path}" />" alt="Card image cap" width="75px" height="75px" style="margin-left:5%;margin-top:5%;margin-bottom:5%; border-radius:20px 20px 20px 20px;">
                   
                            </div>
                            <div style="width: 50%;">
                                <h4 style="text-align: right;margin-right:5%;margin-top:5%;margin-bottom:5%">${c.pname }</h4>
                                <h4 style="text-align: right;margin-right:5%;margin-top:5%;margin-bottom:5%">( <img width="25" height="25" src="https://img.icons8.com/color/48/restaurant-.png" alt="restaurant-"/> ${c.rname })</h4>
                             </div>
                        </div>
                        
                        
                        <div style="display: flex; border:1px solid black; border-radius: 20px;" >
                          <div style="width: 50%;">
                              <h4 style="margin-left:5%;margin-top:5%">Quantity</h4>
                               <h4 style="margin-left:5%;margin-top:5%;margin-bottom:5%"> total rs</h4>
                            </div>
                            <div style="width: 50%;">
                               <h4 style="text-align: right;margin-right:5%;margin-top:5%">${c.quantity }</h4>
                               <h4 style="text-align: right;margin-right:5%;margin-top:5%;margin-bottom:5%">${c.tprice }</h4>
                             </div>
                        </div>
                        
                        
                        
                     
                      
                       
                       
                        <center>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"style="width: 30%;background-color:green;border-radius: 20px;margin-top:5%">Send Feedback</button>
                        <button type="button" class="btn btn-primary" style="width: 30%;background-color:green;border-radius: 20px;margin-top:5%;" >
                        <a href="${pageContext.request.contextPath}/trackproduct/${c.id}" style="text-decoration: none; color:white;">Track Order</a>
                        </button>
                        </center>

                    </div>
                    
   
  
   
     
                    

          <!-- Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">FeedBack</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal Body -->
                    <div class="modal-body">
                       <form action="${pageContext.request.contextPath}/feedback" method="POST"> 
                       
                       
                       
                       
                       
                       
                          <div class="form-group">
      <label for="f">How was the overall quality of the food?</label>
      <div  style="display:flex">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="q1" id="yes" value="yes">
        <label class="form-check-label" for="yes" style="margin-right:20px">
          Good
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="q1" id="no" value="no">
        <label class="form-check-label" for="no">
          Bad
        </label>
      </div>
      </div>
    </div>
    
    
    
    
       <div class="form-group">
      <label for="feedback">Did your order arrive on time?</label>
      <div  style="display:flex">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="q2" id="yes" value="yes">
        <label class="form-check-label" for="yes" style="margin-right:20px">
          Yes
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="q2" id="no" value="no">
        <label class="form-check-label" for="no">
          No
        </label>
      </div>
      </div>
    </div>
         	       
    
    
    
    <div class="form-group">
      <label for="f2">Did you encounter any problems during the ordering process?</label>
      <textarea class="form-control" name="q3" id="feedback" rows="4" placeholder="Type your comments here..."></textarea>
    </div>
    
    
    						<div style="display: flex;" class="row">
            					<div class="mb-3 col-md-12">
                					<input type="hidden" name="pname" value="${c.pname }" style="border-radius: 20px; padding: 15px;" class="form-control" id="number" placeholder="phone1">
           							
           						 </div>
           					</div>
           					
           					<div style="display: flex;" class="row">
            					<div class="mb-3 col-md-12">
                					<input type="hidden" name="rname" value="${c.rname }" style="border-radius: 20px; padding: 15px;" class="form-control" id="number" placeholder="phone1">
           							
           						 </div>
           					</div>
    
    
    <center>  <button type="submit" class="btn btn-primary"  style="background-color:green;padding-left:35px;padding-right:35px;border-radius:20px;">
            Send
        </button></center>
         	             </form>
                    </div>
                   
                </div>
            </div>
        </div>

                    
                    
                    
                    
                    
          
    
                </div>
            </div>
            
        </c:forEach>
        
    </div>
    
</div>


  
</body>
</html>