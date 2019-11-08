<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 9</title>
        <%@include file = "meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
        <%@taglib uri="/WEB-INF/tlds/TagLibraryDesc" prefix="custom"%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <custom:today />
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=9"]').classList.toggle("active");
        </script>
</html>
