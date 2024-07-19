<%-- 
    Document   : search
    Created on : 23-May-2024, 8:27:04 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Products</title>
</head>
<body>
    <h1>Search for Products</h1>
    <form action="/search" method="get">
        <label for="query">Search:</label>
        <input type="text" id="query" name="query"><br>
        <button type="submit">Search</button>
    </form>
    <div id="search-results">
        <!-- Search results will be displayed here -->
    </div>
</body>
</html>
