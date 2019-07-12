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
    <jsp:setProperty name="people" property="age" value="20"></jsp:setProperty>
    <%
        People p = new People();
        p.setAge("12");
        p.setName("张嘉璐");
        People p2 = new People();

    %>
    <br>
    <textarea><%= p.getName() + p.getAge() + "岁"%></textarea><br>
    <textarea><%= p2.getName() + p2.getAge() + "岁"%></textarea>
</body>
</html>
