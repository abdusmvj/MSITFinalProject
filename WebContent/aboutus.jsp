
<%-- 
    Document   : contactus
    Created on : 29-Jul-2016, 13:12:00
    Author     : @Abdus
--%>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
if(session.getAttribute("id") == "" || session.getAttribute("id") == null)
{
	session.setAttribute("flash_msg", "Please Signin to view content!");
	response.sendRedirect("index.jsp");
} 
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Information System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
       
    </head>
    <body>
        <h1 class="text-center">Student Information System</h1>
               
        <nav class="navbar" style="background-color: #633974;">
            <div class="container">
                <div class="navbar-header">
                    <a href="home.jsp" class="navbar-brand">Home</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                	<li class="active"><p style="font-weight: bold; color:#fff;" class="navbar-text">Hello, <%=session.getAttribute("name")%></p></li>
                	<li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </nav>
        
        <div class="container">
            <div class="row">
                <h2 class="page-header text-center">College</h2>
                <div class="col-lg-11"></div>
                <div class="col-lg-11">
                    
                  <h4>
    
        Meghnad Saha Institute of Technology (MSIT), a relatively new entrant in the field of technological education began its journey on 5th September 2001 equipped with a team of dedicated individuals and a vision for the future. The college is committed to impart state-of-the-art education to students to enable them to foresee and meet the technological challenges in future. The academic programmes of the college are backed by a number of eminent experts who are engaged in academic and professional walks of life. The college is situated in a prime location in the city at Nazirabad, Chowbhaga behind Ruby General Hospital. The college, being well connected from any part of the city, enables the student's easy access. The college is approved by AICTE and Directorate of Technical Education and affiliated with West Bengal University of Technology. It offers Bachelor degrees in five streams - Computer Science & Engineering, Information Technology, Electronics & Communication Engineering,Electrical Engineering and Civil Engineering. It also conducts Post Graduate programme in Business Administration (MBA) & Computer Application (MCA). The Institute is located at its own sprawling campus of 8 acres and the Institute has state-of-the-art laboratories, experienced faculties, extensive computer facilities coupled with a high-tech finishing school & effective placement supports. The institute is committed to give shape to the vision of eminent scientist professor Meghnad Saha for a technologically vibrant & fore running Bengal. Meghnad Saha Institute of Technology (MSIT) is also making significant contributions in local developmental projects and enriching the quality of life for the people around it.
    
    
</h4>
            
            
                    
                    
                    
                </div>                
                <div class="col-lg-7"></div>                
            </div>
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="color:maroon;">
            &copy;  2016 Meghnad Saha Institute of Technology
        </div>
    </body>
</html>
        
 
