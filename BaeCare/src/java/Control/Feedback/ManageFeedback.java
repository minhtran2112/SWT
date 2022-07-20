/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Feedback;

import Control.Login.AccountAuthentication;
import DAO.FeedbackDao;
import DAO.ServiceDAO;
import Model.Account.User;
import Model.Feedback.Feedback;
import Model.Service.Service;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class ManageFeedback extends AccountAuthentication {

    final String ManagerFeedback = "../frontend/jsp/feedback/mlist.jsp";

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        FeedbackDao fd = new FeedbackDao();
        ServiceDAO sdao = new ServiceDAO();
        ArrayList<Service> listService = sdao.getListService();

        // get search data from jsp
        String name_raw = request.getParameter("searchname");
        String status_raw = request.getParameter("status");
        String service_raw = request.getParameter("service");
        String star_raw = request.getParameter("star");
        String sort = request.getParameter("sort");
        String sorttype = request.getParameter("sorttype");
        
        // validate

        name_raw = (name_raw == null || name_raw.length() == 0) ? "" : name_raw;
        status_raw = (status_raw == null || status_raw.length() == 0) ? "-1" : status_raw;
        service_raw = (service_raw == null || service_raw.length() == 0) ? "0" : service_raw;
        star_raw = (star_raw == null || star_raw.length() == 0) ? "-1" : star_raw;
        sort = (sort == null || sort.length() == 0) ? "-1" : sort;
        
        
        String name = URLDecoder.decode(name_raw, "UTF-8");
        int status = Integer.parseInt(status_raw);
        int sid = Integer.parseInt(service_raw);
        int star = Integer.parseInt(star_raw);
        
        ArrayList<Feedback> list = fd.searchFeedback(name, star, sid, status, sort, sorttype);

        
        // send data to jsp
        request.setAttribute("orderby", sort);
        request.setAttribute("sid", sid);
        request.setAttribute("star", star);
        request.setAttribute("status", status);
        request.setAttribute("name", name);
        
        request.setAttribute("list", list);
        request.setAttribute("listService", listService);
        request.getRequestDispatcher(ManagerFeedback).forward(request, response);

    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession hs = request.getSession();
        User acc = (User) hs.getAttribute("account");
        if (acc.getEmail() != null && acc.isStatus() != false && acc.getRole().getId() <= 2) {
            processRequest(request, response);
        } else {
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
        processRequest(request, response);
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
