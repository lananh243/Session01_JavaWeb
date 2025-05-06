package com.example.session01_java;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "TodoListServlet", value = "/todo")
public class TodoListServlet extends HttpServlet {
    private List<TodoItem> todoList = new ArrayList<>();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("todoList", todoList);
        request.getRequestDispatcher("/todo.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String task = request.getParameter("task");
        String action = request.getParameter("action");

        if ("complete".equals(action) && task != null) {
            // Đánh dấu công việc là hoàn thành
            for (TodoItem item : todoList) {
                if (item.getTask().equals(task)) {
                    item.setCompleted(true);
                    break;
                }
            }
        } else if (task != null && !task.isEmpty()) {
            // Thêm công việc mới
            todoList.add(new TodoItem(task, false));
        }
        // Chuyển hướng về trang todo
        response.sendRedirect(request.getContextPath() + "/todo");
    }

    public static class TodoItem {
        private String task;
        private boolean completed;

        public TodoItem(String task, boolean completed) {
            this.task = task;
            this.completed = completed;
        }

        public String getTask() {
            return task;
        }

        public boolean isCompleted() {
            return completed;
        }

        public void setCompleted(boolean completed) {
            this.completed = completed;
        }
    }
}