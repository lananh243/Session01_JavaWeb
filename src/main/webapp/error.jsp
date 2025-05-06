<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông Báo Lỗi</title>
</head>
<body>
    <h1>Đã xảy ra một lỗi</h1>
    <p><strong><%= request.getAttribute("errorMessage") %></strong></p>
    <p>Vui lòng thử lại.</p>
</body>
</html>
