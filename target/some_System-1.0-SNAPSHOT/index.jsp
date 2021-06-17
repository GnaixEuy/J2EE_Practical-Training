<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<div>
    <form method="post">
        <label>账号：
            <input type="text">
        </label>
        <br>
        <label>密码：
            <input type="password">
        </label>
        <br>
        <input type="radio" name="identity" value="前台">前台
        <input type="radio" name="identity" value="后台">后台<br>
        <input type="submit">
    </form>
</div>

</body>
</html>