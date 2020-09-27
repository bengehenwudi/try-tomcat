<%@ page import="cn.itcast.User" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: LiuBen
  Date: 2020/9/20
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取对象数据</title>
</head>
<body>
<%
    User user = new User();
    user.setName("张三");
    user.setAge(23);
    user.setBirthday(new Date());

    request.setAttribute("u",user);

    List list = new ArrayList();
    list.add("aaa");
    list.add("bbbb");
    request.setAttribute("list",list);

    Map   map = new HashMap();
    map.put("name","李四");
    map.put("gender","男");
    request.setAttribute("map",map);


   String listNull ="";
    request.setAttribute("listnull",listNull);

    List list1 = new ArrayList();
    request.setAttribute("list1",list1);
%>

${requestScope.u.name}<br>

${requestScope.u.age}<br>

${requestScope.u.birtStr}<br>

*********************<br>
${list}<br>
${list[0]}


******MAP*****

${map.name}<br>
${map.gender}<br>

${empty list}<br>
${empty listnull}<br>

${empty list1}<br>


<!-- 获取虚拟目录-->
${pageContext.request.contextPath}

</body>
</html>
