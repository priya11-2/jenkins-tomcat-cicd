<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Super Tomcat App</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>

<div class="container">
    <h1>🚀 Super Tomcat Application Running!</h1>
    <p>This is your JSP home page.</p>

    <h3>Current Time: <span id="time"></span></h3>

    <a href="hello" class="btn">Click for Heavy Servlet Output</a>
</div>

<script>
    document.getElementById("time").innerText = new Date().toLocaleString();
</script>

</body>
</html>
