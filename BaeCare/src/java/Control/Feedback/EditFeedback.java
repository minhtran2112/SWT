/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Feedback;

import Control.Login.AccountAuthentication;
import Control.User.UploadFile;
import DAO.FeedbackDao;
import DAO.ServiceDAO;
import DAO.UserDAO;
import Model.Account.User;
import Model.Feedback.Feedback;
import Model.Service.Service;
import Model.Service.ServiceType;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
@MultipartConfig
public class EditFeedback extends AccountAuthentication {
    
    final String editFeedback = "../frontend/jsp/feedback/edit.jsp";

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
        HttpSession hs = request.getSession();
        User account = (User) hs.getAttribute("account");
        if (account != null) {
            String fid_raw = request.getParameter("fid");
            
            int fid = Integer.parseInt(fid_raw);
            FeedbackDao fd = new FeedbackDao();
            Feedback feedback = fd.getFeedbackByID(fid);
            request.setAttribute("feedback", feedback);
            request.getRequestDispatcher(editFeedback).forward(request, response);
        } else {
            response.getWriter().println("please login to edit feedback");
            response.sendRedirect("list");
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
        FeedbackDao fd = new FeedbackDao();
        
        String id_raw = request.getParameter("id");
        String email_raw = request.getParameter("email");
        String sid_raw = request.getParameter("sid");
        String star_raw = request.getParameter("star");
        String detail_raw = request.getParameter("detail");
        
        HttpSession hs = request.getSession();
        User account = (User) hs.getAttribute("account");
//        when the feedback is owned by the user who wants to edit
        if (account.getEmail().equals(email_raw)) {
            int id = Integer.parseInt(id_raw);
            int sid = Integer.parseInt(sid_raw);
            String email = URLDecoder.decode(email_raw, "UTF-8");
            String detail = URLDecoder.decode(detail_raw, "UTF-8");
            int star = Integer.parseInt(star_raw);
            
            Part part = request.getPart("photo");
            String photo = uploadImg(part);
            if (photo.equals("")) {
                photo = fd.getFeedbackImgLink(id);
            }
            Feedback f = new Feedback();
            f.setFid(id);
            f.setFphoto(photo);
            f.setStar(star);
            f.setDetail(detail);
            
            UserDAO udao = new UserDAO();
            ServiceDAO sdao = new ServiceDAO();
            
            try {
                f.setUser(udao.getUser(email));
            } catch (Exception ex) {
                System.out.println(ex);
            }
            f.setService(sdao.getServiceByID(sid));
//            response.getWriter().println(f.getService().getSid());
//            response.getWriter().println(f.getUser().getEmail());
//            response.getWriter().println(f.getDetail());
//            response.getWriter().println(f.getStar());
//            response.getWriter().println(f.getFphoto());
////            System.out.println(f);
//            System.out.println(f.getService().getSid());
//            System.out.println(f.getUser().getEmail());
            fd.updateFB(f);
        }
        response.sendRedirect("list");
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
