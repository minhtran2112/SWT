/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.User;


import Control.Login.AccountAuthentication;
import Control.Login.RegexChecking;

import DAO.UserDAO;
import Model.Account.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
@MultipartConfig
public class UserProfileController extends AccountAuthentication {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    final String profileJsp = "frontend/jsp/user/profile.jsp";

    @Override

    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            User account = (User) session.getAttribute("account");
            UserDAO userDAO = new UserDAO();
            User user = userDAO.getUser(account.getEmail());
            request.setAttribute("user", user);
            request.getRequestDispatcher(profileJsp).forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UserProfileController.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            UserDAO userDAO = new UserDAO();
            String raw_name = request.getParameter("name");
            String raw_gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String raw_phone = request.getParameter("phone");
            String raw_address = request.getParameter("address");
            String raw_dob = request.getParameter("dob");


            RegexChecking valid = new RegexChecking();
            String notice = "";
            if (!valid.checkString(raw_name)) {
                notice += "name ";
            }
            if (!valid.checkPhone(raw_phone)) {
                notice += "phone ";
            }
            if (!valid.checkStringAndNumber(raw_address)) {
                notice += "address ";
            }
            if (!valid.checkDateOfBirth(raw_dob)) {
                notice += "dob ";
            }
            if (!notice.isEmpty()) {
                request.setAttribute("mess", "Update Fail!");
                request.setAttribute("user", userDAO.getUser(email));
                request.getRequestDispatcher(profileJsp).forward(request, response);
            } else {
                Part part = request.getPart("photo");
                String fileName = part.getSubmittedFileName();
                User user = userDAO.getUser(email);
                String photo;
                if (fileName == null || fileName.isEmpty()) {
                    photo = user.getPhoto();
                } else {
                    photo = uploadPhoto(part);
                }
                String name = raw_name;
                boolean gender = raw_gender.equals("male");
                String phone = raw_phone;
                String address = raw_address;
                Date dob = Date.valueOf(raw_dob);

                user.setName(name);
                user.setGender(gender);
                user.setPhone(phone);
                user.setAddress(address);
                user.setDob(dob);
                user.setPhoto(photo);
                User newuser = userDAO.updateUserByEmail(user);

                request.setAttribute("mess", "Update Successful!");
                request.setAttribute("user", newuser);
                request.getRequestDispatcher(profileJsp).forward(request, response);
            }


        } catch (Exception ex) {
            System.out.println(ex);
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

        pathWithBuild = getServletContext().getRealPath("photo");
        pathNoBuild = pathWithBuild.substring(0, pathWithBuild.indexOf("build")) + "web" + File.separator + "photo";

        pathWithBuild += File.separator + fileName;
        pathNoBuild += File.separator + fileName;
        try {
            is1 = part.getInputStream();
            is2 = part.getInputStream();
            uploadFile = new UploadFile();
            uploadFile.uploadFile(is1, pathWithBuild);
            uploadFile.uploadFile(is2, pathNoBuild);
            return "photo" + File.separator + fileName;
        } catch (IOException ex) {
            System.out.println(ex);
        }

        return "";
    }

}

