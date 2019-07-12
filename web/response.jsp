<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/12
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response怎么响应</title>
</head>
<body>
    <%
<%--        设定响应的字符集编码以支持中文--%>
        response.setCharacterEncoding("UTF-8");
        out.println("张嘉璐");
<%--    通知浏览器4秒刷新一次--%>
        response.setIntHeader("Refresh",4);
        Date date = new Date();
        out.println("现在时间是：");
        out.print(date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds());
    %>
</body>
</html>
