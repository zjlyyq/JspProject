<%@ page import="com.zjltcb.main.People" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/11
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>此页面展示jsp的动作元素</title>
</head>
<body>
    <%--<jsp:include>动作元素--%>
    <jsp:include page="test.jsp"></jsp:include>
    <jsp:include page="index.jsp"></jsp:include>
    <%--<jsp:useBean>动作元素--%>
    <jsp:useBean id="people" class="com.zjltcb.main.People"></jsp:useBean>
    <%
        People p = new People();
        p.setAge("12");
        p.setName("张嘉璐");
    %>
    <br>
    <textarea><%= p.getName() + p.getAge() + "岁"%></textarea>
</body>
</html>
