/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.User;

import DAO.UserDAO;
import Model.Account.User;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class EditCustomerController extends HttpServlet {
    final String profileJsp = "../frontend/jsp/user/editCustomer.jsp";


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
        UserDAO userDAO = new UserDAO();
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);

        try {
            String email = request.getParameter("email");
            User customer = userDAO.getCustomerByEmail(email);
            request.setAttribute("customer", customer);
            request.getRequestDispatcher(profileJsp).forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CustomerDetailsController.class.getName()).log(Level.SEVERE, null, ex);
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
        UserDAO userDAO = new UserDAO();
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);
        try {
            String email = request.getParameter("email");
            String raw_status = request.getParameter("status");
            boolean status = raw_status.equals("on");
            userDAO.updateCustomer(email,status);
            
            response.sendRedirect("customerdetails?email="+email+"");
        } catch (Exception ex) {
            Logger.getLogger(EditCustomerController.class.getName()).log(Level.SEVERE, null, ex);
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
