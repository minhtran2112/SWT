/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Feedback;

import Control.Login.AccountAuthentication;
import Control.Login.RegexChecking;
import Control.User.UploadFile;
import DAO.FeedbackDao;
import DAO.OrderDetailDAO;
import DAO.ServiceDAO;
import Model.Account.User;
import Model.Feedback.Feedback;
import Model.Order.Order;
import Model.Service.Service;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;

/**
 *
 * @author Administrator
 */
@MultipartConfig
public class AddFeedback extends AccountAuthentication {

    final String addFeedback = "../frontend/jsp/feedback/add.jsp";

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

        User user = (User) session.getAttribute("account");
        String rawEmail = request.getParameter("email");
        String rawOrderId = request.getParameter("orderId");
        String rawServiceId = request.getParameter("serviceId");

        RegexChecking check = new RegexChecking();

        if (check.checkEmail(rawEmail) && check.checkInteger(rawOrderId) && check.checkInteger(rawServiceId)) {
            String email = rawEmail;
            int orderOrderId = Integer.parseInt(rawOrderId);
            int serviceId = Integer.parseInt(rawServiceId);
            //check mail parameter and email is logged in
            if (!user.getEmail().equals(email)) {
                response.getWriter().println("Access denied!!!");
            } else {
                try {
                    //check orderdetailexist and statusOD true, and not yet feedback
                    OrderDetailDAO odDao = new OrderDetailDAO();
                    boolean orderDetailExist = odDao.orderDetailExist(email, orderOrderId, serviceId);
                    if (orderDetailExist == true) {
                        ServiceDAO serviceDAO = new ServiceDAO();
                        Service service = serviceDAO.getServiceByID(serviceId);
                        request.setAttribute("service", service);
                        request.setAttribute("orderId", orderOrderId);
                        request.getRequestDispatcher(addFeedback).forward(request, response);
                    } else {
                        response.sendRedirect("../service");

                    }
                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        } else {
            response.sendRedirect("../service");

        }
    }

    private String uploadImg(Part part) {

        String fileName, pathWithBuild, pathNoBuild;
        InputStream is1, is2;
        UploadFile uploadFile;

        fileName = part.getSubmittedFileName();
        if (fileName.trim().equals("")) {
            return "";
        }
        pathWithBuild = getServletContext().getRealPath("frontend\\assert\\img\\service");
        pathNoBuild = pathWithBuild.substring(0, pathWithBuild.indexOf("build")) + "web" + File.separator + "frontend" + File.separator + "assert" + File.separator + "img" + File.separator + "service";

        pathWithBuild += File.separator + fileName;
        pathNoBuild += File.separator + fileName;
        try {
            is1 = part.getInputStream();
            is2 = part.getInputStream();
            uploadFile = new UploadFile();
            uploadFile.uploadFile(is1, pathWithBuild);
            uploadFile.uploadFile(is2, pathNoBuild);
            return "frontend" + File.separator + "assert" + File.separator + "img" + File.separator + "service" + File.separator + fileName;

        } catch (IOException ex) {
            System.out.println(ex);
        }

        return "";
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Part part = request.getPart("photo");
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        int ServiceId = Integer.parseInt(request.getParameter("serviceId"));
        int star = Integer.parseInt(request.getParameter("star"));
        String detail = request.getParameter("detail");
        //get user
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        //get service by id
        ServiceDAO serviceDAO = new ServiceDAO();
        Service serviceByID = serviceDAO.getServiceByID(ServiceId);

        String photo = uploadImg(part);
        //add feedback
        FeedbackDao feedbackDao = new FeedbackDao();
        Order order = new Order();
        order.setOid(orderId);
        Feedback f = new Feedback(photo, star, detail, user, serviceByID, order);
        feedbackDao.addFB(f);
        response.getWriter().println("okela");

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
