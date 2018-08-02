package DB_Manager;

import DB.DB_Connect;
import Entity.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {

    public boolean addOne(Order order){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="insert into orders(user_id,book_id,count,add_date,username,address,phone,all_price,remark,state) values(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,order.getUser_id());
            ps.setInt(2,order.getBook_id());
            ps.setInt(3,order.getCount());
            ps.setTimestamp(4,order.getAdd_date());
            ps.setString(5,order.getUsername());
            ps.setString(6,order.getAddress());
            ps.setString(7,order.getPhone());
            ps.setDouble(8,order.getAll_price());
            ps.setString(9,order.getRemark());
            ps.setInt(10,order.getState());
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

    public  List<Order> findByUserId(int userid){
        List<Order> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        String sql="select * from orders where user_id=? ORDER BY add_date DESC";
        PreparedStatement ps=null;
        ResultSet rs=null;


        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,userid);
            rs=ps.executeQuery();
            while (rs.next()){

                list.add(new Order(rs.getInt(1),rs.getInt(2),rs.getInt(3),
                        rs.getInt(4),rs.getTimestamp(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getDouble(9),rs.getString(10),rs.getInt(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }
    public  boolean deleteById(int id){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="DELETE FROM orders WHERE id = " + id;
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            if (ps.executeUpdate() >0){
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
}
