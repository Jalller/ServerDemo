<%--
  Created by IntelliJ IDEA.
  User: Janti
  Date: 27-10-2021
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 style="background-color:DodgerBlue;">
Her kan du se oversigten over din kurv
</h2>
<br>
<div class="-summary">
<c:forEach items="${applicationScope.kurv}" var="bund">
    ${bund}
    <br>
</c:forEach> </div>
</body>
</html>
