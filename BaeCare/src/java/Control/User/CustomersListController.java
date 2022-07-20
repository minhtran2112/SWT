/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.User;

import Control.Login.AccountAuthentication;
import DAO.UserDAO;
import Model.Account.User;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
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
public class CustomersListController extends AccountAuthentication {

    final String profileJsp = "../frontend/jsp/user/customersList.jsp";

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
            Logger.getLogger(CustomersListController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("account", user);

        String raw_gender = request.getParameter("gender");
        if (raw_gender == null) {
            raw_gender = "both";
        }
        String raw_status = request.getParameter("status");
        if (raw_status == null) {
            raw_status = "both";
        }

        Boolean gender = (raw_gender.equals("both"))
                ? null : (raw_gender.equals("male"));

        Boolean status = (raw_status.equals("both"))
                ? null : (raw_status.equals("on"));

        request.setAttribute("gender", raw_gender);
        request.setAttribute("status", raw_status);

        ArrayList<User> listCustomer = userDAO.getAllCustomer(gender, status);
        request.setAttribute("listCustomer", listCustomer);

        request.getRequestDispatcher(profileJsp).forward(request, response);

    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CustomersListController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CustomersListController.class.getName()).log(Level.SEVERE, null, ex);
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
