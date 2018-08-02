package DB_Manager;

import DB.DB_Connect;
import Entity.BookDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookDetailDao {
    public BookDetail findById(int id){
        Connection conn=DB_Connect.getConn();
        String sql="select * from book_detail where book_id=?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            if(rs.next()){
                return new BookDetail(rs.getInt(1),rs.getInt(2),rs.getString(3),
                        rs.getString(4),rs.getInt(5),rs.getInt(6),
                        rs.getDouble(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB_Connect.close(rs,ps,conn);
        }
        return null;
    }
}
