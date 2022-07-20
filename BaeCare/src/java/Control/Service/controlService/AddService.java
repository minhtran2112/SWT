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
public class AddService extends AccountAuthentication {

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
        ServiceDAO sdao = new ServiceDAO();
        ArrayList<ServiceType> types = sdao.listServiceType();
        ArrayList<Service> listService = sdao.getListService();
        int newid = listService.size() + 1;

        request.setAttribute("types", types);
        request.setAttribute("newid", newid);
        final String serviceAdd = "../frontend/jsp/service/add.jsp";
        request.getRequestDispatcher(serviceAdd).forward(request, response);
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
    private String uploadImg(HttpServletRequest request, Part part) {

        String fileName, pathWithBuild, pathNoBuild;
        InputStream is1,is2;
        UploadFile uploadFile;

        fileName = part.getSubmittedFileName();

        pathWithBuild = getServletContext().getRealPath("frontend\\assert\\img");
        pathNoBuild = pathWithBuild.substring(0, pathWithBuild.indexOf("build")) + "web" + File.separator + "frontend" + File.separator + "assert" + File.separator + "img";

        pathWithBuild += File.separator + fileName;
        pathNoBuild += File.separator + fileName;
        try {
            is1 = part.getInputStream();
            is2 = part.getInputStream();
            uploadFile = new UploadFile();
            uploadFile.uploadFile(is1, pathWithBuild);
            uploadFile.uploadFile(is2, pathNoBuild);
            return "frontend" + File.separator + "assert" + File.separator + "img" + File.separator + fileName;
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

        String sale_raw = request.getParameter("sale");
        String sname_raw = request.getParameter("sname");
        String price_raw = request.getParameter("price");
        String status_raw = request.getParameter("status");
        String detail_raw = request.getParameter("details");
        String type_raw = request.getParameter("type");
//        xem lai

        double sale = Double.parseDouble(sale_raw);
        String sname = URLDecoder.decode(sname_raw, "UTF-8");
        double price = Double.parseDouble(price_raw);
        boolean status = status_raw.equals("active");
        String details = URLDecoder.decode(detail_raw, "UTF-8");
        int tid = Integer.parseInt(type_raw);
        Part part = request.getPart("photo");
        String photo = uploadImg(request, part);

        Service s = new Service();
        s.setSname(sname);
        s.setOriginal_price(price);
        s.setStatus(status);
        s.setDetails(details);
        s.setSale_price(sale);

        s.setPhoto(photo);
        ServiceType st = new ServiceType();
        st.setT_id(tid);
        s.setSt(st);

        ServiceDAO sdao = new ServiceDAO();
        sdao.addService(s);
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
    }
}
