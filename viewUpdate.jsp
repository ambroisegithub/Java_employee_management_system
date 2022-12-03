

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String department = request.getParameter("department");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
         String email = request.getParameter("email");
         String telephone = request.getParameter("telephone");
 
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("update record1 set department = ?,firstname =?,lastname= ?,email= ?,telephone= ? where id = ?");
         pst.setString(1, department);
        pst.setString(2, firstname);
        pst.setString(3, lastname);
        pst.setString(4, email);
          pst.setString(5, telephone);
         pst.setString(6, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Record Updateddddd");          
       </script>
    <%            
    }
 
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> update employee </title>
    <link rel="stylesheet" href="addSalary.css">
   </head>
<body>

    <nav class="navbar">
        <!-- LOGO -->
        <div class="logo"><h1><b>EMS</b></h1></div>
        <!-- NAVIGATION MENU -->
        <ul class="nav-links">
          <!-- USING CHECKBOX HACK -->
         
          <div class="menu">
            <li><a href="Index.jsp"class="anchar">Home</a></li>
            <li><a href="/" class="anchar">About Us</a></li>
           
<li class="services">
            Add New
           <ul class="dropdown">
           <li><a href="addNewemployee.jsp"class="anchar" >Add Employee </a></li>
            <li><a href="addsalary.jsp" class="anchar">Add Salary</a></li>
            
            <li><a href="addTimesheet.jsp" class="anchar">Add TimeSheet</a></li>
            <li><a href="leaveApplication.jsp" class="anchar">Add Leave</a></li>       
           </ul> 
         </li
         </li>
            
        <li class="services">
           View Details
          <ul class="dropdown">
           <li><a href="ViewEmployee.jsp"class="anchar" >View Employeee </a></li>
            <li><a href="viewLeaveEmp.jsp" class="anchar">View Leave Employee</a></li>
            <li><a href="ViewSalary.jsp" class="anchar">View Salary</a></li>
            
            <li><a href="viewTimeSheet.jsp" class="anchar">View Time Sheet </a></li>  
          
          
        

            <li><a href="logout.jsp" class="anchar">Logout</a></li>
          </div>
        </ul>
           </li>                 
      </nav>
   <br>


<center>

  <div class="container">
    <div class="title">Update Employee *</div>
    <br>
    <div class="content">
       <div class="input-box">   
           <form   method="post" action="#">
                          <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from record1 where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                  
              
 <div class="input-box">
            <span class="deatils">First Name *</span>
            <input type="text" placeholder="firstname" name="firstname"  style="width: 650px; height:45px;border-radius:8px" value="<%= rs.getString("firstname")%>"  required>
          </div>
          <div class="input-box">
            <span class="deatils">Last Name *</span>
            <input type="text" placeholder="lastname" name="lastname"  style="width: 650px; height:45px;border-radius:8px" value="<%= rs.getString("lastname")%>"  required>
          </div>
          <div class="input-box">
            <span class="deatils">Email *</span>
            <input type="text" placeholder="email" name="email" style="width: 650px; height:45px;border-radius:8px" value="<%= rs.getString("email")%>"  required>
          </div>
          <div class="input-box">
            <span class="deatils">Telephone *</span>
            <input type="text" placeholder="telephone" name="telephone" value="<%= rs.getString("telephone")%>" style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
          <span class="deatils">Department *</span>
          <select id = "year" name = "department" value="<%= rs.getString("department")%>" class="year">
            <option value="2000">IT</option>
            <option>ACOUNTANT</option>
            <option>FINANCE</option>
            <option>SECURITY</option>
            <option>LEADERSHIP</option>
           
         </select>
         </div>
        <% }  %>
<div class="button">
    <input type="submit" name="submit" value="Save Update">
</div>

      </form>

    </div>
  </div>
  </div>
</center>
</body>
</html>










