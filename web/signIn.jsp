<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>signIn</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row">
                <form action="SignIn" method="POST" class="col s6 card offset-s2">
                    <% if (session.getAttribute("signInError") != null) {%>
                        <%=session.getAttribute("signInError")%>
                        <% session.removeAttribute("signInError"); } %>
                    <div class="input-field center">
                        <h2 style="display:inline;">Signin</h2><h5 style="display:inline;">&nbsp;OR&nbsp;</h5><a href="SignUp"><h3 style="display:inline;">SignUp</h3></a> 
                    </div>
                    <div>
                        <label for="email">Email:</label>
                        <input type="email" name="email" id="email" required>
                    </div>
                    <div>
                        <label for="password">Password:</label>
                        <input type="password" name="password" id="password" required>
                    </div>
                    <div class="input-field">
                        <button class="btn waves-light waves-effect" type="submit">Sign In</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
