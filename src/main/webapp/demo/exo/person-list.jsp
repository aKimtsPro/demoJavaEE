<%@ page import="java.util.List" %>
<%@ page import="bstorm.akimts.demojavaee.models.Personne" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceImpl" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneService" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceMock" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! PersonneService service = PersonneServiceImpl.getInstance(); %>
<% List<Personne> list = service.getPersonnes(); %>
<html>
<head>
    <title>mon super site - liste</title>
    <%@include file="../css-setup.jsp"%>
</head>
<body>

    <%@include file="header.jsp"%>

    <%@include file="nav.jsp"%>

    <div class="container">

        <h1>Liste des personnes</h1>

        <% if( list.isEmpty() ){ %>
        <p>la liste est vide</p>
        <% } else { %>
        <ul>
            <% for (int i = 0; i < list.size(); i++) { %>
            <li> <%= i %>  - <%= list.get(i).getNom() %> - <%= list.get(i).getAge() %> ans</li>
            <% } %>
        </ul>
        <%}%>

    </div>

    <%@include file="footer.jsp"%>

    <%@include file="../js-setup.jsp"%>

</body>
</html>
