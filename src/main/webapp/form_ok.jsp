<%--
  Created by IntelliJ IDEA.
  User: habin
  Date: 11/10/2023
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String age = request.getParameter("age");
    String fav_language = request.getParameter("fav_language");
    String IDE = request.getParameter("IDE");
    String restaurant = request.getParameter("restaurant");
    String favcolor = request.getParameter("favcolor");
    String comments = request.getParameter("comments");
    String submitdate = request.getParameter("submitdate");
%>
</body>
    <h1>Result of Survey for Web Creators</h1>
    First name: <%=fname%> <br />
    Last name: <%=lname%> <br />
    Age: <%=age%> <br />
    Favorite language: <%=fav_language%> <br />
    Frequent tasks:
    <c:forEach items="${paramValues.task}" var="task">
        <p>${task}</p>
    </c:forEach>
    Favorite IDE: <%=IDE%> <br />
    Typical eating place: <%=restaurant%> <br />
    Favorite color: <%=favcolor%> <br />
    Nerdy comment: <%=comments%> <br />
    Submitted date: <%=submitdate%> <br />


</html>
