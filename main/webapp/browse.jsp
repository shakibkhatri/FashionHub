
<%-- 
    Document   : addProduct
    Created on : 23-June-2024, 8:21:46 pm
    Author     : Shakib Khatri
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>Product List</h2>
    <a href="customerDashBoard.jsp">DashBoard</a>

    <form method="get" action="browse.jsp">
        <label for="category">Search by Category:</label>
        <input type="text" id="category" name="category" value="${param.category}">
        <input type="submit" value="Search">
    </form>

    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%-- Retrieve products based on search criteria --%>
            <%
                String category = request.getParameter("category");
                List<Products> productsList = null;
                Session hibSession = null;
                try {
                    hibSession = HibernateUtil.getSessionFactory().openSession();
                    hibSession.beginTransaction();

                    String hql = "FROM Products";
                    if (category != null && !category.isEmpty()) {
                        hql += " WHERE category LIKE :category";
                    }
                    org.hibernate.Query query = hibSession.createQuery(hql);
                    if (category != null && !category.isEmpty()) {
                        query.setParameter("category", "%" + category + "%");
                    }
                    productsList = query.list();

                    hibSession.getTransaction().commit();
                } catch (Exception e) {
                    if (hibSession != null && hibSession.getTransaction() != null) {
                        hibSession.getTransaction().rollback();
                    }
                    e.printStackTrace();
                } finally {
                    if (hibSession != null) {
                        hibSession.close();
                    }
                }
                request.setAttribute("productsList", productsList);
            %>

            <c:forEach var="product" items="${productsList}">
                <tr>
                    <td>${product.productName}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.price}</td>
                    <td>${product.category}</td>
                    <td>
                        <form action="buyProduct.jsp" method="post">
                            <input type="hidden" name="productId" value="${product.productId}">
                            <input type="submit" value="Buy">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
