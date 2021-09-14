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

    <%! AdditionService service = new AdditionServiceImpl(); %>

    <%
        try {
            int ma = Integer.parseInt(request.getParameter("ma"));
            int mb = Integer.parseInt(request.getParameter("mb"));
            int rslt = service.add(ma, mb);
    %>
            <h1>le resultat est : <%= rslt %></h1>
    <%
        }catch (NumberFormatException ex){%>
            <h1> Format d'un/des param.s invalide </h1>
    <%}%>

</body>
</html>
