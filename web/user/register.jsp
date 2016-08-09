<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/17
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<s:form action="register">
    账号：<s:textarea value="login.name"/>
    密码<s:password value="login.password"/>
</s:form>
</body>
</html>
