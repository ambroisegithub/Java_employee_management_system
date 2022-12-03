<!DOCTYPE html>
<html lang="en">
 <head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet" href="adminDashboard.css" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,600;1,200;1,400;1,600&display=swap"
   rel="stylesheet">
   <title>Document</title>
 </head>
 <body>
   <nav class="navbar">
     <!-- LOGO -->
     <div class="logo"><h1><b>EMS</b></h1></div>
     <!-- NAVIGATION MENU -->
     <ul class="nav-links">
       <!-- USING CHECKBOX HACK -->
      
       <div class="menu">
         <li><a href="Index.jsp" class="anchar">Home</a></li>
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
           <li><a href="ViewEmployee.jsp"class="anchar" >View Employeee </a></li>
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
    <div class="title">Admin Dashboard</div>
    <br>
    <div class="content">
        <form action=" =" method="POST">
        
        <a href="addNewemployee.jsp" class="change">
            <div>
           Add Employee
            </div>
          </a>
  
          <br>
          <a href="addsalary.jsp" class="change" >
            <div>
             Add Salary
            </div>
          </a>
          <br>
          <a href="addTimesheet.jsp" class="change">
            <div>
             Add Time Sheet
            </div>
          </a>
          <br>
          <a href="leaveApplication.jsp" class="change">
            <div>
             Add Leave
            </div>
          </a>
          <br>
         
         
          <br>
          <a href="ViewEmployee.jsp" class="change">
            <div>
           View Register Employee
            </div>
          </a>
<br>
<a href="ViewSalary.jsp" class="change">
    <div>
         View Salary Paid
    </div>
  </a>
  <br>
  <a href="viewLeaveEmp.jsp" class="change">
    <div>
        View Employee Leave
    </div>
  </a>
  <br>
  <a href="logout.jsp" class="change">                                                          
                                                       
    <div>
   Log out
    </div>
  </a>
</center>
  <script src="admindashBoard.js"></script>
 </body>
</html><%-- 
    Document   : AdminDashboard
    Created on : Nov 5, 2022, 10:20:12 PM
    Author     : Ambroise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

