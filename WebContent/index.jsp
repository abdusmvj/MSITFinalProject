<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Information System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        
        <script>
            function authenticate()
            {

                var email = document.getElementById("email").value;
                if(email==="" || email===null)
                	{
                		alert("Email can not be blank");
                		return false;
                	}
                var pass = document.getElementById("password").value;
                
                if(pass==="" || pass===null)
            	{
            		alert("Password can not be blank");
            		return false;
            	}
                
                             
                
                
            }    
        </script>
    </head>
    <body>
        <h1 class="text-center jumbotron">Student Information System</h1>
               
   		<div class="container">
   		<% if(session.getAttribute("flash_msg") != "" && session.getAttribute("flash_msg") != null) { %>
   			<div class="alert alert-warning text-center">Alert! <%=session.getAttribute("flash_msg")%></div>
  		<% session.removeAttribute("flash_msg"); } %>
   		</div>
        <div class="container" style="width:350px;">
            <h3 class="page-header">Signin</h3>
            <form action="login.jsp" method="post" onsubmit="return authenticate()">
                <div class="form-group">
                    <label>Enter Email</label>
                    <input type="text" id="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label>Enter Password</label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <input type="submit" value="Login" onclick="" class="btn btn-primary">
            </form>
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Meghnad Saha Institute of Technology
        </div>
    </body>
</html>
