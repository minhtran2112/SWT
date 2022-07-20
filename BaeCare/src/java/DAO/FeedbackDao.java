/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.User;
import Model.Feedback.Feedback;
import Model.Order.Order;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class FeedbackDao extends DBContext {

    public ArrayList<Feedback> searchFeedback(String name, int star, int sid, int status, String sort, String type) {
        ArrayList<Feedback> list = new ArrayList<>();
        try {
            list = new ArrayList<>();
            String sql = "  	  SELECT f.[id]\n"
                    + "      ,f.[photo]\n"
                    + "      ,[star]\n"
                    + "      ,f.[details]\n"
                    + "      ,[s_id]\n"
                    + "      ,[u_email]\n"
                    + "      ,[o_id]\n"
                    + "      ,f.[status]\n"
                    + "  FROM Feedback f\n"
                    + "      join Service s on f.s_id = s.id\n"
                    + "      join [User] u on f.u_email = u.email\n";

            if (star != -1 || name != "" || sid != 0) {
                sql += "WHERE \n";
            }
            //star
            if (star >= 1) {
                sql += "[star] = " + star + "\n";
            }
            //service
            if (star >= 1 && sid >= 1) {
                sql += " AND f.[s_id] = " + sid + "\n";
            } else if (star == -1 && sid >= 1) {
                sql += " f.[s_id] = " + sid + "\n";
            }
            //username or feedback detail
            if ((star >= 1 || sid >= 1) && name != "") {
                sql += " AND (u.[name] like '%" + name + "%' OR f.[details] like '%" + name + "%')\n";
            } else if (star == -1 && sid == 0 && name != "") {
                sql += " u.[name] like '%" + name + "%' OR f.[details] like '%" + name + "%'\n";
            }
            // sort
            if (!"-1".equals(sort)) {
                sql += "ORDER BY " + sort + " " + type + ";";
            }
            System.out.println(sql);
            PreparedStatement stm = ps(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                OrderDAO odao = new OrderDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));
                f.setOrder(odao.getOrderByID(rs.getInt("o_id")));
                f.setStatus(rs.getBoolean("status"));
                // filter status
                if (status != -1) {
                    boolean statuss;
                    statuss = status == 1 ? true : false;
                    if (statuss == f.isStatus()) {
                        list.add(f);
                    }
                } else {
                    list.add(f);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }

        return list;
    }

    public FeedbackDao() {
    }

    final String getFeedBackOfAllServiceUserExamined = "Select id, photo,star,details,temp.s_id as s_id,temp.email_customer as u_email,temp.o_id as o_id from Feedback right join\n"
            + "(Select [Order].o_id, s_id, [Order].email_customer from Order_detail join [Order] on Order_detail.o_id = [Order].o_id where [Order].email_customer = ? ) temp\n"
            + "on Feedback.s_id = temp.s_id and Feedback.u_email = temp.email_customer";
    final String listFeedback = "SELECT [id]\n"
            + "      ,[photo]\n"
            + "      ,[star]\n"
            + "      ,[details]\n"
            + "      ,[s_id]\n"
            + "      ,[u_email]\n"
            + "      ,[o_id]\n"
            + "      ,[status]\n"
            + "  FROM [Feedback]";

    final String editFeedback = "UPDATE [Feedback]\n"
            + "   SET [photo] = ?\n"
            + "      ,[star] = ?\n"
            + "      ,[details] = ?\n"
            + "      ,[s_id] = ?\n"
            + " WHERE id  = ?";

    final String editStatus = "UPDATE [Feedback]\n"
            + "   SET [status] = ?\n"
            + " WHERE id  = ?";

    final String addFeedback = "INSERT INTO [Feedback]\n"
            + "           ([photo]\n"
            + "           ,[star]\n"
            + "           ,[details]\n"
            + "           ,[s_id]\n"
            + "           ,[u_email]\n"
            + "           ,[o_id])\n"
            + "     VALUES\n"
            + "           (?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?))";
    final String deteleFeedback = "DELETE FROM [Feedback]\n"
            + "      WHERE id = ?";

    final String getFeedbackByID = "SELECT id\n"
            + "      ,photo\n"
            + "      ,[star]\n"
            + "      ,details\n"
            + "      ,[s_id]\n"
            + "      ,[u_email]\n"
            + "      ,[o_id]\n"
            + "      ,[status]\n"
            + "  FROM [Feedback]\n"
            + "  where id = ?";

    final String getFeedbackByIDForMaganer = "SELECT id\n"
            + "      ,photo\n"
            + "      ,[star]\n"
            + "      ,details\n"
            + "      ,[s_id]\n"
            + "      ,[u_email]\n"
            + "      ,[o_id]\n"
            + "      ,[status]\n"
            + "  FROM [Feedback]\n"
            + "  where id = ?";

    final String getFeedbackImgLink = "Select photo from Service where id=?";

    public ArrayList<Feedback> getListFBByServiceExaminedOfUser(String email) {
        ArrayList<Feedback> list = new ArrayList<>();
        try {
            String sql = getFeedBackOfAllServiceUserExamined;
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
             OrderDAO odao = new OrderDAO();
             OrderDetailDAO odDao = new OrderDetailDAO();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));

                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                f.setOrder(o);
               
                f.setOrderDetail(odDao.getOrderDetailByID(rs.getInt("od_id")));
                list.add(f);
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    

    

 

    public Feedback getFeedbackByIDForMaganer(int fid) {
        try {
            String sql = getFeedbackByIDForMaganer;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, fid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));
                f.setStatus(rs.getBoolean("status"));
                return f;
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public Feedback getFeedbackByID(int fid) {
        try {
            String sql = getFeedbackByID;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, fid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));
                return f;
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public String getFeedbackImgLink(int id) {
        try {

            String sql = getFeedbackImgLink;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("photo");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            close();
        }
        return "";
    }

    public ArrayList<Feedback> getListFbByEmail(String email) {
        ArrayList<Feedback> list = new ArrayList<>();
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[photo]\n"
                    + "      ,[star]\n"
                    + "      ,[details]\n"
                    + "      ,[s_id]\n"
                    + "      ,[u_email]\n"
                    + "      ,[o_id]\n"
                    + "      ,[status]\n"
                    + "  FROM [Feedback]\n"
                    + " WHERE u_email = ?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));
                Order o = new Order();
                o.setOid(rs.getInt("o_id"));
                f.setOrder(o);
                list.add(f);
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public ArrayList<Feedback> getListFB() {
        ArrayList<Feedback> list = new ArrayList<>();
        try {
            String sql = listFeedback;
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFid(rs.getInt("id"));
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                ServiceDAO sdao = new ServiceDAO();
                UserDAO udao = new UserDAO();
                f.setService(sdao.getServiceByID(rs.getInt("s_id")));
                f.setUser(udao.getUser(rs.getString("u_email")));
                // set an order by oid in DB, already have function in OrderDAO
                f.setOrder(new OrderDAO().getOrderByID(rs.getInt("o_id")));
                list.add(f);
            }
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public void updateFB(Feedback f) {

        try {

            String sql = editFeedback;
            PreparedStatement ps = ps(sql);
            ps.setString(1, f.getFphoto());
            ps.setInt(2, f.getStar());
            ps.setString(3, f.getDetail());
            ps.setInt(4, f.getService().getSid());
            ps.setInt(5, f.getFid());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            close();
        }
    }

    public void updateStatus(int fid, boolean status) {
        try {
            Connection c = getConnection();
            String sql = editStatus;
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setBoolean(1, status);
            ps.setInt(2, fid);
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            close();
        }
    }

    public void addFB(Feedback f) {
        try {
            String sql = addFeedback;
            PreparedStatement ps = ps(sql);
            ps.setString(1, f.getFphoto());
            ps.setInt(2, f.getStar());
            ps.setString(3, f.getDetail());
            ps.setInt(4, f.getService().getSid());
            ps.setString(5, f.getUser().getEmail());
            ps.setInt(6, f.getOrder().getOid());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public void deteleFB(int fid) {
        try {
            String sql = deteleFeedback;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, fid);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public ArrayList<Feedback> getListFeedbackBySidAndStar(int sid, int star) {
        try {
            String sql = "select photo,star,details,u_email from Feedback\n"
                    + "where s_id = ? \n";
            if (star != -1) {
                sql += "AND star = ?";
            }
            PreparedStatement ps = ps(sql);
            ps.setInt(1, sid);
            if (star != -1) {
                ps.setInt(2, star);
            }
            ResultSet rs = ps.executeQuery();
            ArrayList<Feedback> listFeedbacks = new ArrayList<>();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFphoto(rs.getString("photo"));
                f.setStar(rs.getInt("star"));
                f.setDetail(rs.getString("details"));
                UserDAO userDAO = new UserDAO();
                User user = userDAO.getUser(rs.getString("u_email"));
                f.setUser(user);
                listFeedbacks.add(f);
            }
            return listFeedbacks;
        } catch (Exception ex) {
            Logger.getLogger(FeedbackDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
