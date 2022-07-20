/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import DAO.DoctorDAO;
import DAO.ServiceDAO;
import DAO.UserDAO;
import Model.Account.Doctor;
import Model.Account.User;
import Model.Service.ServiceType;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class DoctorController extends HttpServlet {

    final String profileJsp = "frontend/jsp/homepage/doctor.jsp";

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
            throws ServletException, IOException, Exception {
        HttpSession session = request.getSession();
        User account = (User) session.getAttribute("account");
        UserDAO userDAO = new UserDAO();
        User user = null;
        try {
            user = userDAO.getUser(account.getEmail());
        } catch (Exception ex) {
            Logger.getLogger(DoctorController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("account", user);

        DoctorDAO doctorDao = new DoctorDAO();
        ServiceDAO serviceDao = new ServiceDAO();
        ArrayList<ServiceType> serviceTypeList = serviceDao.listServiceType();

        String typeId_raw = request.getParameter("tId");
        int typeId = (typeId_raw == null || typeId_raw.equals(""))
                ? 0 : Integer.parseInt(typeId_raw);
        ArrayList<Doctor> doctorList = doctorDao.getDoctorByServiceTypeActive(typeId);

        request.setAttribute("serviceTypeList", serviceTypeList);
        request.setAttribute("doctorList", doctorList);
        request.setAttribute("tId", typeId);
        request.getRequestDispatcher(profileJsp).forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(DoctorController.class.getName()).log(Level.SEVERE, null, ex);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(DoctorController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
