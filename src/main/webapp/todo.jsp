<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.session01_java.TodoListServlet" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>To-Do List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<header class="bg-blue-600 text-white p-4">
    <nav class="flex justify-center space-x-10">
        <a href="#" class="hover:underline">Trang chủ</a>
        <a href="#" class="hover:underline">Liên hệ</a>
        <a href="#" class="hover:underline">Giỏ hàng</a>
        <a href="#" class="hover:underline">Tài khoản</a>
    </nav>
</header>

<div class="container mx-auto mt-5">
    <form action="todo" method="post" class="flex mb-4">
        <input type="text" name="task" placeholder="Nhập công việc mới" class="border border-gray-300 p-2 rounded-l-md w-full" required>
        <button type="submit" class="bg-blue-600 text-white p-2 rounded-r-md">Thêm</button>
    </form>

    <table class="min-w-full bg-white border border-gray-300">
        <thead>
        <tr class="bg-blue-500 text-white">
            <th class="border py-2">ID</th>
            <th class="border py-2">Job Name</th>
            <th class="border py-2">Status</th>
            <th class="border py-2">Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<TodoListServlet.TodoItem> todoList = (List<TodoListServlet.TodoItem>) request.getAttribute("todoList");
            for (int i = 0; i < todoList.size(); i++) {
                TodoListServlet.TodoItem item = todoList.get(i);
        %>
        <tr class="<%= item.isCompleted() ? "bg-green-200" : "bg-white" %> hover:bg-blue-100">
            <td class="border py-2 text-center"><%= i + 1 %></td>
            <td class="border py-2 <%= item.isCompleted() ? "line-through text-gray-500" : "" %>">
                <%= item.getTask() %>
            </td>
            <td class="border py-2">
                <%= item.isCompleted() ? "Hoàn thành" : "Chưa hoàn thành" %>
            </td>
            <td class="border py-2 text-center">
                <form action="todo" method="post">
                    <input type="hidden" name="task" value="<%= item.getTask() %>">
                    <input type="hidden" name="action" value="complete">
                    <button type="submit" class="text-blue-600 hover:underline">Đánh dấu hoàn thành</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>