<%@page import="com.cts.entity.Services"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Doctor Details</title>
</head>
<body>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.addbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.addbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>


<form action="saveDoctor" method="Post" modelAttribute="doctor">
  <div class="container">
    <h1>Update Doctor Details</h1>
    <hr>
    
    <input id=doctorId type="hidden" value="${doctor.id}" name="id" required>
 	
    <label for="fname"><b>First Name</b></label>
    <input id=fnameId type="text"  placeholder="Enter First Name" value="${doctor.fname}" name="fname"  required  >
 
 	 <label for="lname"><b>Last Name</b></label>
    <input id=lnameId type="text"  placeholder="Enter Last Name" value="${doctor.lname}" name="lname"  required  >
   
    <label for="age"><b>Age</b></label>
    <input id=ageId type="text"  placeholder="Enter Age" value="${doctor.age}" name="age"  required  >
    
    <label for="dob"><b>Date of Birth</b></label>
    <input id=dobId type="text"  placeholder="Enter DOB" value="${doctor.dob}" name="dob"  required  >
    
    <label for="contact_no"><b>Contact No.</b></label>
    <input id=contactId type="text"  placeholder="Enter Contact No." value="${doctor.contactno}" name="contactno"  required  >
    
    <label for="alt_contact_no"><b>Alternate Contact No.</b></label>
    <input id=altcontactId type="text"  placeholder="Enter Alternate Contact No." value="${doctor.altcontactno}" name="altcontactno"  required  >
    
    <label for="email"><b>E-mail</b></label>
    <input id=emailId type="text"  placeholder="Enter e-Mail" value="${doctor.email}" name="email"  required  >
    
    <label for="address_1"><b>Adress line 1</b></label>
    <input id=address_1_Id type="text"  placeholder="Enter Address line 1" value="${doctor.address1}" name="address1"  required  >
    
    <label for="address_2"><b>Adress line 2</b></label>
    <input id=address_2_Id type="text"  placeholder="Enter Address line 2" value="${doctor.address2}" name="address2"  required  >
  
  	 <label for="city"><b>City</b></label>
    <input id=cityId type="text"  placeholder="Enter City" value="${doctor.city}" name="city"  required  >
    
     <label for="state"><b>State</b></label>
    <input id=stateId type="text"  placeholder="Enter State" value="${doctor.state}" name="state"  required  >
    
     <label for="zipcode"><b>Zipcode</b></label>
    <input id=zipcodeId type="text"  placeholder="Enter Zipcode" value="${doctor.zipcode}" name="zipcode"  required  >
    
     <label for="degree"><b>Degree</b></label>
     <input id=degreeId type="text"  placeholder="Enter Degree" value="${doctor.degree}" name="degree"  required  >
    
    <label for="speciality"><b>Speciality</b></label>
    <input id=specialityId type="text"  placeholder="Enter Speciality" value="${doctor.speciality}" name="speciality"  required  >
    
    <label for="working_hours"><b>Working Hours</b></label>
    <input id=workinghrsId type="text"  placeholder="Enter Working Hours" value="${doctor.workhours}" name="workhours"  required  >
    
    <label for="hospital_name"><b>Hospital Name</b></label>
    <input id=hospitalId type="text"  placeholder="Enter Hospital Name" value="${doctor.hospital_name}" name="hospital_name"  required  >
    
     <label for="service_id"><b>Service ID</b></label>
    <input id=serviceId type="text"  placeholder="Enter Service ID" value="${doctor.service_id}" name="service_id"  required  >
    
    <button type="submit" class="addbtn">Update My Details</button>
  </div>

</form>
</body>
</html>