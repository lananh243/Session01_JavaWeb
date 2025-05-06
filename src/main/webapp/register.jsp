<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng Ký Vé Xe</title>
</head>
<body>
<h1>Đăng Ký Vé Xe Cho Học Sinh</h1>
<form action="register" method="post">
  <label>Họ và Tên:</label><br>
  <input type="text" name="fullName" required><br><br>

  <label>Lớp:</label><br>
  <input type="text" name="class" required><br><br>

  <label>Loại Xe:</label><br>
  <select name="vehicleType" required>
    <option value="">-- Chọn loại xe --</option>
    <option value="Xe Đạp">Xe Đạp</option>
    <option value="Xe Máy">Xe Máy</option>
    <option value="Xe Ô Tô">Xe Ô Tô</option>
    <option value="Xe Đạp Điện">Xe Đạp Điện</option>
  </select><br><br>

  <label>Biển Số Xe:</label><br>
  <input type="text" name="licensePlate" required><br><br>

  <input type="submit" value="Đăng Ký">
</form>
</body>
</html>
