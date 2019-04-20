<%--
  Created by IntelliJ IDEA.
  User: Arrow
  Date: 2019/3/6
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet" type="text/css">

</head>
<body>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


<div id="global">
    <div id="heading">我是头部的布局</div>
    <div id="content_menu">

            <select class="selectpicker" data-style="btn-primary" data-live-search="true">
                <option value="1">出行方式</option>
                <option value="2">驾车</option>
                <option value="3">公交</option>
                <option value="4">骑行</option>
                <option value="5">步行</option>
            </select>

        <select class="selectpicker" data-style="btn-primary" data-live-search="true">
            <option value="1">出行策略</option>
            <option value="2">最快捷模式</option>
            <option value="3">最经济模式</option>
            <option value="4">最短距离模式</option>
            <option value="5">考虑实时路况</option>
        </select>

        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Action <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
            </ul>
        </div>

        <div class="dropdown">
            <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">主题
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li role="presentation">
                    <a role="menuitem" tabindex="-1" href="#">Java</a>
                </li>
                <li role="presentation">
                    <a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
                </li>
                <li role="presentation">
                    <a role="menuitem" tabindex="-1" href="#">数据通信/网络</a>
                </li>
                <li role="presentation" class="divider"></li>
                <li role="presentation">
                    <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
                </li>
            </ul>
        </div>

        <input class="btn btn-default" type="submit" value="Submit">

    </div>
    </div>
    <div id="content_body">我是正文部分</div>
    <div id="floor">我在最下面，抢不到沙发，坐个地板可以吧</div>
</div>
</body>
</html>
