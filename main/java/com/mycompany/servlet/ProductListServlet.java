/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.servlet;

import com.mycompany.hibernateUtil.HibernateUtil;
import com.mycompany.model.Products;
import org.hibernate.Session;
import org.hibernate.Query;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/browse")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        Query query = hibSession.createQuery("FROM Products");
        List<Products> productsList = query.list();

        hibSession.getTransaction().commit();
        hibSession.close();

        request.setAttribute("productsList", productsList);
        request.getRequestDispatcher("browse.jsp").forward(request, response);
    }
}


