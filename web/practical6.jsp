<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 6</title>
        <%@include file = "meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
        <%@taglib uri="/WEB-INF/tlds/TagLibraryDesc" prefix="custom"%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="card">
                <code><h4>&lt;custom:hello name="Ajay"&gt;&lt;/custom:hello&gt;</h4></code>
                <h3><custom:hello name="Ajay"></custom:hello></h3>
            </div>
            <div class="card">
                <code><h4>&lt;custom:choco texture="Chewy"&gt;&lt;/custom:choco&gt;</h4></code>
                <h3><custom:choco texture="Chewy"></custom:choco></h3>
            </div>
            <div class="card">
                <code><h4>&lt;custom:choco texture="Crunchy"&gt;&lt;/custom:choco&gt;</h4></code>
                <h3><custom:choco texture="Crunchy"></custom:choco></h3>
            </div>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=6"]').classList.toggle("active");
        </script>
</html>
