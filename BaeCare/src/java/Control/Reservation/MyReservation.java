/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Reservation;

import Control.Login.AccountAuthentication;
import Control.Login.RegexChecking;
import DAO.OrderDAO;
import DAO.UserDAO;
import Model.Account.User;
import Model.Order.Order;
import Model.Order.OrderDetail;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class MyReservation extends AccountAuthentication {

    final String myReservation = "../frontend/jsp/myreservation/list.jsp";

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
        HttpSession hs = request.getSession();
        User acc = (User) hs.getAttribute("account");
        UserDAO udao = new UserDAO();
        if (acc != null) {
            try {
                OrderDAO odao = new OrderDAO();
                ArrayList<Order> listOrder = odao.getListOrderByEmail(acc.getEmail());
                if (!listOrder.isEmpty()) {
                    if (!listOrder.get(0).getOrderDetail().isEmpty()) {
                        String sname = listOrder.get(0).getOrderDetail().get(0).getService().getSname();
                        Date checkoutDate = listOrder.get(0).getOrderDetail().get(0).getCheckoutDate();
                        boolean examStatus = listOrder.get(0).getOrderDetail().get(0).isExamStatus();
                        int size = listOrder.get(0).getOrderDetail().size() - 1;

                        request.setAttribute("examStatus", examStatus);
                        request.setAttribute("checkoutDate", checkoutDate);
                        request.setAttribute("sname", sname);
                        request.setAttribute("size", size);
                    }

                }
                User user = udao.getUser(acc.getEmail());
                request.setAttribute("user", user);
                request.setAttribute("listOrder", listOrder);
                request.getRequestDispatcher(myReservation).forward(request, response);
            } catch (Exception ex) {
                Logger.getLogger(MyReservation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            response.getWriter().println("Please login to access this feature");
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
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name_raw = request.getParameter("uname").trim();
        String gender_raw = request.getParameter("gender").trim();
        String email_raw = request.getParameter("email").trim();
        String phone_raw = request.getParameter("phone").trim();

        UserDAO udao = new UserDAO();
        RegexChecking valid = new RegexChecking();
        String notice = "";
        if (!valid.checkString(name_raw)) {
            notice += "name ";
        }
        if (!valid.checkPhone(phone_raw)) {
            notice += "phone ";
        }
        if (!notice.isEmpty()) {
            request.setAttribute("mess", "Update Fail!");
            try {
                request.setAttribute("user", udao.getUser(email_raw));
            } catch (Exception ex) {
                Logger.getLogger(MyReservation.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.getRequestDispatcher(myReservation).forward(request, response);
        } else {
            String name = name_raw;
            boolean gender = gender_raw.equals("Male");
            String phone = phone_raw;

            request.setAttribute("mess", "Update Successful!");
            try {
                request.setAttribute("user", udao.updateCusInfor(name, email_raw, phone, gender));
            } catch (Exception ex) {
                Logger.getLogger(MyReservation.class.getName()).log(Level.SEVERE, null, ex);
            }
            OrderDAO odao = new OrderDAO();
            ArrayList<Order> listOrder = odao.getListOrderByEmail(email_raw);
            if (!listOrder.isEmpty()) {
                if (!listOrder.get(0).getOrderDetail().isEmpty()) {
                    String sname = listOrder.get(0).getOrderDetail().get(0).getService().getSname();
                    Date checkoutDate = listOrder.get(0).getOrderDetail().get(0).getCheckoutDate();
                    boolean examStatus = listOrder.get(0).getOrderDetail().get(0).isExamStatus();
                    int size = listOrder.get(0).getOrderDetail().size() - 1;

                    request.setAttribute("examStatus", examStatus);
                    request.setAttribute("checkoutDate", checkoutDate);
                    request.setAttribute("sname", sname);
                    request.setAttribute("size", size);
                }

            }

            request.setAttribute("listOrder", listOrder);
            request.getRequestDispatcher(myReservation).forward(request, response);
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
