
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Login Panel</title>
  <link rel="stylesheet" href="adminlogin.css">
</head>
<body>
    
    
    <%
 
String sql = "select usertype from userdetail";

try {
Class.forName("com.mysql.jdbc.Driver");
PreparedStatement ps;
Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
   
   <br>
    <br>
    <br>
    <br>
    <br>
<center>  <h1 class="title">Welcome To Admin Login </h1></center>
<br>
<br>
<br>

<div class="back" style="height: 70px;width: 150px;color: black;background: white;margin-left: 330px;margin-top: -150px; border-right:15px "><br><a href="Index.jsp" style="text-decoration: none;font-size: 15px;color: black" >click Here To Back!!!</a></div>
             <br>
             <br>
             <br>
<br>
<br>
<br>
  <div class="container">
    <div class="myform">
        
        <form action="adminLogincheck.jsp" method="post">
        <h1>ADMIN LOGIN</h1>
        <input type="text"  name="name" id="name" placeholder="Admin User  Name" required="">
        <input type="password" name="password" id="password" placeholder="Password" required="">
        
        
        <h1 style="color: white">Select Admin</h1>
<td><select style="width: 250px ;height:30px;border-radius: 5px;color: black" name="usertype">
        <option style="color: black;font-family: sans-serif;font-size: 15px" value="select">Please Select</option>
<%
while(rs.next())
{
String usertype = rs.getString("usertype");
%>
<option style="color:black;font-family: sans-serif;font-size: 20px" value=<%=usertype%>><%=usertype%></option>
<% 
}
}
catch(SQLException sqe)
{
out.println("Adminlogin"+sqe);
}
%>
</select>
        <br>
        <br>
        <button type="submit">LOGIN</button>
      </form>
    </div>
    <div class="image">
      <img src="Admin.png">
    </div>
  </div>
<script>
        function fun(){
            document.getElementById('name').value='';
            document.getElementById('password').value='';
            
    </script>
</body>
</html>