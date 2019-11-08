<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 3</title>
        <%@include file="meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
        <style>
            span {
                color: red;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <br>
        <form method="get">
            <input type="hidden" name="practicalNum" value="3">
            <label for="name">Enter Name: </label>
            <input type="text" name="name" id="name">
            <c:if test="${param.submit && empty param.name}">
                <span>Please enter your Name</span><br>
            </c:if>
            
            <label for="dob">Enter DOB: </label>
            <input type="date" name="dob" id="dob" >
            <c:if test="${param.submit && empty param.dob}">
                <span>Please enter your DOB</span><br>
            </c:if>
                
            <label for="email">Enter Email ID: </label>
            <input type="email" name="email" id="email">
            <c:if test="${param.submit && empty param.email}">
                <span>Please enter your Email</span><br>
            </c:if>
            
            <label for="lucky">Enter Lucky Number: </label>
            <input type="number" name="lucky" id="lucky" >
            <c:if test="${param.submit && empty param.lucky}">
                <span>Please enter your Lucky Number</span><br>
            </c:if>
            
            <label for="food">Enter Favourite Food: </label>
            <input type="text" name="food" id="food" >
            <c:if test="${param.submit && empty param.food}">
                <span>Please enter your Favourite Food</span><br>
            </c:if>
            
            <button class="btn waves-effect waves-light" type="submit" name="submit" value="true">Submit</button>
        </form>
            <c:if test="${param.submit && !empty param.name && !empty param.dob && !empty param.email && !empty param.lucky && !empty param.food}">
                <br><br>Entered Values<br>
                Name: ${param.name}<br>
                DOB: ${param.dob}<br>
                Email ID: ${param.email}<br>
                Lucky Number: ${param.lucky}<br>
                Favourite Food: ${param.food}<br>
            </c:if>
        
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=3"]').classList.toggle("active");
        </script>
</html>
