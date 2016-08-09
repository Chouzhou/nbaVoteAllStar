<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/17
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <li><a href="display1.jsp">首页</a></li>
    <li><a href="show_vote.jsp">查看票数</a></li>
    <li>管理用户信息
        <ul>
            <li><a href="showUser.action" target="mainFrame">更新用户信息</a></li>
            <li><a href="showUser.action" target="mainFrame">删除用户信息</a></li>
        </ul>
    </li>
    <li>管理球员信息
        <ul>
            <li><a href="increase_player">增加球员信息</a></li>
            <li><a href="update_player">更新球员信息</a></li>
            <li><a href="delete_play">删除球员信息</a></li>
        </ul>
    </li>
</ul>
</body>
</html>
