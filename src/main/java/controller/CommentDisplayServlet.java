package controller;

import service.CommentService;
import service.impl.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class CommentDisplayServlet extends HttpServlet {
    private CommentService commentService ;

    public CommentDisplayServlet() {
        commentService = new CommentServiceImpl() ;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 从数据库读取评论数据，转成json并传给前端
         */
        resp.setCharacterEncoding("utf-8");
        System.out.println("in comment 1");
        String comments = commentService.getComments();
        System.out.println("in comment2"+comments);
        PrintWriter writer = resp.getWriter() ;
        writer.write(comments);
        writer.flush();
        writer.close();

    }
}
