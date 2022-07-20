/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account.Doctor;
import Model.Order.OrderDetail;
import Model.Service.Service;
import Model.Service.ServiceType;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/**
 *
 * @author Administrator
 */
public class ServiceDAO extends DAO.DBConnect.DBContext {

    final String addService = "INSERT INTO [Service]\n"
            + "           ([name]\n"
            + "           ,[status]\n"
            + "           ,[original_price]\n"
            + "           ,[sale_price]\n"
            + "           ,[t_id]\n"
            + "           ,[details]\n"
            + "           ,[updated_date]\n"
            + "           ,[photo])\n"
            + "     VALUES\n"
            + "           (?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,convert(date,GETDATE())\n"
            + "           ,?)";

    final String getListService = "SELECT [id]\n"
            + "      ,[name]\n"
            + "      ,[status]\n"
            + "      ,[original_price]\n"
            + "      ,[sale_price]\n"
            + "      ,[t_id]\n"
            + "      ,[details]\n"
            + "      ,[updated_date]\n"
            + "      ,[photo]\n"
            + "  FROM [Service] \n";
    final String getListServiceActive = "SELECT [id]\n"
            + "      ,[name]\n"
            + "      ,[status]\n"
            + "      ,[original_price]\n"
            + "      ,[sale_price]\n"
            + "      ,[t_id]\n"
            + "      ,[details]\n"
            + "      ,[updated_date]\n"
            + "      ,[photo]\n"
            + "  FROM [Service] \n where status=?";
    final String getServiceByID = "SELECT [id]\n"
            + "      ,[name]\n"
            + "      ,[status]\n"
            + "      ,[original_price]\n"
            + "      ,[sale_price]\n"
            + "      ,s.t_id\n"
            + "      ,st.t_name\n"
            + "      ,[details]\n"
            + "      ,[updated_date]\n"
            + "      ,[photo]\n"
            + "  FROM [Service] s join Service_Type st on s.t_id = st.t_id where s.id = ?";

    final String editService = "UPDATE [Service]\n"
            + "   SET [name] = ?\n"
            + "      ,[status] = ?\n"
            + "      ,[original_price] = ?\n"
            + "      ,[sale_price] = ?\n"
            + "      ,[t_id] = ?\n"
            + "      ,[details] = ?\n"
            + "      ,[updated_date] = convert(date,GETDATE())\n"
            + "      ,[photo] = ?\n"
            + " WHERE id = ?";

    final String serviceType = "SELECT [t_id]\n"
            + "        ,[t_name]\n"
            + " FROM [Service_Type]";

    final String getServiceTypeByID = "SELECT\n"
            + "        [t_name]\n"
            + " FROM [Service_Type] where t_id = ?";
    final String getServiceImgLink = "Select photo from Service where id=?";
    final String getServiceByType = "Select * from Service where t_id=? and status=?";

