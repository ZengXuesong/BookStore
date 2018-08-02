package DB_Manager;

import DB.DB_Connect;
import Entity.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {

//    public static void main(String arg[]){
//        Merchant merchant=new Merchant("天猫","四川");
//        System.out.print(addOne(merchant));
//    }
    public static boolean addOne(Admin admin){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="insert into admin(name,address) values(?,?)";
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,admin.getName());
            ps.setString(2,admin.getAddress());
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
    public Admin findById(int id){
        Connection conn=DB_Connect.getConn();
        String sql="select * from admin where id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            if(rs.next()){
                return new Admin(rs.getInt(1),rs.getString(2),rs.getString(3));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }
}
