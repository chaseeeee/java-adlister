<%--
  Created by IntelliJ IDEA.
  User: chasehammock
  Date: 10/18/17
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/partials/head.jsp" %>
</head>
<body>
<%@ include file="/partials/navbar.jsp" %>

<c:forEach var="ad" items="${ads}">
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
</c:forEach>

</body>
</html>
