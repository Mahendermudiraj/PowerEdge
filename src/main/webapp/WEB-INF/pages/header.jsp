<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/pages-new.css" rel="stylesheet" type="text/css" id="pages" >
<link href="css/pages1.css" rel="stylesheet" type="text/css" id="page1"/>
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" id= "jquery-dataTables" />
<link href="css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
<link href="css/select2.css" rel="stylesheet" type="text/css" />

<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="css/fonts-googleapis.css" rel="stylesheet" type="text/css"/>

<style type="text/css">
.header-color {
	height: auto;
	width: Auto;
	font-size: 35px;
	text-align: left;
	padding: 11px 0;
	background: teal;
}

</style>
</head>



<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/datatables.min.js"></script> 
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/report.js"></script>
<script type="text/javascript" src="js/canvasjs.min.js"></script>
<script type="text/javascript" src="js/report.js"></script>
<script type="text/javascript" src="js/branchInfo.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript" src="js/favouritelist.js"></script>

<body>
	<div id="main1">
		<div class="header-color">
			<span style="font-size: 25px; cursor: pointer" class="hidebar"
				onclick="openNav()">&#9776;</span> <a
				href="${pageContext.request.contextPath}/landingDefaultPage"><img
				src="images/powerlogo.png"></a> <label class="bold reportland-id" style="color:#ffff;"><span
				class="fa fa-user" ></span>&nbsp;${sessionScope.bank} <!-- &nbsp;&nbsp;&nbsp;Report Id : 1234 -->
				&nbsp;&nbsp;&nbsp; <input type="hidden" id="bnkcode"
				value="${sessionScope.bank}"><a
				href="${pageContext.request.contextPath}/landingDefaultPage"
				class="homebtn btn btn-primary btn-md"><span
					class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Home</a>&nbsp; <a
				href="${pageContext.request.contextPath}/"
				class="btn btn-primary btn-sm" style="background-color: #609fa1;border-color: cadetblue;text-transform: none;"><span
					class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Logout</a> </label>
		</div>
	</div>