<%-- 
    Document   : addProductAction
    Created on : 23-May-2024, 8:22:12 pm
    Author     : Shakib Khatri
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Query" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
    <h2>Delete Product</h2>
        <a href="productDetails.jsp">Product Details</a> 
    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Category</th>
            <th>Action</th>
        </tr>
        <% 
            Session hibSession = HibernateUtil.getSessionFactory().openSession();
            try {
                String hql = "FROM Products";
                Query query = hibSession.createQuery(hql);
                List<Products> productList = query.list(); 

                for (Products product : productList) {
        %>
                    <tr>
                        <td><%= product.getProductId() %></td>
                        <td><%= product.getProductName() %></td>
                        <td><%= product.getProductDescription() %></td>
                        <td><%= product.getPrice() %></td>
                        <td><%= product.getCategory() %></td>
                        <td><a href="DeleteProductAction.jsp?id=<%= product.getProductId() %>">Delete</a></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                out.println("Error fetching products: " + e.getMessage());
            } finally {
                hibSession.close();
            }
        %>
    </table>
</body>
</html>


