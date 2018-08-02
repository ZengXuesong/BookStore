package DB_Manager;

import DB.DB_Connect;
import Entity.Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookTypeDao {


    public List<Type> findAll(){
        List<Type> list=new ArrayList<>();
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select * from type";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new Type(rs.getInt(1),rs.getString(2)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return list;
    }

    public Type findById(int id){
        Connection conn=DB_Connect.getConn();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select * from type";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
               return new Type(rs.getInt(1),rs.getString(2));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }

}
