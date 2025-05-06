<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kết Quả Đăng Ký</title>
</head>
<body>
    <h1>Kết Quả Đăng Ký Vé Xe</h1>

    <%
        Boolean isSuccess = (Boolean) request.getAttribute("isSuccess");
        if (isSuccess != null && isSuccess) {
    %>
    <p>Đăng ký thành công!</p>
    <p>Họ và Tên: <%= request.getAttribute("fullName") %></p>
    <p>Lớp: <%= request.getAttribute("studentClass") %></p>
    <p>Loại Xe: <%= request.getAttribute("vehicleType") %></p>
    <p>Biển Số Xe: <%= request.getAttribute("licensePlate") %></p>
    <%
    } else {
    %>
    <p>Đăng ký thất bại! Vui lòng kiểm tra thông tin.</p>
    <%
        }
    %>
</body>
</html>
