package controller;

import service.UserService;
import service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

/**
 * 通过web.xml中Servlet配置中的mapping与请求的url呼应上
 */
public class LoginServlet extends HttpServlet {
    private UserService service ;

    public LoginServlet() {
        service= new UserServiceImpl() ;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 查询数据库，根据查询结果确定返回结果
         */
        System.out.println("=========in doPost");
        String userName = req.getParameter("name") ;
        String passWord = req.getParameter("pwd") ;

        int res = service.logIn(userName, passWord) ;
        System.out.println(res);
        if(res==1){
            /**
             * 用户存在
             */
            System.out.println("res ="+res);
            resp.setCharacterEncoding("utf-8");

            /**
             * 创建cookie
             */
//            Cookie cookie = new Cookie("name",userName) ;
//            cookie.setMaxAge(10*60);
//            resp.addCookie(cookie);


            /**
             * 创建Session
             */
            HttpSession session = req.getSession();
            session.setAttribute("name", userName);


            PrintWriter out = resp.getWriter() ;
            out.write(String.valueOf(1));
            out.flush();
            out.close();

        }else {
            /**
             * 非法用户
             */
            PrintWriter out = resp.getWriter() ;
            out.write(String.valueOf(0));
            out.flush();
            out.close();
        }

    }
}
