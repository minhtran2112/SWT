/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import Control.Login.AccountAuthentication;
import Control.User.UploadFile;
import DAO.SlideDAO;
import Model.Homepage.Slide;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author nghia
 */
@MultipartConfig
public class SlideController extends AccountAuthentication {

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
            out.println("<title>Servlet SlideController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SlideController at " + request.getContextPath() + "</h1>");
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
        SlideDAO slide = new SlideDAO();
        String method = request.getParameter("method");
        if (method != null) {

            int slideID;
            switch (method) {

                case "del":
                    slideID = Integer.parseInt(request.getParameter("sID"));
                    slide.deleteSlide(slideID);
                    break;

                case "dis":
                    slideID = Integer.parseInt(request.getParameter("sID"));
                    slide.disableSlide(slideID);
                    break;
                case "enb":
                    slideID = Integer.parseInt(request.getParameter("sID"));
                    slide.enableSlide(slideID);
                    break;
            }
        }
        List<Slide> listSlide = slide.getAllSlide();
        String page = (String) request.getAttribute("page");
        int pageNow;
        if (page != null) {
            pageNow = Integer.parseInt(page);
        } else {
            String pageNow_raw = request.getParameter("page");

            if (pageNow_raw == null) {
                pageNow = 1;
            } else {
                pageNow = Integer.parseInt(pageNow_raw);
            }
        }

        int totalSlide = listSlide.size();
        int slidePerPage = 6;
        int totalPage = (totalSlide % slidePerPage == 0) ? (totalSlide / slidePerPage) : (totalSlide / slidePerPage + 1);

        int slideEnd = slidePerPage * pageNow - 1;
        int slideStart = slideEnd + 1 - slidePerPage;
        request.setAttribute("page", pageNow);
        request.setAttribute("slideStart", slideStart);
        request.setAttribute("slideEnd", slideEnd);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listSlide", listSlide);
        String slideAdminPath = "frontend/jsp/home/slideControl.jsp";
        request.getRequestDispatcher(slideAdminPath).forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private String uploadImg(Part part) {

        String fileName, pathWithBuild, pathNoBuild;
        InputStream is1, is2;
        UploadFile uploadFile;

        fileName = part.getSubmittedFileName();
        if (fileName.trim().equals("")) {
            return "";
        }
        pathWithBuild = getServletContext().getRealPath("frontend\\assert\\img\\slide");
        pathNoBuild = pathWithBuild.substring(0, pathWithBuild.indexOf("build")) + "web" + File.separator + "frontend" + File.separator + "assert" + File.separator + "img" + File.separator + "slide";

        pathWithBuild += File.separator + fileName;
        pathNoBuild += File.separator + fileName;
        try {

            is1 = part.getInputStream();
            is2 = part.getInputStream();
            uploadFile = new UploadFile();
            uploadFile.uploadFile(is1, pathWithBuild);
            uploadFile.uploadFile(is2, pathNoBuild);
            return "frontend" + File.separator + "assert" + File.separator + "img" + File.separator + "slide" + File.separator + fileName;

        } catch (IOException ex) {
            System.out.println(ex);
        }

        return "";
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method != null) {
            request.setAttribute("page", request.getParameter("page"));
            Calendar c = Calendar.getInstance();
            String smalldatetime = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DAY_OF_MONTH) + " " + c.get(Calendar.HOUR_OF_DAY) + ":" + c.get(Calendar.MINUTE) + ":" + c.get(Calendar.SECOND);

            SlideDAO slide = new SlideDAO();
            int slideID;
            String slideTitle;
            String slideDetail;
            String slideImg;
            boolean onHomepage;
            Slide s;

            switch (method) {

                case "add":
                    slideTitle = request.getParameter("sTitle");
                    slideDetail = request.getParameter("sDetail");
                    Part part = request.getPart("sImg");

                    slideImg = uploadImg(part);

                    onHomepage = Boolean.parseBoolean(request.getParameter("sOnHomepage"));
                    s = new Slide(1, slideTitle, slideDetail, slideImg, smalldatetime, onHomepage);

                    slide.insertSlide(s);
                    break;

                case "upd":
                    slideID = Integer.parseInt(request.getParameter("sID"));
                    slideTitle = request.getParameter("sTitle");
                    slideDetail = request.getParameter("sDetail");

                    part = request.getPart("sImg");

                    slideImg = uploadImg(part);
                    if (slideImg.equals("")) {

                        slideImg = slide.getImgLink(slideID);
                    }
                    onHomepage = Boolean.parseBoolean(request.getParameter("sOnHomepage"));
                    s = new Slide(1, slideTitle, slideDetail, slideImg, smalldatetime, onHomepage);

                    slide.updateSlide(slideID, s);
                    break;

            }
        }
        doGet(request, response);
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
