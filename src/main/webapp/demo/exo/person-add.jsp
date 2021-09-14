<%@ page import="bstorm.akimts.demojavaee.service.PersonneService" %>
<%@ page import="bstorm.akimts.demojavaee.service.PersonneServiceImpl" %>
<%@ page import="bstorm.akimts.demojavaee.models.Personne" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! PersonneService service = PersonneServiceImpl.getInstance(); %>
<%
    String nom = request.getParameter("nom");
    String age = request.getParameter("age");

    if( nom != null && age != null ){

        try{

            int ageInt = Integer.parseInt(age);
            service.add( new Personne(nom, ageInt) );
            response.sendRedirect(request.getContextPath()+"/demo/exo/person-list.jsp");

        } catch (NumberFormatException ex){

            request.setAttribute("age-invalid", true);
            request.getRequestDispatcher("person-form.jsp")
                    .forward(request, response);

        }
    }else {
        request.setAttribute("param-manquant", true);
        request.getRequestDispatcher("person-form.jsp")
                .forward(request, response);
    }

%>
