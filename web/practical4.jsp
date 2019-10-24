<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 4</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@page import="java.util.Calendar" %>
        <%@include file="header.jsp" %>
            <br>
            <% String msg = "";
                int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
                if (hour >= 5 && hour < 12) {
                    msg = "Good morning ";
                } else if (hour >= 12 && hour < 18) {
                    msg = "Good Afternoon ";
                } else {
                    msg = "GoodNight ";
                }
                
                %>
        <div class="container">
            <div class="row card">
                <div class="col s10">
                    <h2 class="center-align"><%=msg%><%=session.getAttribute("name")%> </h2>
                </div>
            </div>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical4.jsp"').classList.toggle("active");
        </script>
</html>
