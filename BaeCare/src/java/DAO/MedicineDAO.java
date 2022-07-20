/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.medical.Medicine;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nhiep
 */
public class MedicineDAO extends DBContext {


    public Medicine getMedicineById(String medicineId) {
        Medicine m = null;
        try {
            m = new Medicine();
            String sql = "select * from  medicine where id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, medicineId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                m.setId(rs.getString("id").trim());
                m.setName(rs.getString("name").trim());
                m.setProducer(rs.getString("producer"));
                m.setElement(rs.getString("element"));
                m.setQuantity(rs.getInt("quantity"));
                m.setPrice(rs.getDouble("price"));
                m.setInUse(rs.getBoolean("inUse"));
                m.setUnit(rs.getString("unit"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }

        return m;
    }

    public List<Medicine> getListMedicineOfUser(String email) {
        List<Medicine> list = null;
        try {
            list = new ArrayList<>();
            String sql = "select id,[name],producer,element,medicine.quantity,price,unit from medicine\n"
                    + "join medicines_prescripts mp on medicine_id = medicine.id\n"
                    + "join Order_detail od on od.od_id = mp.od_id\n"
                    + "join [Order] o on od.o_id = o.o_id\n"
                    + "where o.email_customer = ?";

            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            MedicineDAO mDao = new MedicineDAO();
            while (rs.next()) {
                Medicine m = new Medicine();
                m.setId(rs.getString("id").trim());
                m.setName(rs.getString("name").trim());
                m.setProducer(rs.getString("producer"));
                m.setElement(rs.getString("element"));
                m.setQuantity(rs.getInt("quantity"));
                m.setPrice(rs.getDouble("price"));
                m.setInUse(rs.getBoolean("inUse"));
                m.setUnit(rs.getString("unit"));
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    public List<Medicine> getAllMedicine() {
        List<Medicine> list = null;

        try {
            list = new ArrayList<>();
            String sql = "select * from medicine";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Medicine m = new Medicine();
                m.setId(rs.getString("id").trim());
                m.setName(rs.getString("name").trim());
                m.setProducer(rs.getString("producer"));
                m.setElement(rs.getString("element"));
                m.setQuantity(rs.getInt("quantity"));
                m.setPrice(rs.getDouble("price"));
                m.setInUse(rs.getBoolean("inUse"));
                m.setUnit(rs.getString("unit"));
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }

        return list;
    }

    public boolean addMedicine(Medicine m) {
        boolean status = false;
        try {

            String sql = "insert into medicine values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = ps(sql);
            ps.setString(1, m.getId());
            ps.setString(2, m.getName());
            ps.setString(3, m.getProducer());
            ps.setString(4, m.getElement());
            ps.setInt(5, m.getQuantity());
            ps.setDouble(7, m.getPrice());

            ps.setBoolean(6, m.isInUse());
            ps.setString(8,m.getUnit());
            status = psExecute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
        return status;
    }

    public boolean editMedicine(String oldId, Medicine m) {
        boolean status = false;
        try {

            String sql = "UPDATE medicine\n"
                    + "   SET id = ?\n"
                    + "      , name  =  ?\n"
                    + "      , producer = ?\n"
                    + "      , element  = ?\n"
                    + "      , quantity  = ?\n"
                    + "      ,price = ?\n"
                    + "      , inUse = ?, unit=? + \n"
                    + " WHERE id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, m.getId());
            ps.setString(2, m.getName());
            ps.setString(3, m.getProducer());
            ps.setString(4, m.getElement());
            ps.setInt(5, m.getQuantity());
            ps.setDouble(6, m.getPrice());

            ps.setBoolean(8, m.isInUse());
            ps.setString(9, m.getUnit());
            ps.setString(10, oldId);
            status = psExecute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
        return status;
    }

    public boolean deleteMedicine(String id) {
        boolean status = false;
        try {

            String sql = "Delete from medicine where " + id + "= ?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, id);
            status = psExecute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
        return status;
    }

    public void changeInUseStatus(String oldId, boolean inUseStatus) {
        try {

            String sql = "UPDATE medicine\n"
                    + "   SET inUse  = ?\n"
                    + " WHERE  id =?";
            PreparedStatement ps = ps(sql);

            ps.setBoolean(1, inUseStatus);
            ps.setString(2, oldId);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
    }

  
}
