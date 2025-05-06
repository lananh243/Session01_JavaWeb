package com.example.session01_java;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "UserInfo", value = "/bt3")
public class UserInfoServlet extends HttpServlet {

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = "Lan Anh";
        int userAge = 25;

        request.setAttribute("userName", userName);
        request.setAttribute("userAge", userAge);

        request.getRequestDispatcher("/user.jsp").forward(request, response);
    }

    public void destroy() {
    }
}