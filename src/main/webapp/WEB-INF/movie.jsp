<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LCW
  Date: 2020/4/6
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影详情</title>
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

    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">电影名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="name" value="${requestScope.movie.name}">
        </div>
    </div>
    <div class="form-group">
        <label for="actor" class="col-sm-2 control-label">主角</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="actor" value="${requestScope.movie.actor}">
        </div>
    </div>
    <div class="form-group">
        <label for="time" class="col-sm-2 control-label">上映时间</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="time" value="${requestScope.movie.time}">
        </div>
    </div>
    <div class="form-group">
        <label for="price" class="col-sm-2 control-label">票价</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="price" value="${requestScope.movie.price}">
        </div>
    </div>
</body>
</html>