    public ArrayList<Service> getServiceActiveByType(int typeId) {
        ArrayList<Service> list = new ArrayList<>();
        try {

            String sql = getServiceByType;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, typeId);
            ps.setBoolean(2, true);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = new Service();
                s.setSid(rs.getInt("id"));
                s.setSname(rs.getString("name"));
                s.setStatus(rs.getBoolean("status"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setSt(getServiceType(rs.getInt("t_id")));
                s.setDetails(rs.getString("details"));
                s.setUpdated_date(rs.getDate("updated_date"));
                s.setPhoto(rs.getString("photo"));
                list.add(s);

            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public String getServiceImgLink(int id) {

        try {

            String sql = getServiceImgLink;
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

    public ArrayList<Service> getListService() {
        ArrayList<Service> list = new ArrayList<>();
        try {

            String sql = getListService;
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Service s = new Service();
                s.setSid(rs.getInt("id"));
                s.setSname(rs.getString("name"));
                s.setStatus(rs.getBoolean("status"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setSt(getServiceType(rs.getInt("t_id")));
                s.setDetails(rs.getString("details"));
                s.setUpdated_date(rs.getDate("updated_date"));
                s.setPhoto(rs.getString("photo"));
                list.add(s);

            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public ArrayList<Service> getListServiceActive() {
        ArrayList<Service> list = new ArrayList<>();
        try {

            String sql = getListServiceActive;
            PreparedStatement ps = ps(sql);
            ps.setBoolean(1, true);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Service s = new Service();
                s.setSid(rs.getInt("id"));
                s.setSname(rs.getString("name"));
                s.setStatus(rs.getBoolean("status"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setSt(getServiceType(rs.getInt("t_id")));
                s.setDetails(rs.getString("details"));
                s.setUpdated_date(rs.getDate("updated_date"));
                s.setPhoto(rs.getString("photo"));
                list.add(s);

            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public ArrayList<Service> searchListService(String name_raw, String type_raw, int status) {
        ArrayList<Service> list = new ArrayList<>();
        try {

            String sql = getListService;
            int type = Integer.parseInt(type_raw);
            boolean statusR = true;
            if (status == 0) {
                statusR = false;
            } else {
                statusR = true;
            }
//            loc 3 kieu search 
            if (!name_raw.equals("-1") || !type_raw.equals("-1") || status != -1) {
                sql += "WHERE \n";
//            status
                if (status >= 0) {
                    sql += "status = '" + statusR + "'\n";
                }
                //service type
                if (status >= 0 && type >= 1) {
                    sql += "AND t_id = '" + type + "'\n";
                } else if (status < 0 && type >= 1) {
                    sql += "t_id = '" + type + "'\n";
                } //title
                else if (Pattern.matches("[.]+", name_raw) && status >= 0) {
                    sql += "AND name LIKE '%" + name_raw + "%'\n";
                } else if (Pattern.matches("[.]+", name_raw) && status < 0) {
                    sql += "name LIKE '%" + name_raw + "%'\n";
                }
            }
            ResultSet rs = rs(sql);
            while (rs.next()) {
//             
                Service s = new Service();
                s.setSid(rs.getInt("id"));
                s.setSname(rs.getString("name"));
                s.setStatus(rs.getBoolean("status"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setSt(getServiceType(rs.getInt("t_id")));
                s.setDetails(rs.getString("details"));
                s.setUpdated_date(rs.getDate("updated_date"));
                s.setPhoto(rs.getString("photo"));
                list.add(s);
            }

        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return list;
    }

    public ArrayList<ServiceType> listServiceType() {
        ArrayList<ServiceType> list = new ArrayList<>();
        try {

            String sql = serviceType;
            ResultSet rs = rs(sql);
            while (rs.next()) {
                list.add(new ServiceType(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ServiceType getServiceType(int tid) {
        try {

            String sql = getServiceTypeByID;
            PreparedStatement ps = ps(sql);
            ps.setInt(1, tid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new ServiceType(tid, rs.getString("t_name"));
            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public void addService(Service s) {
        try {
            String sql = addService;
            PreparedStatement stm = ps(sql);
            stm.setString(1, s.getSname());
            stm.setBoolean(2, s.isStatus());
            stm.setDouble(3, s.getOriginal_price());
            stm.setDouble(4, s.getSale_price());
            stm.setInt(5, s.getSt().getT_id());
            stm.setString(6, s.getDetails());
            stm.setString(7, s.getPhoto());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public Service getServiceByID(int sid) {
        try {

            String sql = getServiceByID;

            PreparedStatement stm = ps(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Service service = new Service();
                service.setSid(rs.getInt("id"));
                service.setSname(rs.getString("name"));
                service.setStatus(rs.getBoolean("status"));

                service.setOriginal_price(rs.getDouble("original_price"));
                service.setSale_price(rs.getDouble("sale_price"));

                ServiceType st = new ServiceType();
                st.setT_id(rs.getInt("t_id"));
                st.setT_name(rs.getString("t_name"));
                service.setSt(st);
                service.setDetails(rs.getString("details"));

                service.setUpdated_date(rs.getDate("updated_date"));
                service.setPhoto(rs.getString("photo"));

                return service;
            }
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);

        } finally {

            close();
        }
        return null;
    }

    public void editService(Service s) {
        try {

            String sql = editService;
            PreparedStatement stm = ps(sql);
            stm.setString(1, s.getSname());
            stm.setBoolean(2, s.isStatus());
            stm.setDouble(3, s.getOriginal_price());
            stm.setDouble(4, s.getSale_price());
            stm.setInt(5, s.getSt().getT_id());
            stm.setString(6, s.getDetails());
            stm.setString(7, s.getPhoto());
            stm.setInt(8, s.getSid());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            close();
        }
    }

    public List<Doctor> getAllDoctorOfService(int serviceType_id) {
        List<Doctor> list = null;
        try {
            list = new ArrayList<>();
            String sql = "SELECT [email]\n"
                    + "      ,[position]\n"
                    + "      ,[training_process]\n"
                    + "      ,[working_process]\n"
                    + "      ,[research_work]\n"
                    + "      ,[scientific_research_topics]\n"
                    + "      ,[bonus]\n"
                    + "      ,dt.[t_id]\n"
                    + "  FROM [dbo].[Doctor] dt\n"
                    + "  where dt.t_id = ?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, serviceType_id);
           
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Doctor dt = new Doctor();
                dt.setUser(new UserDAO().getUser(rs.getString("email")));
                dt.setPosition(rs.getString("position"));
                dt.setTrainingProcess(rs.getString("training_process"));
                dt.setWorkingProcess(rs.getString("working_process"));
                dt.setResearchWork(rs.getString("research_work"));
                dt.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                dt.setBonus(rs.getString("bonus"));
                dt.setServiceType(new ServiceDAO().getServiceType(rs.getInt("t_id")));
                list.add(dt);
            }
        } catch (Exception e) {
        } finally {
            close();
        }
        return list;
    }

}
