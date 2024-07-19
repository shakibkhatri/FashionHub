<%-- 
    Document   : AdminRegister
    Created on : 07-Jul-2024, 7:24:01 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Register</title>
</head>
<body>
    <h1>Create Account</h1>
    <form action="AdminRegistrationAction.jsp" method="post">
        <label for="Name">Username:</label>
        <input type="text" name="Name"><br>
        <label for="Email">Email:</label>
        <input type="email" name="Email"><br>
         <label for="Number">Mobile Number:</label>
        <input type="number" name="Number" ><br>  
       <label for="password">Password:</label>
        <input type="text"  name="password"><br>
        <button type="submit" value="Create new user">Register</button>
    </form>
</body>
</html>
