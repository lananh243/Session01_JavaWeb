<%@ page import="com.example.session01_java.StudentTicketServlet" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Học Sinh Đăng Ký Vé Xe</title>
</head>
<body>
    <h1>Danh Sách Học Sinh Đăng Ký Vé Xe</h1>
    <table border="1">
        <tr>
            <th>Họ và Tên</th>
            <th>Lớp</th>
            <th>Loại Xe</th>
            <th>Biển Số Xe</th>
        </tr>
        <%
            List<StudentTicketServlet.Student> studentList = (List<StudentTicketServlet.Student>) request.getAttribute("studentList");
            for (StudentTicketServlet.Student student : studentList) {
        %>
        <tr>
            <td><%= student.getFullName() %></td>
            <td><%= student.getStudentClass() %></td>
            <td><%= student.getVehicleType() %></td>
            <td><%= student.getLicensePlate() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
