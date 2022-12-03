<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              <li><a href="ViewEmployee.jsp"class="anchar" >View Employees </a></li>
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
         </li>
      
        <li><a href="logout.jsp" class="anchar">Logout</a></li>

      </div>
    </ul>
  </nav>
     
     
    <body>
            <center><h1 style="color: white;font-family: sans-serif;font-size: 60px">View Salary paid</h1></center>
        <div class="back"><br><a href="AdminDashboard.jsp">click Here To Back!!!<a></div>
              
        <form action="viewEmployeepaid.jsp" action="post">
     
    <center>      
  <table>
    <thead>
      <tr>
        <th>code</th>
        <th>month</th>
        <th>year</th>
        <th>amount</th>
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
                                  String query = "select * from salary";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
   <tbody>
          <tr>
                                 <td><%=rs.getString("code") %></td>
                                 <td><%=rs.getString("month") %></td>
                                 <td><%=rs.getString("year") %></td>
                                 <td><%=rs.getString("amount") %></td>                           
                                 <td><a href="viewEmployeepaid.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="deletesalary.jsp?id=<%=id%>">Delete</a></td>
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
