/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Reservation;

import Control.Login.AccountAuthentication;
import DAO.CartDAO;
import DAO.ServiceDAO;
import Model.Account.User;

import Model.Order.Cart;
import java.io.IOException;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tkoko
 */
public class ReservationContactController extends AccountAuthentication {

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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User loggedIn = (User) session.getAttribute("account");
        
        String[] sid = request.getParameterValues("serviceSelect");
        List<Cart> listToOrder = new ArrayList<>();
        for (String sid1 : sid) {
            
                
            Cart sc = new CartDAO().getCartItem(Integer.parseInt(sid1));
          
           
            listToOrder.add(sc);
        }

        request.setAttribute("listToOrder", listToOrder);
        request.getRequestDispatcher("../frontend/jsp/reservationDetails/reservationContact.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
