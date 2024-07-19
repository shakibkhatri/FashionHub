<%-- 
    Document   : addProduct
    Created on : 23-May-2024, 8:21:46 pm
    Author     : Shakib Khatri
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Product</title>
</head>
<body>
    <h2>Add New Product</h2>
    <form action="AddProductAction.jsp" method="post">
        <label for="productName">Product Name:</label>
        <input type="text" name="productName" required><br>
        <label for="productDescription">Description:</label>
        <textarea name="productDescription"></textarea><br>
        <label for="price">Price (€):</label>
        <input type="number" name="price" step="0.01" required><br>
        <label for="category">Category: </label>
        <input type="text" name="category"><br>
        <input type="submit" value="Add Product">
    </form>
    
    <a href="productDetails.jsp">Product Details</a> 
</body>
</html> 
