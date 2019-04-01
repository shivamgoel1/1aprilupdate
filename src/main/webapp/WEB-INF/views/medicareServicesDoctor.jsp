
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Medicare Service</title>
</head>


 <style>
    
    
    .table {
    column-gap: 25px;
    }
    
    .col-sm-12{
	width: auto;
	
	}
	
	.col-sm-9{
	margin-left:5px;
	width: auto;
	
	}
	.col-sm-3{
	margin-left: 10px;
	}
    
	a.btn{
	background-color: #A6A4A1; color: black;
	appearance: button;
	
	padding: 18px,24px;
	box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
	float: Right;
	}

   
    .sidenav {
      background-color: #f1f1f1;
      height: auto;
 
    
    }
 
.profile-data{     padding: 10px;}
.profile{
width:100%;
}
    
   
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;
      width:auto;
      } 
    }
  </style>

<body>


  
    
    <div class="row " style="padding : 10px; background-color:#EFEDEA; ">
  <div class="col-sm-12" style="margin-left: 8px ; font-size: 22px;">

    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
  
  </div>
</div>

<br>
<div class="container-fluid">
 
<br>

      <div class="col-sm-9">
    
<nav class="navbar navbar-default"  style="background-color:#EFEDEA; width:600px;" >
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="/DiagnosticCentre/doctor/doctorhome" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Doctor</a>
    </div>
    
    <div class="navbar-header">
      <a class="navbar-brand" href="/DiagnosticCentre/service/listServices" style="background-color: #C1BFBC ; margin-left:0px ;width: auto ; text-align: center ;">Medicare Services</a>
    </div>
    
    <div class="navbar-header">
      <a class="navbar-brand" href="/DiagnosticCentre/doctor/viewDoctorRequests" style="background-color: #C1BFBC ; margin-left:0px ;width: auto ; text-align: center ;">Checkup Requests</a>
    </div>
  </div>
</nav>


         
<div class="container">
  <h2>Medicare Services</h2>  
        <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>ID</th>
    	<th>View</th>
        <th>Update</th>
  
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempservice" items="${service}">
    
    <c:url var="viewLink" value="/service/view">
    <c:param name="serviceId" value="${tempservice.medicare_service_id}"/>
    </c:url>
    
    <c:url var="updateLink" value="/service/updateService">
    <c:param name="serviceId" value="${tempservice.medicare_service_id}"/>
    </c:url>
    
    
    <tr>

      <td>${tempservice.medicare_service}</td>
      <td>${tempservice.medicare_service_id}</td>
      <td><a href="${viewLink }">View</a>
      <td><a href="${updateLink}">Update</a>
      
      
    </tr>
    </c:forEach>
    </tbody>
  </table>
  </div>
      </div>
   
  </div>

   
    
    
    
    
    
    

</body>
</html>