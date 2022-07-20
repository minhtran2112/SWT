/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.User;
import Model.Order.MedicalRecord;
import Model.Order.Order;
import Model.Order.OrderDetail;
import Model.Service.Service;
import Model.medical.MedicinePrescript;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nhiep
 */
public class OrderDetailDAO extends DBContext {

    final String getAllOrderDetail = "SELECT * FROM [Order_detail]";
    final String getOrderDetailByOrderDetailID = "SELECT * FROM [Order_detail] where od_id = ?";
    final String getOrderDetailByOrderID = "SELECT [od_id]\n"
            + "      ,od.[o_id]\n"
            + "      ,[s_id]\n"
            + "      ,[email_doctor]\n"
            + "      ,[examineDate]\n"
            + "      ,[exam_Status]\n"
            + "      ,[note]\n"
            + "      ,[price]\n"
            + "      ,[checkOutDate]\n"
            + "      ,[medical_Status]\n"
            + "      ,[mr_id]\n"
            + "      ,[symptom]\n"
            + "      ,[ordinal_number]\n"
            + "  FROM [Order_detail] od join [Order] o on od.o_id=o.o_id where o.o_id=?";

    public boolean getExamStatus(int odId) {
        boolean status = false;
        try {
            String sql = "select exam_Status from Order_detail where od_id=?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, odId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status = rs.getBoolean("exam_Status");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return status;
    }

    public void changeExamStatus(boolean examStatus, int odId) {
        try {
            String sql = "update order_detail set exam_Status=? where od_id=? ";
            PreparedStatement ps = ps(sql);
            ps.setBoolean(1, examStatus);
            ps.setInt(2, odId);
            ps.execute();
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public boolean orderDetailExist(String email, int orderId, int serviceId) throws Exception {
        String sql = "select * from [Order] as o join [Order_detail] as od \n"
                + "ON o.o_id = od.o_id\n"
                + "where email_customer = ? and\n"
                + "o.o_id = ? and\n"
                + "s_id = ? and \n"
                + "exam_Status = 1 and \n"
                + "NOT EXISTS (select * from Feedback \n"
                + "where u_email = ? and \n"
                + "o_id = ? and \n"
                + "s_id = ?) ";
        try {
            PreparedStatement stm = ps(sql);
            stm.setString(1, email);
            stm.setInt(2, orderId);
            stm.setInt(3, serviceId);
            stm.setString(4, email);
            stm.setInt(5, orderId);
            stm.setInt(6, serviceId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return false;
    }

    public ArrayList<OrderDetail> getOrderDetailByOrderID(int oid) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        try {
            String sql = getOrderDetailByOrderID;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, oid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                od.setOdId(rs.getInt("od_id"));
                od.setoId(rs.getInt("o_id"));
                Service s = new ServiceDAO().getServiceByID(rs.getInt("s_id"));
                od.setService(s);
                User doctor = new UserDAO().getUser(rs.getString("email_doctor"));
                od.setDoctor(doctor);
                od.setExamDate(rs.getDate("examineDate"));
                od.setExamStatus(rs.getBoolean("exam_Status"));
                od.setResultNote(rs.getString("note"));
                od.setPrice(rs.getDouble("price"));
                od.setCheckoutDate(rs.getDate("checkOutDate"));
                od.setMedicalStatus(rs.getBoolean("medical_status"));
                List<MedicinePrescript> mp = new MedicinePrescriptDAO().getMPByOdID(od.getOdId());
                od.setMedicinePrescript(mp);
                MedicalRecord mr = new MedicalRecordDAO().getMedicalRecordByID(rs.getInt("mr_id"));
                od.setMedicalRecord(mr);
                od.setSymptom(rs.getString("symptom"));
                od.setOrdinalNumber(rs.getInt("ordinal_number"));
                list.add(od);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<OrderDetail> getListOrderedForDoctor(String doctorEmail) {
        List<OrderDetail> list = null;
        try {
            list = new ArrayList<>();
            String sql = "SELECT * " + "  FROM Order_detail \n" + "  where email_doctor = ? ";
            PreparedStatement ps = ps(sql);
            ps.setString(1, doctorEmail);
            ResultSet rs = ps.executeQuery();
            ServiceDAO sdao = new ServiceDAO();
            UserDAO udao = new UserDAO();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                od.setOdId(rs.getInt("od_id"));
                od.setoId(rs.getInt("o_id"));
                od.setService(sdao.getServiceByID(rs.getInt("s_id")));
                od.setExamDate(rs.getDate("examineDate"));
                od.setCheckoutDate(rs.getDate("checkOutDate"));
                od.setResultNote(rs.getString("note"));
                od.setPrice(rs.getDouble("price"));
                List<MedicinePrescript> mp = new MedicinePrescriptDAO().getMPByOdID(od.getOdId());
                od.setMedicinePrescript(mp);
                od.setExamStatus(rs.getBoolean("exam_Status"));
                od.setDoctor(udao.getUser(rs.getString("email_doctor")));
                od.setMedicalRecord(new MedicalRecordDAO().getMedicalRecordByOdID(od.getoId()));
                od.setMedicalStatus(rs.getBoolean("medical_Status"));
                od.setOrdinalNumber(rs.getInt("ordinal_number"));
                list.add(od);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    public OrderDetail getOrderDetailByID(int odId) {
        OrderDetail od = null;
        try {
            String sql = "select * from Order_detail where od_id = ?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, odId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                od = new OrderDetail();
                od.setOdId(rs.getInt("od_id"));
                od.setoId(rs.getInt("o_id"));
                Order o = new OrderDAO().getOrderByID(rs.getInt("o_id"));
                Service s = new ServiceDAO().getServiceByID(rs.getInt("s_id"));
                od.setService(s);
                User doctor = new UserDAO().getUser(rs.getString("email_doctor"));
                od.setDoctor(doctor);
                od.setExamDate(rs.getDate("examineDate"));
                od.setExamStatus(rs.getBoolean("exam_Status"));
                od.setResultNote(rs.getString("note"));
                od.setPrice(rs.getDouble("price"));
                od.setCheckoutDate(rs.getDate("checkOutDate"));
                od.setMedicalStatus(rs.getBoolean("medical_status"));
                List<MedicinePrescript> mp = new MedicinePrescriptDAO().getMPByOdID(odId);
                od.setMedicinePrescript(mp);
                MedicalRecord mr = new MedicalRecordDAO().getMedicalRecordByID(rs.getInt("mr_id"));
                od.setMedicalRecord(mr);
                od.setSymptom(rs.getString("symptom"));
                od.setOrdinalNumber(rs.getInt("ordinal_number"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return od;
    }

    public void changeMedicalStatus(boolean medicalStatus, int odId) {
        try {
            String sql = "update order_detail set medical_Status=? where od_id=? ";
            PreparedStatement ps = ps(sql);
            ps.setBoolean(1, medicalStatus);
            ps.setInt(2, odId);
            ps.execute();
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public ArrayList<OrderDetail> getOrderDetailList(OrderDAO orderDAO) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        try {
            String sql = getAllOrderDetail;
            PreparedStatement ps = ps(sql);
            ResultSet rs = ps.executeQuery();
            OrderDAO o = new OrderDAO();
            ServiceDAO sdao = new ServiceDAO();
            UserDAO udao = new UserDAO();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                od.setOdId(rs.getInt("od_id"));
                od.setoId(rs.getInt("o_id"));
                od.setService(sdao.getServiceByID(rs.getInt("s_id")));
                od.setExamDate(rs.getDate("examineDate"));
                od.setCheckoutDate(rs.getDate("checkOutDate"));
                od.setResultNote(rs.getString("note"));
                od.setPrice(rs.getDouble("price"));
                List<MedicinePrescript> mp = new MedicinePrescriptDAO().getMPByOdID(od.getOdId());
                od.setMedicinePrescript(mp);
                od.setExamStatus(rs.getBoolean("exam_Status"));
                od.setDoctor(udao.getUser(rs.getString("email_doctor")));
                od.setMedicalStatus(rs.getBoolean("medical_Status"));
                od.setOrdinalNumber(rs.getInt("ordinal_number"));
                list.add(od);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int updateOrderDetailAfterExam(OrderDetail od) {
        int status = 0;
        try {
            String sql = "update Order_detail set note = ?,exam_Status=?,medical_Status=? where od_id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, od.getResultNote());
            ps.setBoolean(2, od.isExamStatus());
            ps.setBoolean(3, od.isMedicalStatus());
            ps.setInt(4, od.getOdId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public ArrayList<OrderDetail> getOrderDetail(int o_id) {
        ArrayList<OrderDetail> orderDetail = new ArrayList<>();
        String sql = "SELECT [od_id]\n"
                + "      ,[o_id]\n"
                + "      ,[s_id]\n"
                + "      ,[email_doctor]\n"
                + "      ,[examineDate]\n"
                + "      ,[exam_Status]\n"
                + "      ,[note]\n"
                + "      ,[price]\n"
                + "      ,[checkOutDate]\n"
                + "      ,[medical_Status]\n"
                + "      ,[mr_id]\n"
                + "      ,[symptom]\n"
                + "  FROM [dbo].[Order_detail] Where o_id = ?";
        try {
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setInt(1, o_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                Service s = new Service();
                s.setSid(rs.getInt("s_id"));
                od.setService(s);
                User u = new User();
                u.setEmail(rs.getString("email_doctor"));
                od.setDoctor(u);
                od.setExamDate(rs.getDate("examineDate"));
                od.setExamStatus(false);
                od.setResultNote(null);
                od.setPrice(rs.getDouble("price"));
                od.setCheckoutDate(rs.getDate("checkOutDate"));
                MedicalRecord mr = new MedicalRecord();
                mr.setId(rs.getInt("mr_id"));
                od.setMedicalRecord(mr);
                od.setMedicalStatus(false);
                od.setSymptom("");
                orderDetail.add(od);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetail;
    }

    public int getAvailableOrderNumber(Date dateExam, String doctorEmail) {
        int orderNumber = 1;
        List<Integer> orderNumberArray = new ArrayList();
        try {
            String sql = "select ordinal_number from Order_detail where email_doctor=? and examineDate=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, doctorEmail);
            ps.setDate(2, dateExam);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                orderNumberArray.add(rs.getInt("ordinal_number"));
            }

            if (!orderNumberArray.isEmpty()) {
//                System.out.print("Number ordered: ");
//                for (Integer integer : orderNumberArray) {
//                    System.out.print(integer + ", ");
//                }
//                System.out.println("");
                for (int i = 0; i < orderNumberArray.size(); i++) {
                    if (orderNumberArray.get(i) != i + 1) {
                        return i + 1;
                    }
                }
                return orderNumberArray.size() + 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return orderNumber;
    }

    public String doctorHaveLeastNumberOrder(Date examDate, int serviceType) {
        try {
            String sql = "select doctor from \n"
                    + "(select email_doctor as doctor,count(ordinal_number) as numberOfOrderOnDate from Order_detail\n"
                    + "join Doctor on email_doctor = email\n"
                    + "where examineDate = ? and t_id = ?\n"
                    + "group by email_doctor) a \n"
                    + "where a.numberOfOrderOnDate = \n"
                    + "(select min(numberOfOrderOnDate) \n"
                    + "from \n"
                    + "(select email_doctor as doctor,\n"
                    + "count(ordinal_number) as numberOfOrderOnDate \n"
                    + "from Order_detail\n"
                    + "join Doctor on email_doctor = email\n"
                    + "where examineDate = ? and t_id = ?\n"
                    + "group by email_doctor) b)";
            PreparedStatement ps = ps(sql);
            ps.setDate(1, examDate);
            ps.setDate(3, examDate);
            ps.setInt(2, serviceType);
            ps.setInt(4, serviceType);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("doctor");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return "anhvhhs153214@fpt.edu.vn";
    }

    public void insertOrderDetail(OrderDetail od) {
        String sql = "INSERT INTO [Order_detail]\n"
                + "([o_id],[s_id],[email_doctor],[examineDate],[exam_Status],[price],[mr_id],[symptom],[ordinal_number])\n"
                + "VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement stm = ps(sql);

            stm.setInt(1, od.getoId());
            stm.setInt(2, od.getService().getSid());
            //email doctor
            stm.setString(3, od.getDoctor().getEmail());
            stm.setDate(4, od.getExamDate());
            stm.setBoolean(5, false);
            stm.setDouble(6, od.getPrice());
            //MedicalRecord table
            stm.setInt(7, od.getMedicalRecord().getId());
            stm.setString(8, od.getSymptom());
            stm.setInt(9, od.getOrdinalNumber());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    public static void main(String[] args) {
        OrderDetailDAO od = new OrderDetailDAO();
        System.out.println(od.doctorHaveLeastNumberOrder(Date.valueOf("2022-07-11"), 1));

    }


}
