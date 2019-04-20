package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImp;
import service.UserService;

import java.sql.ResultSet;

public class UserServiceImpl implements UserService {
    private UserDao userDao ;
    public UserServiceImpl() {
        userDao = new UserDaoImp() ;
    }

    public int logIn(String userName, String passWord) {
        boolean userExist = userDao.isUserExist(userName,passWord) ;
        if(userExist)
            return 1 ;

        return 0;
    }

    public int register(String userName, String passWord) {
        int res = userDao.insertUser(userName,passWord) ;
        return res;
    }
}
