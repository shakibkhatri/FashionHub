<%-- 
    Document   : login
    Created on : 23-May-2024, 8:25:01 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <body>
        
         <!--<a href="http://localhost:8080/FashionHub/">Homepage</a> /-->
        <!--<a href="http://localhost:8080/FashionHub/login.jsp">Login</a> /-->
        
        <h1>User Login</h1>
        <form action="loginAction.jsp" method="post">
        <label for="email">Email:</label>
        <input type="text" name="email" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        <button type="submit">Login</button>
    </form>
    </body>
</html>

