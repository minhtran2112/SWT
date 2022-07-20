package Control.User;

import Control.Login.RegexChecking;
import DAO.UserDAO;
import Model.Account.Role;
import Model.Account.User;
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
import java.util.Random;

/**
 *
 * @author Asus
 */
@MultipartConfig
public class AddCustomerController extends HttpServlet {

    final String profileJsp = "../frontend/jsp/user/addCustomer.jsp";

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
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            UserDAO userDAO = new UserDAO();
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);
        request.getRequestDispatcher(profileJsp).forward(request, response);

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
        UserDAO userDAO = new UserDAO();
//            HttpSession session = request.getSession();
//            User account = (User) session.getAttribute("account");
//            User user = userDAO.getUser(account.getEmail());
//            request.setAttribute("user", user);

        String raw_name = request.getParameter("name");
        String raw_gender = request.getParameter("gender");
        String raw_dob = request.getParameter("dob");
        String raw_email = request.getParameter("email");
        String raw_phone = request.getParameter("phone");
        String raw_address = request.getParameter("address");
        String raw_status = request.getParameter("status");

        RegexChecking valid = new RegexChecking();
        String notice = "";
        if (!valid.checkString(raw_name)) {
            notice += "name ";
        }
        if (!valid.checkDateOfBirth(raw_dob)) {
            notice += "dob ";
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

        if (!notice.isEmpty()) {
            request.setAttribute("name", raw_name);
            request.setAttribute("dob", raw_dob);
            request.setAttribute("email", raw_email);
            request.setAttribute("phone", raw_phone);
            request.setAttribute("phone", raw_phone);
            request.setAttribute("address", raw_address);
            request.setAttribute("mess", "Please re-enter profile of customer: " + notice + "!!!");
            request.getRequestDispatcher(profileJsp).forward(request, response);
        } else {
            Part part = request.getPart("photo");
            String fileName = part.getSubmittedFileName();
            String photo;
            if (fileName == null || fileName.isEmpty()) {
                request.setAttribute("mess", "Enter customer photo!");
                request.getRequestDispatcher(profileJsp).forward(request, response);
            } else {
                photo = uploadPhoto(part);
                String name = raw_name;
                boolean gender = raw_gender.equals("male");
                Date dob = Date.valueOf(raw_dob);
                String email = raw_email;
                String phone = raw_phone;
                String address = raw_address;
                boolean status = Boolean.parseBoolean(raw_status);

                Random random = new Random();
                String pass = "";
                for (int i = 0; i < 8; i++) {
                    char randomizedCharacter = (char) (random.nextInt(26) + 'a');
                    pass += randomizedCharacter;
                }
                Role role = new Role();
                role.setId(5);

                User customer = new User(name, gender, email, phone, address, dob, photo, role, status, pass);
                userDAO.insertUser(customer);

                SendMail sendMail = new SendMail();
                String sub = "Your BaeCare password";
                String msg = "Your BaeCare password:" + pass;
                sendMail.send(email, sub, msg, "maivtbhe153254@fpt.edu.vn", "banmaimai2001@");

                request.setAttribute("mess", "Create New Customer Successful!");
                request.getRequestDispatcher(profileJsp).forward(request, response);
            }
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
