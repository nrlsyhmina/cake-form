<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif
  color: #000000;
  border-collapse: collapse;
}

td, th {
  border: 1px solid #ffffff;
  border-radius: 25px;
  text-align: left;
  padding: 8px;
  }
table.center {
  margin-left: auto; 
  margin-right: auto;

}

</style>
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

      <h2>List Cake for your dessert!</h2>
            <div>
                <div class="table-responsive">
                                <table class="center" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Cake Name</th>
                                            <th>Cake Flavour</th>
                                            <th>Cake Price</th>
                                            <th>Cake Quantity</th>
                                        </tr>
                                    </thead>
                         
                                    <tbody>
                                    <c:forEach items="${cake}" var="cake" begin="0" varStatus="count">
                                        <tr>
                                        <td><c:out value="${count.count}"/></td>
                                        <td><c:out value="${cake.ck_name}"/></td>
							            <td><c:out value="${cake.ck_flavour}" /></td>
							            <td><c:out value="${cake.ck_price}" /></td>
							             <td><c:out value="${cake.ck_quantity}" /></td>
	
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <div style="text-align: center">
                            <a style="font-color: black" href="index.jsp">Add Cake</a>
                            <a style="font-color: black" href="listCake?action=viewCake&ckID=1">List Cake</a>
                            </div>
            </div>
   

    </div>

    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>