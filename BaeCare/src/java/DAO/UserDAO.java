/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Account.Role;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import Model.Account.User;

/**
 *
 *
 *
 *
 * uthor tkoko
 */
public class UserDAO extends DBContext {

    public User updateCusInfor(String name, String email, String phone, boolean gender) throws Exception {
        String sql = "UPDATE [User]\n"
                + "   SET "
                + "      [name] = ?\n"
                + "      ,[gender] = ?\n"
                + "      ,[phone] = ?\n"
                + " WHERE [email] = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(4, email);
            st.setString(1, name);
            st.setBoolean(2, gender);
            st.setString(3, phone);
            st.executeUpdate();
            return getUser(email);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public ArrayList<User> getUsers() throws Exception {
        ArrayList<User> users = new ArrayList<>();
        try {
            String sql = "select name,gender,email,phone,address,dob,photo,r.r_name,status\n"
                    + "from [User] as u JOIN [Role] AS r ON r.r_id = u.r_id  ";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                Role r = new Role();
                r.setName(rs.getString("r_name"));
                user.setRole(r);
                user.setStatus(rs.getBoolean("status"));
                users.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return users;
    }

    public User getUser(String email) throws Exception {
        String sql = "SELECT u.email, u.name, u.gender, u.phone,\n"
                + "u.address, u.dob, u.photo, u.password, u.status, r.r_name,r.r_id\n"
                + "from [User] as u join [Role] as r on u.r_id=r.r_id\n"
                + "where email = ? ";
        try {

            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                User user = new User();
                user.setEmail(email);
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                user.setPassword(rs.getString("password"));
                user.setStatus(rs.getBoolean("status"));
                Role r = new Role();
                r.setId(rs.getInt("r_id"));
                r.setName(rs.getString("r_name"));
                user.setRole(r);
                close();
                return user;
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public User updateUserByEmail(User c) throws Exception {
        if (getUser(c.getEmail()) == null) {
            return null;
        }
        String sql = "UPDATE [User]\n"
                + "   SET [name] = ?\n"
                + "      ,[gender] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[dob] = ?\n"
                + "      ,[photo] = ?\n"
                + " WHERE email like ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, c.getName());
            st.setBoolean(2, c.isGender());
            st.setString(3, c.getPhone());
            st.setString(4, c.getAddress());
            st.setDate(5, c.getDob());
            st.setString(6, c.getPhoto());
            st.setString(7, c.getEmail());
            st.executeUpdate();
            close();
            return getUser(c.getEmail());
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }

        return null;
    }

    public User getUser(int id) {
        try {
            String sql = "select id,name,gender,u.email,phone,address,dob,photo,a.r_id,r.r_name,a.status from [User] AS u join Account as a \n"
                    + "ON a.email = u.email JOIN [Role] AS r ON r.r_id = a.r_id \n"
                    + "					where id = ? ";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                Role r = new Role();
                r.setId(rs.getInt("r_id"));
                r.setName(rs.getString("r_name"));
                user.setRole(r);
                user.setStatus(rs.getBoolean("status"));

                close();

                return user;
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public void insertUser(User user) {
        try {
            String sql = "INSERT INTO [User]\n"
                    + "           ([email]\n"
                    + "           ,[name]\n"
                    + "           ,[gender]\n"
                    + "           ,[phone]\n"
                    + "           ,[address]\n"
                    + "           ,[dob]\n"
                    + "           ,[photo]\n"
                    + "           ,[password]\n"
                    + "           ,[status]\n"
                    + "           ,[r_id])\n"
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
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setString(1, user.getEmail());
            stm.setString(2, user.getName());
            stm.setBoolean(3, user.isGender());
            stm.setString(4, user.getPhone());
            stm.setString(5, user.getAddress());
            stm.setDate(6, user.getDob());
            stm.setString(7, user.getPhoto());
            stm.setString(8, user.getPassword());
            stm.setBoolean(9, user.isStatus());
            stm.setInt(10, user.getRole().getId());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public ArrayList<User> searchUsers(int gender, int role, int status) {
        try {
            String sql = "select name,gender,email,phone,address,dob,photo,r.r_name,status\n"
                    + "from [User] as u JOIN [Role] AS r ON r.r_id = u.r_id \n";
            if (gender != -1 || role != -1 || status != -1) {
                sql += "WHERE\n";
            }
            //gender
            if (gender >= 0) {
                sql += "gender = '" + gender + "'\n";
            }
            //role
            if (gender >= 0 && role >= 1) {
                sql += "AND r.r_id = '" + role + "'\n";
            } else if (gender == -1 && role >= 1) {
                sql += "r.r_id = '" + role + "'\n";
            }
            //status
            if ((gender >= 0 || role >= 1) && status >= 0) {
                sql += "AND status = '" + status + "'\n";
            } else if (gender == -1 && role == -1 && status >= 0) {
                sql += "status = '" + status + "'\n";
            }
            PreparedStatement stm = getConnection().prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            ArrayList<User> users = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                Role r = new Role();
                r.setName(rs.getString("r_name"));
                user.setRole(r);
                user.setStatus(rs.getBoolean("status"));
                users.add(user);
            }

            close();

            return users;
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public ArrayList<User> searchUsers(String searchInput) {
        try {
            String sql = "select name,gender,email,phone,address,dob,photo,r.r_name,status\n"
                    + "from [User] as u JOIN [Role] AS r ON r.r_id = u.r_id \n"
                    + "   where name like ? or u.email like ? or phone like ? ";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            String result = "%" + searchInput + "%";
            stm.setString(1, result);
            stm.setString(2, result);
            stm.setString(3, result);
            ResultSet rs = stm.executeQuery();
            ArrayList<User> users = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                Role r = new Role();
                r.setName(rs.getString("r_name"));
                user.setRole(r);
                user.setStatus(rs.getBoolean("status"));
                users.add(user);
            }

            close();

            return users;
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public void updateStatusAndRole(String email, int role, boolean status) {
        try {
            String sql = "UPDATE [User]\n"
                    + "   SET [status] = ?\n"
                    + "      ,[r_id] = ?\n"
                    + " WHERE email = ?";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setBoolean(1, status);
            stm.setInt(2, role);
            stm.setString(3, email);
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public void updateUserFromReservationContact(User user) {
        try {
            String sql = "UPDATE [User]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[gender] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[address] = ?\n"
                    + " WHERE email = ?";
            PreparedStatement stm = getConnection().prepareStatement(sql);
            stm.setString(1, user.getName());
            stm.setBoolean(2, user.isGender());
            stm.setString(3, user.getPhone());
            stm.setString(4, user.getAddress());
            stm.setString(5, user.getEmail());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<User> getAllCustomer(Boolean gender, Boolean status) throws Exception {
        ArrayList<User> customers = new ArrayList<>();
        try {
            String sql = "SELECT [email]\n"
                    + "      ,[name]\n"
                    + "      ,[gender]\n"
                    + "      ,[phone]\n"
                    + "      ,[address]\n"
                    + "      ,[dob]\n"
                    + "      ,[photo]\n"
                    + "      ,[status]\n"
                    + "  FROM [User] as u join Role as r on u.r_id=r.r_id\n"
                    + "  WHERE r.[r_name]='Customer' ";
            if (gender != null) {
                sql += " AND [gender] = '" + gender + "' ";
            }
            if (status != null) {
                sql += " AND [status] = '" + status + "' ";
            }
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                user.setStatus(rs.getBoolean("status"));
                customers.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return customers;
    }

    public User getCustomerByEmail(String email) throws Exception {
        String sql = "SELECT [email]\n"
                + "      ,[name]\n"
                + "      ,[gender]\n"
                + "      ,[phone]\n"
                + "      ,[address]\n"
                + "      ,[dob]\n"
                + "      ,[photo]\n"
                + "      ,[status]\n"
                + "  FROM [User] as u join Role as r on u.r_id=r.r_id\n"
                + "  WHERE r.[r_name]='Customer' and email like ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setDob(rs.getDate("dob"));
                user.setPhoto(rs.getString("photo"));
                user.setStatus(rs.getBoolean("status"));
                close();
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public void updateCustomer(String email, boolean status) throws Exception {
        String sql = "UPDATE [User]\n"
                + "   SET [status] = ?\n"
                + " WHERE email like ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setBoolean(1, status);
            st.setString(2, email);
            st.executeUpdate();
            close();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

}
