
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String code = request.getParameter("code");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
         String amount = request.getParameter("amount");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("update salary set code = ?,month =?,year= ?,amount= ? where id = ?");
        pst.setString(1, code);
        pst.setString(2, month);
        pst.setString(3, year);
         pst.setString(4, amount);
         pst.setString(5, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Record Updateddddd");          
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
        
        
  <nav class="navbar">
    <!-- LOGO -->
    <div class="logo"><h1><b>EMS</b></h1></div>
    <!-- NAVIGATION MENU -->
    <ul class="nav-links">
      <div class="menu">
        <li><a href="Index.jsp"class="anchar">Home</a></li>
        <li><a href="/" class="anchar">About Us</a></li>
       
        <li class="services">
          View Datails
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
    <center>

  <div class="container">
    <div class="title">Update Employee *</div>
    <br>
    <div class="content">
       <div class="input-box">  
                <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from salary where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>

                      <div class="user-details">
          <div class="input-box">
            <span class="deatils">Select Employee Code *</span>
            <select id = "salution" name ="code"   value="<%= rs.getString("code")%>">
            
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
          <span class="deatils">Month</span>
          <select id = "department" name ="month" value="<%= rs.getString("month")%>" >

                <option value="01">January</option>
                <option value="02">February</option>
                <option value="03">March</option>
                <option value="04">April</option>
                <option value="05">May</option>
                <option value="06">June</option>
                <option value="07">July</option>
                <option value="08">August</option>
                <option value="09">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
      
         </select>
       </div>
                     <div class="input-box">
  <span class="deatils">Year</span>
  <select class="select1" name="year"  value="<%= rs.getString("year")%>">
                <option value="2000">2000</option>
            <option value="2001">2001</option>
            <option value="2002">2002</option>
            <option value="2003">2003</option>
            <option value="2004">2004</option>
            <option value="2005">2005</option>
            <option value="2006">2006</option>
            <option value="2007">2007</option>
            <option value="2008">2008</option>
            <option value="2009">2009</option>
            <option value="2010">2010</option>
            <option value="2011">2011</option>
            <option value="2012">2012</option>
            <option value="2013">2013</option>
            <option value="2014">2014</option>
            <option value="2015">2015</option>
            <option value="2016">2016</option>
            <option value="2017">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option>
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2022">2022</option>
            <option value="2022">2023</option>
            <option value="2022">2024</option>
            <option value="2022">2025</option>
            <option value="2022">2026</option>
            <option value="2022">2027</option>
            <option value="2022">2028</option>
            <option value="2022">2029</option>
            <option value="2022">2030</option>
</select>
</div>
                     <div class="input-box">
            <span class="deatils">Amount Paid *</span>
            <input type="text" placeholder="amount" name="amount" value="<%= rs.getString("amount")%>"  style="width: 650px; height:45px;border-radius:8px" required>
          </div>
    
                    
                    <% }  %>

                    
                         </br>
<div class="button">
    <input type="submit" id="submit" value="Save Form" name="submit" style="width:200px" class="btn btn-info">
</div>
 </div>
            
 </form>

    </div>
  </div>
</center>
      
</body>
       </html>






