<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 10</title>
        <%@include file = "meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
        <%@taglib uri="/WEB-INF/tlds/TagLibraryDesc" prefix="custom"%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <c:set var="pname" value="${param.name}" scope="session" />
        Hello ${pname}
        <form method="post" action="practical?practicalNum=10c">
            Enter the products you would like to buy<br>    
            <input type="text" name="product" required><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=10"]').classList.toggle("active");
        </script>
</html>
