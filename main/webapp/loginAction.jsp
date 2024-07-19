<%-- 
    Document   : loginAction
    Created on : 30-May-2024, 8:25:12 pm
    Author     : Shakib Khatri
--%>


<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="com.mycompany.model.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        String hql = "FROM User U WHERE U.Email = :email AND U.Password = :password";
        Query query = hibSession.createQuery(hql);
        query.setString("email", email);
        query.setString("password", password);

        User user = (User) query.uniqueResult();
        hibSession.getTransaction().commit();
        hibSession.close();

        if (user != null) {
            session.setAttribute("user", user);
            response.sendRedirect("customerDashBoard.jsp");
        } else {
            out.println("Invalid email or password. Please try again.");
        }
    } else {
        out.println("Please provide both email and password.");
    }
%>





