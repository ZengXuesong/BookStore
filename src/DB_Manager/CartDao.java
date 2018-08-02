package DB_Manager;

import DB.DB_Connect;
import Entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDao {

//    public static void main(String[] args) {
//
//        List<Cart> cartList=findByUserId(1);
//        for(int i=0;i<cartList.size();i++){
//            System.out.println(cartList.get(i).getId());
//        }
//
//    }


    public boolean addOne(Cart cart){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="insert into cart(user_id,book_id,count,all_price) values (?,?,?,?)";

        PreparedStatement ps=null;

        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,cart.getUser_id());
            ps.setInt(2,cart.getBook_id());
            ps.setInt(3,cart.getCount());
            ps.setDouble(4,cart.getAll_price());
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
    public List<Cart> findByUserId(int id){
        List<Cart> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        String sql="select * from cart where user_id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Cart(rs.getInt(1),rs.getInt(2),rs.getInt(3),
                        rs.getInt(4),rs.getDouble(5)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public Cart findByUserIdAndBookId(int userid,int bookid){
        Connection conn=DB_Connect.getConn();
        String sql="select * from cart where user_id=? and book_id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,userid);
            ps.setInt(2,bookid);
            rs=ps.executeQuery();
            if(rs.next()){
                return new Cart(rs.getInt(1),rs.getInt(2),rs.getInt(3),
                        rs.getInt(4),rs.getDouble(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

    public boolean updateCount(double price,int userid,int bookid){

        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="update cart set count=count+1,all_price=?*count where user_id=? and book_id=?";
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setDouble(1,price);
            ps.setInt(2,userid);
            ps.setInt(3,bookid);

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

    public boolean updateCountAndCount(double price,int count,int userid,int bookid){

        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="update cart set count=?,all_price=? where user_id=? and book_id=?";
        PreparedStatement ps=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,count);
            ps.setDouble(2,price*count);
            ps.setInt(3,userid);
            ps.setInt(4,bookid);

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

    public  boolean deleteById(int id){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="DELETE FROM cart WHERE id = " + id;
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
