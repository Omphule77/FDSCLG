<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
<link rel="icon" type="image/png" href="https://img.icons8.com/3d-fluency/94/administrator-male--v1.png">

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
    
      <h2 style="margin-top: 90px;;margin-bottom: 3%;color: #10a710;text-align: center;">Add Delivery Boy</h2>
      <div class="container">
      
        <form action="dregister" method="POST">
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                <h5>Delivery Boy Information</h5>
          </div>
          </div>
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="name" style="border-radius: 20px; padding: 15px;" class="form-control" id="name" placeholder="Full Name">
            </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="email" name="email" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Email">
            </div>
           
          </div>
          

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="phone1" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Phone1">
            </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="phone2" style="border-radius: 20px; padding: 15px;" class="form-control" id="name" placeholder="Phone2">
            </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
               <textarea class="form-control" id="comment" style="border-radius: 20px; padding: 15px;" rows="3" placeholder="Address" name="address"></textarea>
     </div>
           
          </div>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="date" name="dob" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Date of Birth">
            </div>
           
          </div>

            <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="vd" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Vehicle Details">
            </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="ld" style="border-radius: 20px; padding: 15px;" class="form-control" id="name" placeholder="License Details">
            </div>
           
          </div>
         
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="exp" style="border-radius: 20px; padding: 15px;" class="form-control" id="desc" placeholder="Experience">
            </div>
           
          </div>
          
           <div style="display: flex;" class="row">
            <div class="mb-3 col-md-12">
                
                <input type="text" name="idproof" style="border-radius: 20px; padding: 15px;" class="form-control" id="name" placeholder="Id Proof: ex-Adhar Card or Pan Card">
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
