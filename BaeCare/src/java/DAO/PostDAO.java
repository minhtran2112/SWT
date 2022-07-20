/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DAO.DBConnect.DBContext;
import Model.Homepage.Author;
import Model.Homepage.Category;
import Model.Homepage.Post;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PostDAO extends DBContext {

    public PostDAO() {
    }

    public ArrayList<Post> getAllPost() {
        ArrayList<Post> listPost = null;
        try {
            listPost = new ArrayList<>();
            String sql = "SELECT [postID]\n"
                    + "      ,[postTitle]\n"
                    + "      ,[postDetail]\n"
                    + "      ,[postImg]\n"
                    + "      ,[postDate]\n"
                    + "      ,[onHomepage]\n"
                    + "      ,p.[c_id]\n"
                    + "	  ,c.c_name\n"
                    + "      ,p.[a_id]\n"
                    + "	  ,a.a_name\n"
                    + "  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                    + "  join Category as c on p.c_id=c.c_id"
                    + "  where onHomepage = 1"
                    + "  order by postDate DESC";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                listPost.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listPost;
    }

    public ArrayList<Post> getFourPost() {
        ArrayList<Post> listPost = null;
        try {
            listPost = new ArrayList<>();
            String sql = "SELECT TOP 4 [postID]\n"
                    + "      ,[postTitle]\n"
                    + "      ,[postDetail]\n"
                    + "      ,[postImg]\n"
                    + "      ,[postDate]\n"
                    + "      ,[onHomepage]\n"
                    + "      ,p.[c_id]\n"
                    + "	  ,c.c_name\n"
                    + "      ,p.[a_id]\n"
                    + "	  ,a.a_name\n"
                    + "  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                    + "  join Category as c on p.c_id=c.c_id"
                    + "  where onHomepage = 1"
                    + "  order by postDate DESC";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                listPost.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listPost;
    }

    public Post getLatestPost() {
        try {
            String sql = "SELECT top 1 [postID]\n"
                    + "      ,[postTitle]\n"
                    + "      ,[postDetail]\n"
                    + "      ,[postImg]\n"
                    + "      ,[postDate]\n"
                    + "      ,[onHomepage]\n"
                    + "      ,p.[c_id]\n"
                    + "	  ,c.c_name\n"
                    + "      ,p.[a_id]\n"
                    + "	  ,a.a_name\n"
                    + "  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                    + "  join Category as c on p.c_id=c.c_id\n"
                    + "  where onHomepage = 1"
                    + "  order by postDate DESC";
            ResultSet rs = rs(sql);
            if (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                Post p = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a);
                return p;
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return null;
    }

    public Post getPostByID(int id) throws Exception {
        String sql = "SELECT [postID]\n"
                + "      ,[postTitle]\n"
                + "      ,[postDetail]\n"
                + "      ,[postImg]\n"
                + "      ,[postDate]\n"
                + "      ,[onHomepage]\n"
                + "      ,p.[c_id]\n"
                + "	  ,c.c_name\n"
                + "      ,p.[a_id]\n"
                + "	  ,a.a_name\n"
                + "  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                + "  join Category as c on p.c_id=c.c_id\n"
                + "  where p.postID=?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                Post p = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a);
                close();
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
        return null;
    }

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> listCategory = null;
        try {
            listCategory = new ArrayList<>();
            String sql = "SELECT [c_id]\n"
                    + "      ,[c_name]\n"
                    + "  FROM [Category]";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));
                listCategory.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return listCategory;
    }

    public ArrayList<Author> getAllAuthor() {
        ArrayList<Author> listAuthor = null;
        try {
            listAuthor = new ArrayList<>();
            String sql = "SELECT [a_id]\n"
                    + "      ,[a_name]\n"
                    + "  FROM [Author]";
            ResultSet rs = rs(sql);
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));
                listAuthor.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            close();
        }
        return listAuthor;
    }

    public ArrayList<Post> searchPost(int categoryID, int authorID, Boolean status, Date from, Date to) throws Exception {
        ArrayList<Post> listPost = new ArrayList<>();
        String sql = "SELECT [postID]\n"
                + "      ,[postTitle]\n"
                + "      ,[postDetail]\n"
                + "      ,[postImg]\n"
                + "      ,[postDate]\n"
                + "      ,[onHomepage]\n"
                + "      ,p.[c_id]\n"
                + "	  ,c.c_name\n"
                + "      ,p.[a_id]\n"
                + "	  ,a.a_name\n"
                + "  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                + "  join Category as c on p.c_id=c.c_id"
                + "  WHERE 1 = 1";
        HashMap<Integer, Object[]> params = new HashMap<>();
        Integer index = 0;

        if (categoryID > 0) {
            sql += " AND p.[c_id] = ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "INT";
            param[1] = categoryID;
            params.put(index, param);
        }

        if (authorID > 0) {
            sql += " AND p.[a_id] = ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "INT";
            param[1] = authorID;
            params.put(index, param);
        }

        if (status != null) {
            sql += " AND [onHomepage] = ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "BOOLEAN";
            param[1] = status;
            params.put(index, param);
        }
        if (from != null) {
            sql += " AND postDate >= ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "DATE";
            param[1] = from;
            params.put(index, param);
        }
        if (to != null) {
            sql += " AND postDate <= ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "DATE";
            param[1] = to;
            params.put(index, param);
        }

        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            for (Map.Entry<Integer, Object[]> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object[] value = entry.getValue();
                switch (value[0].toString()) {
                    case "INT":
                        ps.setInt(key, (int) value[1]);
                        break;
                    case "BOOLEAN":
                        ps.setBoolean(key, (boolean) value[1]);
                        break;
                    case "DATE":
                        ps.setDate(key, (Date) value[1]);
                        break;
                }
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                listPost.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPost;
    }

    public void addPost(Post p) throws Exception {
        String sql = "INSERT INTO [Post]\n"
                + "           ([postTitle]\n"
                + "           ,[postDetail]\n"
                + "           ,[postImg]\n"
                + "           ,[postDate]\n"
                + "           ,[onHomepage]\n"
                + "           ,[c_id]\n"
                + "           ,[a_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        PreparedStatement stm = null;
        try {
            stm = getConnection().prepareStatement(sql);
            stm.setString(1, p.getPostTitle());
            stm.setString(2, p.getPostDetail());
            stm.setString(3, p.getPostImg());
            stm.setDate(4, p.getPostDate());
            stm.setBoolean(5, p.isOnHomepage());
            stm.setInt(6, p.getCategory().getId());
            stm.setInt(7, p.getAuthor().getId());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public void upadtePostByID(Post p, int postID) throws Exception {
        String sql = "UPDATE [Post]\n"
                + "   SET [postTitle] = ?\n"
                + "      ,[postDetail] = ?\n"
                + "      ,[postImg] = ?\n"
                + "      ,[postDate] = ?\n"
                + "      ,[onHomepage] = ?\n"
                + "      ,[c_id] = ?\n"
                + "      ,[a_id] = ?\n"
                + " WHERE postID = ?";
        try {
            PreparedStatement st = getConnection().prepareStatement(sql);
            st.setString(1, p.getPostTitle());
            st.setString(2, p.getPostDetail());
            st.setString(3, p.getPostImg());
            st.setDate(4, p.getPostDate());
            st.setBoolean(5, p.isOnHomepage());
            st.setInt(6, p.getCategory().getId());
            st.setInt(7, p.getAuthor().getId());
            st.setInt(8, postID);
            st.executeUpdate();
            close();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public void deletePostByID(int id) throws Exception {
        String sql = "DELETE FROM [Post]\n"
                + "      WHERE postID=?";
        PreparedStatement stm = null;
        try {
            stm = getConnection().prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            close();
        }
    }

    public ArrayList<Post> getPostByPage(int pageindex, int pagesize, String title, int categoryID, int authorID, Date from, Date to) throws Exception {
        ArrayList<Post> listPostByPage = new ArrayList<>();
        String sql = "SELECT [postID]\n"
                + "      ,[postTitle]\n"
                + "      ,[postDetail]\n"
                + "      ,[postImg]\n"
                + "      ,[postDate]\n"
                + "      ,[onHomepage]\n"
                + "      ,[c_id]\n"
                + "      ,c_name\n"
                + "      ,[a_id]\n"
                + "      ,a_name\n"
                + "FROM\n"
                + "(SELECT [postID]\n"
                + "      ,[postTitle]\n"
                + "      ,[postDetail]\n"
                + "      ,[postImg]\n"
                + "      ,[postDate]\n"
                + "      ,[onHomepage]\n"
                + "      ,p.[c_id]\n"
                + "      ,c.c_name\n"
                + "      ,p.[a_id]\n"
                + "      ,a.a_name\n"
                + "	  , ROW_NUMBER() \n"
                + "	  OVER (order by postDate DESC) as row_index \n"
                + "	  FROM [Post] as p join Author as a on p.a_id=a.a_id\n"
                + "                 join Category as c on p.c_id=c.c_id"
                + "   WHERE onHomepage = 1";
        HashMap<Integer, Object[]> params = new HashMap<>();
        Integer index = 0;
        if (title != null && !title.equals("")) {
            sql += " AND [postTitle] like ? ";
            index++;
            Object[] param = new Object[2];
            param[0] = "STRING";
            param[1] = title;
            params.put(index, param);
        }

        if (categoryID > 0) {
            sql += " AND p.[c_id] = ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "INT";
            param[1] = categoryID;
            params.put(index, param);
        }

        if (authorID > 0) {
            sql += " AND p.[a_id] = ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "INT";
            param[1] = authorID;
            params.put(index, param);
        }

        if (from != null) {
            sql += " AND postDate >= ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "DATE";
            param[1] = from;
            params.put(index, param);
        }
        if (to != null) {
            sql += " AND postDate <= ?";
            index++;
            Object[] param = new Object[2];
            param[0] = "DATE";
            param[1] = to;
            params.put(index, param);
        }
        sql += ") tb WHERE row_index >=(?-1)* ? +1 AND row_index <= ? * ?";
        try {
            PreparedStatement stm = getConnection().prepareStatement(sql);
            for (Map.Entry<Integer, Object[]> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object[] value = entry.getValue();
                switch (value[0].toString()) {
                    case "INT":
                        stm.setInt(key, (int) value[1]);
                        break;
                    case "STRING":
                        stm.setString(key, value[1].toString());
                        break;
                    case "DATE":
                        stm.setDate(key, (Date) value[1]);
                        break;
                }
            }
            stm.setInt(index + 1, pageindex);
            stm.setInt(index + 2, pagesize);
            stm.setInt(index + 3, pageindex);
            stm.setInt(index + 4, pagesize);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("a_id"));
                a.setNameAuthor(rs.getString("a_name"));

                Category c = new Category();
                c.setId(rs.getInt("c_id"));
                c.setNameCategory(rs.getString("c_name"));

                listPostByPage.add(new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getBoolean(6), c, a));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPostByPage;
    }

    public int count(String title, int categoryID, int authorID, Date from, Date to) throws Exception {
        try {
            String sql = "SELECT COUNT(*) as Total\n"
                    + "FROM [Post] \n"
                    + "WHERE onHomepage = 1 ";
            HashMap<Integer, Object[]> params = new HashMap<>();
            Integer index = 0;

            if (title != null && !title.equals("")) {
                sql += " AND postTitle like ?";
                index++;
                Object[] param = new Object[2];
                param[0] = "STRING";
                param[1] = title;
                params.put(index, param);
            }
            if (categoryID > 0) {
                sql += " AND [c_id] = ?";
                index++;
                Object[] param = new Object[2];
                param[0] = "INT";
                param[1] = categoryID;
                params.put(index, param);
            }

            if (authorID > 0) {
                sql += " AND [a_id] = ?";
                index++;
                Object[] param = new Object[2];
                param[0] = "INT";
                param[1] = authorID;
                params.put(index, param);
            }

            if (from != null) {
                sql += " AND postDate >= ?";
                index++;
                Object[] param = new Object[2];
                param[0] = "DATE";
                param[1] = from;
                params.put(index, param);
            }
            if (to != null) {
                sql += " AND postDate <= ?";
                index++;
                Object[] param = new Object[2];
                param[0] = "DATE";
                param[1] = to;
                params.put(index, param);
            }
            PreparedStatement stm = getConnection().prepareStatement(sql);
            for (Map.Entry<Integer, Object[]> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object[] value = entry.getValue();
                switch (value[0].toString()) {
                    case "INT":
                        stm.setInt(key, (int) value[1]);
                        break;
                    case "STRING":
                        stm.setString(key, value[1].toString());
                        break;
                    case "DATE":
                        stm.setDate(key, (Date) value[1]);
                        break;
                }
            }
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
