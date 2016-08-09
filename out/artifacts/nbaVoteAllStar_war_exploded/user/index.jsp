<%--
  Created by IntelliJ IDEA.
  User: Jack
  Date: 2015/12/15
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NBA全明星投票系统</title>
</head>
<FRAMESET border="10" frameSpacing="0" rows="80,*" frameBorder="1" cols="*">
    <FRAME src="/user/title.jsp" id="topFrame" title="topFrame" name="topFrame" scrolling="no">
    <FRAMESET border="10" frameSpacing="0" rows="*" frameBorder="1" cols="180,*">
        <FRAME src="/user/select.jsp" id="leftFrame" title="leftFrame" name="leftFrame" scrolling="yes">
        <FRAME src="/user/display.html" id="mainFrame" title="mainFrame" name="mainFrame">
    </FRAMESET>
</FRAMESET>
<body>
</body>
</html>
