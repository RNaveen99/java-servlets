<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/TagLibraryDesc" prefix="custom"%>
<% if(request.getMethod().equals("GET")) { %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 7</title>
        <%@include file = "meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
        
        <style>
            input[type=text]:not(.browser-default){
                width: 25%;
            }
            input[type=number]:not(.browser-default){
                width: 2%;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="card">
                <h5><code>&lt;custom:substring 
                        input="<input type="text" name="input" value="Deen Dayal Upadhyaya College">" 
                        start="<input type="number" name="start" value="4">" 
                        end="<input type="number" name="end" value="4">"
                        &gt;&lt;/custom:substring&gt;</code></h5>
                <%}%>
                <% if(request.getMethod().equals("POST")) { 
                pageContext.setAttribute("input", request.getParameter("inputValue"));
                %>   
                <h3><custom:substring input="${pageScope.input}" start="4" end="17"></custom:substring></h3>
        <%}%>
                
                <% if(request.getMethod().equals("GET")) { %>
                
            </div>
            <div id="result"></div>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=7"]').classList.toggle("active");
            const input = document.querySelector('input[name=input]');
            const start = document.querySelector('input[name=start]');
            const end = document.querySelector('input[name=end]');
            input.addEventListener('change', run);
            start.addEventListener('change', run);
            end.addEventListener('change', run);
            function run() {
                const inputValue = input.value;
                const startValue = start.value;
                const endValue = end.value;
                const request = new XMLHttpRequest();
                request.open("POST", "practical7.jsp", true);

                request.onreadystatechange = function() {
                    if(this.readyState === 4 && this.status === 200) {
//                        document.getElementById("result").innerHTML = this.responseText;
                        console.log(this.responseText);
                    }
                };

                request.send(JSON.stringify({practicalNum:7,inputValue}));
            }
    </script>
</html>
<%}%>
