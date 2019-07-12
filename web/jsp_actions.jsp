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

    <%--<jsp:forward>--%>
<%--    <<jsp:forward page="index.jsp"></jsp:forward>--%>
    <jsp:plugin type="applet" codebase="dirname" code="MyApplet.class"
                width="60" height="80">

        <jsp:params>
            <jsp:param name="fontcolor" value="red" />
            <jsp:param name="background" value="black" />
        </jsp:params>

        <jsp:fallback>
            Unable to initialize Java Plugin
        </jsp:fallback>

    </jsp:plugin>
    <%--通过向application中添加属性，则所有组成您web应用的JSP文件都能访问到这些属性    --%>
    <p>
        通过向objects.jsp页面的application中添加属性，则所有组成您web应用的JSP文件都能访问到这些属性:
        <%=application.getAttribute("year") %>
    </p>
</body>
</html>
