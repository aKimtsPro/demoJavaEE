<%@ page import="bstorm.akimts.demojavaee.models.Personne" %>
<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String nom = request.getParameter("nom");
    int age = Integer.parseInt(request.getParameter("age"));
    Personne p = new Personne(nom, age);
    request.setAttribute("person", p);
    request.getRequestDispatcher("/form/formrslt.jsp").forward(request,response);
%>
