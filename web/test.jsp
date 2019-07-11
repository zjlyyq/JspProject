<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/11
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% int day = 3; %>
<html>
<head>
    <title>标题</title>
    <style>
        p{
            color:#f0f;
            /*font-size:13px;*/
        }
    </style>

</head>
<body>
    <h1>信息网</h1>
    <%
        if(day == 1 && day == 7){
            out.print("今天是周末");
        }
        else{
            out.print("<h1>今天不是周末</h1>");
        }
    %>

    <%
        if(day == 1 && day == 7){
    %>
        <p>今天是周末</p>
    <% }else{%>
        <p>今天不是周末</p>
    <% }%>
    <ul>
        <% for(int i = 0;i < 10;i ++){%>
        <li>第<%= i %>段</li>
        <% }%>
    </ul>


</body>
</html>
