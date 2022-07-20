/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.cart;

import Control.Login.AccountAuthentication;

import DAO.CartDAO;
import DAO.ServiceDAO;

import Model.Account.User;
import Model.Service.Service;
import Model.Order.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;


/**
 *
 * @author nhiep
 */
public class AddServiceToCart extends AccountAuthentication {

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
            out.println("<title>Servlet addCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addCart at " + request.getContextPath() + "</h1>");
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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String serviceID = request.getParameter("sId");
        String path = "servicedetail?sId=" + serviceID;
        String msg;
        if (request.getSession().getAttribute("account") == null) {
            msg = "Please login to add to cart";
            request.setAttribute("msg", msg);

            request.getRequestDispatcher("login").forward(request, response);
        } else {

            Service serviceAddToCart = new ServiceDAO().getServiceByID(Integer.parseInt(serviceID));

            String raw_dateExam = request.getParameter("dateExam");
            System.out.println(raw_dateExam);
            Date dateExam = Date.valueOf(raw_dateExam);            
            System.out.println(dateExam);
            ZoneId zid = ZoneId.of("Asia/Ho_Chi_Minh");
            LocalDate ld = LocalDate.now(zid);
            Date dateAddCart = Date.valueOf(ld);
            
            
            Cart addToCart = new Cart();
            addToCart.setUser((User) request.getSession().getAttribute("account"));
            addToCart.setDateExam(dateExam);
            addToCart.setService(serviceAddToCart);
            addToCart.setAddCartDate(dateAddCart);

            CartDAO cart = new CartDAO();

            cart.insertToServiceCart(addToCart);

            request.getRequestDispatcher("Reservation").forward(request, response);

        }
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
