<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
        /* Full-page background */
        body {
            margin: 0;
            padding: 0;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDIINgPJ728x_iF-vaprvfFfDjFXFNX9sldQ&s') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Centered white div */
        .center-div {
            background: white;
            padding: 30px;
            width: 50%;
            max-width: 500px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        
        
        .tracker {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            margin: 20px 0;
        }
        .checkpoint {
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
        }
        .status {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: lightgray;
            transition: background-color 0.3s;
            margin-bottom: 10px;
            z-index: 1;
        }
        .completed {
            background-color: green;
        }
        .line {
            position: absolute;
            top: 15px;
            left: 0;
            width: 100%;
            height: 5px;
            background-color: lightgray;
            z-index: 0;
        }
        .line.completed {
            background-color: green;
        }
    </style>
</head>
<body>
     
     
     
    
    

    <div class="center-div">
         <h1 style="text-align: left">Order Tracking</h1>
          <div class="tracker">
        <div class="line" id="progress-line"></div>
        <div class="checkpoint">
            <div class="status" id="status-0" style="margin-right:75px;margin-left:60px;"></div>
             <!--  <button onclick="updateStatus(3)">Delivered</button> -->
          <i >Ordered</i>
        </div>
        <div class="checkpoint">
            <div class="status" id="status-1" style="margin-right:75px;"></div>
            <!--  <button onclick="updateStatus(3)">Delivered</button> -->
          <i>Order Packed</i>
        </div>
        <div class="checkpoint">
            <div class="status" id="status-2" style="margin-right:75px;"></div>
           <!--  <button onclick="updateStatus(3)">Delivered</button> -->
          <i>On the way</i>
        </div>
        <div class="checkpoint">
            <div class="status" id="status-3" style="margin-right:75px;"></div>
          <!--  <button onclick="updateStatus(3)">Delivered</button> -->
          <i style="margin:0;">Product Delivered</i>
        </div>
        
       
    </div>
    
    <script>
         
    window.onload = function() {
        autoUpdate();
      };
   
        function updateStatus(index) {
            let statuses = document.querySelectorAll('.status');
            let line = document.getElementById('progress-line');
            for (let i = 0; i <= index; i++) {
                statuses[i].classList.add('completed');
            }
            //line.style.width = ((index / (statuses.length - 1)) * 350) + "%";
            //line.classList.add('completed');
        }
        
     // Automatically update status every 2 seconds
        function autoUpdate() {
        	 let currentStatus = ${t.flag };
            if (currentStatus ==0) {
                updateStatus(currentStatus);
                
            }
            if (currentStatus ==1) {
                updateStatus(currentStatus);
                
            }
            if (currentStatus ==2) {
                updateStatus(currentStatus);
                
            }
            if (currentStatus ==3) {
                updateStatus(currentStatus);
               
            }
        }

        // Call autoUpdate every 2 seconds
     // setInterval(autoUpdate, 2000); // You can adjust the time here
    </script>
         
    </div>

     
     
     
     
</body>
</html>