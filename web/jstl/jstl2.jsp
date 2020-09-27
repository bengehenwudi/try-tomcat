<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.itcast.User" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: LiuBen
  Date: 2020/9/20
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List list = new ArrayList();
    User user1 = new User("张三",23,new Date());
    User user2 = new User("李四",25,new Date());
    User user3 = new User("王二麻子",23,new Date());
    list.add(user1);
    list.add(user2);
    list.add(user3);
    request.setAttribute("list",list);
%>

<c:forEach items="${list}" varStatus="s" var="User">
    ${s.index} ${User.name}    :   ${User.age} :   ${User.birtStr}<br>
</c:forEach>
</body>
</html>
