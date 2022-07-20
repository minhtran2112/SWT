/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Post;

import Control.Login.AccountAuthentication;
import Control.User.UploadFile;
import DAO.PostDAO;
import Model.Account.User;
import Model.Homepage.Author;
import Model.Homepage.Category;
import Model.Homepage.Post;
import jakarta.servlet.http.HttpServlet;
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
import java.sql.Date;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
@MultipartConfig
public class EditPostController extends AccountAuthentication {

    final String profileJsp = "../frontend/jsp/post/edit.jsp";

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
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            UserDAO userDAO = new UserDAO();
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);

        try {
            PostDAO postDao = new PostDAO();
            ArrayList<Category> listCategory = postDao.getAllCategory();
            ArrayList<Author> listAuthor = postDao.getAllAuthor();
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listAuthor", listAuthor);

            int id = Integer.parseInt(request.getParameter("id"));
            Post post = postDao.getPostByID(id);
            request.setAttribute("post", post);
            request.getRequestDispatcher(profileJsp).forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(EditPostController.class.getName()).log(Level.SEVERE, null, ex);
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
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            UserDAO userDAO = new UserDAO();
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);
        try {
            String raw_postID = request.getParameter("postid");
            String raw_categoryID = request.getParameter("categoryID");
            String raw_authorID = request.getParameter("authorID");
            String raw_title = request.getParameter("title");
            String raw_date = request.getParameter("date");
            String raw_status = request.getParameter("status");
            String raw_detail = request.getParameter("detail");

            int postID = Integer.parseInt(raw_postID);
            int categoryID = Integer.parseInt(raw_categoryID);
            int authorID = Integer.parseInt(raw_authorID);
            String title = raw_title;
            Date date = Date.valueOf(raw_date);
            boolean status = raw_status.equals("on");
            String detail = raw_detail;
            
            Part part = request.getPart("photo");
            String fileName = part.getSubmittedFileName();
            PostDAO postDao = new PostDAO();
            Post post = postDao.getPostByID(postID);
            String photo;
            if (fileName == null || fileName.isEmpty()) {
                photo = post.getPostImg();
            } else {
                photo = uploadPhoto(part);
            }
            Category c = new Category();
            c.setId(categoryID);
            Author a = new Author();
            a.setId(authorID);
            Post p = new Post();
            p.setCategory(c);
            p.setAuthor(a);
            p.setPostTitle(title);
            p.setPostDate(date);
            p.setOnHomepage(status);
            p.setPostDetail(detail);
            p.setPostImg(photo);
            postDao.upadtePostByID(p,postID);
            
            response.sendRedirect("postslist");
        } catch (Exception ex) {
            Logger.getLogger(EditPostController.class.getName()).log(Level.SEVERE, null, ex);
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

    private String uploadPhoto(Part part) {

        String fileName, pathWithBuild, pathNoBuild;
        InputStream is1, is2;
        UploadFile uploadFile;

        fileName = part.getSubmittedFileName();

        pathWithBuild = getServletContext().getRealPath("post");
        pathNoBuild = pathWithBuild.substring(0, pathWithBuild.indexOf("build")) + "web" + File.separator + "post";

        pathWithBuild += File.separator + fileName;
        pathNoBuild += File.separator + fileName;
        try {
            is1 = part.getInputStream();
            is2 = part.getInputStream();
            uploadFile = new UploadFile();
            uploadFile.uploadFile(is1, pathWithBuild);
            uploadFile.uploadFile(is2, pathNoBuild);
            return "post" + "/" + fileName;
        } catch (IOException ex) {
            System.out.println(ex);
        }

        return "";
    }

}
