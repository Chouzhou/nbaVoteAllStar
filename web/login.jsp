<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/15
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NBA全明星投票系统</title>
</head>
<body>
<s:form action="login" method="POST">
    <table>
        <caption>用户登录</caption>
        <tr>
            <td>登录名<s:textfield name="login.name" size="20"/></td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;码<s:password name="login.password" size="21"/></td>
        </tr>
        <tr>
            <td>
                <s:submit value="登录" theme="simple"/>
                <s:reset value="重置" theme="simple"/><br>
            </td>
        </tr>
        <!-- 验证失败信息或错误信息在这里显示 -->
        <tr>
            <td>
                <font color="red"><s:fielderror/><s:property value="message"/></font>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
