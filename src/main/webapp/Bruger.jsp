<%--
  Created by IntelliJ IDEA.
  User: Janti
  Date: 26-10-2021
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Brugerside</title>
</head>
<body>
Velkommen, du er nu logget ind som ${sessionScope.fnavn}
<%--med sessionId ${requestScope.session.id}--%>


<h2 style="background-color:DodgerBlue;">Her kan du tilføje emner til din huskeliste</h2>

<%--<form action="TilfjemneServlet",method = "post">--%>
<%--    <select name="bund" id="bund" onchange="this.form.submit()">--%>
<%--&lt;%&ndash;    <label for="bund">Vælg bund:</label>&ndash;%&gt;--%>
<%--        <option value="Chokolade">Chokolade</option>--%>
<%--        <option value="Vanilje">Vanilje</option>--%>
<%--        <option value="Nutmeg">Nutmeg</option>--%>
<%--        <option value="Pistache">Pistache</option>--%>
<%--        <option value="Mandel">Mandel</option>--%>
<%--&lt;%&ndash;        <input type="submit" value="Tilføj">&ndash;%&gt;--%>
<%--    </select>--%>
<%--</form>--%>

<form action="TilfjemneServlet",method = "get">
    <label for="bund">Bund:</label><br>
    <input type="text" id="bund" name="bund" value=""><br>

    <label for="topping">Topping:</label><br>
    <input type="text" id="topping" name="topping" value=""><br>
    <br>
    <br>
    <label for="antal">Antal:</label><br>
    <input type="text" id="antal" name="antal" value=""><br>
    <input type="submit" value="Submit">
</form>

<form action="VisOversigtServlet",method = "get">
    <input id="knap" type="submit" value="knap" button style="background-color:red;border-color: yellow">
    <input type="submit" value="gå til oversigt">
</form>

<c:forEach items="${applicationScope.indkøbsliste}" var="bund">

    ${bund}
    <br>
</c:forEach>
<c:forEach items="${sessionScope.indkøbsliste}" var="topping">

    ${topping}
    <br>
</c:forEach>
<c:forEach items="${applicationScope.kurv}" var="antal">

    ${antal}
    <br>
</c:forEach>

<h1>Alle emner er tilføjet af brugere</h1>

<%--<c:forEach items="${applicationScope.alleBrugeresEmner}" var="emne">--%>

<%--    ${emne}--%>
<%--    <br>--%>
<%--</c:forEach>--%>



</body>
</html>

<p>If you click the "Submit" button, the form-data will be sent to a page called "/action_page.php".</p>

</body>
</html>

<a href="hello-servlet">Hello Servlet</a>
</body>
<br>

<sectio> "DET HER ER EN SECTION"</sectio>
<article>DET HER ER EN ARTICLE</article>
<aside>DET HER ER EN ASIDE</aside>
<footer style="border:rgb(255, 99, 71);">DET HER ER EN FOOTER</footer>
</html>