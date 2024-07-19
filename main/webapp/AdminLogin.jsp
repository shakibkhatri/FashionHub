<%-- 
    Document   : AdminLogin
    Created on : 07-Jul-2024, 5:57:54 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
</head>
<body>
    <h1>Admin Login</h1>
    <form action="AdminLoginAction.jsp" method="post">
        <label for="Email">Email:</label>
        <input type="email" name="Email"><br>
        <label for="password">Password:</label>
        <input type="password" name="password"><br>
        <button type="submit">Login</button>
    </form>
</body>
</html>

