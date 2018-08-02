package DB_Manager;

import DB.DB_Connect;
import Entity.User;

import java.sql.*;

public class UserDao {


//
//    public static void main(String arg[]){
//
//        User user=new User(0,"lch","123456","18744723124",1,"1524320242@qq.com",null,null,0);
//
////        System.out.print(addOne(user));
//
//        User user1=new User("leica","13595362271","123");
//
//       // System.out.print(findByName("lch"));
//    }

    public boolean addOne(User u){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="insert into user(username,pwd,phone,sex,email,create_at,login_at,state) values (?,?,?,?,?,?,?,?)";

        PreparedStatement ps=null;

        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,u.getUsername());
            ps.setString(2,u.getPwd());
            ps.setString(3,u.getPhone());
            ps.setInt(4,u.getSex());
            ps.setString(5,u.getEmail());
            ps.setTimestamp(6,u.getCreate_at());
            ps.setTimestamp(7,u.getLogin_at());
            ps.setInt(8,u.getState());


            if(ps.executeUpdate()>0){
                conn.commit();
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(null,ps,conn);
        }

        return false;
    }




    public String findByName(String username){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select username from user where username=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            rs=ps.executeQuery();
            if(rs.next()){
               return  "用户名已存在";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

    public String findByPhone(String phone){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select phone from user where phone=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,phone);
            rs=ps.executeQuery();
            if(rs.next()){
                return "手机号已存在";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

    public User findPhoneAndPassword(String phone,String pwd){

        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="select * from user where phone=? and pwd=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,phone);
            ps.setString(2,pwd);
            rs=ps.executeQuery();
            if(rs.next()){
                return new User(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getInt(5),rs.getString(6),
                        rs.getTimestamp(7),rs.getTimestamp(8),rs.getInt(9));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

    public User findNameAndPwd(String name,String password){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="select * from user where username=? and pwd=?";


        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            rs=ps.executeQuery();
            if(rs.next()){
                return new User(rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),rs.getInt(5),rs.getString(6),
                        rs.getTimestamp(7),rs.getTimestamp(8),rs.getInt(9));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }
    public boolean updateUser(String username, Timestamp login_at,int state){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="update user set login_at=?,state=? where username=?";
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setTimestamp(1,login_at);
            ps.setInt(2,state);
            ps.setString(3,username);

            if(ps.executeUpdate()>0){
                conn.commit();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DB_Connect.close(null,ps,conn);
        }
        return false;
    }

}
