<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cake by Syahmina</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="booking-content">
                <div class="booking-image">
                    <img class="booking-img" src="assets/images/form-img.jpg" alt="Booking Image">
                </div>
                <div class="booking-form">
                    <form id="booking-form" action="addCake" method="post">
                        <h2>Add Cake for your dessert!</h2>
                       <div class="form-group form-input">
                            <input type="text" name="ck_name" id="ck_name" required />
                            <label for="ck_price" class="form-label">Name</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="ck_flavour" id="ck_flavour" required />
                            <label for="ck_price" class="form-label">Flavour</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="ck_price" id="ck_price" required />
                            <label for="ck_price" class="form-label">Price</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="ck_quantity" id="ck_quantity" required />
                            <label for="ck_price" class="form-label">Quantity</label>
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Add Cake" class="submit" />
                            <a href="listCake?action=viewCake&ckID=1" class="vertify-booking">List Cake Order</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>