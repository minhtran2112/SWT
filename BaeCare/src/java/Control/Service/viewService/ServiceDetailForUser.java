/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Service.viewService;


import DAO.FeedbackDao;
import DAO.ServiceDAO;
import Model.Account.Doctor;

import Model.Feedback.Feedback;
import Model.Service.Service;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nghia
 */
public class ServiceDetailForUser extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServiceDetailForUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServiceDetailForUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid_raw = request.getParameter("sId");
        int sid = Integer.parseInt(sid_raw);
        Service s = new ServiceDAO().getServiceByID(sid);
        //lay list feedback of service
        String star_raw = request.getParameter("star");
        int star = -1;
        if (star_raw != null) {
            star = Integer.parseInt(star_raw);
        }
        request.setAttribute("filStar", star);
        FeedbackDao feedbackDao = new FeedbackDao();

        ArrayList<Feedback> listFeedbackBySid = feedbackDao.getListFeedbackBySidAndStar(sid, star);
        int serviceTypeId = s.getSt().getT_id();
        List<Doctor> doctorList = new ServiceDAO().getAllDoctorOfService(serviceTypeId);
        String test = "";
        request.setAttribute("test", test);
        request.setAttribute("doctorList", doctorList);
        request.setAttribute("service", s);
        request.setAttribute("listFeedbacks", listFeedbackBySid);
        String path = "frontend/jsp/service/serviceDetail.jsp";
        request.getRequestDispatcher(path).forward(request, response);

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
