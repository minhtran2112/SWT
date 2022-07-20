package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.User;
import Model.Order.MedicalRecord;
import Model.Order.Order;
import Model.Order.OrderDetail;

import Model.Service.Service;
import Model.medical.Medicine;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderDAO extends DBContext {

    final String listOrderByEmail = "SELECT [o_id]\n"
            + "      ,[email_customer]\n"
            + "      ,[dateOrdered]\n"
            + "      ,[totalCost]\n"
            + "      ,[status]\n"
            + "  FROM [Order]\n"
            + "  where email_customer = ?";

    final String getOrderByID = "SELECT o_id\n"
            + "      ,[email_customer]\n"
            + "      ,[dateOrdered]\n"
            + "      ,[totalCost]\n"
            + "  FROM [Order] \n"
            + "  where o_id = ?";

    final String getOrderDetailByOrderDetailID = "SELECT *"
            + "  FROM [Order_detail]\n"
            + "  where od_id = ?";
    final String getOrderDetailByOrderID = "SELECT [od_id]\n"
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
            + "      ,[ordinal_number]\n"
            + "  FROM [Order_detail]\n"
            + "  where o_id = ?";

    final String getAllOrderDetail = "SELECT [od_id]\n"
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
            + "  FROM [Order_detail]";

    UserDAO udao = new UserDAO();
    ServiceDAO sdao = new ServiceDAO();

    public ArrayList<Order> getListOrderByEmail(String email) {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String sql = listOrderByEmail;
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            OrderDetailDAO odDao = new OrderDetailDAO();
            while (rs.next()) {
                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                o.setCustomer(udao.getUser(email));
                o.setDateOrder(rs.getDate("dateOrdered"));

                if (odDao.getOrderDetailByOrderID(o.getOid()) != null) {
                    o.setOrderDetail(odDao.getOrderDetailByOrderID(o.getOid()));
                } else {
                    o.setOrderDetail(null);
                }

                o.setTotalPrice(rs.getDouble("totalCost"));
                list.add(o);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            close();
        }
        return list;
    }

    public Order getOrderByID(int oid) {

        try {
            String sql = getOrderByID;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, oid);
            ResultSet rs = ps.executeQuery();
            OrderDetailDAO odDao = new OrderDetailDAO();
            while (rs.next()) {
                Order o = new Order();
                o.setOid(oid);
                o.setCustomer(udao.getUser(rs.getString("email_customer")));
                o.setDateOrder(rs.getDate("dateOrdered"));

                o.setOrderDetail(odDao.getOrderDetailByOrderID(rs.getInt("o_id")));

                o.setTotalPrice(rs.getDouble("totalCost"));
                return o;
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public List<Order> getListOrderedForDoctor(String doctorEmail) {
        List<Order> list = null;
        try {

            list = new ArrayList<>();
            String sql = "SELECT Order_detail.[o_id],s_id,email_doctor\n"
                    + ",[email_customer]\n"
                    + ",[dateOrdered]\n"
                    + ",[totalCost],exam_Status,examineDate,medical_Status\n"
                    + " FROM [dbo].[Order] join Order_detail on [Order].o_id = [Order_detail].o_id\n"
                    + "Where Order_detail.email_doctor = ?";
            PreparedStatement ps = ps(sql);

            ps.setString(1, doctorEmail);
            ResultSet rs = ps.executeQuery();
            OrderDetailDAO odDao = new OrderDetailDAO();
            while (rs.next()) {
                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                o.setCustomer(udao.getUser(rs.getString("email_customer")));
                o.setDateOrder(rs.getDate("dateOrdered"));
                o.setOrderDetail(odDao.getOrderDetailByOrderID(rs.getInt("o_id")));
                o.setTotalPrice(rs.getDouble("totalCost"));

                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    public int insertOrder(Order o) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([email_customer]\n"
                + "           ,[dateOrdered]\n"
                + "           ,[totalCost])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            PreparedStatement ps = ps(sql);

            ps.setString(1, o.getCustomer().getEmail());
            ps.setDate(2, o.getDateOrder());
            ps.setDouble(3, o.getTotalPrice());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("o_id");
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return -1;
    }

     public Order getOrder(int o_id) {
        String sql = "SELECT o.[o_id]\n"
                + "      ,o.[email_customer]\n"
                + "      ,o.[dateOrdered]\n"
                + "      ,o.[totalCost]\n"
                + "      ,o.[status],u.name\n"
                + "  FROM [dbo].[Order] o inner join [User] u on o.email_customer = u.email \n"
                + "  Where o_id = ?";
        try {
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setInt(1, o_id);
            ResultSet rs = stm.executeQuery();     
            if (rs.next()) {  
                Order o = new Order();
                o.setOid(o_id);
                User u = new User();
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email_customer"));
                o.setCustomer(u);
                o.setDateOrder(rs.getDate("dateOrdered"));
                o.setTotalPrice(rs.getDouble("totalCost"));
                return o;
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }


    public ArrayList<Order> getOrderByStatus(int status) {
        try {
            String sql = "select o_id,email_customer,dateOrdered,totalCost,[status] from [Order]\n";
            if (status != -1) {
                sql += "where [status] = ? ";
            }
            PreparedStatement stm = getConnection().prepareStatement(sql);
            if (status != -1) {
                if (status == 1) {
                    stm.setBoolean(1, true);
                } else {
                    stm.setBoolean(1, false);
                }
            }

            ArrayList<Order> orders = new ArrayList<>();
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                o.setCustomer(udao.getCustomerByEmail(rs.getString("email_customer")));
                o.setDateOrder(rs.getDate("dateOrdered"));
                o.setTotalPrice(rs.getDouble("totalCost"));
                o.setStatus(rs.getBoolean("status"));
                //list orderDetail
                OrderDetailDAO odao = new OrderDetailDAO();
                o.setOrderDetail(odao.getOrderDetailByOrderID(o.getOid()));
                orders.add(o);
            }
            return orders;
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Order> searchOrder(int status, String raw_from, String raw_to, String raw_search) {
        try {
            Date from = Date.valueOf(raw_from);
            Date to = Date.valueOf(raw_to);
            String search = "";
            String sql = "select o.o_id,email_customer,dateOrdered,totalCost,o.[status] from [Order] AS o JOIN [Order_detail] \n"
                    + "AS od ON o.o_id = od.o_id JOIN [Medical_record] AS mr ON mr.mr_id = od.mr_id JOIN [User] AS u\n"
                    + "ON u.email = o.email_customer JOIN [User] AS udoctor ON udoctor.email = od.email_doctor\n"
                    + "where (od.examineDate >= ? AND od.examineDate <= ?)\n";
            if (!raw_search.equals("")) {
                search = "%" + raw_search + "%";
                sql += "AND (od.email_doctor like ? OR mr.full_name like ? OR mr.phone like ? OR u.[name] like ?\n"
                        + "OR u.email like ? OR u.phone like ? OR udoctor.[name] like ?) \n";
            }
            if (status != -1) {
                sql += "AND  o.[status] = ? \n";
            }
            sql += "group by o.o_id,email_customer,dateOrdered,totalCost,o.[status]\n"
                    + "Union \n"
                    + "select o.o_id,email_customer,dateOrdered,totalCost,o.[status] from [Order] AS o JOIN [Order_detail] \n"
                    + "AS od ON o.o_id = od.o_id JOIN [Medical_record] AS mr ON mr.mr_id = od.mr_id \n"
                    + "JOIN [User] AS udoctor ON udoctor.email = od.email_doctor\n"
                    + "where email_customer IS NULL AND (od.examineDate >= ? AND od.examineDate <= ?)\n";
            if (!raw_search.equals("")) {
                sql += "AND (od.email_doctor like ? OR mr.full_name like ? \n"
                        + "OR mr.phone like ?  OR udoctor.[name] like ? ) \n";
            }
            if (status != -1) {
                sql += "AND  o.[status] = ? \n";
            }
            PreparedStatement stm = getConnection().prepareStatement(sql);
            if (status == -1 && raw_search.equals("")) {
                stm.setDate(1, from);
                stm.setDate(2, to);
                stm.setDate(3, from);
                stm.setDate(4, to);
            } else if (status == -1 && !raw_search.equals("")) {
                stm.setDate(1, from);
                stm.setDate(2, to);
                stm.setString(3, search);
                stm.setString(4, search);
                stm.setString(5, search);
                stm.setString(6, search);
                stm.setString(7, search);
                stm.setString(8, search);
                stm.setString(9, search);
                stm.setDate(10, from);
                stm.setDate(11, to);
                stm.setString(12, search);
                stm.setString(13, search);
                stm.setString(14, search);
                stm.setString(15, search);
            } else if (status != -1 && !raw_search.equals("")) {
                boolean result_status = false;
                if (status == 1) {
                    result_status = true;
                }
                stm.setDate(1, from);
                stm.setDate(2, to);
                stm.setString(3, search);
                stm.setString(4, search);
                stm.setString(5, search);
                stm.setString(6, search);
                stm.setString(7, search);
                stm.setString(8, search);
                stm.setString(9, search);
                stm.setBoolean(10, result_status);
                stm.setDate(11, from);
                stm.setDate(12, to);
                stm.setString(13, search);
                stm.setString(14, search);
                stm.setString(15, search);
                stm.setString(16, search);
                stm.setBoolean(17, result_status);
            } else if (status != -1 && raw_search.equals("")) {
                boolean result_status = false;
                if (status == 1) {
                    result_status = true;
                }
                stm.setDate(1, from);
                stm.setDate(2, to);
                stm.setBoolean(3, result_status);
                stm.setDate(4, from);
                stm.setDate(5, to);
                stm.setBoolean(6, result_status);
            }
            ArrayList<Order> orders = new ArrayList<>();
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                o.setCustomer(udao.getCustomerByEmail(rs.getString("email_customer")));
                o.setDateOrder(rs.getDate("dateOrdered"));
                o.setTotalPrice(rs.getDouble("totalCost"));
                o.setStatus(rs.getBoolean("status"));
                //list orderDetail
                OrderDetailDAO odao = new OrderDetailDAO();
                o.setOrderDetail(odao.getOrderDetailByOrderID(o.getOid()));
                orders.add(o);
            }
            return orders;
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean checkOrderComplite(int oid) {
        try {
            String sql = "select count(exam_Status) AS Total from [Order] JOIN [Order_detail] ON [Order].o_id = [Order_detail].o_id\n"
                    + "where [Order].o_id = ? AND exam_Status = 1\n"
                    + "group by exam_Status\n"
                    + "having count(exam_Status) = (select count(*)from [Order] JOIN [Order_detail] ON [Order].o_id = [Order_detail].o_id\n"
                    + "where [Order].o_id = ? )";
            PreparedStatement stm = ps(sql);
            stm.setInt(1, oid);
            stm.setInt(2, oid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void updateStatus(int o_id) {
        try {
            String sql = "UPDATE [Order]\n"
                    + "   SET [status] = 1 \n"
                    + " WHERE o_id = ?";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setInt(1, o_id);
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void insertOrderDetail(int o_id, OrderDetail od) {
        String sql = "INSERT INTO [dbo].[Order_detail]\n"
                + "           ([o_id]\n"
                + "           ,[s_id]\n"
                + "           ,[email_doctor]\n"
                + "           ,[examineDate]\n"
                + "           ,[exam_Status]\n"
                + "           ,[price]\n"
                + "           ,[medical_Status]\n"
                + "           ,[mr_id]\n"
                + "           ,[symptom])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        PreparedStatement stm = null;
        try {
            stm = getConnection().prepareStatement(sql);
            stm.setInt(1, o_id);
            stm.setInt(2, od.getService().getSid());
            //email doctor
            stm.setString(3, od.getDoctor().getEmail());
            stm.setDate(4, od.getExamDate());
            stm.setBoolean(5, false);
            stm.setDouble(6, od.getPrice());
            stm.setBoolean(7, false);
            //MedicalRecord table
            stm.setInt(8, od.getMedicalRecord().getId());
            stm.setString(9, od.getSymptom());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
