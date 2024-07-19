<%-- 
    Document   : productDetails
    Created on : 23-June-2024, 8:26:10 pm
    Author     : Shakib Khatri
--%>
<%@page import="org.hibernate.Query"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>

    <form method="get" action="productDetails.jsp">
        <label for="category">Search by Category:</label>
        <input type="text" id="category" name="category" value="<%= request.getParameter("category") != null ? request.getParameter("category") : "" %>">
        <input type="submit" value="Search">
    </form>

    <%
        String category = request.getParameter("category");
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        List<Products> productsList;

        if (category != null && !category.isEmpty()) {
            String hql = "FROM Products P WHERE P.category = :category";
            Query query = hibSession.createQuery(hql);
            query.setParameter("category", category);
            productsList = query.list();
        } else {
            String hql = "FROM Products";
            Query query = hibSession.createQuery(hql);
            productsList = query.list();
        }

        hibSession.close();
    %>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price €</th>
            <th>Category</th>
        </tr>
        <%
            for (Products product : productsList) {
        %>
        <tr>
            <td><%= product.getProductId() %></td>
            <td><%= product.getProductName() %></td>
            <td><%= product.getProductDescription() %></td>
            <td><%= product.getPrice() %></td>
            <td><%= product.getCategory() %></td>
        </tr>
        <%
            }
        %>
    </table>
    
    <a href="addProduct.jsp">Add more Products</a> |
    <a href="adminDashBoard.jsp">DashBoard</a>
</body>
</html>









