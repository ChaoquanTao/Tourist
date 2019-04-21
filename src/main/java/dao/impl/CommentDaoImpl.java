package dao.impl;

import dao.CommentDao;
import pojo.Comment;
import utils.DBUtil;

import javax.swing.plaf.nimbus.State;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentDaoImpl implements CommentDao {
    private Connection connection ;

    public CommentDaoImpl() {
        connection = DBUtil.getConnection() ;
    }

    public List selectComments() {
        try {
            Statement statement = connection.createStatement() ;
            ResultSet resultSet = statement.executeQuery("select user_name,user_comment from comment") ;
            List commentList = new ArrayList() ;
            System.out.println(resultSet);
            while (resultSet.next()){
                String name = resultSet.getString("user_name") ;
                String comment = resultSet.getString("user_comment") ;
                commentList.add(new Comment(name,comment)) ;
                System.out.println(name+" "+comment);
            }
            return commentList ;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int insertComment(Comment comment) {
        try {
            Statement statement = connection.createStatement() ;
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "insert into comment(user_name,user_comment)values (?,?)") ;
            preparedStatement.setString(1,comment.getUserName() );
            preparedStatement.setString(2,comment.getUserComment());
            preparedStatement.execute() ;
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0 ;
    }
}
