<%-- 
    Document   : checkout
    Created on : 23-May-2024, 8:24:03 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body>
    <header>
        <div class="container">
            <h1>FashionHub</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                   
                    <li><a href="Cart.jsp">Cart</a></li>
                    <li><a href="account.jsp"></a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="checkout">
        <div class="container">
            <h2>Checkout</h2>
            <div class="checkout-items">
                <!-- Checkout items-->
                <!-- Example item:!-->
                <div class="checkout-item">
                    <img src="product1.jpg" alt="Product 1">
                    <h3>Product 1</h3>
                    <p>? </p>
                </div>
                
            </div>
            <div class="checkout-total">
                <h3>Total:</h3>
                <p>? </p>
            </div>
            <h2>Payment Methods</h2>
            <div class="payment-methods">
                <label>
                    <input type="radio" name="payment" value="credit-card">
                    Credit Card
                </label>
                <label>
                    <input type="radio" name="payment" value="online-payment">
                    Online Payment
                </label>
            </div>
            <div class="credit-card-details">
                <h3>Credit Card Details</h3>
                <!-- Credit card form fields -->
            </div>
            <button class="purchase-btn">Confirm Purchase</button>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 FashionHub. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
