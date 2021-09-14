<%@ page import="bstorm.akimts.demojavaee.service.PersonneService" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceImpl" %>
<%@ page import="bstorm.akimts.demojavaee.models.Personne" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceMock" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! PersonneService service = PersonneServiceImpl.getInstance(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Personne manager</h1>

    <h2>Liste des personnes</h2>

    <ul>
        <%for( Personne pers : service.getPersonnes() ){ %>
        <li><%=pers.getNom()%> - <%=pers.getAge()%> ans</li>
        <%}%>
    </ul>

    <%@ include file="add-form.jsp"%>

</body>
</html>
