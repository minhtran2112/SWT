/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.Reservation;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Control.Login.SendEmail;
import DAO.MedicalRecordDAO;
import DAO.OrderDAO;
import DAO.OrderDetailDAO;
import DAO.CartDAO;
import Model.Account.User;
import Model.Order.MedicalRecord;
import Model.Order.Order;
import Model.Order.OrderDetail;

import Model.Order.Cart;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;

import java.util.Collections;
import java.util.List;

import Control.Login.AccountAuthentication;
import Model.Service.Service;



/**
 *
 * @author chitung
 */
public class ReservationCompletion extends AccountAuthentication {

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
            out.println("<title>Servlet ReservationCompletion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReservationCompletion at " + request.getContextPath() + "</h1>");
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
        CartDAO scDAO = new CartDAO();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        MedicalRecordDAO medicalRecordDAO = new MedicalRecordDAO();
        
        //information to add to order
        //Email
        String email = user.getEmail();
        //Total
        double total = 0.0;
        int sizeList = Integer.parseInt(request.getParameter("sizeList"));
        ArrayList<Integer> listMrId = new ArrayList<>();
        ArrayList<Cart> tempArray = new ArrayList<>();
        for(int i = 1 ;i<=sizeList;i++){
            int cardId = Integer.parseInt(request.getParameter("cartId" + i));
            Cart s = new CartDAO().getCartItem(cardId);
            tempArray.add(s);
        }       
        int index = 1;
        //list mrid to insert to orderdetails
        //get total price
        for (Cart c : tempArray) {
            total += c.getService().getSale_price();
            int mr_id = Integer.parseInt(request.getParameter("people" + index));
            listMrId.add(mr_id);
            index++;
        }

        //get information add to medical_record
        int selectOption = Integer.parseInt(request.getParameter("selectOption"));
        for (int i = 1; i <= selectOption; i++) {
            String name = request.getParameter("name" + i);
            boolean gender = false;
            if (request.getParameter("gender" + i).equals("male")) {
                gender = true;
            }
            String address = request.getParameter("address" + i);
            String reason = request.getParameter("reason" + i);
            String phone = request.getParameter("phone" + i);
            MedicalRecord medicalRecord = new MedicalRecord();
            medicalRecord.setUserName(name);
            medicalRecord.setGender(gender);
            medicalRecord.setAddress(address);
            medicalRecord.setPhone(phone);
            medicalRecord.setReasonForHospitalization(reason);
            //insert medical record to db
            int mr_id_new = medicalRecordDAO.customerFillsInTheMedicalRecord(medicalRecord);
            //set mr_id same new in database
            for (int j = 0; j < listMrId.size(); j++) {
                if (listMrId.get(j).equals(i)) {
                    listMrId.set(j, mr_id_new);
                }
            }
        }
        //Date order
        ZoneId zid = ZoneId.of("Asia/Ho_Chi_Minh");
        LocalDate ld = LocalDate.now(zid);
        Date dateOrder = Date.valueOf(ld);

        Order o = new Order();
        User u = new User();
        u.setEmail(email);
        o.setCustomer(u);
        o.setDateOrder(dateOrder);
        o.setTotalPrice(total);

        OrderDAO oDao = new OrderDAO();

        //Insert to order and get order id by trigger    
        int o_id = oDao.insertOrder(o);
        //Insert to order detail
        
        int count = 0;
        index = 1;
        OrderDetailDAO odDao = new OrderDetailDAO();
        List<Integer> listOrderNumber = new ArrayList<>();
        List<OrderDetail> listToAdd = new ArrayList<>();
        for (Cart sc : tempArray) {
            OrderDetail od = new OrderDetail();
            od.setoId(o_id);
            Service s = new Service();
            s.setSid(sc.getService().getSid());
            od.setService(s); //Order detail

            od.setExamDate(sc.getDateExam());//Order detail
            od.setExamStatus(false);
            od.setPrice(sc.getService().getSale_price());

            User doctor = new User();
            doctor.setEmail(odDao.doctorHaveLeastNumberOrder(sc.getDateExam(), sc.getService().getSt().getT_id()));
            od.setDoctor(doctor);//Order detail

            //Medical status
            //Mr id
            MedicalRecord medicalRecordr = new MedicalRecord();
            medicalRecordr.setId(listMrId.get(count));
            od.setMedicalRecord(medicalRecordr);
            //symptom
            String symptom = request.getParameter("symptom" + index);
            od.setSymptom(symptom);

            od.setOrdinalNumber(-1);
            listToAdd.add(od);
            listOrderNumber.add(odDao.getAvailableOrderNumber(od.getExamDate(), od.getDoctor().getEmail()));
            
            index++;
            count++;
            scDAO.deleteCart(sc.getId());
        }
        
        int minOrderNumber = Collections.min(listOrderNumber);
        int indexOfOrderNumber = listOrderNumber.indexOf(minOrderNumber);
        listToAdd.get(indexOfOrderNumber).setOrdinalNumber(minOrderNumber);
        for (OrderDetail orderDetail : listToAdd) {
              odDao.insertOrderDetail(orderDetail);
              
        }
        //Get order order by email
        Order order = oDao.getOrder(o_id);

        OrderDetailDAO odDAO = new OrderDetailDAO();
        ArrayList<OrderDetail> orderDetail = odDAO.getOrderDetail(o_id);

        //Information to banking(Send email to customer)
        String bankAccount = request.getServletContext().getInitParameter("bankingAccount");
        String nameBank = request.getServletContext().getInitParameter("nameBank");
        String number = request.getServletContext().getInitParameter("number");

        //send mail
        SendEmail sendEmail = new SendEmail();
        String subject = "Transactional information with child care system (BaeCare)";
        String message = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h3 style=\"color: blue;\">Thank you for participating in medical examination and treatment through our system.</h3>\n"
                + "    <div>We would like to send you the information used to transact between the customer and the system.</div>\n"
                + "    <div>Transaction bank name: " + nameBank + "</div>\n"
                + "    <div>Bank account number: " + number + "</div><br/>\n"
                + "    <div>Beneficiary name:" + bankAccount + "</div>\n"
                + "    <h3 style=\"color: blue;\">Thank you very much!</h3>\n"
                + "\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        SendEmail.send(email, subject, message, sendEmail.getUser(), sendEmail.getPass());
        request.setAttribute("orderDetail", orderDetail);
        request.setAttribute("o_id", o_id);
        request.setAttribute("order", order);
        request.getRequestDispatcher("frontend/jsp/service/order.jsp").forward(request, response);
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
