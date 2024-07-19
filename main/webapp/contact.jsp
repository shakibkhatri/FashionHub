<%-- 
    Document   : contact
    Created on : 23-May-2024, 8:24:15 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Seller</title>
</head>
<body>
    <header>
        <h1>Contact Seller</h1>
    </header>
    <main>
        <form action="send_message.php" method="post">
            <textarea name="message" placeholder="Type your message here"></textarea>
            <button type="submit">Send Message</button>
        </form>
    </main>
    </body>
