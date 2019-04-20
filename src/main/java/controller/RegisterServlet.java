package controller;

import service.UserService;
import service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {
    private UserService service ;
    public RegisterServlet() {
        service= new UserServiceImpl() ;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName") ;
        String passWord = req.getParameter("passWord") ;
        String passWord2 = req.getParameter("passWord2") ;
        System.out.println("in register "+userName+" "+passWord);

        /**
         * 写数据库
         */
        int res = service.register(userName,passWord) ;

            HttpSession session = req.getSession();
            session.setAttribute("name", userName);


            PrintWriter out = resp.getWriter() ;
            out.write(String.valueOf(res));
            out.flush();
            out.close();


    }
}
