<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LCW
  Date: 2020/4/6
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>电影清单</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>

<table class="table table-striped">
    <thead>
    <tr>
        <th>电影编号</th>
        <th>电影名称</th>
        <th>主演</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${requestScope.movies}" var="movie">
        <tr>
            <td>${movie.movieid}</td>
            <td>${movie.name}</td>
            <td>${movie.actor}</td>
            <td><a href="${pageContext.request.contextPath}/movieDetail/${movie.movieid}">查看详情</a></td>
        </tr>
        </c:forEach>
    </tbody>

</table>
</body>
</html>
