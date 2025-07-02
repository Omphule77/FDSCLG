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

    

    </style>
</head>
<body>
    
      <h2 style="margin-top: 90px;margin-left: 7%;margin-bottom: 3%;color: #10a710;">Here we want to help you to Register your Restaurant!</h2>
      <div class="container-sm">
      
        <form action="rregister" method="post">
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-4">
                <h5>Restaurant Information</h5>
          </div>
          </div>
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-6">
                
                <input type="text" name="rname" style="border-radius: 20px; padding: 15px;" class="form-control" id="rName" placeholder="Restaurant Name">
            </div>
            <div class="mb-3 col-md-6">
              
                <input type="text" name="raddress" style="border-radius: 20px;  padding: 15px;" class="form-control" id="rAddress" placeholder="Restaurant Address">
            </div>
          
            
          </div>

          <div style="display: flex;" class="row">
            <div style="display: flex;" class="row">
              <div class="mb-3 col-md-6">
                
                <input type="text" name="rphone1" style="border-radius: 20px;  padding: 15px;" class="form-control" id="rPhone1" placeholder="Restaurant Phone1">
            </div>
            <div class="mb-3 col-md-6">
                
              <input type="text" name="rphone2" style="border-radius: 20px;  padding: 15px;" class="form-control" id="rPhone2" placeholder="Restaurant Phone2">
          </div>
           

              
            </div>
        </div>


       <div style="display: flex;" class="row">
            <div style="display: flex;" class="row">
              <div class="mb-3 col-md-12">
                
                <input type="text" name="rgst" style="border-radius: 20px;  padding: 15px;" class="form-control" id="rPhone1" placeholder="Restaurant GST Number">
            </div>  
            </div>
        </div>
         

        <div style="display: flex;" class="row">
          <div class="mb-3 col-md-4">
              <h5>Owner Details</h5>
        </div>
        </div>

        <div style="display: flex;" class="row">
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-6">
              
              <input type="text" name="oname" style="border-radius: 20px;  padding: 15px;" class="form-control" id="oname" placeholder="Owner Name">
          </div>
          <div class="mb-3 col-md-6">
              
            <input type="email" name="oemail" style="border-radius: 20px;  padding: 15px;" class="form-control" id="oemail" placeholder="Owner Email">
        </div>
         

            
          </div>
      </div>

          <div style="display: flex;" class="row">
          <div class="mb-3 col-md-12">
                
                <input type="text" name="ophone" style="border-radius: 20px;  padding: 15px;" class="form-control" id="ophone" placeholder="Phone">
            </div>
           
          </div>
          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-6">
                <h5>Describe your outlet type!</h5>
          </div>
          </div>

          <div style="display: flex;" class="row">
           
            <div class="mb-3 col-md-12">
          
                <textarea class="form-control" style="border-radius: 20px;  padding: 15px;" id="exampleFormControlTextarea1" rows="3" placeholder="Ex.Bakery,Bar,Cafe,Dhada" name="outlet"></textarea>
            </div>
          
          </div>
          <hr>
          <div style="display: flex; margin-top: 30px;" class="row">
            <div class="mb-3 col-md-4">
              <h5>Restaurant Operational Hours</h5>
            </div>
            <div class="mb-3 col-md-3">
              <input class="form-control" type="time" id="exampleTimeInput" style="border-radius: 20px;  padding: 15px;" name="otime">
            </div>
            <div class="mb-3 col-md-2">
            <h5 style="text-align: center;margin-top: 15px;">to</h5> 
            </div>
            <div class="mb-3 col-md-3">
              <input class="form-control" type="time" id="exampleTimeInput" style="border-radius: 20px;  padding: 15px;" name="ctime">
            </div>
          </div>

          <hr>

          <div style="display: flex;" class="row">
            <div class="mb-3 col-md-6">
                <h5>When Your Restaurant Holiday</h5>
          </div>
          </div>
          <div style="display: flex; margin-top: 30px;" class="row">
            
            <div class="mb-3 col-md-12">
              <select class="form-select" id="exampleSelect" style="border-radius: 20px;  padding: 15px;" name="holiday">
                <option selected value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
                 <option value="No Holiday">No Holiday</option>
              </select>
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
