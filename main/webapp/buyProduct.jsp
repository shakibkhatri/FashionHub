<%-- 
    Document   : buy
    Created on : 23-May-2024, 8:23:12 pm
    Author     : Shakib Khatri
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page import="org.hibernate.Session" %>

<html>
<head>
    <title>Buy Product</title>
</head>
<body>
    <h2>Buy Product</h2>
    <%
        String productIdStr = request.getParameter("productId");
        Long productId = Long.parseLong(productIdStr);

        Session hibSession = null;
        Products product = null;
        try {
            hibSession = HibernateUtil.getSessionFactory().openSession();
            hibSession.beginTransaction();

            // Fetch the product from the database
            product = (Products) hibSession.get(Products.class, productId);

            hibSession.getTransaction().commit();
        } catch (Exception e) {
            if (hibSession != null) {
                hibSession.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (hibSession != null) {
                hibSession.close();
            }
        }

        if (product != null) {
    %>
        <p>Product Name: <%= product.getProductName() %></p>
        <p>Description: <%= product.getProductDescription() %></p>
        <p>Price: <%= product.getPrice() %></p>
        <p>Category: <%= product.getCategory() %></p>
        <form action="confirmPurchase.jsp" method="post">
            <input type="hidden" name="productId" value="<%= productId %>">
            <input type="submit" value="Confirm Purchase">
        </form>
    <%
        } else {
            out.println("Product not found.");
        }
    %>
</body>
</html>

