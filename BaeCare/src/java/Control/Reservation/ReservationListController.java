/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Reservation;

import Control.Login.AccountAuthentication;
import DAO.OrderDAO;
import Model.Order.Order;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 *
 * @author tkoko
 */
public class ReservationListController extends AccountAuthentication {

    final String path = "../frontend/jsp/reservationDetails/reservationList.jsp";

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO odao = new OrderDAO();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String search = "";
        //status ALL
        int status = -1;
        //time from today
        String from = dtf.format(now);
        //time to today + 7
        String to = dtf.format(now.plusDays(7));
        if (request.getParameter("status") != null) {
            status = Integer.parseInt(request.getParameter("status"));
        }
        if (request.getParameter("from") != null) {
            from = request.getParameter("from");
        }
        if (request.getParameter("to") != null) {
            to = request.getParameter("to");
        }
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
        ArrayList<Order> searchOrder = odao.searchOrder(status, from, to, search);
        request.setAttribute("orders", searchOrder);
        request.setAttribute("from", from);
        request.setAttribute("to", to);
        request.setAttribute("search", search);
        request.setAttribute("status", status);
        if (request.getParameter("notice") != null) {
            request.setAttribute("notice", true);
        }
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int oid = Integer.parseInt(request.getParameter("idUpdateStatus"));
        String status = request.getParameter("status");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String search = "";
        if(request.getParameter("search")!=null){
            search = request.getParameter("search");
        }
        OrderDAO oDao = new OrderDAO();
        String path = "list?status="+status+"&from="+from+"&to="+to+"&search="+search;
        //update status order
        if (oDao.checkOrderComplite(oid)) {
            oDao.updateStatus(oid);
            response.sendRedirect(path);
        } else {
            path+="&notice=true";
            response.sendRedirect(path);
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
