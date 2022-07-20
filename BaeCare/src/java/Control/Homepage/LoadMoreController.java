/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import DAO.DoctorDAO;
import DAO.ServiceDAO;
import Model.Account.Doctor;
import Model.Service.ServiceType;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Asus
 */
public class LoadMoreController extends HttpServlet {

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

        String search = request.getParameter("search");
        String row_amount = request.getParameter("exits");
        int amount = Integer.parseInt(row_amount);

        DoctorDAO doctorDao = new DoctorDAO();

        String typeId_raw = request.getParameter("doctor");
        int typeId = (typeId_raw == null || typeId_raw.equals(""))
                ? 0 : Integer.parseInt(typeId_raw);
        
        ArrayList<Doctor> doctorList = doctorDao.getNext6Doctor(typeId, amount, search);
        PrintWriter out = response.getWriter();

        for (Doctor doctor : doctorList) {
            out.println("<div class=\"doctor col-lg-4 wow\">\n"
                    + "                                    <div class=\"team-item\">\n"
                    + "                                        <div class=\"position-relative rounded-top\" style=\"z-index: 1;\">\n"
                    + "                                            <img class=\"img-fluid rounded-top w-100\" src=\"" + doctor.getUser().getPhoto() + "\" alt=\"Doctor_Photo\">\n"
                    + "                                            <div class=\"position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex\">\n"
                    + "                                                <a class=\"btn btn-primary btn-square m-1\" href=\"" + doctor.getTwitter() + "\"><i class=\"fab fa-twitter fw-normal\"></i></a>\n"
                    + "                                                <a class=\"btn btn-primary btn-square m-1\" href=\"" + doctor.getFacebook() + "\"><i class=\"fab fa-facebook-f fw-normal\"></i></a>\n"
                    + "                                                <a class=\"btn btn-primary btn-square m-1\" href=\"" + doctor.getLinkedin() + "\"><i class=\"fab fa-linkedin-in fw-normal\"></i></a>\n"
                    + "                                                <a class=\"btn btn-primary btn-square m-1\" href=\"" + doctor.getInstagram() + "\"><i class=\"fab fa-instagram fw-normal\"></i></a>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"team-text position-relative bg-light text-center rounded-bottom p-4 pt-5\">\n"
                    + "                                            <h4 class=\"mb-2\"> \n"
                    + "                                                <a href=\"doctorDetail?email=" + doctor.getUser().getEmail() + "\">Dr. " + doctor.getUser().getName() + "</a>\n"
                    + "                                            </h4>\n"
                    + "                                            <p class=\"text-primary mb-0\">\n"
                    + "                                                <a href=\"doctorDetail?email=" + doctor.getUser().getEmail() + "\">" + doctor.getServiceType().getT_name() + "</a>\n"
                    + "                                            </p>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
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
