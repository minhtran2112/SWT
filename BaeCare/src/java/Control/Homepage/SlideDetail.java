/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import Control.Login.AccountAuthentication;
import DAO.SlideDAO;
import Model.Homepage.Slide;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 *
 * @author nhiep
 */
public class SlideDetail extends HttpServlet {

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
            out.println("<title>Servlet SlideDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SlideDetail at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SlideDAO slideDAO = new SlideDAO();
        String allSlidePath = "frontend/jsp/homepage/allSlide.jsp";
        String oneSlidePath = "frontend/jsp/homepage/oneSlide.jsp";
        if (request.getParameter("slide") == null) {
            List<Slide> listSlideActivated = slideDAO.getAllSlideOnHomepage();

            String sortOrder = "desc";
            if (request.getParameter("sortOrder") != null) {
                sortOrder = request.getParameter("sortOrder");
            }
            String sortType = "date";
            if (request.getParameter("sortType") != null) {
                sortType = request.getParameter("sortType");

                switch (sortType) {
                    case "date":
                        Collections.sort(listSlideActivated, new Comparator<Slide>() {
                            @Override
                            public int compare(Slide o1, Slide o2) {
                                return o1.getSlideDate().compareTo(o2.getSlideDate());
                            }
                        });

                        break;
                    case "title":
                        Collections.sort(listSlideActivated, new Comparator<Slide>() {
                            @Override
                            public int compare(Slide o1, Slide o2) {
                                return o1.getSlideTitle().compareTo(o2.getSlideTitle());
                            }
                        });

                        break;
                    default:
                }
            }
            if (sortOrder.equals("desc")) {
                Collections.reverse(listSlideActivated);
            }
            String searchContent = request.getParameter("searchContent");
            if (searchContent != null) {

                listSlideActivated.removeIf(s -> !(s.getSlideTitle().toLowerCase().contains(searchContent.toLowerCase())));

            }
            String pageNow_raw = request.getParameter("page");
            int pageNow;
            if (pageNow_raw == null) {
                pageNow_raw = "1";
            }
            pageNow = Integer.parseInt(pageNow_raw);

            int totalslide = listSlideActivated.size();

            int slidePerPage = 10;
            int totalPage = (totalslide % slidePerPage == 0) ? (totalslide / slidePerPage) : (totalslide / slidePerPage + 1);

            int slideEnd = slidePerPage * pageNow - 1;
            int slideStart = slideEnd + 1 - slidePerPage;

            request.setAttribute("searchContent", searchContent);
            request.setAttribute("sortType", sortType);
            request.setAttribute("sortOrder", sortOrder);
            request.setAttribute("page", pageNow);
            request.setAttribute("slideStart", slideStart);
            request.setAttribute("slideEnd", slideEnd);
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("listSlide", listSlideActivated);
            request.getRequestDispatcher(allSlidePath).forward(request, response);

        } else {
            String slideId_raw = request.getParameter("slide");
            int slideId = Integer.parseInt(slideId_raw);
            Slide s = slideDAO.getSlideByID(slideId);
            request.setAttribute("slide", s);
            request.getRequestDispatcher(oneSlidePath).forward(request, response);
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
