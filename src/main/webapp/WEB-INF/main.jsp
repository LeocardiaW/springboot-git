<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>主页</title>
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
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">菜单</h3>
        </div>
        <div class="panel-body">
            <a href="${pageContext.request.contextPath}/movieList"><button type="button" class="btn btn-primary">电影查询</button></a>
        </div>
    </div>
</body>
</html>
