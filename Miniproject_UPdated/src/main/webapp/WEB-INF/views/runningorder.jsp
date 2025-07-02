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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container1 {
            width: 750px;
            background-color: yellow;
            border-radius: 25px;
        }
        .left-div { margin-right: auto; }
        .right-div { margin-left: auto; }
        .middle-div { margin-left: auto; margin-right: auto; }
        .round-button {
            border-radius: 50px;
            font-size: 15px;
            padding: 20px;
            background: transparent;
            color: black;
            border: none;
            cursor: pointer;
            transition: transform 0.3s ease;
        }
        .round-button:hover { color: #10a710; }
    </style>
</head>
<body style="background-color: #E6E6FA;">
    <center><div class="container1" style="background-color: transparent;">
        <h1 style="font-family: Papyrus, fantasy; margin-top: 50px;">WelCome Delivery Boy</h1>
    </div></center>

    <div style="height: 200px;" class="container-fluid">
        <br><br>
        <center>
            <div class="container1" style="display: flex;">
                <div class="left-div" style="margin-left: 150px;">
                    <a href="deliveryboypage"><button class="round-button">New</button></a>
                </div>
                <div class="middle-div">
                    <a href="runningorder"><button class="round-button">Running</button></a>
                </div>
                <div class="right-div" style="margin-right: 150px;">
                    <a href="completeorder"><button class="round-button">Complete</button></a>
                </div>
            </div>
        </center>
    </div>

    <center><div class="container1" style="background-color: transparent;">
        <h1 style="font-family: Papyrus, fantasy;">See Running Orders</h1>
    </div></center>

    <div class="container">
        <div class="row justify-content-center">
            <c:forEach items="${orders}" var="o">
                <div class="col-lg-4 col-md-6 col-sm-12 mb-3">
                    <div class="card cl4" style="border: 2px black solid; border-radius: 20px; box-shadow: 5px 5px 5px 5px; margin-top:20px;">
                        <div class="card-body" style="background-color: white; border-radius: 20px;">
                            <div style="display: flex;">
                                <div style="width:50%;">
                                    <p style="margin-left:15px">Order Id</p>
                                    <p style="margin-left:15px">Total Amount</p>
                                    <p style="margin-left:15px">Payment Method</p>
                                </div>
                                <div style="width:50%;">
                                    <p style="text-align:right;margin-right:25px">${o.id}</p>
                                    <p style="text-align:right;margin-right:25px">${o.tprice}</p>
                                    <p style="text-align:right;margin-right:25px">${o.cod}</p>
                                </div>
                            </div>

                            <div class="container" style="height:200px; border:1px black solid; border-radius:10px; margin-bottom:20px;">
                                <div style="display: flex;">
                                    <div style="width:50%;">
                                        <p style="margin-left:15px">Name:</p>
                                        <p style="margin-left:15px">Phone1:</p>
                                        <p style="margin-left:15px">Phone2:</p>
                                        <p style="margin-left:15px">Address:</p>
                                    </div>
                                    <div style="width:50%;">
                                        <p style="text-align:right;margin-right:25px">${o.name}</p>
                                        <p style="text-align:right;margin-right:25px">${o.phone1}</p>
                                        <p style="text-align:right;margin-right:25px">${o.phone2}</p>
                                        <p style="text-align:right;margin-right:25px">${o.address}</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Button to trigger modal -->
                            <center>
                                <button type="button" class="btn btn-primary"
                                        data-toggle="modal" data-target="#otpModal${o.id}"
                                        style="background-color:green;padding-left:35px;padding-right:35px;border-radius:20px;">
                                    Complete
                                </button>
                            </center>

                            <!-- Modal -->
                            <div class="modal fade" id="otpModal${o.id}" tabindex="-1" role="dialog" aria-labelledby="otpModalLabel${o.id}" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <h5 class="modal-title">Email OTP Verification</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <form action="verifyEmailOtp/${o.id}" method="post">
                                                <input type="hidden" name="email" value="" />
                                                <input type="hidden" name="orderId" value="${o.id}" />

                                                <div class="form-group">
                                                    <button type="button" class="btn btn-danger" onclick="sendOtp('omphule13@gmail.com', '${o.id}')">Send OTP</button>
                                                </div>

                                                <div class="form-group mt-3">
                                                    <input type="text" class="form-control" name="otp" placeholder="Enter OTP" required />
                                                </div>

                                                <div class="form-group mt-3">
                                                    <button type="submit" class="btn btn-success">Verify & Complete</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <script>
        function sendOtp(email, orderId) {
            $.ajax({
                url: 'sendEmailOtp',
                type: 'POST',
                data: { email: email, orderId: orderId },
                success: function(response) {
                    if (response === 'sent') {
                        alert("OTP sent to " + email);
                    } else {
                        alert("Failed to send OTP. Try again.");
                    }
                },
                error: function() {
                    alert("Error while sending OTP.");
                }
            });
        }
    </script>
</body>
</html>
