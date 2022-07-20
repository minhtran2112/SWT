/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Reservation;

import Control.Login.RegexChecking;
import DAO.OrderDAO;
import Model.Order.MedicalRecord;
import Model.Order.Order;
import Model.Order.OrderDetail;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author tkoko
 */
public class ReservationDetailController extends HttpServlet {
    final String path = "../frontend/jsp/reservationDetails/reservationDetailForReceptionist.jsp";
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
        String raw_id = request.getParameter("oid");
        RegexChecking check = new RegexChecking();
        int oid = -1;
        if(check.checkInteger(raw_id)){
            oid = Integer.parseInt(raw_id);
        }else{
            //send to list and display notice
            response.sendRedirect("list?noticeOid=true");
        }
        OrderDAO orderDAO = new OrderDAO();
        Order order = orderDAO.getOrderByID(oid);
        if(order==null){
            //send to list and display notice
            response.sendRedirect("list?noticeOid=true");
        }else{
            ArrayList<MedicalRecord> medicalRecords = new ArrayList<>();
            for (OrderDetail o : order.getOrderDetail()) {
                medicalRecords.add(o.getMedicalRecord());
            }
            for(int i = 0 ;i<medicalRecords.size();i++){
                for(int j = i+1 ;j<medicalRecords.size();j++){
                    if(medicalRecords.get(i).getId() == medicalRecords.get(j).getId()){
                        medicalRecords.remove(j);
                        j--;
                    }
                }
            }
            
            request.setAttribute("medicalRecords", medicalRecords);
            request.setAttribute("order", order);
            request.getRequestDispatcher(path).forward(request, response);
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
