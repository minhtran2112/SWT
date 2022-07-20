/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import DAO.PostDAO;
import DAO.UserDAO;
import Model.Account.User;
import Model.Homepage.Author;
import Model.Homepage.Category;
import Model.Homepage.Post;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class PostController extends HttpServlet {

    final String profileJsp = "frontend/jsp/homepage/post.jsp";

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
            throws ServletException, IOException, Exception {
            HttpSession hs = request.getSession();
        HttpSession session = request.getSession();
        User account = (User) session.getAttribute("account");
        UserDAO userDAO = new UserDAO();
        User user = null;
        try {
            user = userDAO.getUser(account.getEmail());
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("account", user);

        PostDAO postDao = new PostDAO();
        ArrayList<Category> listCategory = postDao.getAllCategory();
        ArrayList<Author> listAuthor = postDao.getAllAuthor();
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("listAuthor", listAuthor);

        ArrayList<Post> listPostNew = postDao.getFourPost();
        request.setAttribute("listPostNew", listPostNew);

        String title = request.getParameter("title");
        String raw_categoryID = request.getParameter("categoryID");
        String raw_authorID = request.getParameter("authorID");
        String raw_from = request.getParameter("from");
        String raw_to = request.getParameter("to");

        int categoryID = (raw_categoryID == null || raw_categoryID.equals(""))
                ? 0 : Integer.parseInt(raw_categoryID);
        int authorID = (raw_authorID == null || raw_authorID.equals(""))
                ? 0 : Integer.parseInt(raw_authorID);
        Date from = (raw_from == null || raw_from.equals(""))
                ? null : Date.valueOf(raw_from);
        Date to = (raw_to == null || raw_to.equals(""))
                ? null : Date.valueOf(raw_to);

        request.setAttribute("categoryID", categoryID);
        request.setAttribute("authorID", authorID);
        request.setAttribute("from", from);
        request.setAttribute("to", to);

        String raw_page = request.getParameter("page");
        if (raw_page == null || raw_page.trim().length() == 0) {
            raw_page = "1";
        }
        int pageindex = Integer.parseInt(raw_page);
        int pagesize = 10;

        ArrayList<Post> listPost = postDao.getPostByPage(pageindex, pagesize, title, categoryID, authorID, from, to);
        int totalrecords = postDao.count(title, categoryID, authorID, from, to);
        int totalpage = (totalrecords % pagesize == 0) ? totalrecords / pagesize
                : (totalrecords / pagesize) + 1;
        request.setAttribute("listPost", listPost);
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pageindex", pageindex);
        request.setAttribute("pagesize", pagesize);
        request.getRequestDispatcher(profileJsp).forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PostController.class.getName()).log(Level.SEVERE, null, ex);
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
