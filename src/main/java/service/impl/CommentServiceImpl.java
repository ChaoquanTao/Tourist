package service.impl;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import dao.CommentDao;
import dao.impl.CommentDaoImpl;
import pojo.Comment;
import service.CommentService;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    private CommentDao commentDao ;

    public CommentServiceImpl() {
        commentDao = new CommentDaoImpl() ;
    }

    public String getComments() {
        List<Comment> comments = commentDao.selectComments();
        System.out.println("in servieceimp"+comments);
        String res = new Gson().toJson(comments) ;
        System.out.println("in servieceimp"+res);
        return  res;
    }

    public int insertComments() {
        return 0;
    }
}
