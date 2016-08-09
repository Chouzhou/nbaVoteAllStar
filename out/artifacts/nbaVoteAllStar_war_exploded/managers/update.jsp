<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/18
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新数据</title>
</head>
<body>
<s:form action="updateUser" method="POST">
    <table border="1">
        <tr bgcolor="#E9EDF5">
            <td>填写更正信息</td>
        </tr>
        <tr>
            <td width="100">ID:<s:textfield name="login.id" size="20"/></td>
            <td width="100">用户名:<s:textfield name="login.name"/></td>
        </tr>
        <tr>
            <td width="100">密码:<s:password name="login.password"/></td>
        </tr>
        <s:submit value="更改"/>
    </table>
</s:form>
</body>
</html>
