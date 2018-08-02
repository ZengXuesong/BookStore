package DB_Manager;

import DB.DB_Connect;
import Entity.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    public List<Book> findAllByTime(){
        List<Book> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        String sql="select * from book order by create_at desc limit 8";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);

            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public List<Book> search(String str,int typeid){
        List<Book> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql= null;
        if(typeid == 0){
            sql="SELECT * FROM book WHERE `name` LIKE \"%"+str+"%\";";
        }else {
            sql="SELECT * FROM book WHERE id = "+typeid+" and name LIKE \"%"+str+"%\";";
        }
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            //ps.setInt(1,typeid);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }
    public List<Book> findAllBySale(){
        List<Book> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="select * from book ORDER BY sale_count DESC LIMIT 8";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);

            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public List<Book> findByType(int typeid){
        List<Book> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select * from book where type_id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,typeid);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public Book findById(int book_id){
        Connection conn=DB_Connect.getConn();
        String sql="select * from book where id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,book_id);
            rs=ps.executeQuery();
            if(rs.next()){
                return new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
          DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

    public List<Book> findAll(){
        List<Book> list=new ArrayList<>();
        Connection conn= DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql="select * from book";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public List<Book> findRandom(){
        List<Book> list=new ArrayList<>();
        Connection conn= DB_Connect.getConn();
        String sql="select * from book order by rand() limit 8";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Book(rs.getInt(1),rs.getString(2),rs.getInt(3),
                        rs.getDouble(4),rs.getString(5),rs.getString(6),
                        rs.getInt(7),rs.getInt(8),rs.getInt(9),
                        rs.getInt(10),rs.getDate(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }
}
