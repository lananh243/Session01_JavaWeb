<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/6/2025
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>

<%--Mô tả chức năng từng thành phần
  Client (Trình duyệt web):

  Là nơi người dùng tương tác với ứng dụng.

  Gửi các yêu cầu (HTTP requests) đến Web Server và hiển thị kết quả trả về (HTML, JSON...).

  Web Server (Apache, Nginx, hoặc Tomcat):

  Tiếp nhận yêu cầu từ client.

  Phân phối tài nguyên tĩnh (HTML, CSS, JS).

  Chuyển tiếp các yêu cầu động đến Application Server để xử lý logic.

  Application Server (Java EE - Jakarta EE, Spring Boot, v.v):

  Thực hiện xử lý nghiệp vụ (business logic).

  Giao tiếp với cơ sở dữ liệu.

  Trả kết quả xử lý về cho Web Server.

  Database (MySQL, PostgreSQL, Oracle, v.v):

  Lưu trữ dữ liệu của ứng dụng.

  Thực hiện truy vấn, cập nhật, xóa và thêm dữ liệu khi được Application Server yêu cầu.


┌────────────┐       HTTP Request        ┌─────────────────┐        ┌──────────────── ┐        ┌───────────── ┐
│   Client   │ ───────────────────────▶  │  Web Server     │ ─────▶ │ Application     │ ─────▶ │   Database   │
│ (Browser)  │      (HTML, CSS, JS)      │ (Apache/Tomcat) │        │ Server (Java EE)│        │ (MySQL, etc.)│
└────────────┘                           └──────────────   ┘        └──────────────── ┘        └───────────── ┘
      ▲                                      ▼                          ▼                         ▲
      └────────────── Response (HTML) ◀──────┘                    Business Logic             Data Query
--%>