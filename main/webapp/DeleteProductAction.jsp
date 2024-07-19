<%-- 
    Document   : DeleteProductAction
    Created on : 08-Jul-2024, 2:24:47 am
    Author     : Shakib Khatri
--%>

<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
</head>
<body>
    <h2>Delete Product</h2>
    
    
    <% String productIdParam = request.getParameter("id"); %>
    
 
    <% Long productId = null; %>
    <% String errorMessage = null; %>
    <% try { %>
        <% productId = Long.parseLong(productIdParam); %>
    <% } catch (NumberFormatException e) { %>
        <% errorMessage = "Invalid product ID: " + productIdParam; %>
    <% } %>
    
    <% if (errorMessage != null) { %>
        <p><%= errorMessage %></p>
        <a href="browse.jsp">Go Back</a>
    <% } else { %>
  
        <% Session hibSession = HibernateUtil.getSessionFactory().openSession(); %>
        <% Transaction tx = null; %>
        
        <% try { %>
            <% tx = hibSession.beginTransaction(); %>
            <% Products product = (Products) hibSession.get(Products.class, productId); %>
            
            <% if (product != null) { %>
                <% hibSession.delete(product); %>
                <p>Product with ID <%= productId %> deleted successfully.</p>
            <% } else { %>
                <p>Product with ID <%= productId %> not found.</p>
            <% } %>
            
            <% tx.commit(); %>
        <% } catch (Exception e) { %>
            <% if (tx != null) tx.rollback(); %>
            <p>Error deleting product: <%= e.getMessage() %></p>
        <% } finally { %>
            <% hibSession.close(); %>
        <% } %>
        
        <a href="productDetails.jsp">Go Back to Product List</a>
    <% } %>
</body>
</html>


