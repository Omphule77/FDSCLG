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
<style>
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
</style>
</head>
<body>
 <br>

  <div class="container">
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
                            <a href="${pageContext.request.contextPath}/buyproduct/${p.id}/${user.email}" style="text-decoration: none; color:white;">Buy Now</a>
                        </button>
                    </div>
                </div>
            </div>
            
        </c:forEach>
        
    </div>
    
</div>

</body>
</html>