package com.example.session01_java;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ErrorHandlingServlet", value = "/bt5")
public class ErrorHandlingServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            // Phát sinh lỗi chia cho 0
            int result = 10 / 0;
            response.getWriter().write("Kết quả: " + result);
        } catch (ArithmeticException e) {
            // Bắt lỗi và chuyển hướng đến trang error.jsp
            request.setAttribute("errorMessage", "Đã xảy ra lỗi: Không thể chia cho 0.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }

    }

    public void destroy() {
    }
}