<%@page contentType="text/html" pageEncoding="UTF-8"%>
<main>
    <nav class="nav-extended">
    <div class="nav-wrapper">
      <a href="HomePage" class="brand-logo">Practicals</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          <% if (session.getAttribute("email") != null) { %>
        <li><a href="SignOut" class="btn waves-light waves-effect">Sign Out</a></li>
        <% } else { %>
        <li><a href="SignIn" class="btn waves-light waves-effect">Sign In/Sign Up</a></li>
        <% } %>
      </ul>
    </div>
    <div class="nav-content">
<!--      <ul class="tabs tabs-transparent">
        <li class="tab"><a href="practical1.jsp">Practical 1</a></li>
        <li class="tab"><a href="practical2.jsp">Practical 2</a></li>
        <li class="tab"><a href="practical3.jsp">Practical 3</a></li>
        <li class="tab"><a href="practical4.jsp">Practical 4</a></li>
        <li class="tab"><a href="practical5.jsp">Practical 5</a></li>
      </ul>-->
    </div>
      <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a href="practical?practicalNum=1">Practical 1</a></li>
        <li class="tab"><a href="practical?practicalNum=2">Practical 2</a></li>
        <li class="tab"><a href="practical?practicalNum=3">Practical 3</a></li>
        <li class="tab"><a href="practical?practicalNum=4">Practical 4</a></li>
        <li class="tab"><a href="practical?practicalNum=5">Practical 5</a></li>
      </ul>
    </div>
  </nav>
</main>
