<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  
<title>Admin</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/3d-fluency/94/administrator-male--v1.png">

<style>
body{
background-image: url("<c:url value='/resources/img/regback2.jpg'/>");
background-repeat:no-repeat;
background-attachment: fixed;
background-size: 100% 100%;
 display: flex;
  align-items: center;
  justify-content: center;
   height: 100vh;
}
/* .login-form {
      background-color: white; /* Set white background color */
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
    } */
    

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

 .scrolling-container {
      height: 300px; /* Set a fixed height for the container */
      overflow-y: auto; /* Enable vertical scrolling */
    }
    
.container {
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  margin: 0 20px;
 
}

.container .forms {
  display: flex;
  align-items: center;
  height: 440px;
  width: 200%;
  transition: height 0.2s ease;
}

.container .form {
  width: 50%;
  padding: 30px;
  background-color: #fff;
  transition: margin-left 0.18s ease;
}

.container.active .login {
  margin-left: -50%;
  opacity: 0;
  transition: margin-left 0.18s ease, opacity 0.15s ease;
}

.container .signup {
  opacity: 0;
  transition: opacity 0.09s ease;
}
.container.active .signup {
  opacity: 1;
  transition: opacity 0.2s ease;
}

.container.active .forms {
  height: 600px;
}
.container .form .title {
  position: relative;
  font-size: 27px;
  font-weight: 600;
}

.form .title::before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  background-color: #4070f4;
  border-radius: 25px;
}

.form .input-field {
  position: relative;
  height: 50px;
  width: 100%;
  margin-top: 30px;
}

.input-field input {
  position: absolute;
  height: 100%;
  width: 100%;
  padding: 0 35px;
  border: none;
  outline: none;
  font-size: 16px;
  border-bottom: 2px solid #ccc;
  border-top: 2px solid transparent;
  transition: all 0.2s ease;
}

.input-field input:is(:focus, :valid) {
  border-bottom-color: #4070f4;
}

.input-field i {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  color: #999;
  font-size: 23px;
  transition: all 0.2s ease;
}

.input-field input:is(:focus, :valid) ~ i {
  color: #4070f4;
}

.input-field i.icon {
  left: 0;
}
.input-field i.showHidePw {
  right: 0;
  cursor: pointer;
  padding: 10px;
}

.form .checkbox-text {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
}

.checkbox-text .checkbox-content {
  display: flex;
  align-items: center;
}

.checkbox-content input {
  margin-right: 10px;
  accent-color: #4070f4;
}

.form .text {
  color: #333;
  font-size: 14px;
}

.form a.text {
  color: #4070f4;
  text-decoration: none;
}
.form a:hover {
  text-decoration: underline;
}

.form .button {
  margin-top: 35px;
}

.form .button input {
  border: none;
  color: #fff;
  font-size: 17px;
  font-weight: 500;
  letter-spacing: 1px;
  border-radius: 6px;
  background-color: #4070f4;
  cursor: pointer;
  transition: all 0.3s ease;
}

.button input:hover {
  background-color: #265df2;
}

.form .login-signup {
  margin-top: 30px;
  text-align: center;
}
</style>
</head>
<body>

  <div class="container">
  <div class="forms">
    <div class="form login">
   
      <span class="title">Admin Register</span>
       <div class="scrolling-container">
      
        <form action="adminregister" method="post"  onsubmit="return validateForm()">
        
        <div class="input-field">
           
            <input type="text"class="form-control"  placeholder="Name" id="username" name="name" required>
            <i class="uil uil-user icon"></i>
          </div>
          <div class="input-field">
           
            <input type="email"class="form-control"  placeholder="Email" id="email" name="email" required>
            <i class="uil uil-user icon"></i>
          </div>
          <div class="input-field">
           
            <input type="text"class="form-control"  placeholder="Phone" id="phone1" name="phone1" required><br>
            
          </div>
            <span id="phoneError" class="error" style="color: red;font-size: 14px"></span><br>
         
           <div class="mb-3">
          <label for="address" class="form-label">Address</label>
          <textarea class="form-control" id="address" rows="4" placeholder="Enter address" name="address"></textarea>
        </div>
          <div class="input-field">               
            <!-- <label  class="form-label">Password</label> -->
            <input type="password" class="form-control password" placeholder="Enter your password" id="password" name="password" required>
             
          </div>
           <span id="passwordError" class="error" style="color: red;font-size: 14px"></span><br>
          <button type="submit" class="input-field button" style="background-color: #4070f4"><b>SUBMIT</b></button>
        </form>
        
       
          </div>
    </div>
  </div>
</div>


<script>
function validatePhoneNumber(phoneNumber) {
    var phoneRegex = /^\d{10}$/;
    return phoneRegex.test(phoneNumber);
}


function validatePassword(password) {
    var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?]).{8,}$/;
    return passwordRegex.test(password);
}

function validateForm() {
    var phoneNumber = document.getElementById("phone1").value;
    var password = document.getElementById("password").value;
    var phoneError = document.getElementById("phoneError");
    var passwordError = document.getElementById("passwordError");
    var isValid = true;

    phoneError.innerHTML = "";
    passwordError.innerHTML = "";

    if (!validatePhoneNumber(phoneNumber)) {
        phoneError.innerHTML = "Invalid phone number. Please enter 10 digits.";
        isValid = false;
    }
   

    if (!validatePassword(password)) {
        passwordError.innerHTML = "Invalid password. Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character.";
        isValid = false;
    }

    return isValid;
}
</script>
</body>
</html>