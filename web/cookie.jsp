<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/12
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie操作</title>
</head>
<body>
    <%
        String str = URLEncoder.encode(request.getParameter("name"),"UTF-8");
        Cookie cookie1 = new Cookie("name",str);
        str = URLEncoder.encode(request.getParameter("phone"),"UTF-8");
        Cookie cookie2 = new Cookie("name",str);
        cookie1.setMaxAge(60*3);
        cookie2.setMaxAge(60*3);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
    %>
    <p>姓名：<%=request.getParameter("name")%></p>
    <p>手机号：<%=request.getParameter("phone")%></p>
</body>
</html>
