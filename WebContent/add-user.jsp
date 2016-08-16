<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%

Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;

String url = "jdbc:mysql://localhost:3306/pcs_msit_db";
String sql = "INSERT INTO student_tb(id,name,department,location,dob,contact_no,email) VALUES(?,?,?,?,?,?,?)";

String id = request.getParameter("id");
String name = request.getParameter("name");
String department = request.getParameter("department");
String location = request.getParameter("location");

String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");

String contact = request.getParameter("contact");
String email = request.getParameter("email");

String dob = year+"-"+month+"-"+day;

int flag= 0;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, "root", "abdus");

pst = con.prepareStatement(sql);
pst.setString(1, id);
pst.setString(2, name);
pst.setString(3, department);
pst.setString(4, location);
pst.setString(5, dob);
pst.setString(6, contact);
pst.setString(7, email);

pst.executeUpdate();

response.sendRedirect("view-all-entries.jsp");

%>