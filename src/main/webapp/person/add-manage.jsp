<%@ page import="bstorm.akimts.demojavaee.models.Personne" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneService" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! PersonneService service = PersonneServiceImpl.getInstance(); %>
<%
    String nom = request.getParameter("nom");
    int age = Integer.parseInt(request.getParameter("age"));
    Personne p = new Personne(nom, age);

    service.add(p);

    response.sendRedirect(request.getContextPath()+"/person/list.jsp");
//    request.getRequestDispatcher("/person/list.jsp").forward(request,response);
%>
