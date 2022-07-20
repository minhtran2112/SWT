/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.User;

import Control.Login.AccountAuthentication;
import Control.Login.RegexChecking;
import DAO.AccountDAO;
import DAO.RoleDAO;
import DAO.UserDAO;
import Model.Account.Role;
import Model.Account.User;
import java.io.IOException;
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
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tkoko
 */
@MultipartConfig
public class UserDetailsController extends AccountAuthentication {

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
        String addeditemail = request.getParameter("addeditemail");
        final String userDetailJsp = "../frontend/jsp/user/userDetails.jsp";
        if (addeditemail == null) {
            RoleDAO rdb = new RoleDAO();
            ArrayList<Role> roles = rdb.getRoles();
            request.setAttribute("roles", roles);
            request.setAttribute("user", null);
            request.getRequestDispatcher(userDetailJsp).forward(request, response);
        } else {
            try {
                UserDAO udb = new UserDAO();
                User user = udb.getUser(addeditemail);
                request.setAttribute("user", user);
                if (user == null) {
                    response.getWriter().print("no ");
                } else {
                    RoleDAO rdb = new RoleDAO();
                    ArrayList<Role> roles = rdb.getRoles();
                    request.setAttribute("roles", roles);
                    request.getRequestDispatcher(userDetailJsp).forward(request, response);
                }
            } catch (Exception ex) {
                Logger.getLogger(UserDetailsController.class.getName()).log(Level.SEVERE, null, ex);
            }
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
        String addeditemail = request.getParameter("addeditemail");
        //valid 
        UserDAO dbUser = new UserDAO();
        try {
            dbUser.getUser(addeditemail);
        } catch (Exception ex) {
            Logger.getLogger(UserDetailsController.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (addeditemail  == null) {
            //insert
            String raw_name = request.getParameter("name");
            String raw_gender = request.getParameter("gender");
            String raw_phone = request.getParameter("phone");
            String raw_email = request.getParameter("email");
            String raw_address = request.getParameter("address");
            String raw_dob = request.getParameter("dob");
            String raw_role = request.getParameter("role");
            String raw_status = request.getParameter("status");
            //valid
            RegexChecking valid = new RegexChecking();
            String notice = "";
            if (!valid.checkString(raw_name)) {
                notice += "name ";
            }
            if (!valid.checkEmail(raw_email)) {
                notice += "email ";
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
                response.getWriter().println(notice + "invalid!!!");
            } else {
                //save photo and get path
                Part part = request.getPart("photo");
                String fileName = part.getSubmittedFileName();
                if (fileName == null || fileName.isEmpty()) {
                    response.getWriter().println("Enter photo please!");
                } else {
                    String photo = uploadImg(request, part);
                    
                    String name = raw_name;
                    boolean gender = Boolean.parseBoolean(raw_gender);
                    String email = raw_email;
                    String phone = raw_phone;
                    String address = raw_address;
                    Date dob = Date.valueOf(raw_dob);
                    int roleID = Integer.parseInt(raw_role);
                    RoleDAO dbRole = new RoleDAO();
                    Role role = dbRole.getRoles(roleID);
                    boolean status = Boolean.parseBoolean(raw_status);
                    //insert account
                    //random pass word 
                    Random random = new Random();
                    String pass = "";
                    for (int i = 0; i < 8; i++) {
                        char randomizedCharacter = (char) (random.nextInt(26) + 'a');
                        pass += randomizedCharacter;
                    }
                    //insert user
                    User user = new User(name, gender, email, phone, address, dob, photo, role, status, pass);
                    dbUser.insertUser(user);
                    //send password to email
                    SendMail sendMail = new SendMail();
                    String sub = "Your BaeCare password";
                    String msg = "Your BaeCare password:" + pass;//ygjpnyvqhqithopq
                    sendMail.send(email, sub, msg, "tkokoi123@gmail.com", "dslwxzykruwleqwr");

                    response.sendRedirect("list");
                }
            }
        } else {
            //update
            String raw_role = request.getParameter("role");
            String raw_status = request.getParameter("status");

            int role = Integer.parseInt(raw_role);
            boolean status = Boolean.parseBoolean(raw_status);

            dbUser.updateStatusAndRole(addeditemail, role, status);
            response.sendRedirect("list");
        }
    }
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
