

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <link href="Employee.css" rel="stylesheet" type="text/css"/>
      <link href="EMP.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
  <nav class="navbar">
    <!-- LOGO -->
    <div class="logo"><h1><b>EMS</b></h1></div>
    <!-- NAVIGATION MENU -->
    <ul class="nav-links">
      <div class="menu">
        <li><a href="Index.jsp"class="anchar">Home</a></li>
        <li><a href="/" class="anchar">About Us</a></li>
       
        
        <li class="services">
           View Details
          <ul class="dropdown">
            <li><a href="viewEmployee.jsp"class="anchar" >View Employees </a></li>
            <li><a href="viewLeaveEmp.jsp" class="anchar">View Leave Employee</a></li>
            <li><a href="ViewSalary.jsp" class="anchar">View Salary</a></li>
             <li><a href="viewTimeSheet.jsp" class="anchar">View Time Sheet </a></li>         
          </ul> 
        </li>

        <li class="services">
            Add New
           <ul class="dropdown">
<li><a href="addNewemployeee.jsp"class="anchar" >Add Employee </a></li>
            <li><a href="addsalary.jsp" class="anchar">Add Salary</a></li>
            
            <li><a href="addTimesheet.jsp" class="anchar">Add TimeSheet</a></li>
            <li><a href="leaveApplication.jsp" class="anchar">Add Leave</a></li>         
           </ul> 
         </li>
       
        <li><a href="logout.jsp" class="anchar">Logout</a></li>

      </div>
    </ul>
  </nav>
     
     
    <body>
            <center><h1 style="color: white;font-family: sans-serif;font-size: 60px">View TimeSheet</h1></center>
        <div class="back"><br><a href="AdminDashboard.jsp">click Here To Back!!!<a></div>
              
        <form action="viewTimeSheet.jsp" action="post">
     
    <center>      
  <table>
    <thead>
      <tr>
        <th>code</th>
        <th>Description</th>
        <th>FromDate</th>
        <th>ToDate</th>
        <th>status</th>
        <th>Edit</th>
           <th>Delete</th>
      </tr>
    </thead>
    


                             <%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                             
                                     con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
                                  String query = "select * from addtimesheet";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
   <tbody>
          <tr>
                                 <td><%=rs.getString("Empcode") %></td>
                                 <td><%=rs.getString("projectCode") %></td>
                                 
                                 <td><%=rs.getString("workTitle") %></td>   
                                 <td><%=rs.getString("workDiscription") %></td> 
                                 <td><%=rs.getString("totalHours") %></td> 
                                   <td><%=rs.getString("Date") %></td> 
                                 
                                 <td><a href="UpdateTimeSheet.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="deleteTimesheet.jsp?id=<%=id%>">Delete</a></td>
          </tr>
   </tbody>
    <%         
                                 }
                               %>                   
  </table>
      </center> 
    <br>
  <br>
  <br>

        </form>

    </body>
</html>
