<%-- 
    Document   : newjsp
    Created on : Nov 18, 2022, 8:45:10 PM
    Author     : Ambroise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>



<%@page import="java.sql.*" %>
 try{
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String firstname = request.getParameter("firstname");
         String lastname = request.getParameter("lastname");
          String telephone = request.getParameter("telephone");
        String department = request.getParameter("department");
        String email = request.getParameter("email");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("update record1 set department = ?,firstname = ?,lastname= ?,email = ?,telephone=? where id = ?");
        pst.setString(3, department);
        pst.setString(4, firstname);
        pst.setString(5, lastname);
        pst.setString(9, email);
        pst.setString(11, telephone);
        pst.setString(12, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Record Updateddddd");          
       </script>
    <%            
    }
 
%>
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
                   
                    
         <span class="deatils">First Name *</span>
            <input type="text" placeholder="firstname" name="firstname" value="<%= rs.getString("firstname")%>" style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
            <span class="deatils">Last Name *</span>
            <input type="text" placeholder="lastname" name="lastname" value="<%= rs.getString("lastname")%>"  style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
            <span class="deatils">Email *</span>
            <input type="text" placeholder="email" name="email" value="<%= rs.getString("email")%>" style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
            <span class="deatils">Telephone *</span>
            <input type="text" placeholder="telephone" name="telephone" value="<%= rs.getString("telephone")%>" style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
          <span class="deatils">Department *</span>
          <select id = "year" name = "department" value="<%= rs.getString("department")%>" class="year">            
  