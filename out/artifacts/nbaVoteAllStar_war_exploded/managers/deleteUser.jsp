<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/20
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除用户</title>
</head>
<body>
<table border="1" align="center" width="570" cellpadding="10" cellspacing="0" bgcolor="#71CABF" class="font1">
    <tr bgcolor="#E9EDF5">
        <th>用户ID</th>
        <th>用户名</th>
        <th>用户密码</th>
        <th>操作</th>
    </tr>
    <s:action name="showUser"/>//修改完之后更新数据用
    <s:iterator value="#session.userInf" id="userInf">
        <tr>
            <td><s:property value="#userInf.id"/></td>
            <td><s:property value="#userInf.name"/></td>
            <td><s:property value="#userInf.password"/></td>
            <td><a href="/managers/update.jsp">更新数据</a></td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
