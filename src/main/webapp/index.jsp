<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online huskeseddler</title>
    <style> h1 {color:darkblue;}</style>
</head>
<body>
<h1>
</h1>
<br/>

<!DOCTYPE html>
<html>
<body>
<h2>****</h2> //over-overskrift
<header>
<img src="Users\Bruger\OneDrive\Skrivebord" class="img-fluid" alt="...">
<img src="img_unavngivet.jpg" alt="Italian Trulli">
<img src="https://www.bing.com/images/search?view=detailV2&ccid=sSmKu1Y2&id=0F6E946D950D6A2E0EA4574FCBE832F8B9446D74&thid=OIP.sSmKu1Y2SX1jbL2-EvNE6AHaFj&mediaurl=https%3a%2f%2fwww.notebookcheck-ru.com%2fuploads%2ftx_nbc2%2f4_zu_3_Teaser_Google_Pixel_5.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.b1298abb5636497d636cbdbe12f344e8%3frik%3ddG1Eufgy6MtPVw%26pid%3dImgRaw%26r%3d0&exph=1440&expw=1920&q=google&simid=607988200437529386&FORM=IRPRST&ck=C720584F88CE2E13B19AC647494E6283&selectedIndex=0&ajaxhist=0&ajaxserp=0" alt="Italian Trulli">
</header>
    <h1>Velkommen ombord</h1>
${requestScope.msg}
<br>
<br>
Her kan du oprette en bruger

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