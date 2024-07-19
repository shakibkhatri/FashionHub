<%-- 
    Document   : loginInfo
    Created on : 23-May-2024, 8:51:42 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.model.User" %>

<body>    
   
<%
    // Extract User object from request parameters
    User usr = (User) Utility.extractObjectFromRequest(User.class, request);
%>

<p>User ID: <%= usr.getUsername()%></p>
<p>Password: <%= usr.getPassword()%></p>

</body>
