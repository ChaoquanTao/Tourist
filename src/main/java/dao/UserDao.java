package dao;

import java.sql.ResultSet;

public interface UserDao {
    boolean isUserExist(String userName, String password) ;

    int insertUser(String userName, String passWord) ;
}
