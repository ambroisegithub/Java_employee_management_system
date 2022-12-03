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
         <li><a href="/" class="anchar">Home</a></li>
         <li><a href="/" class="anchar">About Us</a></li>
         <li><a href="/" class="anchar">Change Password</a></li>
         <li><a href="/" class="anchar">Contact us</a></li>
         
         <li class="services">
            Add New
           <ul class="dropdown">
             <li><a href="/" class="anchar" >Add Employee </a></li>
             <li><a href="/" class="anchar">Add Salary</a></li>
             <li><a href="/" class="anchar">Add Salary</a></li>
             <li><a href="/" class="anchar">Add TimeSheet</a></li>
             <li><a href="/" class="anchar">Add Leave</a></li>
           </ul> 
         </li>

         
         <li class="services">
            report
           <ul class="dropdown">
             <li><a href="/" class="anchar" >Employee Report </a></li>
             <li><a href="/" class="anchar">Salary</a></li>
             <li><a href="/" class="anchar">TimeSheet Report</a></li>          
           </ul> 
         </li>
         <li><a href="/" class="anchar">Logout</a></li>
       </div>
     </ul>
   </nav>
<br>


<center>
<div class="container">
    <div class="title">Admin Dashboard</div>
    <br>
    <div class="content">
      <form action=" =">
        
        <a href="" class="change">
            <div>
           Add Employee
            </div>
          </a>
  
          <br>
          <a href="/" class="change" >
            <div>
             Add Salary
            </div>
          </a>
          <br>
          <a href="" class="change">
            <div>
             Add Time Sheet
            </div>
          </a>
          <br>
          <a href="" class="change">
            <div>
             Add Leave
            </div>
          </a>
          <br>
          <a href="" class="change">
            <div>
             Employee Report
            </div>
          </a>
          <br>
          <a href="" class="change">
            <div>
           Salary Report
            </div>
          </a>
<br>
<a href="" class="change">
    <div>
        TimeSheet Report
    </div>
  </a>
  <br>
  <a href="" class="change">
    <div>
        Change Password
    </div>
  </a>
  <br>
  <a href="" class="change">
    <div>
   Log out
    </div>
  </a>
</center>
  <script src="admindashBoard.js"></script>
 </body>
</html>