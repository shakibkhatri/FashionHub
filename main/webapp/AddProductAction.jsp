<%-- 
    Document   : AddProductAction
    Created on : 07-Jul-2024, 9:37:28 pm
    Author     : Shakib Khatri
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="com.mycompany.model.Products" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="java.io.PrintWriter" %>

<%
    // Set content type
    response.setContentType("text/html;charset=UTF-8");

    // Retrieve form parameters
    String productName = request.getParameter("productName");
    String productDescription = request.getParameter("productDescription");
    double price = 0;
    String category = request.getParameter("category");

    // Validation
    boolean validInput = true;
    if (productName == null || productName.isEmpty() || category == null || category.isEmpty()) {
        validInput = false;
    }

    try {
        price = Double.parseDouble(request.getParameter("price"));
        if (price <= 0) {
            validInput = false;
        }
    } catch (NumberFormatException e) {
        validInput = false;
    }

    // Persist the product to the database
    if (validInput) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = hibSession.beginTransaction();

        try {
            // Create a new Products instance using the constructor
            Products product = new Products(productName, price, productDescription, category);

            hibSession.save(product);
            transaction.commit();

            out.println("Product added successfully!");
            response.sendRedirect("productDetails.jsp"); 
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
            out.println("An error occurred while adding the product.");
        } finally {
            hibSession.close();
        }
    } else {
        out.println("Please provide valid product details.");
    }
%>
