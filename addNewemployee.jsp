<%-- 
    Document   : addnewkuruhande
    Created on : Nov 10, 2022, 7:33:35 PM
    Author     : Ambroise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("submit")!=null)
    {
        String salution = request.getParameter("salution");
        String status = request.getParameter("status");
        String department = request.getParameter("department");
         String firstname = request.getParameter("firstname");
         String lastname = request.getParameter("lastname");
         String middlename = request.getParameter("middlename");
        String date = request.getParameter("date");
        String nationality = request.getParameter("nationality");
        String email = request.getParameter("email");
        String landline = request.getParameter("landline");
        String telephone = request.getParameter("telephone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        String gender = request.getParameter("gender");
        Connection con;  
        PreparedStatement pst;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/employee_management","root","");
        pst = con.prepareStatement("insert into record1(salution,status,department,firstname,lastname,middlename,date,nationality,email,landline,telephone,address,city,country,username,password,confirmpassword,gender)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1, salution);
        pst.setString(2, status);
        pst.setString(3, department);
        pst.setString(4, firstname);
        pst.setString(5, lastname);
        pst.setString(6, middlename);
        pst.setString(7,date);
        pst.setString(8, nationality);
        pst.setString(9,email);
        pst.setString(10,landline);
        pst.setString(11, telephone);
        pst.setString(12,address);
        pst.setString(13,city);
        pst.setString(14,country);
        pst.setString(15,username);
        pst.setString(16,password);
        pst.setString(17,confirmpassword);
        pst.setString(18, gender);
        pst.executeUpdate();  
        }catch(Exception ex){
        
        }
        %>
    <script>  
        alert("Record Adddeddddd");    
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
         </li>
        
        <li><a href="logout.jsp" class="anchar">Logout</a></li>

      </div>
    </ul>
  </nav>
 <center>
  <div class="container">
     <div class="title">Add New Employee</div>
    <div class="content">
      
          <form  method="POST" action="addNewemployee.jsp" >       
          <div class="user-details">
          <div class="input-box">
            <span class="deatils">salution *</span>
            <select id = "salution" name ="salution">
              <option>Mr</option>
              <option>Mrs</option>
        
           </select>
            </div>
          <div class="input-box">
            <span class="deatils">Status</span>
           
            <select id = "status" name ="status">
              <option>Manage</option>
              <option>worker</option>
              <option>Accountant</option>
           </select>
            </div>
             <div class="input-box">
          <span class="deatils">Department</span>
          <select id = "department" name ="department">
            <option >Information Technology</option>
            <option>Business Development</option>
            <option >Finance / Accounting</option>
      
         </select>
       </div>
          <div class="input-box">
        <span class="deatils">First Name</span>
        <input type="text" name="firstname" placeholder="First Name" required>
    </div>
  <div class="input-box">
        <span class="deatils">First Name</span>
        <input type="text" name="lastname" placeholder="Last Name" required>
    </div>
 
   <div class="input-box">
        <span class="deatils">Middle Name</span>
        <input type="text" name="middlename" placeholder="Middle Name" required>
    </div>
 <div class="input-box">
            <span class="deatils">Date of birth</span>
            <input type="date" name="date" placeholder="Date of birth" style="width: 300px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
            <span class="deatils">Nationality</span>
            <input type="text" name="nationality"  placeholder="Enter your Nationality " required>
        </div>
        <div class="input-box">
          <span class="deatils">Email</span>
          <input type="text" name="email" placeholder="Enter your Email " required>
      </div>
      <div class="input-box">
        <span class="deatils">Land line</span>
        <input type="text" name="landline" placeholder="Landline" required>
    </div>
    <div class="input-box">
      <span class="deatils">Mobile</span>
      <input type="text" name="telephone" placeholder="Phone_number" required>
  </div>
  <br>
   <div class="input-box">
    <span class="deatils">Address</span>
    <input type="text" name="address" placeholder="Please Enter your address" required>
</div>
</div>  
             
 <div class="input-box">
            <span class="deatils">City/Village/Town&Provence</span>
            <input type="text" name="city" placeholder="city-provence" style="width: 650px; height:45px;border-radius:8px" required>
          </div>
          <div class="input-box">
            <span class="deatils">Country</span>
            <select name="country" class="select1">
              <option value="Afghanistan">Afghanistan</option>
          <option value="Albania">Albania</option>
          <option value="Algeria">Algeria</option>
          <option value="American Samoa">American Samoa</option>
          <option value="Andorra">Andorra</option>
          <option value="Angola">Angola</option>
          <option value="Anguilla">Anguilla</option>
          <option value="Antartica">Antarctica</option>
          <option value="Antigua and Barbuda">Antigua and Barbuda</option>
          <option value="Argentina">Argentina</option>
          <option value="Armenia">Armenia</option>
          <option value="Aruba">Aruba</option>
          <option value="Australia">Australia</option>
          <option value="Austria">Austria</option>
          <option value="Azerbaijan">Azerbaijan</option>
          <option value="Bahamas">Bahamas</option>
          <option value="Bahrain">Bahrain</option>
          <option value="Bangladesh">Bangladesh</option>
          <option value="Barbados">Barbados</option>
          <option value="Belarus">Belarus</option>
          <option value="Belgium">Belgium</option>
          <option value="Belize">Belize</option>
          <option value="Benin">Benin</option>
          <option value="Bermuda">Bermuda</option>
          <option value="Bhutan">Bhutan</option>
          <option value="Bolivia">Bolivia</option>
          <option value="Bosnia and Herzegowina">Bosnia and Herzegowina</option>
          <option value="Botswana">Botswana</option>
          <option value="Bouvet Island">Bouvet Island</option>
          <option value="Brazil">Brazil</option>
          <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
          <option value="Brunei Darussalam">Brunei Darussalam</option>
          <option value="Bulgaria">Bulgaria</option>
          <option value="Burkina Faso">Burkina Faso</option>
          <option value="Burundi">Burundi</option>
          <option value="Cambodia">Cambodia</option>
          <option value="Cameroon">Cameroon</option>
          <option value="Canada">Canada</option>
          <option value="Cape Verde">Cape Verde</option>
          <option value="Cayman Islands">Cayman Islands</option>
          <option value="Central African Republic">Central African Republic</option>
          <option value="Chad">Chad</option>
          <option value="Chile">Chile</option>
          <option value="China">China</option>
          <option value="Christmas Island">Christmas Island</option>
          <option value="Cocos Islands">Cocos (Keeling) Islands</option>
          <option value="Colombia">Colombia</option>
          <option value="Comoros">Comoros</option>
          <option value="Congo">Congo</option>
          <option value="Congo">Congo, the Democratic Republic of the</option>
          <option value="Cook Islands">Cook Islands</option>
          <option value="Costa Rica">Costa Rica</option>
          <option value="Cota D'Ivoire">Cote d'Ivoire</option>
          <option value="Croatia">Croatia (Hrvatska)</option>
          <option value="Cuba">Cuba</option>
          <option value="Cyprus">Cyprus</option>
          <option value="Czech Republic">Czech Republic</option>
          <option value="Denmark">Denmark</option>
          <option value="Djibouti">Djibouti</option>
          <option value="Dominica">Dominica</option>
          <option value="Dominican Republic">Dominican Republic</option>
          <option value="East Timor">East Timor</option>
          <option value="Ecuador">Ecuador</option>
          <option value="Egypt">Egypt</option>
          <option value="El Salvador">El Salvador</option>
          <option value="Equatorial Guinea">Equatorial Guinea</option>
          <option value="Eritrea">Eritrea</option>
          <option value="Estonia">Estonia</option>
          <option value="Ethiopia">Ethiopia</option>
          <option value="Falkland Islands">Falkland Islands (Malvinas)</option>
          <option value="Faroe Islands">Faroe Islands</option>
          <option value="Fiji">Fiji</option>
          <option value="Finland">Finland</option>
          <option value="France">France</option>
          <option value="France Metropolitan">France, Metropolitan</option>
          <option value="French Guiana">French Guiana</option>
          <option value="French Polynesia">French Polynesia</option>
          <option value="French Southern Territories">French Southern Territories</option>
          <option value="Gabon">Gabon</option>
          <option value="Gambia">Gambia</option>
          <option value="Georgia">Georgia</option>
          <option value="Germany">Germany</option>
          <option value="Ghana">Ghana</option>
          <option value="Gibraltar">Gibraltar</option>
          <option value="Greece">Greece</option>
          <option value="Greenland">Greenland</option>
          <option value="Grenada">Grenada</option>
          <option value="Guadeloupe">Guadeloupe</option>
          <option value="Guam">Guam</option>
          <option value="Guatemala">Guatemala</option>
          <option value="Guinea">Guinea</option>
          <option value="Guinea-Bissau">Guinea-Bissau</option>
          <option value="Guyana">Guyana</option>
          <option value="Haiti">Haiti</option>
          <option value="Heard and McDonald Islands">Heard and Mc Donald Islands</option>
          <option value="Holy See">Holy See (Vatican City State)</option>
          <option value="Honduras">Honduras</option>
          <option value="Hong Kong">Hong Kong</option>
          <option value="Hungary">Hungary</option>
          <option value="Iceland">Iceland</option>
          <option value="India">India</option>
          <option value="Indonesia">Indonesia</option>
          <option value="Iran">Iran (Islamic Republic of)</option>
          <option value="Iraq">Iraq</option>
          <option value="Ireland">Ireland</option>
          <option value="Israel">Israel</option>
          <option value="Italy">Italy</option>
          <option value="Jamaica">Jamaica</option>
          <option value="Japan">Japan</option>
          <option value="Jordan">Jordan</option>
          <option value="Kazakhstan">Kazakhstan</option>
          <option value="Kenya">Kenya</option>
          <option value="Kiribati">Kiribati</option>
          <option value="Democratic People's Republic of Korea">Korea, Democratic People's Republic of</option>
          <option value="Korea">Korea, Republic of</option>
          <option value="Kuwait">Kuwait</option>
          <option value="Kyrgyzstan">Kyrgyzstan</option>
          <option value="Lao">Lao People's Democratic Republic</option>
          <option value="Latvia">Latvia</option>
          <option value="Lebanon" selected>Lebanon</option>
          <option value="Lesotho">Lesotho</option>
          <option value="Liberia">Liberia</option>
          <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
          <option value="Liechtenstein">Liechtenstein</option>
          <option value="Lithuania">Lithuania</option>
          <option value="Luxembourg">Luxembourg</option>
          <option value="Macau">Macau</option>
          <option value="Macedonia">Macedonia, The Former Yugoslav Republic of</option>
          <option value="Madagascar">Madagascar</option>
          <option value="Malawi">Malawi</option>
          <option value="Malaysia">Malaysia</option>
          <option value="Maldives">Maldives</option>
          <option value="Mali">Mali</option>
          <option value="Malta">Malta</option>
          <option value="Marshall Islands">Marshall Islands</option>
          <option value="Martinique">Martinique</option>
          <option value="Mauritania">Mauritania</option>
          <option value="Mauritius">Mauritius</option>
          <option value="Mayotte">Mayotte</option>
          <option value="Mexico">Mexico</option>
          <option value="Micronesia">Micronesia, Federated States of</option>
          <option value="Moldova">Moldova, Republic of</option>
          <option value="Monaco">Monaco</option>
          <option value="Mongolia">Mongolia</option>
          <option value="Montserrat">Montserrat</option>
          <option value="Morocco">Morocco</option>
          <option value="Mozambique">Mozambique</option>
          <option value="Myanmar">Myanmar</option>
          <option value="Namibia">Namibia</option>
          <option value="Nauru">Nauru</option>
          <option value="Nepal">Nepal</option>
          <option value="Netherlands">Netherlands</option>
          <option value="Netherlands Antilles">Netherlands Antilles</option>
          <option value="New Caledonia">New Caledonia</option>
          <option value="New Zealand">New Zealand</option>
          <option value="Nicaragua">Nicaragua</option>
          <option value="Niger">Niger</option>
          <option value="Nigeria">Nigeria</option>
          <option value="Niue">Niue</option>
          <option value="Norfolk Island">Norfolk Island</option>
          <option value="Northern Mariana Islands">Northern Mariana Islands</option>
          <option value="Norway">Norway</option>
          <option value="Oman">Oman</option>
          <option value="Pakistan">Pakistan</option>
          <option value="Palau">Palau</option>
          <option value="Panama">Panama</option>
          <option value="Papua New Guinea">Papua New Guinea</option>
          <option value="Paraguay">Paraguay</option>
          <option value="Peru">Peru</option>
          <option value="Philippines">Philippines</option>
          <option value="Pitcairn">Pitcairn</option>
          <option value="Poland">Poland</option>
          <option value="Portugal">Portugal</option>
          <option value="Puerto Rico">Puerto Rico</option>
          <option value="Qatar">Qatar</option>
          <option value="Reunion">Reunion</option>
          <option value="Romania">Romania</option>
          <option value="Russia">Russian Federation</option>
          <option value="Rwanda">Rwanda</option>
          <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
          <option value="Saint LUCIA">Saint LUCIA</option>
          <option value="Saint Vincent">Saint Vincent and the Grenadines</option>
          <option value="Samoa">Samoa</option>
          <option value="San Marino">San Marino</option>
          <option value="Sao Tome and Principe">Sao Tome and Principe</option> 
          <option value="Saudi Arabia">Saudi Arabia</option>
          <option value="Senegal">Senegal</option>
          <option value="Seychelles">Seychelles</option>
          <option value="Sierra">Sierra Leone</option>
          <option value="Singapore">Singapore</option>
          <option value="Slovakia">Slovakia (Slovak Republic)</option>
          <option value="Slovenia">Slovenia</option>
          <option value="Solomon Islands">Solomon Islands</option>
          <option value="Somalia">Somalia</option>
          <option value="South Africa">South Africa</option>
          <option value="South Georgia">South Georgia and the South Sandwich Islands</option>
          <option value="Span">Spain</option>
          <option value="SriLanka">Sri Lanka</option>
          <option value="St. Helena">St. Helena</option>
          <option value="St. Pierre and Miguelon">St. Pierre and Miquelon</option>
          <option value="Sudan">Sudan</option>
          <option value="Suriname">Suriname</option>
          <option value="Svalbard">Svalbard and Jan Mayen Islands</option>
          <option value="Swaziland">Swaziland</option>
          <option value="Sweden">Sweden</option>
          <option value="Switzerland">Switzerland</option>
          <option value="Syria">Syrian Arab Republic</option>
          <option value="Taiwan">Taiwan, Province of China</option>
          <option value="Tajikistan">Tajikistan</option>
          <option value="Tanzania">Tanzania, United Republic of</option>
          <option value="Thailand">Thailand</option>
          <option value="Togo">Togo</option>
          <option value="Tokelau">Tokelau</option>
          <option value="Tonga">Tonga</option>
          <option value="Trinidad and Tobago">Trinidad and Tobago</option>
          <option value="Tunisia">Tunisia</option>
          <option value="Turkey">Turkey</option>
          <option value="Turkmenistan">Turkmenistan</option>
          <option value="Turks and Caicos">Turks and Caicos Islands</option>
          <option value="Tuvalu">Tuvalu</option>
          <option value="Uganda">Uganda</option>
          <option value="Ukraine">Ukraine</option>
          <option value="United Arab Emirates">United Arab Emirates</option>
          <option value="United Kingdom">United Kingdom</option>
          <option value="United States">United States</option>
          <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
          <option value="Uruguay">Uruguay</option>
          <option value="Uzbekistan">Uzbekistan</option>
          <option value="Vanuatu">Vanuatu</option>
          <option value="Venezuela">Venezuela</option>
          <option value="Vietnam">Viet Nam</option>
          <option value="Virgin Islands (British)">Virgin Islands (British)</option>
          <option value="Virgin Islands (U.S)">Virgin Islands (U.S.)</option>
          <option value="Wallis and Futana Islands">Wallis and Futuna Islands</option>
          <option value="Western Sahara">Western Sahara</option>
          <option value="Yemen">Yemen</option>
          <option value="Serbia">Serbia</option>
          <option value="Zambia">Zambia</option>
          <option value="Zimbabwe">Zimbabwe</option>
          </select>
        </div>

      <div class="input-box">
        <span class="deatils">User Name</span>
        <input type="text" name="username" placeholder="Enter your Email " style="width: 650px; height:45px;border-radius:8px" required>
    </div>
    <div class="input-box">
      <span class="deatils">Password</span>
      <input type="password" name="password" placeholder="Enter your Password " style="width: 650px; height:45px;border-radius:8px" required>
  </div>
  <div class="input-box">
    <span class="deatils">Confirm Password</span>
    <input type="password" name="confirmpassword" placeholder="Confirm your password "style="width: 650px; height:45px;border-radius:8px" required>
</div>

<div class="input-box">
  <span class="deatils">Gender</span>
  <select class="select1" name="gender">
    <option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
 
</select>
</div>

    
<div class="button">
    <input type="submit" id="submit" value="Save Form" name="submit" class="btn btn-info">
</div>
 </div>
         </form>

    </div>
  
</center>
</body>
</html>
