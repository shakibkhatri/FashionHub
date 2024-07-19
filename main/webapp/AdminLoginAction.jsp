
<%--
    Document   : AdminLoginAction
    Created on : 07-Jul-2024, 5:59:04 pm
    Author     : Shakib Khatri
--%>

<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="com.mycompany.model.AdminUser"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = request.getParameter("Email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        String hql = "FROM AdminUser U WHERE U.Email = :Email AND U.Password = :password";
        Query query = hibSession.createQuery(hql);
        query.setString("Email", email);
        query.setString("password", password);
        

        AdminUser Auser = (AdminUser) query.uniqueResult();
        hibSession.getTransaction().commit();
        hibSession.close();

        if (Auser != null) {
            session.setAttribute("Auser", Auser);
            response.sendRedirect("adminDashBoard.jsp");
        } else {
            out.println("Invalid email or password. Please try again.");
        }
    } else {
        out.println("Please provide both email and password.");
    }
%>













