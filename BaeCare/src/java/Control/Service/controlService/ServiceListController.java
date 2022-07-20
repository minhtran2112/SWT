/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Service.controlService;

import Control.Login.AccountAuthentication;
import DAO.ServiceDAO;
import Model.Account.User;
import Model.Service.Service;
import Model.Service.ServiceType;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class ServiceListController extends AccountAuthentication {

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
//      format chu tieng viet hoac chu ki hieu tren serve ve thi dung 2 dong nay        
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("utf-8");

        String text = request.getParameter("searchser");
        String type = request.getParameter("serviceT");
        String status_raw = request.getParameter("status");

//        validate
        status_raw = (status_raw == null || status_raw.length() == 0) ? "-1" : status_raw;
        text = (text == null || text.length() == 0) ? "-1" : text;
        type = (type == null || type.length() == 0) ? "-1" : type;
//        cho nay tuc la minh decode lai no
        String textR = URLDecoder.decode(text, "UTF-8");

//        lay data tu db
        ServiceDAO sdao = new ServiceDAO();
        ArrayList<Service> services = sdao.getListService();
        ArrayList<ServiceType> types = sdao.listServiceType();

        int statusSearch;
        ArrayList<Service> list = null;
        
        
//        bussiness
        switch (status_raw) {
            case "-1":
                statusSearch = Integer.parseInt(status_raw);
                request.setAttribute("statusSearch", statusSearch);
                list = sdao.searchListService(textR, type, statusSearch);
                break;
            case "1":
                statusSearch = 1;
                request.setAttribute("statusSearch", statusSearch);
                list = sdao.searchListService(textR, type, statusSearch);
                break;
            case "0":
                statusSearch = 0;
                request.setAttribute("statusSearch", statusSearch);
                list = sdao.searchListService(textR, type, statusSearch);
                break;
        }


//        List all service
        request.setAttribute("services", services);
        request.setAttribute("types", types);
//        List search


//        request.setAttribute("t_id", type);

        request.setAttribute("list", list);
        final String serviceListJsp = "../frontend/jsp/service/list.jsp";
        request.getRequestDispatcher(serviceListJsp).forward(request, response);
    }

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
