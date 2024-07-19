<%-- 
    Document   : Cart
    Created on : 23-May-2024, 8:23:38 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart - Fashion Hub</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Fashion Hub</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    
                    <li><a href="account.jsp">Account</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="cart">
        <div class="container">
            <h2>Your Shopping Cart</h2>
            <div class="cart-items">
                <!-- Cart items !-->
                <!-- Example item: !-->
                <div class="cart-item">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 1</h3>
                    <p>? </p>
                    <button class="delete-btn">Delete</button>
                </div>
                
            </div>
            <div class="cart-actions">
                <button  class="purchase-btn"><a href = "checkout.jsp">Purchase</button>
                <button class="delete-btn">Drop Item</button>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 FashionHub. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
