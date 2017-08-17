<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Update User</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]-->
<!--   <script src="js/html5shiv.js"></script>-->
<!--  <script src="js/respond.min.js"></script>-->
<![endif]-->
</head>
<body bgcolor="lightblue">

<br>
<a class="btn btn-danger"
		href="<%=request.getContextPath()%>/Controller?action=home1"
		title="Bootstrap 3 themes generator"><span class="icon_target"></span>
		HOME</a>	
		
		
		<p style="vertical-align: top;
  text-align: right;">    
		<a class="btn btn-danger"
		href="<%=request.getContextPath() %>/Controller?action=log-out1"
		title="Bootstrap 3 themes generator"><span class="icon_target"></span>
		LOG-OUT</a>
		
		</p>
		<br>
		
		
		
		<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/aptitudedb" user="root" password=""
		scope="application" />
		
		
	<h1>All Users</h1>


	<sql:query dataSource="${ds}" var="result">
SELECT * from user ;
</sql:query>

	<table border="1" width="90%">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date Of Birth</th>
			<th>Contact No</th>
			<th>Email</th>
			
			<th>Username</th>
			<th>Password</th>
			
			<th>Action</th>


		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.lastname}" /></td>
				<td><c:out value="${row.dob}" /></td>
					<td><c:out value="${row.mobile}" /></td>
						<td><c:out value="${row.email}" /></td>
				<td><c:out value="${row.username}" /></td>
				<td><c:out value="${row.password}" /></td>

				<td><a class="btn btn-success" href="<%=request.getContextPath() %>/Controller?action=update_user1&username=<c:out value="${row.username }"/>">Update</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>