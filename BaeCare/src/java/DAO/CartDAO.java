/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Service.Service;
import Model.Order.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;


/**
 *
 * @author nghia
 */
public class CartDAO extends DBContext {

    public ArrayList<Cart> getServiceInCartByEmail(String email) {
        ArrayList<Cart> listServiceInCart = null;
        try {
            String sql = "select *\n"
                    + "                            from Cart \n"
                    + "                             where email = ? ";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
            listServiceInCart = new ArrayList();
            while (rs.next()) {
                Cart sc = new Cart();
                sc.setId(rs.getInt("cart_id"));
                sc.setUser(new UserDAO().getUser(email));

                sc.setAddCartDate(rs.getDate("addCartDate"));
                sc.setDateExam(rs.getDate("dateExam"));
                ServiceDAO serviceDAO = new ServiceDAO();
                sc.setService(serviceDAO.getServiceByID(rs.getInt("s_id")));

                listServiceInCart.add(sc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return listServiceInCart;
    }

    public ArrayList<Cart> getServiceInCartByEmail(String email, int sid) {
        ArrayList<Cart> listServiceInCart = null;
        try {
            String sql = "select *\n"
                    + "                            from Cart \n"
                    + "                             where email = ? and s_id=? ";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ps.setInt(2, sid);
            ResultSet rs = ps.executeQuery();
            listServiceInCart = new ArrayList();
            while (rs.next()) {
                Cart sc = new Cart();
                sc.setId(rs.getInt("cart_id"));
                sc.setUser(new UserDAO().getUser(email));

                sc.setAddCartDate(rs.getDate("addCartDate"));
                sc.setDateExam(rs.getDate("dateExam"));
                ServiceDAO serviceDAO = new ServiceDAO();
                sc.setService(serviceDAO.getServiceByID(rs.getInt("s_id")));

                listServiceInCart.add(sc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return listServiceInCart;
    }

    public Cart getCartItem(int cartId) {
        Cart item = null;
        try {
            String sql = "Select * from Cart where cart_id=?";
            PreparedStatement ps = ps(sql);
            
            ps.setInt(1, cartId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                 item = new Cart();
                item.setId(rs.getInt("cart_id"));
                item.setUser(new UserDAO().getUser(rs.getString("email")));

                item.setAddCartDate(rs.getDate("addCartDate"));
                item.setDateExam(rs.getDate("dateExam"));
                ServiceDAO serviceDAO = new ServiceDAO();
                item.setService(serviceDAO.getServiceByID(rs.getInt("s_id")));

                
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return item;
    }

    public void insertToServiceCart(Cart s) {
        try {
            String sql = "insert into Cart values(?,?,?,?)";
            PreparedStatement ps = ps(sql);
            ps.setString(1, s.getUser().getEmail());

            ps.setInt(2, s.getService().getSid());
            ps.setDate(3, s.getAddCartDate());

            ps.setDate(4, s.getDateExam());

            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
    }

    public void deleteServiceCart(String email, int sID) {

        try {
            String sql = "DELETE FROM [dbo].[Cart]\n"
                    + "      WHERE email = ? and s_id =?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ps.setInt(2, sID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
    }

    public ArrayList<Cart> searchCartByName(String email, String textSearch) {
        ArrayList<Cart> listServiceInCart = null;
        try {
            String sql = "SELECT c.cart_id, c.[email]\n"
                    + ",c.[s_id]\n"
                    + ",c.[addCartDate]\n"
                    + ",c.dateExam,s.name,s.original_price\n"
                    + ",s.photo,s.sale_price,s.status,s.details\n"
                    + ",s.updated_date\n"
                    + "FROM [dbo].[Cart] c inner join Service s\n"
                    + "on c.s_id = s.id\n"
                    + "Where c.email = ?\n"
                    + "AND s.name like ?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ps.setString(2, "%" + textSearch + "%");
            ResultSet rs = ps.executeQuery();
            listServiceInCart = new ArrayList();
            while (rs.next()) {
                Cart sc = new Cart();
                sc.setUser(new UserDAO().getUser(email));
                sc.setAddCartDate(rs.getDate("addCartDate"));

                sc.setDateExam(rs.getDate("dateExam"));
                sc.setId(rs.getInt("cart_id"));
                Service s = new Service();
                s.setSid(rs.getInt("s_id"));
                s.setSname(rs.getString("name"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setStatus(rs.getBoolean("status"));
                s.setDetails(rs.getString("details"));
                s.setUpdated_date(rs.getDate("updated_date"));
                s.setPhoto(rs.getString("photo"));
                sc.setService(s);
                listServiceInCart.add(sc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return listServiceInCart;
    }

    public void deleteAllServiceCart(String email) {
        try {
            String sql = "DELETE FROM [dbo].[Cart]\n"
                    + "      WHERE email = ? ";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
    }

    public Cart searchServiceInCart(String email, int sid) {
        try {
            String sql = "SELECT c.cart_id, c.[email]\n"
                    + "      ,c.[s_id]\n"
                    + "      ,c.[addCartDate] ,\n"
                    + "      ,c.dateExam,s.name,s.original_price\n"
                    + "	  ,s.photo,s.sale_price,s.status,s.details\n"
                    + "	  ,s.updated_date\n"
                    + "  FROM [Cart] c inner join Service s\n"
                    + "  on c.s_id = s.id\n"
                    + "  Where c.email = ? and c.s_id=?";
            PreparedStatement ps = ps(sql);
            ps.setString(1, email);
            ps.setInt(2, sid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Cart sc = new Cart();
                sc.setId(rs.getInt("cart_id"));
                sc.setAddCartDate(rs.getDate("addCartDate"));

                sc.setDateExam(rs.getDate("dateExam"));
                sc.setUser(new UserDAO().getUser(email));
                Service s = new Service();
                s.setSid(rs.getInt("s_id"));
                s.setSname(rs.getString("name"));
                s.setOriginal_price(rs.getDouble("original_price"));
                s.setSale_price(rs.getDouble("sale_price"));
                s.setStatus(rs.getBoolean("status"));
                s.setDetails(rs.getString("details"));

                s.setUpdated_date(rs.getDate("updated_date"));

                s.setPhoto(rs.getString("photo"));
                sc.setService(s);
                return sc;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return null;
    }

    public void deleteCart(int cartId) {
        String sql = "DELETE FROM [Cart]\n"
                + "      WHERE cart_id = ?";
        
        try {
            PreparedStatement stm = ps(sql);
           
            stm.setInt(1, cartId);
            stm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
           close();
        }
    }


}
