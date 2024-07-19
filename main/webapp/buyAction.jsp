<%-- 
    Document   : buyAction
    Created on : 30-May-2024, 8:23:27 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Product</title>
</head>
<body>
    <header>
        <h1>Buy Product</h1>
    </header>
    <main>
        <section>
            <h2>Product Name</h2>
            <img src="product_image.jpg" alt="Product Image" style="width:300px;height:auto;">
            <p>Description: This is a detailed description of the product, highlighting its features, benefits, and specifications.</p>
            <p>Price: € 100.00</p>
            <p>Available Quantity: 10</p>
        </section>
        <section>
            <h3>Purchase This Product</h3>
            <form action="Cart.jsp" method="post">
                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" min="1" max="10" value="1">
                <input type="hidden" name="product_id" value="12345">
                <button type="submit">Buy Now</button>
            </form>
        </section>
    </main>
</body>
</html>
