package com.example.session01_java;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "RegisterTicketServlet", value = "/register")
public class RegisterTicketServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Nhận dữ liệu từ form
        String fullName = request.getParameter("fullName");
        String studentClass = request.getParameter("class");
        String vehicleType = request.getParameter("vehicleType");
        String licensePlate = request.getParameter("licensePlate");

        // Kiểm tra thông tin
        boolean isSuccess = fullName != null && !fullName.isEmpty() &&
                studentClass != null && !studentClass.isEmpty() &&
                vehicleType != null && !vehicleType.isEmpty() &&
                licensePlate != null && !licensePlate.isEmpty();

        // Chuyển tiếp đến trang kết quả
        request.setAttribute("isSuccess", isSuccess);
        request.setAttribute("fullName", fullName);
        request.setAttribute("studentClass", studentClass);
        request.setAttribute("vehicleType", vehicleType);
        request.setAttribute("licensePlate", licensePlate);

        // Gọi phương thức xử lý
        handleRegister(request, response);
    }

    public void handleRegister(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/resultRegister.jsp").forward(request, response);
    }
}