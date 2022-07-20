/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Post;

import Control.Login.AccountAuthentication;
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
public class PostsListController extends AccountAuthentication {

    final String profileJsp = "../frontend/jsp/post/postslist.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            UserDAO userDAO = new UserDAO();
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);

            PostDAO postDao = new PostDAO();
            ArrayList<Category> listCategory = postDao.getAllCategory();
            ArrayList<Author> listAuthor = postDao.getAllAuthor();
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listAuthor", listAuthor);

            String raw_categoryID = request.getParameter("categoryID");
            String raw_authorID = request.getParameter("authorID");
            String raw_status = request.getParameter("status");
            if (raw_status == null) {
                raw_status = "both";
            }
            String raw_from = request.getParameter("from");
            String raw_to = request.getParameter("to");

            int categoryID = (raw_categoryID == null || raw_categoryID.equals(""))
                    ? 0 : Integer.parseInt(raw_categoryID);
            int authorID = (raw_authorID == null || raw_authorID.equals(""))
                    ? 0 : Integer.parseInt(raw_authorID);
            Boolean status = (raw_status.equals("both"))
                    ? null : (raw_status.equals("on"));
            Date from = (raw_from == null || raw_from.equals(""))
                    ? null : Date.valueOf(raw_from);
            Date to = (raw_to == null || raw_to.equals(""))
                    ? null : Date.valueOf(raw_to);
            
            request.setAttribute("categoryID", categoryID);
            request.setAttribute("authorID", authorID);
            request.setAttribute("status", raw_status);
            request.setAttribute("from", from);
            request.setAttribute("to", to);

            ArrayList<Post> listPost = postDao.searchPost(categoryID,authorID,status,from,to);
            request.setAttribute("listPost", listPost);
            request.getRequestDispatcher(profileJsp).forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(PostsListController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
