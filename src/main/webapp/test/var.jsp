<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%! Date date1 = new Date(); %>

<%
    Date date2 = new Date();
%>

<p>date1 : <%=date1%></p>
<p>date2 : <%=date2%></p>

</body>
</html>
