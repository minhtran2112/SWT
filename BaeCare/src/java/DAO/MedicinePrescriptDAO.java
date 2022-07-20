/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.medical.MedicinePrescript;
import Model.Order.Order;
import Model.Order.OrderDetail;
import Model.medical.Medicine;
import Model.Service.Service;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nhiep
 */
public class MedicinePrescriptDAO extends DBContext {

    protected final String allColumnInMedicinePrescript
            = "exam_medicine.od_id,exam_medicine.medicine_id,prescription,exam_medicine.quantity,exam_medicine.added_date";

    public List<MedicinePrescript> getAllMedicinePrescriptsByDoctor(String doctor_email) {
        List<MedicinePrescript> list = null;

        try {

            list = new ArrayList<>();
            String sql = "select " + allColumnInMedicinePrescript + "  \n"
                    + "from exam_medicine\n"
                    + "join Order_detail on exam_medicine.od_id=Order_detail.od_id\n"
                    + "join medicine on exam_medicine.medicine_id=medicine.id\n"
                    + "where Order_detail.email_doctor = ?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, doctor_email);
            ResultSet rs = ps.executeQuery();
            MedicineDAO mDao = new MedicineDAO();

            while (rs.next()) {
                MedicinePrescript m = new MedicinePrescript();

                m.setOdId(rs.getInt("od_id"));
                Medicine medicine = mDao.getMedicineById(rs.getString("medicine_id"));
                m.setMedicine(medicine);
                m.setPrescription(rs.getString("prescription"));
                m.setQuantity(rs.getInt("quantity"));
                m.setAddPrescriptDate(rs.getString("added_date"));
                list.add(m);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;

    }

    public List<MedicinePrescript> getAllMedicinePrescriptsOfUser(String user_email) {
        List<MedicinePrescript> list = null;

        try {

            list = new ArrayList<>();
            String sql = "select " + allColumnInMedicinePrescript + "  \n"
                    + "from exam_medicine\n"
                    + "join Order_detail on exam_medicine.od_id=Order_detail.od_id\n"
                    + "join medicine on exam_medicine.medicine_id=medicine.id\n"
                    + "join [Order] on Order_detail.o_id = [Order].o_id\n"
                    + "where [Order].email_customer = ?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, user_email);
            ResultSet rs = ps.executeQuery();
            MedicineDAO mDao = new MedicineDAO();

            while (rs.next()) {
                MedicinePrescript m = new MedicinePrescript();

                m.setOdId(rs.getInt("od_id"));
                Medicine medicine;
                medicine = mDao.getMedicineById(rs.getString("medicine_id"));
                m.setMedicine(medicine);

                m.setPrescription(rs.getString("prescription"));
                m.setQuantity(rs.getInt("quantity"));
                m.setAddPrescriptDate(rs.getString("added_date"));
                list.add(m);

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;

    }

    public int insertMedicinePrescript(MedicinePrescript mp) {
        int status = 0;
        try {
            String sql = "insert into exam_medicine values(?,?,?,?,?)";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, mp.getOdId());

            ps.setString(2, mp.getMedicine().getId());
            ps.setInt(3, mp.getQuantity());
            ps.setString(4, mp.getPrescription());
            ps.setString(5, mp.getAddPrescriptDate());
            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public int insertMultiMedicinePrescript(List<MedicinePrescript> mp) {
        int status = 0;
        try {
            String sql = "insert into exam_medicine values";
            for (int i = 0; i < mp.size(); i++) {
                if (i < mp.size() - 1) {
                    sql += "(?,?,?,?,?),";
                } else {
                    sql += "(?,?,?,?,?)";
                }

            }

            PreparedStatement ps = ps(sql);
            int i = 1;
            while (i <= mp.size() * 5) {
                for (MedicinePrescript medicinePrescript : mp) {
                    ps.setInt(i, medicinePrescript.getOdId());
                    i++;
                    ps.setString(i, medicinePrescript.getMedicine().getId());
                    i++;
                    ps.setInt(i, medicinePrescript.getQuantity());
                    i++;
                    ps.setString(i, medicinePrescript.getPrescription());
                    i++;
                    ps.setString(i, medicinePrescript.getAddPrescriptDate());
                    i++;
                }
            }

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return status;
    }

    public int editMedicalPrescript(MedicinePrescript mp) {
        int status = 0;
        try {
            String sql = "update exam_medicine set prescription = ?,quantity=? where od_id=? and medicine_id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, mp.getPrescription());
            ps.setInt(2, mp.getQuantity());
            ps.setInt(3, mp.getOdId());

            ps.setString(4, mp.getMedicine().getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public int editMedicinePrescription(MedicinePrescript mp) {
        int status = 0;
        try {
            String sql = "update exam_medicine set prescription = ? where od_id=? and medicine_id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, mp.getPrescription());
            ps.setInt(2, mp.getOdId());

            ps.setString(3, mp.getMedicine().getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public int editMedicineQuantity(MedicinePrescript mp) {
        int status = 0;
        try {
            String sql = "update exam_medicine set quantity = ? where od_id=? and medicine_id=?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, mp.getQuantity());
            ps.setInt(2, mp.getOdId());
            ps.setString(3, mp.getMedicine().getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public int deleteAMedicineFromMedicalPrescript(MedicinePrescript mp) {
        int status = 0;
        try {
            String sql = "delete from exam_medicine  where od_id=? and medicine_id=?";
            PreparedStatement ps = ps(sql);

            ps.setInt(1, mp.getOdId());
            ps.setString(2, mp.getMedicine().getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return status;
    }

    public List<MedicinePrescript> getMPByOdID(int odId) {
        List<MedicinePrescript> list = null;
        try {
            list = new ArrayList<>();
            String sql = "select * from exam_medicine where od_id=? ";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, odId);
            ResultSet rs = ps.executeQuery();
            MedicineDAO mDao = new MedicineDAO();

            while (rs.next()) {
                MedicinePrescript m = new MedicinePrescript();

                m.setOdId(rs.getInt("od_id"));

                Medicine medicine;
                medicine = mDao.getMedicineById(rs.getString("medicine_id"));
                m.setMedicine(medicine);

                m.setPrescription(rs.getString("prescription"));
                m.setQuantity(rs.getInt("quantity"));
                m.setAddPrescriptDate(rs.getString("added_date"));
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }
}
