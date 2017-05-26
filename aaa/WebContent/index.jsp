<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-04-13
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
%>
<html>
<head>
    <title>어서와</title>
</head>
<body>
<%
    out.print("항항 질경련 체고의 꼬추 질경련 항항 질경련 이글스의 왕방망이");
    response.sendRedirect("main.do");
%>
</body>
</html>
