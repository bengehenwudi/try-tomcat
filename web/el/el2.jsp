<%--
  Created by IntelliJ IDEA.
  User: LiuBen
  Date: 2020/9/20
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el 获取域中数据</title>
</head>
<body>
<%
    request.setAttribute("name","张三");
    session.setAttribute("age","23");
    request.setAttribute("age","24");

%>

${requestScope.get("name")}<br>
${sessionScope.get("age")}<br>
${sessionScope.age}<br>


********
${age}<br>

${sessionScope.age}




</body>
</html>
