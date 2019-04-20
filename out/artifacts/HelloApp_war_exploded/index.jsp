<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>旅游区路线规划系统</title>
    <link rel="stylesheet" href="master/css/base.css" />
    <link rel="stylesheet" href="master/css/map.css" />
    <script src="../../bower_components/jquery/dist/jquery.min.js"></script>

</head>

<body>
<div id="t_header">
    <div class="t_header_main">
        <div class="t_header_title">
            <a href="index.jsp">旅游区路线规划系统</a>
        </div>
        <div class="t_header_about">
            <a href="comment.jsp">问题反馈</a>
        </div>
        <%
            HttpSession httpSession = request.getSession();
            String username = (String)httpSession.getAttribute("name");
//            Cookie[] cookies = request.getCookies();
//            String username = null;
//            if (cookies != null) {
//                for (Cookie cookie : cookies) {
//                    if (cookie.getName().equals("name") && cookie.getValue() != null) {
//                        username = cookie.getValue();
//                    }
//                }
//            }
        %>

        <% if (username != null) { %>
            <div class="t_header_login">
                <a href="#">欢迎你：用户 <%=username %>  </a>

                <a href="/logout">&nbsp;&nbsp; 注销 </a>
            </div>
        <% } else { %>
            <div class="t_header_login">
                <a href="login.jsp">登录</a>
            </div>
            <div class="t_header_register">
                <a href="register.html">注册</a>
            </div>
        <% } %>
    </div>

</div>
<div id="t_main">
    <div id="t_content">
        <div id="t_content_zone">
            <div class="t_search_add">
                <div><input type="text" placeholder="请输入地名" id="t_search_input" size="40px"/></div>
                <div><input type="button" id="t_place_add_btn" value="添加" /></div>
            </div>
            <div id="t_place_panel">
                <ul id="t_place_area">

                </ul>
            </div>
            <div id="t_suggest_results">
            </div>
            <div id="t_search">
                <input id="t_btnSearch" type="button" value="搜索路径" />
            </div>
            <div id="t_search_results">
                <div class="t_search_results_opt">

                </div>
                <div class="t_search_results_panel">
                    <ul>
                    </ul>
                </div>
            </div>
            <div id="t_search_route">

            </div>
        </div>
    </div>
    <div id="t_map_container"></div>
</div>
<div id="t_progress_info">
</div>
<div id="my_popup">
    <div class="popup_header">
        <div class="popup_title">提醒</div>
        <div class="popup_close">X</div>
    </div>
    <div class="popup_container"><div></div></div>
    <div class="popup_button">
        <div class="popup_button_sure">确定</div>
        <div class="popup_button_cancel">取消</div>
    </div>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=lGv0D1ipAA9UeVtQXsFQpTsU"></script>
<script type="text/javascript" src="lib/head.min.js"></script>
<script type="text/javascript" src="master/js/init.js"></script>
</body>

<script>
    <%
        String userName  = request.getParameter("userName") ;
    %>


    console.log(<%=userName%>);

</script>
</html> 