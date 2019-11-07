<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 3</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <br>
        <form method="get">
            <input type="hidden" name="practicalNum" value="3">
            <label for="name">Enter Name: </label>
            <input type="text" name="name" id="name" required>
            
            <label for="dob">Enter DOB: </label>
            <input type="date" name="dob" id="dob" required>
            
            <label for="email">Enter Email ID: </label>
            <input type="email" name="email" id="email" required>
            
            <label for="lucky">Enter Lucky Number: </label>
            <input type="number" name="lucky" id="lucky" required>
            
            <label for="food">Enter Favourite Food: </label>
            <input type="text" name="food" id="food" required>
            
            <button class="btn waves-effect waves-light" type="submit">Submit</button>
        </form>
        
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical3.jsp"').classList.toggle("active");
        </script>
</html>
