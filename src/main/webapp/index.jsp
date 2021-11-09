<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online huskeseddler</title>
</head>
<body>
<h1>
</h1>
<br/>

<!DOCTYPE html>
<html>
<body>
<h2>****</h2> //over-overskrift
<img src="Users\Bruger\OneDrive\Skrivebord" class="img-fluid" alt="...">
<h1>Velkommen til online huskeseddler</h1>
${requestScope.msg}
<br>
<br>
Her kan du oprette en bruger
//gem brugere
//lav alt engelsk eller dansk
//bootstrap
//sets
<br>
<br>

<form action="hello-servlet",method = "get">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname" value="John"><br>

    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname" value="Doe"><br>
    <br>
    <br>
    <label for="password">Password:</label><br>
    <input type="text" id="password" name="password" value=""><br>
    <label for="repeatpassword">Repeat password:</label><br>
    <input type="text" id="repeatpassword" name="repeatpassword" value=""><br><br>
    <input type="submit" value="Submit">
</form>
<p>If you click the "Submit" button, the form-data will be sent to a page called "/action_page.php".</p>

</body>
</html>

<a href="hello-servlet">Hello Servlet</a>
</body>
</html>