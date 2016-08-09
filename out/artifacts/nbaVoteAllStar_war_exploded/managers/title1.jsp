<%@ taglib prefix="s" uri="/struts-tags" %>
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
<h1 align="center">NBA全明星投票系统</h1>

<p align="right">欢迎,<s:property value="#session.Login.name"/>&nbsp;&nbsp;&nbsp;&nbsp;<a
        href="../login.jsp">退出</a><!--退出到login.jsp页面-->
</p>
</body>
</html>
