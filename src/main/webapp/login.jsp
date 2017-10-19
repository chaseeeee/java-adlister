<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
=======
<%--
  Created by IntelliJ IDEA.
  User: chasehammock
  Date: 10/17/17
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to Login!</title>

</head>
<body>

<%@ include file="partials/bootstrap.jsp" %>

<div class="main">
<form action = "/login.jsp" method="post">
    /// WELCOME TO THE NSA WEB SITE - US GOVERNMENT /// <br><br>
    USERNAME <input type="text" name="username" class="box" placeholder="something">
<br>
    PASSWORD <input type="text" name="password" class="box" placeholder="something_else"><br>
    <input type="submit">
</form>

    <h3>Using GET Method to Read Form Data</h3>
    <ul>
        <li><p><b>First Name:</b>
            <%= request.getParameter("username")%>
        </p></li>
        <li><p><b>Last  Name:</b>
            <%= request.getParameter("password")%>

            <%
            String username = (request.getParameter("username")!=null)?request.getParameter("username"):"";
            String password = (request.getParameter("password")!=null)?request.getParameter("password"):"";

            if (username.isEmpty() || password.isEmpty()) {
                out.println("<br>USERNAME AND PASSWORD ARE EMPTY SON");
            }
                else if (username.equals("admin") && password.equals("boss")) {
                out.println("user is admin and password is boss - continue...");

                // New location to be redirected
                String redirectURL = "/profile.jsp";
                response.sendRedirect(redirectURL);
            }
                else {out.println("<br> You seem to be a basic user so you cannot continue to boss status...");
            }
             %>



</div>


>>>>>>> 3e69f990621d23caa06eb12f517e98342ae31ff2
</body>
</html>
