<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 5</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <br>
        <form method="get">
            <input type="hidden" name="practicalNum" value="5">
            <label for="num">Enter number: </label>
            <input type="number" name="num" id="num" required>
            <button class="btn waves-effect waves-light" type="submit">Submit</button>
        </form>
        <% if (request.getParameter("num") != null) {
            int num = Integer.parseInt(request.getParameter("num"));
            pageContext.setAttribute("n", num);
        }%>
        <c:forEach var="i" begin="1" end="${pageScope.n}">
            <c:forEach var="j" begin="1" end="${i}">
                <c:out value="${j}"></c:out>    
            </c:forEach>  
            <br>
        </c:forEach>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical5.jsp"').classList.toggle("active");
        </script>
</html>
