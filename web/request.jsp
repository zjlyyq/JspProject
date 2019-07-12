<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/12
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request获取请求参数和请求头</title>
</head>
<body>
    <h3>
        学习request如何处理客户端请求。
    </h3>
    <table width="100%" border="1" align="center">
        <tr bgcolor="#949494">
            <th>Header Name</th><th>Header Value(s)</th>
        </tr>
    <%
<%--        获取请求参数--%>
        Enumeration params = request.getParameterNames();
        while(params.hasMoreElements()) {
            String paramName = (String)params.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getParameter(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
        <%--        获取请求头--%>
        Enumeration headerNames = request.getHeaderNames();
        while(headerNames.hasMoreElements()) {
            String paramName = (String)headerNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getHeader(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
    %>
</body>
</html>
