package dao;

import pojo.Comment;

import java.util.List;

public interface CommentDao {
    List selectComments() ;
    int insertComment(Comment comment) ;
}
