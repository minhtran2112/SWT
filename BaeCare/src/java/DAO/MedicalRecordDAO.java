/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Order.MedicalRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nhiep
 */
public class MedicalRecordDAO extends DBContext {

    public int customerFillsInTheMedicalRecord(MedicalRecord medicalRecord) {
        try {
            String sql = "INSERT INTO [Medical_record]([full_name] ,[gender],[address],[reason_for_hospitalization],[phone]) VALUES (? ,?,?,?,?)";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setString(1, medicalRecord.getUserName());
            stm.setBoolean(2, medicalRecord.isGender());
            stm.setString(3, medicalRecord.getAddress());
            stm.setString(4, medicalRecord.getReasonForHospitalization());
            stm.setString(5, medicalRecord.getPhone());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("mr_id");
            }
        } catch (Exception ex) {
            Logger.getLogger(MedicalRecordDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public MedicalRecord getMedicalRecordByID(int mrId) {
        MedicalRecord mr = null;
        try {
            String sql = "select * from Medical_record\n"
                    + " where mr_id = ?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, mrId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                mr = new MedicalRecord();
                mr.setId(rs.getInt("mr_id"));
                mr.setUserName(rs.getString("full_name"));
                mr.setGender(rs.getBoolean("gender"));
                mr.setAddress(rs.getString("address"));
                mr.setExaminationDate(rs.getString("date_of_examination"));
                mr.setMedicalHistory(rs.getString("medical_history"));
                mr.setPreHistory(rs.getString("prehistory"));
                
                mr.setReasonForHospitalization(rs.getString("reason_for_hospitalization"));
                mr.setPhone(rs.getString("phone"));

                mr.setFirstExamService(new ServiceDAO().getServiceByID(rs.getInt("first_exam_service")));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return mr;
    }
    public MedicalRecord getMedicalRecordByOdID(int odId) {
        MedicalRecord mr = null;
        try {
            String sql = "select * from Medical_record join Order_detail on Medical_record.mr_id = Order_detail.mr_id\n"
                    + " where od_id = ?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, odId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                mr = new MedicalRecord();
                mr.setId(rs.getInt("mr_id"));
                mr.setUserName(rs.getString("full_name"));
                mr.setGender(rs.getBoolean("gender"));
                mr.setAddress(rs.getString("address"));
                mr.setExaminationDate(rs.getString("date_of_examination"));
                mr.setMedicalHistory(rs.getString("medical_history"));
                mr.setPreHistory(rs.getString("prehistory"));
                
                mr.setReasonForHospitalization(rs.getString("reason_for_hospitalization"));
                mr.setPhone(rs.getString("phone"));

                mr.setFirstExamService(new ServiceDAO().getServiceByID(rs.getInt("first_exam_service")));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return mr;
    }
    public ArrayList<MedicalRecord> getMedicalRecordsInOrder(int orderId) {
        try {
            String sql = "select mr.mr_id,full_name,gender,address,reason_for_hospitalization from [Order] as o join [Order_detail] as od\n"
                    + "ON o.o_id = od.o_id join [Medical_record] as mr ON mr.mr_id = od.mr_id\n"
                    + "where o.o_id = ? \n"
                    + "group by mr.mr_id,full_name,gender,address,reason_for_hospitalization";
            PreparedStatement stm = ps(sql);
            stm.setInt(1, orderId);
            ResultSet rs = stm.executeQuery();
            ArrayList<MedicalRecord> medicalRecords = new ArrayList<>();
            while (rs.next()) {
                MedicalRecord mr = new MedicalRecord();
                mr.setId(rs.getInt("mr_id"));
                mr.setUserName(rs.getString("full_name"));
                mr.setGender(rs.getBoolean("gender"));
                mr.setAddress(rs.getString("address"));
                mr.setExaminationDate(rs.getString("date_of_examination"));
                mr.setMedicalHistory(rs.getString("medical_history"));
                mr.setPreHistory(rs.getString("prehistory"));
                
                mr.setReasonForHospitalization(rs.getString("reason_for_hospitalization"));
                mr.setPhone(rs.getString("phone"));

                mr.setFirstExamService(new ServiceDAO().getServiceByID(rs.getInt("first_exam_service")));

                medicalRecords.add(mr);
            }
            return medicalRecords;
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return null;
    }

    public int editMedicalRecordAfterExam(MedicalRecord mr) {
        int status = 0;
        try {
            String sql = "update Medical_record set medical_history=?,prehistory=? where mr_id=?";
            PreparedStatement ps = ps(sql);

            ps.setString(1, mr.getMedicalHistory());
            ps.setString(2, mr.getPreHistory());
            ps.setInt(3, mr.getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return status;
    }
}
