package com.example.session01_java;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "StudentTicketServlet", value = "/bt7")
public class StudentTicketServlet extends HttpServlet {
    private List<Student> studentList = new ArrayList<>();
    @Override
    public void init() throws ServletException{
        studentList.add(new Student("Nguyễn Văn A", "KS23A", "Xe Máy", "59X1-23456"));
        studentList.add(new Student("Trần Thị B", "KS23B", "Xe Ô Tô", "59X1-98765"));
        studentList.add(new Student("Lê Văn C", "KS23C", "Xe Đạp", "59X1-54321"));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Đưa danh sách học sinh vào request
        request.setAttribute("studentList", studentList);
        // Chuyển tiếp đến trang listStudent.jsp
        request.getRequestDispatcher("/listStudent.jsp").forward(request, response);
    }

    public class Student {
        private String fullName;
        private String studentClass;
        private String vehicleType;
        private String licensePlate;

        public Student(String fullName, String studentClass, String vehicleType, String licensePlate) {
            this.fullName = fullName;
            this.studentClass = studentClass;
            this.vehicleType = vehicleType;
            this.licensePlate = licensePlate;
        }

        public String getVehicleType() {
            return vehicleType;
        }

        public void setVehicleType(String vehicleType) {
            this.vehicleType = vehicleType;
        }

        public String getFullName() {
            return fullName;
        }

        public void setFullName(String fullName) {
            this.fullName = fullName;
        }

        public String getStudentClass() {
            return studentClass;
        }

        public void setStudentClass(String studentClass) {
            this.studentClass = studentClass;
        }

        public String getLicensePlate() {
            return licensePlate;
        }

        public void setLicensePlate(String licensePlate) {
            this.licensePlate = licensePlate;
        }
    }
}