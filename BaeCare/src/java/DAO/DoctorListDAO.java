/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.User;
import Model.Service.Service;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chitung
 */
public class DoctorListDAO extends DBContext {

    public ArrayList<User> getDoctorList(Date dateExamination) {
        ArrayList<User> doctorList = null;
        try {
            String sql = "Select u.email FROM [User] u\n"
                    + "Where u.r_id = 4 AND u.email not in (Select ws.email From workSchedual ws\n"
                    + "                    Where ws.workDate = ?\n"
                    + "                    group by ws.email\n"
                    + "                    having COUNT(*) = (Select count(*) from slotInDay))";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setDate(1, dateExamination);
            ResultSet rs = stm.executeQuery();
            doctorList = new ArrayList<>();
            while (rs.next()) {
                UserDAO daoUser = new UserDAO();
                User u = daoUser.getUser(rs.getString("email"));
                doctorList.add(u);
            }
        } catch (Exception ex) {
            Logger.getLogger(DoctorListDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return doctorList;
    }

   
}
