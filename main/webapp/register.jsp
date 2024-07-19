<%-- 
    Document   : register
    Created on : 23-May-2024, 8:26:28 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Create Account</h1>
    <form action="registrationAction.jsp" method="post">
        <label for="name">Username:</label>
        <input type="text" name="name"><br>
        <label for="email">Email:</label>
        <input type="email" name="email"><br>
         <label for="Number">Mobile Number:</label>
        <input type="number" name="Number" ><br>  
       <label for="password">Password:</label>
        <input type="text"  name="password"><br>
        <label for="address">Address:</label>
        <input type="text" name="address"><br>
         <label for="city">City:</label>
        <input type="text"  name="city"><br>
         <label for="state">State</label>
        <input type="text" name="state"><br>
         <label for="country">Country</label>
        <input type="text" name="country"><br>
        <button type="submit" value="Create new user">Register</button>
    </form>
</body>
</html>
