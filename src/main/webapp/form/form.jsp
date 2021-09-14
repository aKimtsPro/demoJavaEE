<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Formulaire via .jsp</h1>

<form action="${pageContext.request.contextPath}/form/formresp.jsp" method="post">

    <div>
        <label for="nom">nom</label><br>
        <input type="text" id="nom" name="nom">
    </div>
    <div>
        <label for="age">age</label><br>
        <input type="text" id="age" name="age">
    </div>

    <button type="submit">submit</button>
</form>

</body>
</html>
