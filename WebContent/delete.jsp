<%-- 
    Document   : delete
    Created on : 29-Jul-2016, 12:00:39
    Author     : @Siddhartha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String url = "jdbc:mysql://localhost:3306/pcs_msit_db";
    String sql = "DELETE FROM student_tb WHERE id=?";
    String id = request.getParameter("id"); 
    
    //Load Driver Class
    Class.forName("com.mysql.jdbc.Driver"); 
    
    // creating connection
    con = DriverManager.getConnection(url, "root", "abdus");
    
    // preparing the query
    pst = con.prepareStatement(sql);
    pst.setString(1, id);
    pst.executeUpdate(); // executing the query
    
    response.sendRedirect("view-all-entries.jsp");
%>