<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%

Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;

String url = "jdbc:mysql://localhost:3306/pcs_msit_db";
String sql = "SELECT * FROM admin WHERE email=? AND password=?";

String email = request.getParameter("email");
String password = request.getParameter("password");
int flag= 0;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, "root", "abdus");

pst = con.prepareStatement(sql);
pst.setString(1, email);
pst.setString(2, password);

rs = pst.executeQuery();

while(rs.next()) {
	flag++;
}

if(flag > 0) {
	rs.beforeFirst();
	rs.next();
	session.setAttribute("name", rs.getString("name"));
	session.setAttribute("email", rs.getString("email"));
	session.setAttribute("id", rs.getString("id"));
	response.sendRedirect("home.jsp");
}


%>