<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: LiuBen
  Date: 2020/9/20
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>if</title>
</head>
<%
    String listNull ="";
    request.setAttribute("listnull",listNull);
    request.setAttribute("number",3);
%>

<%
    request.setAttribute("num",3);

    List list = new ArrayList();
    list.add("aaaaaa");
    list.add("bbbbb");
    list.add("ccccc");

    request.setAttribute("list",list);
%>

<body>


<c:choose>
    <c:when test="${num==1}">
        星期一
    </c:when>
    <c:when test="${num==2}">
        星期二
    </c:when>
    <c:when test="${num==3}">
        星期三
    </c:when>
</c:choose>

<c:if test="${empty listnull}">
    <h1>正确的输出</h1>

</c:if>

<c:if test="${number==3}">
    The value of numbenr is 3!
</c:if>
<br>

<c:forEach begin="1" end="10" var="i" step="2">
    ${i}<br>
</c:forEach>

<c:forEach items="${list}" var="str" varStatus="s">
    ${s.index} : ${s.count} : ${str}<br>
</c:forEach>
</body>
</html>
