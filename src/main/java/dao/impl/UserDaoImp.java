package dao.impl;

import dao.*;
import utils.DBUtil;

import java.lang.ref.PhantomReference;
import java.sql.*;

public class UserDaoImp implements dao.UserDao {
    private Connection connection;
    private Statement statement;

    public UserDaoImp() {
        connection = DBUtil.getConnection();

    }


    /**
     * 可以发现这种原生的查询方法很不方便，需要自己手动将查询出来的结果集遍历，
     * 在Spring中提供了mapping可以将dao层中的原生数据映射成bean
     * @param userName
     * @param password
     * @return
     */
    public boolean isUserExist(String userName, String password) {
        try {
            System.out.println("in query "+userName);
            statement = connection.createStatement();
            ResultSet res = statement.executeQuery(
                    "select name,pwd from user where name ='" + userName + "' and pwd='" + password+"'");

            res.last() ;
            if(res.getRow()>0)
                return true ;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public int insertUser(String userName, String passWord) {
        boolean res = false;
        try {
            /**
             * insert之前先查询用户是否存在
             */
            boolean userExist = isUserExist(userName, passWord);

            if (userExist) {
               return 1 ; /**返回1代表插入失败**/
            }
            statement = connection.createStatement();
            PreparedStatement ptmt = connection.prepareStatement("insert into user (name,pwd) values (?,?)");
            ptmt.setString(1, userName);
            ptmt.setString(2, passWord);
            res = ptmt.execute();
            System.out.println("insert res " + res+" "+userName+" "+passWord);
            return 2 ;


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
}
