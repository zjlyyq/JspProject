<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/12
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理post请求</title>
</head>
<body>
    <h3>处理post请求</h3>
    <%
        //处理中文乱码
        String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
//        String name = request.getParameter("name");
        String number = request.getParameter("phone");

        response.setCharacterEncoding("UTF-8");
    %>

    <p>姓名:<%=name%></p>
    <p>手机号:<%=number%></p>

</body>
</html>
