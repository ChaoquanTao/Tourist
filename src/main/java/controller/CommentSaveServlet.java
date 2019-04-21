package controller;

import pojo.Comment;
import service.CommentService;
import service.impl.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CommentSaveServlet extends HttpServlet {
    private CommentService commentService ;

    public CommentSaveServlet() {
        commentService = new CommentServiceImpl() ;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 根据前端拿到的数据写数据库
         */
        String userName = req.getParameter("name") ;
        String comment = req.getParameter("comment") ;

        int res = commentService.insertComment(new Comment(userName,comment)) ;
        PrintWriter writer = resp.getWriter() ;
        writer.write(String.valueOf(res));
        writer.flush();
        writer.close();
    }
}
