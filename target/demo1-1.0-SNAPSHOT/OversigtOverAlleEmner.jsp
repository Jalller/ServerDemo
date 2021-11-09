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
Her kan du få oversigten over alle emner
<br>
<c:forEach items="${applicationScope.kurv}" var="bund">
    ${bund}
    <br>
</c:forEach>
</body>
</html>
