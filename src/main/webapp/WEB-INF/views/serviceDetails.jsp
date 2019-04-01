
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.entity.Doctor"%>
<%@page import="com.cts.entity.Services"%>
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
<title>Vendor List</title>
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

<form  method="Post" modelAttribute="service">
  
    
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
  <div class="row content">
    <div class="col-sm-3 sidenav">
    
      <div style="background-color:#B7B7B5; text-align:center ;"> <h3 align="center" style="padding:11px;" >Profile</h3></div>
   <div class="profile-data">
     <span class="border" style=" padding:10px;" >
    <img class="manImg" src="http://simpleicon.com/wp-content/uploads/user1.png" style="max-height: 150px; max-width: 150px;padding-left:45px;" ></img>
    </span>
    <ul class="nav nav-pills nav-stacked">
        <li><a>Username :</a></li>
        <p style="padding-left: 35px;">${doctor.name}<p>
     
        <li><a>Designation :</a></li>
        <p style="padding-left: 35px;">Administrator<p>
        <li><a>Office :</a></li>
        <p style="padding-left: 35px;">CTS<p>
      </ul>
      <br>
    
    </div>
</div>
<br>
    <div class="col-sm-9">
    
<nav class="navbar navbar-default"  style="background-color:#EFEDEA; width:600px;" >
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="/DiagnosticCentre/doctor/doctorhome"  style="background-color: #B7B7B5; width: auto; text-align: center ; " >Doctor</a>
    </div>
    
    <div class="navbar-header">
      <a class="navbar-brand" href="/DiagnosticCentre/service/listServices" style="background-color: #C1BFBC ; margin-left:0px ;width: auto ; text-align: center ;">Medical Services</a>
    </div>
  </div>
</nav>


         
 <div class="container-fluid" style="width:500px;">
   <h1><c:out value="${'Medical Service Detail'}"/></h1> 
 <section>
 <nav>
      <h4 ><span style="font-weight:bold;">
      ${service.medicare_service}</span></h4>
 </nav>      
  </section> 
  <section> 
  <h4  ><span>ID : </span><span >${service.medicare_service_id}</span></h4>
        
            
  <h4><span>Description :</span> <span >${service.service_description}</span></h4>
   
    <h4><span>Amount :</span> <span >${service.amount}</span></h4>        
</section>
</div>
      </div>
    </div>
  </div>
   
    
    </form>
    
    
    
    
    
    

</body>
</html>