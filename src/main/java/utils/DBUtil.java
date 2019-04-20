package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver" ;
    private final static String DB_URL = "jdbc:mysql://localhost:3306/AD?serverTimezone=UTC";
    private final static String USER="root" ;
    private final static String PASS="root" ;
    private static Connection connection ;

    public DBUtil() {

        try {
            System.out.println("====in dbutil");
//            Connection connection ;
            Class.forName(JDBC_DRIVER) ;
//            connection = DriverManager.getConnection(DB_URL) ;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection(){
        if(connection==null){
            try {
                Class.forName(JDBC_DRIVER) ;
                connection = DriverManager.getConnection(DB_URL,USER,PASS) ;
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return connection ;
    }
}
