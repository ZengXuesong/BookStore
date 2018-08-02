package DB;


import java.sql.*;

public class DB_Connect {

    public static Connection getConn(){
        Connection conn=null;
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=UTF-8";
        String user="root";
        String password="root";

        try {
            Class.forName(driver);
            conn=DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print("获取驱动失败！");
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection){
        if(resultSet!=null){
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(preparedStatement!=null){
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(connection!=null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}


