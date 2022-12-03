

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String Empcode = request.getParameter("Empcode");
        String projectCode = request.getParameter("projectCode");
        String workTitle = request.getParameter("workTitle");
         String workDiscription = request.getParameter("workDiscription");
         String totalHours = request.getParameter("totalHours");
         String Date = request.getParameter("Date");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("update addtimesheet set Empcode =?,projectCode =?,workTitle=?,workDiscription=?,totalHours= ?,Date=? where id =?");
         pst.setString(1, Empcode);
        pst.setString(2, projectCode);
        pst.setString(3, workTitle);
        pst.setString(4, workDiscription);
          pst.setString(5, totalHours);
          pst.setString(6, Date);
         pst.setString(7, id);
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
    <title> time sheet entry</title>
    <link rel="stylesheet" href="addtimeshet.css">
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
            </li>
   
            
            <li class="services">
               View Details
              <ul class="dropdown">
              <li><a href="ViewEmployee.jsp"class="anchar" >View Employees </a></li>
            <li><a href="viewLeaveEmp.jsp" class="anchar">View Leave Employee</a></li>
            <li><a href="ViewSalary.jsp" class="anchar">View Salary</a></li>
             <li><a href="viewTimeSheet.jsp" class="anchar">View Time Sheet </a></li>          
              </ul> 
            </li>
            
       
            <li><a href="logout.jsp" class="anchar">Logout</a></li>
          </div>
        </ul>
      </nav>
   <br>


<center>
   

  <div class="container">
    <div class="title">TimeSheet Form</div>
    <div class="content">
        <form action="#" method="POST">
            
            
            <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from addtimesheet where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>

        <div class="user-details">                                                                  

          <div class="input-box">
            <span class="deatils">Select Employee Code *</span>
            <select id = "salution" name ="Empcode" value="<%= rs.getString("Empcode")%>">
              <option value = "1">01</option>
              <option value = "2">02</option>
              <option value = "3">03</option>
              <option value = "4">04</option>
              <option value = "5">05</option>
              <option value = "6">06</option>
              <option value = "7">07</option>
              <option value = "8">08</option>
              <option value = "9">09</option>
              <option value = "10">10</option>
           </select>
            <!-- <input type="text" placeholder="Enter your name " required> -->
          </div>
          <div class="input-box">
            <span class="deatils">Select Project Code *</span>
            <select id = "status"  class="select" aria-placeholder="please select" name= "projectCode" value="<%= rs.getString("projectCode")%>">
                <option>month</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                
           </select>
           
        </div>
        
       <div class="input-box">
            <span class="deatils">Work Title *</span>
            <input type="text" placeholder="Work-Title" style="width: 650px; height:45px;border-radius:8px" name="workTitle"  value="<%= rs.getString("workTitle")%>" required >
          </div>
          <div class="input-box">
            <span class="deatils">Work Discription*</span>
          
          <textarea id="textarea" cols="90" rows="10" name="workDiscription"  value="<%= rs.getString("workDiscription")%>"></textarea>
          
            
          </div>
   	
        
          <div class="input-box">
            <span class="deatils">Total Working Hours *</span>
            <input type="text" name="totalHours" placeholder="Work-Hours" style="width: 650px; height:45px;border-radius:8px" value="<%= rs.getString("totalHours")%>" required>
          </div>
          <div class="input-box">
            <span class="deatils">Date *</span>
            <input type="text" name="Date" placeholder="Date" style="width: 650px; height:45px;border-radius:8px" value="<%= rs.getString("Date")%>" required>
          </div>
     <% }  %>
<div class="button">
    <input type="submit" value="Save Form" name="submit">
</div>
     

    </div>
             </form>
  </div>
</center>
</body>
</html>