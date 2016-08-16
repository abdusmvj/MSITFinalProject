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
                <div class="col-lg-7"></div>
                <div class="col-lg-7">
                    
                   <div>
                <h4>
                Corporate Office:
                Techno IndiaTGroup
                13th Floor, Chatterjee International Centre
                33A, Jawaharlal Nehru Road,
                Kolkata 700 071
                Phone: (+91 33) 2226 4396/9785
                Fax: (+91 33) 2216 0814
                Email : info@technoindiagroup.com
                Website: www.technoindiagroup.com
                </h4>
            </div>
            
            
             <div>
                <h4>College Address:
                Meghnad Saha Institute of Technology Techno Complex,
                Madurdaha,Beside NRI Complex,
                Uchhepota, Kolkata 700 150
                Phone: (+91 33) 2443 1032, 3094 3462
                Fax: (+91 33) 2443 1032
                Email : info@msitcollege.org 
                </h4>

            </div>
            
            
                    
                    
                    
                </div>                
                <div class="col-lg-4"></div>                
            </div>
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Meghnad Saha Institute of Technology
        </div>
    </body>
</html>
        
 
