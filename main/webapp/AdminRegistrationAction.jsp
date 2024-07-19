<%-- 
    Document   : AdminRegistrationAction
    Created on : 07-Jul-2024, 7:25:03 pm
    Author     : Shakib Khatri
--%>

<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="com.mycompany.model.AdminUser"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     // write AdminUser to database
    String Name= request.getParameter("Name");
    String email = request.getParameter("Email");
    String number = request.getParameter("Number");
    String password = request.getParameter("password");
   
    if (Name != null && email != null && number != null && password != null){
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        AdminUser Auser = new AdminUser(Name, email, number, password);
        hibSession.save(Auser);

        hibSession.getTransaction().commit();
        hibSession.close();

    out.println("AdminUser saved successfully!");
    session.removeAttribute("AdminUser");
    response.sendRedirect("/FashionHub/AdminLogin.jsp");
    
    }else {
        out.println("Please provide all required fields.");
}
    

%>
