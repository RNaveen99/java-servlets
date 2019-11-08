<%
    String parameters = request.getQueryString();
    String url = request.getRequestURL().toString();
    int index = url.lastIndexOf(".jsp");
    if (index != -1) {
        String practicalNum = url.substring(url.indexOf("practical") + 9, url.lastIndexOf(".jsp"));
        if (parameters == null) {
            response.sendRedirect("practical?practicalNum=" + practicalNum);
        } else {
            response.sendRedirect("practical?practicalNum=" + practicalNum + "&" + parameters);
        }
    }
%>
