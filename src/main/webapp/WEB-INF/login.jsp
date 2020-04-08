<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<form role="form" action="${pageContext.request.contextPath}/login" method="post">
    <div class="form-group">
        <label for="name">用户名</label>
        <input type="text" class="form-control" id="name" name="username" placeholder="请输入用户名">
    </div>
    <div class="form-group">
        <label for="name">密码</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
    </div>
    <button type="submit" class="btn btn-default">登录</button>
    <button type="reset" class="btn btn-default">重置</button>
</form>
</body>
</html>
