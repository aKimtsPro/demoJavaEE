<%--
  Created by IntelliJ IDEA.
  User: akimt
  Date: 14-09-21
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="add-solve.jsp" method="post">
    <div>
        <label for="ma">membre a</label><br>
        <input type="text" name="ma" id="ma">
    </div>
    <div>
        <label for="mb">membre b</label><br>
        <input type="text" name="mb" id="mb">
    </div>
    <label for="attr-place">Choisissez la manière de passer les données</label>
    <select name="attr-place" id="attr-place">
        <option value="session">session</option>
        <option value="request">requete</option>
    </select>
    <button type="submit">soumettre</button>
</form>

</body>
</html>
