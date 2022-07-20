/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Service.controlService;

import Control.Login.AccountAuthentication;
import Control.User.UploadFile;
import DAO.ServiceDAO;
import Model.Service.Service;
import Model.Service.ServiceType;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
@MultipartConfig
public class EditService extends AccountAuthentication {

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
        String sid_raw = request.getParameter("sid");
        int sid = Integer.parseInt(sid_raw);

        ServiceDAO sdao = new ServiceDAO();
        Service service = sdao.getServiceByID(sid);
        ArrayList<ServiceType> types = sdao.listServiceType();

        request.setAttribute("types", types);
        request.setAttribute("service", service);
        final String serviceEdit = "../frontend/jsp/service/edit.jsp";
        request.getRequestDispatcher(serviceEdit).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private String uploadImg( Part part) {

        String fileName, pathWithBuild, pathNoBuild;
        InputStream is1,is2;
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

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        ServiceDAO sdao = new ServiceDAO();
        String sId_raw = request.getParameter("sId");
        String sale_raw = request.getParameter("sale");
        String sname_raw = request.getParameter("sname");
        String price_raw = request.getParameter("price");
        String status_raw = request.getParameter("status");
        String detail_raw = request.getParameter("details");
        String type_raw = request.getParameter("type");
        
        int sId = Integer.parseInt(sId_raw);
        double sale = Double.parseDouble(sale_raw);
        String sname = URLDecoder.decode(sname_raw, "UTF-8");
        double price = Double.parseDouble(price_raw);
        boolean status = status_raw.equals("active");
        String details = URLDecoder.decode(detail_raw, "UTF-8");
        int tid = Integer.parseInt(type_raw);
       

        Service s = new Service();
        s.setSid(sId);
        s.setSname(sname);
        s.setOriginal_price(price);
        s.setStatus(status);
        s.setDetails(details);
        s.setSale_price(sale);

        
        Part part = request.getPart("photo");
        String photo = uploadImg(part);
        if (photo.equals("")) {
            photo = sdao.getServiceImgLink(sId);
        }

        s.setPhoto(photo);
        ServiceType st = new ServiceType();
        st.setT_id(tid);
        s.setSt(st);

        sdao.editService(s);
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
