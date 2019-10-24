<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row card">
                <div class="col s10">
                    <h2 class="center-align">Hello <%=session.getAttribute("name")%> </h2>
                </div>
            </div>
        </div>
    </body>
</html>
