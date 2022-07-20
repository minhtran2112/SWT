/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Homepage.Slide;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nghia
 */
public class SlideDAO extends DBContext {

    public SlideDAO() {
    }

    public List<Slide> getAllSlide() {
        List<Slide> listSlide = null;
        try {
            listSlide = new ArrayList<>();
            String sql = "Select * from Slide";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                listSlide.add(new Slide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return listSlide;
    }

    public List<Slide> getAllSlideOnHomepage() {
        List<Slide> listSlide = null;
        try {
            listSlide = new ArrayList<>();
            String sql = "Select * from Slide where onHomepage=1";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                listSlide.add(new Slide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return listSlide;
    }

    public void insertSlide(Slide s) {
        try {
            String sql = "Insert into Slide values(?,?,?,?,?)";
            PreparedStatement ps = ps(sql);
            ps.setString(1, s.getSlideTitle());
            ps.setString(2, s.getSlideDetail());
            ps.setString(3, s.getSlideImg());
            ps.setString(4, s.getSlideDate());
            ps.setBoolean(5, s.isOnHomepage());
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
    }

    public void updateSlide(int oldSlide_ID, Slide newSlide) {
        try {
            String sql = "Update Slide set slideTitle=?, slideDetail=?,slideImg=?,slideDate=?,onHomepage=? where slideID=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, newSlide.getSlideTitle());
            ps.setString(2, newSlide.getSlideDetail());
            ps.setString(3, newSlide.getSlideImg());
            ps.setString(4, newSlide.getSlideDate());
            ps.setBoolean(5, newSlide.isOnHomepage());
            ps.setInt(6, oldSlide_ID);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }

    }

    public void deleteSlide(int slideID) {
        try {
            String sql = "delete from Slide where slideID=?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, slideID);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
    }

    public void disableSlide(int slideID) {
        try {
            String sql = "update Slide set onHomepage=? where slideID=?";
            PreparedStatement ps = ps(sql);
            ps.setBoolean(1, false);
            ps.setInt(2, slideID);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
    }

    public String getImgLink(int slideID) {
        String imgLink = null;
        try {

            String sql = "Select slideImg from Slide where slideID = ?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1, slideID);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                imgLink = rs.getString("slideImg");
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return imgLink;
    }

    public void enableSlide(int slideID) {
        try {
            String sql = "update Slide set onHomepage=? where slideID=?";
            PreparedStatement ps = ps(sql);
            ps.setBoolean(1, true);
            ps.setInt(2, slideID);
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
    }

    public Slide getSlideByID(int slideId) {
        Slide s = null;
        try {

            String sql = "Select * from Slide where slideID=?";
            PreparedStatement ps = ps(sql);
            ps.setInt(1,slideId);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                return new Slide(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return s;
    }

}
