/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Service.viewService;

import Control.Homepage.Homepage;
import DAO.ServiceDAO;
import DAO.UserDAO;
import Model.Account.User;
import Model.Service.Service;
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
 * @author nghia
 */
public class ServiceForUser extends HttpServlet {


    protected ArrayList<Service> serviceListByType(String type, ArrayList<Service> allServiceActivated) {
        if (type.equals("0")) {
            return allServiceActivated;
        }
        allServiceActivated.removeIf(s -> (s.getSt().getT_id() == Integer.parseInt(type)));
        return allServiceActivated;
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
        HttpSession hs = request.getSession();
        UserDAO udao = new UserDAO();
        User acc = (User)hs.getAttribute("account");
            User user = null;
            try {
                user = udao.getUser(acc.getEmail());
            } catch (Exception ex) {
                Logger.getLogger(Homepage.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        request.setAttribute("account", user);
        
        //initialization service DAO
        ServiceDAO service = new ServiceDAO();
        //get list of all activated service and service type
        ArrayList<ServiceType> serviceTypeList = service.listServiceType();
        ArrayList<Service> serviceList = service.getListServiceActive();

        //get type id from client to filter sêrvice list by type
        String typeId_raw = request.getParameter("tId");
        
        //set type id for the first time access the web. type "0" is non filter (all service)
        if (typeId_raw == null) {
            typeId_raw = "0";

        }
        serviceList = serviceListByType(typeId_raw, serviceList);
        int typeId = Integer.parseInt(typeId_raw);

        //get search string from client and filter service list by service name
        String searchContent = request.getParameter("searchContent");
        if (searchContent != null) {
            serviceList.removeIf(s -> (!s.getSname().toLowerCase().contains(searchContent)));
        }
        
        //paginating
        String pageNow_raw = request.getParameter("page");
        int pageNow;
        if (pageNow_raw == null) {
            pageNow_raw = "1";
        }
        pageNow = Integer.parseInt(pageNow_raw);

        int totalService = serviceList.size();

        int servicePerPage = 9;
        int totalPage = (totalService % servicePerPage == 0) ? (totalService / servicePerPage) : (totalService / servicePerPage + 1);

        int serviceEnd = servicePerPage * pageNow - 1;
        int serviceStart = serviceEnd + 1 - servicePerPage;

        //set attribute
        request.setAttribute("serviceTypeList", serviceTypeList);
        request.setAttribute("serviceList", serviceList);

        request.setAttribute("tId", typeId);
        request.setAttribute("searchContent", searchContent);

        request.setAttribute("page", pageNow);
        request.setAttribute("serviceStart", serviceStart);
        request.setAttribute("serviceEnd", serviceEnd);
        request.setAttribute("totalPage", totalPage);

        //path of view page
        String servicePath = "frontend/jsp/service/service.jsp";
        request.getRequestDispatcher(servicePath).forward(request, response);
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
        return "This servlet return a page for user with service list";
    }// </editor-fold>

}
