/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.medical;

import Control.Login.AccountAuthentication;
import DAO.MedicalRecordDAO;
import DAO.MedicineDAO;
import DAO.MedicinePrescriptDAO;
import DAO.OrderDAO;
import DAO.OrderDetailDAO;
import Model.Account.User;
import Model.Order.MedicalRecord;

import Model.Order.OrderDetail;

import Model.medical.Medicine;
import Model.medical.MedicinePrescript;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

import java.util.Calendar;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;

/**
 *
 * @author nhiep
 */
public class MedicalPrescriptInExamining extends AccountAuthentication {

    protected final String viewPath = "../frontend/jsp/medical/doctorMedicalInExam.jsp";

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
            out.println("<title>Servlet addMedicalPrescript</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addMedicalPrescript at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }

    }

    public List<OrderDetail> sortOrderDetailForDoctor(List<OrderDetail> listODForDoctor) {
        Collections.sort(listODForDoctor, (o1, o2) -> {
            int dateCompare = o1.getExamDate().compareTo(o2.getExamDate());
            int orderCompare = o1.getOrdinalNumber() > o2.getOrdinalNumber() ? 1 : -1;
            if (o1.isExamStatus() && o2.isExamStatus() || !o1.isExamStatus() && !o2.isExamStatus()) {
                if (dateCompare < 0) {
                    return 1;
                } else if (dateCompare > 0) {
                    return -1;
                } else {

                    return orderCompare;

                }
            } else if (o1.isExamStatus()) {
                return 1;
            } else {
                return -1;
            }

        });

        return listODForDoctor;
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
        HttpSession session = request.getSession();
        User doctorLoggedIn = (User) session.getAttribute("account");
        String user_email = doctorLoggedIn.getEmail();
        
        OrderDetailDAO odDao = new OrderDetailDAO();
        List<OrderDetail> listOrder = odDao.getListOrderedForDoctor(user_email);
        List<OrderDetail> listOrderForDoctor = sortOrderDetailForDoctor(listOrder);
        
        List<Medicine> medicineList = new MedicineDAO().getAllMedicine();
        
        request.setAttribute("medicineList", medicineList);
        request.setAttribute("listOrder", listOrderForDoctor);
        request.getRequestDispatcher(viewPath).forward(request, response);

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
        MedicinePrescriptDAO mpDao = new MedicinePrescriptDAO();

        Calendar c = Calendar.getInstance();
        String datetime = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DAY_OF_MONTH);
        Enumeration e = request.getParameterNames();
        List<MedicinePrescript> listGotFromClient = new ArrayList<>();
        MedicinePrescript mp = new MedicinePrescript();
        OrderDetail od = new OrderDetail();
        od.setOdId(Integer.parseInt(request.getParameter("odId")));
        od.setResultNote(request.getParameter("resultNote"));
        od.setExamStatus(true);
        od.setMedicalStatus(true);
        od.setSymptom(request.getParameter("symptom"));
        MedicalRecord mr = new MedicalRecord();
        String mr_raw = "";
        while (e.hasMoreElements()) {
            mp.setOdId(Integer.parseInt(request.getParameter("odId")));

            Medicine m = new Medicine();
            String paramName = e.nextElement().toString();
            if (paramName.contains("medicalHistory")) {
                mr_raw = paramName;
            }
            if (paramName.contains("medicineId")) {
                m.setId(request.getParameter(paramName));
                mp.setMedicine(m);
            } else if (paramName.contains("medicineQuantity")) {
                mp.setQuantity(Integer.parseInt(request.getParameter(paramName)));
            } else if (paramName.contains("medicinePrescript")) {
                mp.setPrescription(request.getParameter(paramName));
                mp.setAddPrescriptDate(datetime);
                listGotFromClient.add(mp);
                mp = new MedicinePrescript();
            }
        }
        String[] mrIdAndMedicalHistory = mr_raw.split("-");
        for (String string : mrIdAndMedicalHistory) {
            System.out.println(string);
        }
        mr.setMedicalHistory(mrIdAndMedicalHistory[0]);
        mr.setId(Integer.parseInt(mrIdAndMedicalHistory[1]));
        mr.setPreHistory(request.getParameter("preHistory"));
        mr.setReasonForHospitalization(request.getParameter("reasonToExam"));
        new MedicalRecordDAO().editMedicalRecordAfterExam(mr);
        List<MedicinePrescript> listFromDB = mpDao.getMPByOdID(listGotFromClient.get(0).getOdId());
        String msg = "";
        int insert = 0;
        int update = 0;
        int delete = 0;
        update += new OrderDetailDAO().updateOrderDetailAfterExam(od);
        new OrderDetailDAO().changeExamStatus(true, od.getOdId());
        if (listGotFromClient.size() >= listFromDB.size()) {
            for (int i = 0; i < listGotFromClient.size(); i++) {
                for (int j = 0; j < listFromDB.size(); j++) {
                    if (listGotFromClient.get(i).getMedicine().getId().equals(listFromDB.get(j).getMedicine().getId())) {
                        update += mpDao.editMedicalPrescript(listGotFromClient.get(i));
                        listGotFromClient.remove(i);
                    }
                }
            }
            if (!listGotFromClient.isEmpty()) {
                insert += mpDao.insertMultiMedicinePrescript(listGotFromClient);
            }
            new OrderDetailDAO().changeMedicalStatus(true, od.getOdId());
        } else {
            for (int j = 0; j < listFromDB.size(); j++) {
                for (int i = 0; i < listGotFromClient.size(); i++) {
                    if (listGotFromClient.get(i).getMedicine().getId().equals(listFromDB.get(j).getMedicine().getId())) {
                        listFromDB.get(j).setQuantity(listGotFromClient.get(i).getQuantity());
                        update += mpDao.editMedicalPrescript(listFromDB.get(j));

                        listFromDB.remove(j);
                    }
                }
            }
            if (!listFromDB.isEmpty()) {
                for (MedicinePrescript medicinePrescript : listFromDB) {
                    delete += mpDao.deleteAMedicineFromMedicalPrescript(medicinePrescript);
                }
            }
            new OrderDetailDAO().changeMedicalStatus(true, od.getOdId());
        }

        if (insert == 0 && update == 0 && delete == 0) {

            msg = "Something wrong in working with data";
        }

        request.setAttribute("msg", msg);
        doGet(request, response);

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
