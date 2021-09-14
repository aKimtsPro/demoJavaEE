<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mon super site - accueil</title>
    <%@ include file="../css-setup.jsp"%>
</head>
<body>

    <%-- commentaire invisible en html --%>
    <!-- inclu via jsp -->
    <%@ include file="header.jsp"%>

    <!-- inclu via jsp -->
    <%@ include file="nav.jsp"%>

    <div class="container">
        <h1>Accueil</h1>

        <p>bonjour utilisateur!</p>
        <p>Bienvenu sur mon super site</p>
    </div>

    <!-- inclu via jsp -->
    <%@include file="footer.jsp"%>

    <!-- inclu via jsp -->
    <%@include file="../js-setup.jsp"%>

</body>
</html>
