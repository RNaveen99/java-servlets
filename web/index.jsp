
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% response.sendRedirect("HomePage"); %>
        <h1>Hello World!</h1>
        <h3><a href="SignIn">Go to SignIn page</a></h3>
        <br><br><br><br>
        <h3><a href="SignOut">Go to SignOut page</a></h3>
        <br><br><br><br>
        <h3><a href="HomePage">Go to HomePage</a></h3>
        <br><br><br><br>
        <h3><a href="SignUp">Go to SignUp Page</a></h3>
    </body>
</html>
