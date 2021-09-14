<%@ page import="bstorm.akimts.demojavaee.service.AdditionService" %>
<%@ page import="bstorm.akimts.demojavaee.service.AdditionServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! AdditionService service = new AdditionServiceImpl(); %>
<%
    try {
        int ma = Integer.parseInt(request.getParameter("ma"));
        int mb = Integer.parseInt(request.getParameter("mb"));
        int rslt = service.add(ma, mb);

        String attrPlace = request.getParameter("attr-place");

        if( attrPlace.equals("request") ){
            request.setAttribute("rslt", rslt);
            request.getRequestDispatcher("add-rslt.jsp")
                    .forward(request,response);
        }
        else if( attrPlace.equals("session") ){
            session.setAttribute("rslt", rslt);
            response.sendRedirect(request.getContextPath()+"/demo/addition/add-rslt.jsp");
        }
        else{
            response.sendError(400, "soit session soit request");
        }

    }catch (NumberFormatException ex){
        response.sendError(400, "membres invalides");
    }
%>
