<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practical 5</title>
        <%@include file = "meta-data.jsp" %>
        <%@include file = "practicalAuthentication.jsp"%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <br>
        <form method="GET">
            <input type="hidden" name="practicalNum" value="5">
            <div class="input-field">
                <label for="word">Enter Word: </label>
                <input type="text" name="word" id="word" required>
            </div>
            <div class="input-field">
                <p>
                    <label>
                        <input class="with-gap" name="oddEven" type="radio" value="odd" checked />
                      <span>Odd</span>
                    </label>
                  </p>
                  <p>
                    <label>
                        <input class="with-gap" name="oddEven" type="radio" value="even" />
                      <span>Even</span>
                    </label>
                  </p>
            </div>
            <button class="btn waves-effect waves-light" type="submit" name="submit" value="true">Submit</button>
        </form>
        <c:if test="${param.submit}">
            <c:set var="len" value="${fn:length(param.word)}" />
            <c:set var="vowels" value="aeiou" />
            <c:set var="flag" value="true" />
            <c:choose>
                <c:when test="${param.oddEven == 'odd'}">
                    <c:forEach var="i" begin="0" end="${len - 1}" step="2">
                        <c:if test="${not fn:contains(vowels, param.word.charAt(i))}">
                            <c:set var="flag" value="false" />
                        </c:if>
                    </c:forEach>
                    <c:if test="${flag}">
                        You win
                    </c:if>
                    <c:if test="${not flag}">
                        You lose
                    </c:if>
                </c:when>
                <c:otherwise>
                    <c:forEach var="i" begin="1" end="${len - 1}" step="2">
                        <c:if test="${not fn:contains(vowels, param.word.charAt(i))}">
                            <c:set var="flag" value="false" />
                        </c:if>
                    </c:forEach>
                    <c:if test="${flag}">
                        You win
                    </c:if>
                    <c:if test="${not flag}">
                        You lose
                    </c:if>
                </c:otherwise>
            </c:choose>
        </c:if>
        </div>
    </body>
    <script>
            document.querySelector('a[href="practical?practicalNum=5"]').classList.toggle("active");
        </script>
</html>
