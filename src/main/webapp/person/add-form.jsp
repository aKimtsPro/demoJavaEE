<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 13-09-21
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h2> Ajouter une personne </h2>

<form action="${pageContext.request.contextPath}/person/add-manage.jsp" method="post">
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
