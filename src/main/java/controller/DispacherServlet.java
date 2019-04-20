package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DispacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username") ;
        String password = req.getParameter("password") ;

        req.setAttribute("user",userName);
        req.setAttribute("pwd",password);

        ServletContext context = getServletContext() ;
        RequestDispatcher dispatcher = context.getRequestDispatcher("/hello.jsp") ;
        dispatcher.forward(req,resp);
    }
}
