/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.Doctor;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tkoko
 */
public class DoctorDAO extends DBContext {

    final String getAllDoctors = "select email,position,training_process,working_process,research_work\n"
            + ",scientific_research_topics,bonus,t_id from Doctor";
    final String getDoctorByEmail = "SELECT [email]\n"
            + "	     ,[position]\n"
            + "      ,[training_process]\n"
            + "      ,[working_process]\n"
            + "      ,[research_work]\n"
            + "      ,[scientific_research_topics]\n"
            + "      ,[bonus]\n"
            + "      ,[twitter]\n"
            + "      ,[facebook]\n"
            + "      ,[linkedin]\n"
            + "      ,[instagram]\n"
            + "      ,[t_id]\n"
            + "  FROM [Doctor] WHERE email like ?";

    final String getDoctorByServiceType = "select email,position,training_process,working_process,research_work\n"
            + ",scientific_research_topics,bonus,t_id from Doctor\n"
            + "where t_id = ?";
    final String getDoctorByServiceTypeActive = "SELECT TOP (6) d.[email]\n"
            + "	     ,[position]\n"
            + "      ,[training_process]\n"
            + "      ,[working_process]\n"
            + "      ,[research_work]\n"
            + "      ,[scientific_research_topics]\n"
            + "      ,[bonus]\n"
            + "      ,[twitter]\n"
            + "      ,[facebook]\n"
            + "      ,[linkedin]\n"
            + "      ,[instagram]\n"
            + "      ,[t_id]\n"
            + "  FROM [Doctor] as d join [User] as u on d.email=u.email\n"
            + "  WHERE u.status=1";

    final String getListDoctor = "SELECT d.[email]\n"
            + "	     ,[position]\n"
            + "      ,[training_process]\n"
            + "      ,[working_process]\n"
            + "      ,[research_work]\n"
            + "      ,[scientific_research_topics]\n"
            + "      ,[bonus]\n"
            + "      ,[twitter]\n"
            + "      ,[facebook]\n"
            + "      ,[linkedin]\n"
            + "      ,[instagram]\n"
            + "      ,[t_id]\n"
            + "  FROM [Doctor] as d join [User] as u on d.email=u.email\n"
            + "  WHERE u.status=1";

    public ArrayList<Doctor> getDoctorByServiceType(int typeServiceId) {
        ArrayList<Doctor> doctors = new ArrayList<>();
        try {
            String sql = getDoctorByServiceType;
            PreparedStatement stm = ps(sql);
            stm.setInt(1, typeServiceId);
            ResultSet rs = stm.executeQuery();
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("training_process"));
                d.setTrainingProcess(rs.getString("working_process"));
                d.setWorkingProcess(rs.getString("workingProcess"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                doctors.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return doctors;
    }

    public Doctor getDoctorByEmail(String email) {
        try {
            String sql = getDoctorByEmail;
            PreparedStatement stm = ps(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            if (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("position"));
                d.setTrainingProcess(rs.getString("training_process"));
                d.setWorkingProcess(rs.getString("working_process"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setTwitter(rs.getString("twitter"));
                d.setFacebook(rs.getString("facebook"));
                d.setLinkedin(rs.getString("linkedin"));
                d.setInstagram(rs.getString("instagram"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                return d;
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Doctor> getAllDoctor() {
        ArrayList<Doctor> doctors = new ArrayList<>();
        try {
            String sql = getAllDoctors;
            ResultSet rs = rs(sql);
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("training_process"));
                d.setTrainingProcess(rs.getString("working_process"));
                d.setWorkingProcess(rs.getString("workingProcess"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                doctors.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return doctors;
    }

    public ArrayList<Doctor> getDoctorByServiceTypeActive(int typeServiceId) {
        ArrayList<Doctor> doctors = new ArrayList<>();
        try {
            String sql = getDoctorByServiceTypeActive;
            if (typeServiceId != 0) {
                sql += " AND [t_id] =" + typeServiceId + " ";
            }
            PreparedStatement stm = ps(sql);
            ResultSet rs = stm.executeQuery();
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("position"));
                d.setTrainingProcess(rs.getString("training_process"));
                d.setWorkingProcess(rs.getString("working_process"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setTwitter(rs.getString("twitter"));
                d.setFacebook(rs.getString("facebook"));
                d.setLinkedin(rs.getString("linkedin"));
                d.setInstagram(rs.getString("instagram"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                doctors.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return doctors;
    }

    public ArrayList<Doctor> getNext6Doctor(int typeServiceId, int amount, String search) {
        ArrayList<Doctor> doctors = new ArrayList<>();
        try {
            String sql = getListDoctor;
            if (typeServiceId != 0) {
                sql += " AND [t_id] =" + typeServiceId + "\n";
            }
            if (!(search == null || search.equals(""))) {
                sql += "AND u.name like ?\n";
            }
            sql += "  ORDER BY d.email\n"
                    + "  OFFSET " + amount + " ROWS FETCH NEXT 6 ROWS ONLY";
            PreparedStatement stm = ps(sql);
            if (!(search == null || search.equals(""))) {
                stm.setString(1, "%" + search + "%");
            }
            ResultSet rs = stm.executeQuery();
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("position"));
                d.setTrainingProcess(rs.getString("training_process"));
                d.setWorkingProcess(rs.getString("working_process"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setTwitter(rs.getString("twitter"));
                d.setFacebook(rs.getString("facebook"));
                d.setLinkedin(rs.getString("linkedin"));
                d.setInstagram(rs.getString("instagram"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                doctors.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return doctors;
    }

    public ArrayList<Doctor> searchDoctor(int typeServiceId, String search) {
        ArrayList<Doctor> doctors = new ArrayList<>();
        try {
            String sql = getDoctorByServiceTypeActive;
            if (typeServiceId != 0) {
                sql += " AND [t_id] =" + typeServiceId + "\n";
            }
            sql += "AND u.name like ?";
            PreparedStatement stm = ps(sql);
            stm.setString(1, "%" + search + "%");
            ResultSet rs = stm.executeQuery();
            UserDAO userDAO = new UserDAO();
            ServiceDAO serviceDAO = new ServiceDAO();
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setUser(userDAO.getUser(rs.getString("email")));
                d.setPosition(rs.getString("position"));
                d.setTrainingProcess(rs.getString("training_process"));
                d.setWorkingProcess(rs.getString("working_process"));
                d.setResearchWork(rs.getString("research_work"));
                d.setScientificResearchTopics(rs.getString("scientific_research_topics"));
                d.setBonus(rs.getString("bonus"));
                d.setTwitter(rs.getString("twitter"));
                d.setFacebook(rs.getString("facebook"));
                d.setLinkedin(rs.getString("linkedin"));
                d.setInstagram(rs.getString("instagram"));
                d.setServiceType(serviceDAO.getServiceType(rs.getInt("t_id")));
                doctors.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return doctors;
    }
}
