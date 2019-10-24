<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 2</title>
        <%@include file="meta-data.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <br>
            <form method="get">
                <label for="num1">Enter number 1: </label>
                <input type="number" name="num1" id="num1" required>
                <label for="num2">Enter number 2: </label>
                <input type="number" name="num2" id="num2" required>
                <p>
                    <label>
                        <input name="operation" type="radio" value="add" checked />
                        <span>Add</span>
                    </label>
                </p>
          <p>
            <label>
                <input name="operation" type="radio" value="subtract" >
              <span>Subtract</span>
            </label>
          </p>
          <p>
            <label>
                <input name="operation" type="radio" value="multiply" >
              <span>Multiply</span>
            </label>
            </p>
                <button class="btn waves-effect waves-light" type="submit">Submit</button>
            </form>
            <%
                if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
                    int num1 = Integer.parseInt(request.getParameter("num1"));
                    int num2 = Integer.parseInt(request.getParameter("num2"));
                    String operation = request.getParameter("operation");
                    pageContext.setAttribute("op1", num1);
                    pageContext.setAttribute("op2", num2);
                    pageContext.setAttribute("op", operation);
                }
            %>
            <c:choose>
                <c:when test = "${param.operation.equals(\"add\")}">
                    <c:out value="${op1 + op2}"></c:out>
                </c:when>
                <c:when test = "${param.operation.equals(\"subtract\")}">
                    <c:out value="${op1 - op2}"></c:out>
                </c:when>
                <c:when test = "${param.operation.equals(\"multiply\")}">
                    <c:out value="${op1 * op2}"></c:out>
                </c:when>
            </c:choose>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical2.jsp"').classList.toggle("active");
        </script>
</html>
