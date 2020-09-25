<title>Favourite List</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<style type="text/css">
 .hidebar{
display:none;
}
.container-fluid{
margin-top:8% !important;
}
form {
    margin-left: 0px !important; 
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    border: 1px solid #8f8989;
}
.table tbody tr td {
    padding: 6px !important;
}
.alert {
	width: 300px;
	color: green;
	margin-left: 60px;
	position: fixed;
	top: 85px;
	right: 30px;
	z-index: 9999;
	height: 25px;
}

</style>
</head>
<body>
	<div class="report_bg_patch">
	<div class="alert alert-success" id="deleteSuccess" >${deleteSuccess }</div>
		<div class="">
			<h2 style="color: black; font-size: 28px; text-align: left; margin-left: 15px;">
					<i class="glyphicon glyphicon-star-empty"></i>&nbsp;&nbsp;User Favourite List
				</h2>
				<div class="scrollable1">
			<div class="report_bg_patch1" style="height:380px">
			<div class="tablebg">
				<table class="table" style="color: #000;">
					<thead>
						<tr>
						    <th style="color:white;font-size:11px">ID</th>
							<th style="color:white;font-size:11px">Title</th>
							<th style="color:white;font-size:11px">Purpose</th>
							<th style="color:white;font-size:11px">Description</th>
							<th style="color:white;font-size:11px">Table</th>
							<th style="color:white;font-size:11px">Selected Columns</th>
							<th style="color:white;font-size:11px">Filter</th>
							<th style="color:white;font-size:11px">Date</th>
							<th style="color:white;font-size:11px">Action</th>
							<th style="color:white;font-size:11px">Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${favouriteLists}" var="table">
							<tr>
							    <td>${table.id}</td>
								<td>${table.qryTitle}</td>
								<td>${table.purpose}</td>
								<td>${table.description}</td>
								<td>${table.table}</td>
								<td class="parameter">${table.parameter}</td>
								<td>${table.query}</td>
								<td>${table.currentDate}</td>
								<td style="cursor: pointer">
									<form id="reportdetailsForm" style="padding: 0px" method="post" action="${pageContext.request.contextPath}/getReportDetails">
										<input type="hidden" name="id" value="${table.id}"/>
										<button class="getreportdetails" id="getreportdetails" style="width: 82px;padding: 0;font-size: 15px;" class="btn btn-success report-btn" type="submit">
											<span class="fa fa-edit"></span>&nbsp;Edit
										</button>
									</form>
								</td>
								<td>
								  <a href="${pageContext.request.contextPath}/deleteFav?id=${table.id}" OnClick ="return confirm('Do you want to Delete?')" >
								  <span class='fa fa-trash' aria-hidden='true'></span></a>
							</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			</div>
			<h2 style="color: white; font-size: 28px; text-align: center;">
				<b><c:out value='${nocontent}' /></b>
			</h2>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/Footer.jsp"%>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/favouritelist.js"></script>
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			$('.getreportdetails').click(function(e) {
				var parameter=$(this).closest('.table tr').children('td.parameter').text();
				localStorage.setItem("parameter", parameter);
				$('#reportdetailsForm').submit();
			});
			setTimeout(function(){
				$('#deleteSuccess').fadeOut("slow");}, 5000);
		});
	</script>
</body>
</html>