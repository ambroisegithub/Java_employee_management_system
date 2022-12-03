


  <%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("submit")!=null)
    {
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        String ToDate = request.getParameter("ToDate");
        String FromDate = request.getParameter("FromDate");
        String status = request.getParameter("status");
        Connection con;  
        PreparedStatement pst;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("insert into leaveapplication(code,description,FromDate,ToDate,status)values(?,?,?,?,?)");
        pst.setString(1, code);
        pst.setString(2,description );
        pst.setString(3, FromDate);
        pst.setString(4, ToDate);
        pst.setString(5, status);
        pst.executeUpdate();  
        }catch(Exception ex){
        
        }
        %>
    <script>  
        alert("Employee Leave Added");    
    </script>
    <%            
    }
   %>

 

   <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="addnewEMP.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
 <center>
  <div class="container">
     <div class="title">Leave Application</div>
    <div class="content">
      
          <form  method="POST" action="leaveApplication.jsp" >       
          <div class="user-details">
          <div class="input-box">
            <span class="deatils">Select Employee Code *</span>
            <select id = "salution" name ="code" style="width: 650px; height:45px;border-radius:8px">
            
              <option value = "01">01</option>
              <option value = "02">02</option>
              <option value = "03">03</option>
              <option value = "04">04</option>
              <option value = "05">05</option>
              <option value = "06">06</option>
              <option value = "07">07</option>
              <option value = "08">08</option>
              <option value = "09">09</option>
              <option value = "10">10</option>
        
           </select>
            </div>
         
             <div class="input-box">
          <span class="deatils">description</span>
          


 <textarea  id="textarea" name="description" cols="90" rows="10"></textarea>
       </div>

<div class="input-box">
            <span class="deatils">From Date *</span>
<!--            <input type="text" placeholder="amount" name="FromDate" style="width: 650px; height:45px;border-radius:8px" required>-->
            <input type="date" style="width: 650px; height:45px;border-radius:8px" name="FromDate" required>
          </div>
              <div class="input-box">
  
  <span class="deatils">To Date *</span>
            <input type="date" style="width: 650px; height:45px;border-radius:8px" name="ToDate"  required>
</div>
              <div class="input-box">
           
            
            
             <span class="deatils">Leave Status*</span>
            <select id = "Leave Status" name="status" style="width: 650px; height:45px;border-radius:8px">
              <option value = "Worker">Worker</option>
              <option value = "Fresher">Fresher</option>
              <option value = "Manager">Manager</option>
              <option value = "Finance">Finance</option>
              <option value = "Intern">Intern</option>
              
           </select>
<!--            <input type="text" placeholder="amount" name="status" style="width: 650px; height:45px;border-radius:8px" required>-->
          </div>
              
    
<div class="button">
    <input type="submit" id="submit" value="Save Form" name="submit" style="width: 650px; height:45px;border-radius:8px" class="btn btn-info">
</div>
 </div>
              
              
         </form>

    </div>
  
</center>
</body>
</html>

