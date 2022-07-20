/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Feedback;

import Control.Login.AccountAuthentication;
import DAO.FeedbackDao;
import Model.Account.User;
import Model.Feedback.Feedback;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class ManageDetail extends AccountAuthentication {
    final String ManageDetail = "../frontend/jsp/feedback/mdetail.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int fid = Integer.parseInt(request.getParameter("fid"));
        FeedbackDao fd = new FeedbackDao();
        Feedback feedback = fd.getFeedbackByIDForMaganer(fid);
        request.setAttribute("feedback", feedback);
        request.getRequestDispatcher(ManageDetail).forward(request, response);
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession hs = request.getSession();
        User acc = (User)hs.getAttribute("account");
        if (acc.getEmail() != null && acc.isStatus() != false && acc.getRole().getId() <= 2) {
            processRequest(request, response);
        } else{
            response.getWriter().println("Access Denied");
        }
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String status_raw= request.getParameter("status");
        String fid_raw = request.getParameter("fid");
        boolean status = ("true".equals(status_raw));
        int fid = Integer.parseInt(fid_raw);
        FeedbackDao fd = new FeedbackDao();
        fd.updateStatus(fid, status);
        response.sendRedirect("list");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
