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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script>
        document.addEventListener("DOMcontentloaded",function()
        {
            var element=document.getElementById("mycarousel");
            var mycarousel=new bootstrap.Carousel(element,{interval:500});
        });
    </script>
  <style>
   /* Search Bar Css */
   .search-container {
        display: flex;
        align-items: center;
        justify-content: center;
      
    }

    .search-input {
        width: 75%;
        padding: 10px;
        border: 2px solid #ccc;
        border-radius: 20px;
        outline: none;
    }

    .search-button {
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 20px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .search-button:hover {
        background-color: #0056b3;
    }
  
  
  .sticky {
        position: -webkit-sticky;
        position: sticky;
        top: 0;
        background-color: #ffffff; /* Adjust background color as needed */
        padding: 5px; /* Adjust padding as needed */
        z-index: 1000; /* Adjust z-index as needed */
    }
    
   /*  this is for scrolling the card */
    
     .scrolling-wrapper {
      overflow-x: scroll;
      overflow-y: hidden;
      white-space: nowrap;
      display: flex;
      flex-wrap: nowrap;
    }
    .card {
      flex: 0 0 auto;
      width: 300px; /* Adjust as needed */
      margin-right: 10px; /* Adjust spacing between cards */
      border: none;
    }
    
   /*  end the card scrolling */
   
   .card-img-top{
   		height: 200px;
   }
     
    
    
     /* Add styles to stick the button to the bottom-right corner */
        .sticky-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            padding: 8px 16px;
            background-color:  #FF5733;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 12px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
             transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .sticky-btn:hover {
            background-color:#E6E6FA;
            transform: scale(1.2); /* Scale the button up */
        }
  </style>
</head>
<body>




<!-- This Is Nav bar  -->
 <nav class="navbar navbar-expand-lg navbar-light  pt-0 mt-0 pb-0 " style="background-color: #E6E6FA;">
    <div class="container">
      <a class="navbar-brand" href="#"><img width="35" height="35" src="https://img.icons8.com/color/48/marker--v1.png" alt="marker--v1"/></a>
     <p style="position: absolute;bottom: 20px;margin-left: 3%;">HOME<img width="20" height="20" src="https://img.icons8.com/fluency-systems-regular/48/down2.png" alt="down2"/></p>
                <p  style="position: absolute;bottom: 0;margin-left: 3%;">${ctm.address}</p>
   

     
      <div  id="navbarNav">
        <ul class="navbar-nav ms-auto">
        
        <li>
          <a class="nav-link" href="cart/${ctm.phone1 }"><img width="48" height="48" src="https://img.icons8.com/color/48/shopping-cart-loaded.png" style="margin-left:10px" alt="shopping-cart-loaded"/></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="profile/${ctm.email}"><i class="fas fa-user"></i> <img width="48" height="48" src="https://img.icons8.com/fluency/48/000000/test-account--v1.png" style="margin-left:10px" alt="test-account--v1"/></a>
          </li>
          
          
          
        </ul>
      </div>
    </div>
  </nav>
  
  
  
  
  
  
  <!-- This is search Bar  -->
 <!-- <div class="search-container mt-3 sticky">

    <input type="text" class="search-input" placeholder="Search..." >
    <button class="search-button">Search</button>

</div>  -->
<hr>


<!-- This is sliding img -->
    <div class="container">
        <div id="mycarousel" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#mycarousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#mycarousel" data-bs-slide-to="1" ></li>
                <li data-bs-target="#mycarousel" data-bs-slide-to="2" ></li>               <!--  THIS ORDER LIST INDICATE THAT THE -->
                <li data-bs-target="#mycarousel" data-bs-slide-to="3" ></li>               <!--  BOTTOM INDICATORS-->
                <li data-bs-target="#mycarousel" data-bs-slide-to="4" ></li>

            </ol>
            

            <div class="carousel-inner">
                <div class="carousel-item active" style="text-align: center;">
                    <img src="<c:url value="/resources/img/ice1.jpg" />" width="90%" height="500px" >
                </div>

                <div class="carousel-item " style="text-align: center;">
                    <img src="<c:url value="/resources/img/burger.png" />" width="90%" height="500px" >
                </div>
                                                                               
                <div class="carousel-item " style="text-align: center;">
                    <img src="<c:url value="/resources/img/coffee.jpg" />" width="90%" height="500px" >
                </div>

                <div class="carousel-item " style="text-align: center;">
                    <img src="<c:url value="/resources/img/cake.png" />" width="90%" height="500px" >
                </div>

                <div class="carousel-item " style="text-align: center;">
                    <img src="<c:url value="/resources/img/thali.png" />" width="90%" height="500px" >
                </div>
            </div>





            <a class="carousel-control-prev" href="#mycarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>                                                                       <!--THIS IS ANCHOR TAG FOR PREVIOUS AND NEXT BUTTON-->

            <a class="carousel-control-next" href="#mycarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>




        </div>

    </div>
    <br>
    <h3 style="text-align:center;">-----------Where is your interest----------</h3>
    <br>
    
<div class="container mt-3">
  
  <div class="scrolling-wrapper">
    <div class="card">
      <center><a href="burgerpage/${ctm.email}"><img src="<c:url value="/resources/img/burgerc.png" />"  alt="burger" width="200px"></a></center>
      <div class="card-body">
        <h5 class="card-title" style="text-align: center;" >Burger</h5>
        
      </div>
    </div>

    <div class="card">
        <center><a href="icecremepage/${ctm.email}"><img src="<c:url value="/resources/img/icec.png" />"  alt="burger" width="200px" style="margin-top: 35px;"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;margin-top: 30px;" >Ice-Cream</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="cakepage/${ctm.email}"><img src="<c:url value="/resources/img/cakec.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Cake</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="friespage/${ctm.email}"><img src="<c:url value="/resources/img/fries.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Fries</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="biryanipage/${ctm.email}"><img src="<c:url value="/resources/img/biryanic.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Biryani</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="chickenpage/${ctm.email}"><img src="<c:url value="/resources/img/chickenc1.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Chicken</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="pizzapage/${ctm.email}"><img src="<c:url value="/resources/img/pizzac.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Pizza</h5>
          
        </div>
      </div>

      <div class="card">
        <center><a href="sandwichpage/${ctm.email}"><img src="<c:url value="/resources/img/sandwitchc.png" />"  alt="burger" width="200px"></a></center>
        <div class="card-body">
          <h5 class="card-title" style="text-align: center;" >Sandwitch</h5>
          
        </div>
      </div>
    
    <!-- Add more cards here -->
  </div>
</div>


 <br>
    <h3 style="text-align:center;">-----------Here Is All Types Of Food----------</h3>
    <br>

  <div class="container">
  
<!-- This is sticky button -->
<button class="sticky-btn"><a href="reseved_table" style="text-decoration: none;color: black"><b>Reserve Your Table</b></a></button>
  
    <div class="row justify-content-center">
        <c:forEach items="${products}" var="p">
            <div class="col-lg-4 col-md-6 col-sm-12 mb-3">
                <div class="card cl4" style="border: 2px black solid; border-radius: 20px; box-shadow: 5px 5px 5px 5px; margin-top:20px;">
                    <img class="card-img-top" src="<c:url value="/resources/img/${p.path}" />" alt="Card image cap" style=" border-radius:20px 20px 0 0;">
                    <div class="card-body" style="background-color: #E6E6FA; border-radius: 0 0 20px 20px;">
                        <h5 class="card-title">${p.pname }</h5>
                        <p> ( <img width="25" height="25" src="https://img.icons8.com/color/48/restaurant-.png" alt="restaurant-"/> ${p.rname })</p>
                        <h6 class="card-subtitle mb-2 text-muted">
                            <img width="24" height="24" src="https://img.icons8.com/material-rounded/24/rupee.png" alt="rupee"/>
                            <strong style="color:black; font-size:24px;">${p.price}</strong>
                        </h6>
                        <p class="card-text">${p.description }</p>
                        <button class="btn btn-primary">
                            <a href="buyproduct/${p.id}/${ctm.email}" style="text-decoration: none; color:white;">Buy Now</a>
                        </button>
                    </div>
                </div>
            </div>
            
        </c:forEach>
        
    </div>
    
</div>

   
   
</body>
</html>