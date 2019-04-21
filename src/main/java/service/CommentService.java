package service;

import pojo.Comment;

import java.util.List;

public interface CommentService {
    String getComments() ;
    int insertComment(Comment comment) ;
}
