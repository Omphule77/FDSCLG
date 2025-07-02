<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Centered Div with Buttons</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Style for the centered div */
        .centered-div {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 200px; /* Adjust as needed */
            background-color: cadetblue;
            width: 500px;
            margin: auto auto;
            margin-top: 50px;
            box-shadow: 5px 5px 10px 10px;
            border-radius: 20px;
        }
        .btn{
            width: 100px;
        }
    </style>
</head>
<body style="background-color:  #E6E6FA;">

<h1 style="text-align:center;margin-top: 150px;">Landing Page</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="centered-div">
                    <div class="d-flex justify-content-around">
                        <button type="button" class="btn btn-primary" style="margin-right: 2%;"><a href="login" style="color:white;text-decoration:none;">User</a></button>
                        <button type="button" class="btn btn-secondary" style="margin-right: 2%;"><a href="adlogin" style="color:white;text-decoration:none;">Admin</a></button>
                        <button type="button" class="btn btn-success" style="margin-right: 2%;"><a href="restrologin" style="color:white;text-decoration:none;">Restaurant</a></button>
                        <button type="button" class="btn btn-danger" style="margin-right: 2%;"><a href="dblogin" style="color:white;text-decoration:none;">Delivery</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
