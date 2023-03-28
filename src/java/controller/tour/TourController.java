/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.tour;

import entity.Tour_category;
import entity.Tour;
import dao.TourDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//@WebServlet(name = "TourController", urlPatterns = {"/tourcontroller"})
public class TourController extends HttpServlet {

    /**
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        TourDBContext u = new TourDBContext();          
        List<Tour> lstTour =u.getAllTour();        
        List<Tour_category> lstTourCate=u.listCategory();
        request.setAttribute("lstTourCate", lstTourCate);
        request.setAttribute("lstTour", lstTour);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    
}
