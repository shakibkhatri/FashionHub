<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Purchase Confirmation</title>
</head>
<body>
    <h2>Purchase Confirmation</h2>
    <%
        String productIdStr = request.getParameter("productId");
        Long productId = Long.parseLong(productIdStr);

        // Here you can handle the purchase logic, e.g., deduct inventory, create an order, etc.
        // For simplicity, we are just displaying a confirmation message.
    %>
    <p>Thank you for your purchase! Your order for product ID <%= productId %> has been confirmed.</p>
    <a href="browse.jsp">Browse More Products</a> 
</body>
</html>
