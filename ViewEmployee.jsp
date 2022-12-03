<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <link href="viewEmployee.css" rel="stylesheet" type="text/css"/>
      <link href="addnewEMP.css" rel="stylesheet" type="text/css"/>
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
            <li><a href="ViewEmployee.jsp"class="anchar" >View Employeee </a></li>
            <li><a href="viewLeaveEmp.jsp" class="anchar">View Leave Employee</a></li>
            <li><a href="ViewSalary.jsp" class="anchar">View Salary</a></li>
             <li><a href="viewTimeSheet.jsp" class="anchar">View Time Sheet </a></li> 
          </ul> 
        </li>

         
<li class="services">
            Add New
           <ul class="dropdown">
            <li><a href="addNewemployee.jsp"class="anchar" >Add Employee </a></li>
            <li><a href="addsalary.jsp" class="anchar">Add Salary</a></li>
            
            <li><a href="addTimesheet.jsp" class="anchar">Add TimeSheet</a></li>
            <li><a href="leaveApplication.jsp" class="anchar">Add Leave</a></li>       
           </ul> 
         </li
      
        <li><a href="logout.jsp" class="anchar">Logout</a></li>

      </div>
    </ul>
  </nav>
     
     
    <body>
            <center><h1 style="color: white;font-family: sans-serif;font-size: 60px">View Employee</h1></center>
           <center> <div class="back"><br><a href="AdminDashboard.jsp" >click Here To Back!!!<a></div></center>
              
        <form action="addNewemployee.jsp" action="post">
     
    <center>      
  <table>
    <thead>
      <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Email</th>
        <th>Telephone</th>
        <th>Department</th>
        <th>Delete</th>
        <th>Edit</th>
      </tr>
    </thead>
                             <%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                             
                                     con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
                                  String query = "select * from record1";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
   <tbody>
          <tr>
                                 <td><%=rs.getString("firstname") %></td>
                                 <td><%=rs.getString("lastname") %></td>
                                 <td><%=rs.getString("email") %></td>
                                 <td><%=rs.getString("telephone") %></td>
                                 <td><%=rs.getString("department") %></td>
                                 <td><a href="viewUpdate.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="deleteEmployee.jsp?id=<%=id%>">Delete</a></td>
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
