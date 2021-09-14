<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mon super site : form</title>
    <%@include file="../css-setup.jsp"%>
</head>
<body>

<%@include file="header.jsp"%>

<%@include file="nav.jsp"%>

    <div class="container">
        <h1>Formulaire d'ajout de personne</h1>

        <%if( request.getAttribute("param-manquant") != null ){ %>
        <p class="red">Une valeur n'a pas été donnée</p>
        <%}%>

        <form action="person-add.jsp" method="post">
            <div>
                <label for="nom">nom</label><br>
                <input type="text" name="nom" id="nom">
            </div>
            <div>
                <label for="age">age</label><br>
                <input type="text" name="age" id="age">
                <%if( request.getAttribute("age-invalid") != null ){ %>
                <p class="red">L'age est invalide</p>
                <%}%>
            </div>

            <button type="submit" class="btn btn-success">soumettre</button>
        </form>
    </div>




<%@include file="footer.jsp"%>

<%@include file="../js-setup.jsp"%>


</body>
</html>
