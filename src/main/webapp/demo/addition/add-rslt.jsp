<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceImpl" %>
<%@ page import="bstorm.akimts.demojavaee.service.AdditionService" %>
<%@ page import="bstorm.akimts.demojavaee.service.AdditionServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>le resultat(session) est : <%= session.getAttribute("rslt")%></h1>
    <h1>le resultat(request) est : <%= request.getAttribute("rslt")%></h1>

</body>
</html>
