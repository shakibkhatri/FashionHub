<%-- 
    Document   : account
    Created on : 23-May-2024, 8:21:29 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
</head>
<body>
    <header>
        <div class="container">
            <h1>Fashion Hub</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="user-profile">
        <div class="container">
            <h2>User Profile</h2>
            <div class="profile-details">
                <p><strong>Username:</strong> Shakib Khatri</p>
                <p><strong>Email:</strong> shakibkhatri@gmail.com</p>
                <p><strong>Address:</strong> Febrik Saale 26 Hof, Germany</p>
                <p><strong>Phone:</strong> +91 15510238356</p>
            </div>
            <div class="profile-actions">
                <a href="edit_profile.jsp" class="edit-profile-btn">Edit Profile</a>
                <a href="change_password.jsp" class="change-password-btn">Change Password</a>
                <a href="logout.html" class="logout-btn">Logout</a>
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