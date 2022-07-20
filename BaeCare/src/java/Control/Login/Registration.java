/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Login;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import DAO.AccountDAO;
import Control.User.UploadFile;
import Model.Account.User;
import jakarta.servlet.annotation.MultipartConfig;

@MultipartConfig
/**
 *
 * @author chitung
 */
public class Registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        request.getRequestDispatcher("frontend/jsp/login/registration.jsp").forward(request, response);
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
        UploadFile upFile = new UploadFile();
        String raw_fullName = request.getParameter("name");
        String raw_email = request.getParameter("email");
        String raw_pass = request.getParameter("password");
        String raw_mobile = request.getParameter("mobile");
        String raw_gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String raw_dob = request.getParameter("dob");

        Part part = request.getPart("photo");
        String fileName = part.getSubmittedFileName();
        String path = getServletContext().getRealPath("/photo");
        path += File.separator + fileName;
        InputStream is = part.getInputStream();
        upFile.uploadFile(is, path);

        String photo = "photo" + File.separator + fileName;
        RegexChecking v = new RegexChecking();
        
        final String registrationJsp = "frontend/jsp/login/registration.jsp";
        //check information of user is validated
        if (v.validateName(raw_fullName) && v.validateEmail(raw_email) && v.validatePass(raw_pass) && v.validateMobile(raw_mobile)) {
            String name = raw_fullName;
            String email = raw_email;
            String pass = raw_pass;
            String mobile = raw_mobile+"        ";

            AccountDAO dAc = new AccountDAO();
            //check email is exist
            User accExist = dAc.getAccount(email, pass);

            if (accExist == null) {
                SendEmail sendEmail = new SendEmail();
                //Random code to sendEmail
                int numberOfCharactor = 8;
                String code = sendEmail.randomAlphaNumeric(numberOfCharactor);
                //save code in session
                request.getSession().setAttribute("code", code);
                request.getSession().setAttribute("email", email);
                request.getSession().setAttribute("pass", pass);
                request.getSession().setAttribute("raw_gender", raw_gender);
                request.getSession().setAttribute("mobile", mobile);
                request.getSession().setAttribute("address", address);
                request.getSession().setAttribute("raw_dob", raw_dob);
                request.getSession().setAttribute("photo", photo);
                request.getSession().setAttribute("name", name);

                String subject = "Authenticate gmail";
                String message = "<!DOCTYPE html>\n"
                        + "<html lang=\"en\">\n"
                        + "\n"
                        + "<head>\n"
                        + "</head>\n"
                        + "\n"
                        + "<body>\n"
                        + "    <h3 style=\"color: blue;\">Thank you for registering and participating in our program.</h3>\n"
                        + "    <div>For your and our safety, we want you to make sure that the email you use to sign up is authenticated.</div>\n"
                        + "    <div>Enter the code below to authenticate.</div><br/>\n"
                        + "    <div>Code: " + code + "</div>\n"
                        + "    <h3 style=\"color: blue;\">Thank you very much!</h3>\n"
                        + "\n"
                        + "</body>\n"
                        + "\n"
                        + "</html>";
                SendEmail.send(email, subject, message, sendEmail.getUser(), sendEmail.getPass());
                response.sendRedirect("verificationRegister");
//            
            } else {
                String exist = "This account is already exist. Try a new email!";
                request.setAttribute("exist", exist);
                request.getRequestDispatcher(registrationJsp).forward(request, response);
            }
        } else {
            String error = "You need to enter the correct requirements for each subscription.";
            request.setAttribute("error", error);
            request.getRequestDispatcher(registrationJsp).forward(request, response);
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
