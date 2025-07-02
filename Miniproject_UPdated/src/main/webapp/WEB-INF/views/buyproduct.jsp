<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Wel-Come Customer</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-welcome-rage-room-flaticons-lineal-color-flat-icons.png">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<!-- <script>
  function increment() {
    var input = document.getElementById('quantity');
    input.value = parseInt(input.value) + 1;
  }

  function decrement() {
    var input = document.getElementById('quantity');
    if (parseInt(input.value) > 1) {
      input.value = parseInt(input.value) - 1;
    }
  }
</script> -->


<script>
  function increment() {
    var quantity = parseInt(document.getElementById("quantity").value);
    document.getElementById("quantity").value = quantity + 1;
    calculateTotal();
  }

  function decrement() {
    var quantity = parseInt(document.getElementById("quantity").value);
    if (quantity > 1) {
      document.getElementById("quantity").value = quantity - 1;
      calculateTotal();
    }
  }

  function calculateTotal() {
    var quantity = parseInt(document.getElementById("quantity").value);
    var price = parseFloat("${product.price}");
    var total = quantity * price;
    document.getElementById("total").value = total.toFixed(2);
  }
/* //Get the current date and time
  const now = new Date();
  
  // Format the date and time as per the input field's format (YYYY-MM-DDTHH:MM)
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, '0');
  const day = String(now.getDate()).padStart(2, '0');
  const hours = String(now.getHours()).padStart(2, '0');
  const minutes = String(now.getMinutes()).padStart(2, '0');
  const formattedDateTime = `${year}-${month}-${day}T${hours}:${minutes}`;
  
  // Set the formatted date and time as the value of the input field
  document.getElementById('datetime').setAttribute('value', formattedDateTime);
 */
 
</script>
<style>
  .centered-div {
    width: 500px;
    height: 200px; /* Adjust height as needed */
    border: 1px solid black;
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5); /* Add shadow effect */
    margin: 0 auto; /* Center horizontally */
    margin-top: 50px; /* Adjust top margin as needed */
    border-radius: 15px;
  }
</style>
</head>
<body style="background-color:  #E6E6FA;">


<form action="${pageContext.request.contextPath}/order" method="POST">

<div class="centered-div" style="height:100px;margin-top: 0px;box-shadow: 0 0 0 0;border: 0;padding-top: 50px;">
    <h1 style="text-align: center;"><i >Billing Area</i></h1>
 </div>
<div class="centered-div " style="background-color:white;"  >
 <div style="display: flex;">
    <div style="width:50%;">
       <p style="margin-left:20px;margin-top:10px;font-size:15px;">${product.pname}</p>
                            <img width="24" style="margin-left:20px;" height="15" src="https://img.icons8.com/material-rounded/24/rupee.png" alt="rupee"/>
                            <span style="color:black; font-size:15px;">${product.price}</span>
                     
    </div>
    <div style="width:50%;">
 


<div class="container mt-3">
  <div class="row align-items-center">
    <div class="col">
      <label for="quantity">Quantity:</label>
    </div>
    <div class="col">
      <div class="input-group">
        <button class="btn btn-outline-secondary" type="button" onclick="decrement()">-</button>
        <input type="text" class="form-control text-center" id="quantity" value="1" name="quantity">
        <button class="btn btn-outline-secondary" type="button" onclick="increment()">+</button>
      </div>
    </div>
  </div>
</div>
    </div>
 </div>
 
 
 <div class="container mt-3">
  <div class="row">
    <div class="col">
     
      <textarea class="form-control" id="comment" rows="3" placeholder="Add a note for restaurant..." name="note"></textarea>
    </div>
  </div>
</div>

<!--  <div class="mb-3">
      <label for="datetime">Date and Time:</label>
      <input type="datetime-local" class="form-control" id="datetime" name="dt">
    </div>
</div>
 -->

<div class="centered-div" style="background-color:white; height:400px;">
   <div  style="display: flex;">
   <div style="width:10%;">
    <img width="30" height="30" src="https://img.icons8.com/cotton/64/stopwatch.png" alt="stopwatch" style="margin-left:10px;margin-top:10px;" />
    </div>
    <div style="width:90%;" >
    <p style="margin-top:12px;">Delivery in 30 mins</p>
    </div>
 </div>
  <hr>
   <div style="display: flex;">
   <div style="width:10%;">
   <img width="30" height="30" src="https://img.icons8.com/fluency-systems-regular/48/home--v1.png" alt="home--v1" style="margin-left:10px;" /> </div>
    <div style="width:90%;">
    <p>${user.address}</p>
    </div>
    </div>
  <hr>
  
  <div style="display: flex;">
   <div style="width:10%;">
   <img width="30" height="30" src="https://img.icons8.com/ios/50/phone--v1.png" alt="phone--v1"style="margin-left:10px;" />
   </div>
    <div style="width:90%;">
    <p style="">${user.phone1} , ${user.phone2}</p>
    </div>
    </div>
  <hr>
  <div class="container mt-3">
    <div class="row">
      <div class="col">
        <label for="total">Total Price:</label>
        <input type="text" class="form-control" id="total" value="${product.price }.00" readonly name="tprice">
      </div>
    </div>
  </div>
   <hr>
  <div class="container mt-3">
    <div class="row">
      <div class="col">
      <label for="total">Type of Delivery:</label>
        <input type="text" class="form-control" value="COD" name="cod">
      </div>
    </div>
  </div>
  </div>

    
<div class="input-field">
<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="pname" value="${product.pname}" required><br>
</div>
<div class="input-field">
<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="address" value="${user.address}" required><br>
</div>

<div class="centered-div" style="height:0;margin-top: 0px;box-shadow: 0 0 0 0;border: 0;padding-top: 20px;">
    <h6 style="text-align: left; margin-left:10px"><i >Cancellation Policy</i></h6>
    <p style="margin-left:10px;">After place order cancellation order is not provided. Help to reduce food waste.</p>
 </div>
 

<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="phone1" value="${user.phone1}" required><br>

<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="phone2" value="${user.phone2}" required><br>

<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="name" value="${user.name}" required><br>

<div class="input-field">
<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="rname" value="${product.rname}" required><br>

<input type="hidden" class="form-control"  placeholder="Phone" id="phone1" name="path" value="${product.path}" required><br>





    <div style="margin-bottom: 50px">
       <center> <button type="submit" class="btn btn-primary" style="width: 200px; margin-top: 50px;">Order Now</button></center>
    </div>
    
 <br>


</form>

</body>
</html>
