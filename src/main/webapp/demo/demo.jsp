<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="css-setup.jsp"%>
</head>
<body>

<%@ include file="header.jsp"%>

<%! LocalTime time1 = LocalTime.now(); %>

<%
    LocalTime time2 = LocalTime.now();
    String param = request.getParameter("param");
    if(param != null){
%>
        <h2>param existe <%= param %></h2>
<%}%>

<h2>Différents types de variables</h2>

<div>
    <p>date1 : <%= time1 %></p>
    <p>date2 : <%= time2 %></p>
</div>

<p class="red">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aspernatur incidunt
    inventore maxime molestiae nobis obcaecati perspiciatis provident, quaerat, qui quia
    suscipit tempora voluptates. Accusantium ad consectetur debitis dolorem et incidunt iure
    minus necessitatibus, nobis omnis recusandae tenetur velit voluptatum?
</p>

<%@include file="js-setup.jsp"%>

</body>
</html>
