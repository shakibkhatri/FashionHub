<%-- 
    Document   : registrationAction
    Created on : 07-Jul-2024, 3:30:39 pm
    Author     : Shakib Khatri
--%>

<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="com.mycompany.model.User"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     // write user to database
    String Name= request.getParameter("name");
    String email = request.getParameter("email");
    String number = request.getParameter("Number");
    String password = request.getParameter("password");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String country = request.getParameter("country");
    

    if (Name != null && email != null && number != null && password != null && address != null && city != null && state != null && country != null){
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        User user = new User(Name, email, number, password, address, city, state, country);
        hibSession.save(user);

        hibSession.getTransaction().commit();
        hibSession.close();

    out.println("User saved successfully!");
    session.removeAttribute("user");
    response.sendRedirect("/FashionHub/login.jsp");
    
    }else {
        out.println("Please provide all required fields.");
}
    

%>
