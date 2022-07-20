/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Homepage;

import DAO.PostDAO;
import DAO.ServiceDAO;
import DAO.SlideDAO;
import DAO.UserDAO;
import Model.Account.User;
import Model.Homepage.Post;
import Model.Homepage.Slide;
import Model.Service.Service;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Homepage extends HttpServlet {

    /*
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static int generateRandomIntIntRange(int min, int max) {
        
        return (int)Math.floor(Math.random()*(max-min+1)+min);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession hs = request.getSession();
        ServiceDAO service = new ServiceDAO();
        SlideDAO slideDAO = new SlideDAO();
        UserDAO udao = new UserDAO();
        PostDAO postDAO = new PostDAO();
        ArrayList<Post> listFirstFourPost = postDAO.getFourPost();
        
        ArrayList<Service> listService = service.getListServiceActive();
        List<Slide> listSlide = slideDAO.getAllSlideOnHomepage();
        
        if (!listSlide.isEmpty()) {
            request.setAttribute("listSlide", listSlide);
        }
       
        if (!listService.isEmpty()) {
            int[] randomServiceIndex = new int[5];
            int i = 0;
            while(i < 5){
                int randomNumber;
                do{
                    randomNumber  = generateRandomIntIntRange(0, listService.size()-1);
                }
                while(Arrays.binarySearch(randomServiceIndex,randomNumber) >=0);
                randomServiceIndex[i] = randomNumber;
                i++;
            }
            
            User acc = (User)hs.getAttribute("account");
            User user = null;
            try {
                user = udao.getUser(acc.getEmail());
            } catch (Exception ex) {
                Logger.getLogger(Homepage.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.setAttribute("firstFourPost", listFirstFourPost);
            request.setAttribute("account", user);
            request.setAttribute("randomServiceIndex", randomServiceIndex);
            request.setAttribute("listService", listService);
        }

       
       
        String homePath = "frontend/jsp/homepage/home.jsp";
        request.getRequestDispatcher(homePath).forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
