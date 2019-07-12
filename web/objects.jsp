<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/12
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>隐式对象</title>
</head>
<body>
    <%
        String params = request.getQueryString();
    %>
    <p>
        通过隐式对象request获取到的请求参数是<%=params%>
    </p>
</body>
</html>
