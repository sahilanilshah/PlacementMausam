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
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>
<body>

<sql:query dataSource="${ds}" var="result">
SELECT * from user where username = '<c:out value="${username1 }"></c:out>';
</sql:query>
	<br>
	<a class="btn btn-danger"
		href="<%=request.getContextPath()%>/Controller?action=home1"
		title="Bootstrap 3 themes generator"><span class="icon_target"></span>
		HOME</a>


	<p style="vertical-align: top; text-align: right;">
		<a class="btn btn-danger"
			href="<%=request.getContextPath()%>/Controller?action=log-out1"
			title="Bootstrap 3 themes generator"><span class="icon_target"></span>
			LOG-OUT</a>

	</p>
	<br>

	<div class="panel-body">
		<div class="form">
<c:forEach var="row" items="${result.rows}">
			<form class="form-validate form-horizontal" id="feedback_form"
				method="post" action="<%=request.getContextPath()%>/Controller">

				<input type="hidden" name="action" value="update_user2">
				
				
				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">First Name :<span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" value="<c:out value="${row.name}"/>" name="firstname"
							type="text" required />
					</div>
				</div>


<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Last Name : <span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" value="<c:out value="${row.lastname}"/>" name="lastname"
							type="text" required />
					</div>
				</div>
				
				
				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Date Of Birth:
						 <span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" name="dob" value="<c:out value="${row.dob}"/>"
							type="date" required />
					</div>
				</div>

				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Contact No:<span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" name="contact_no" value="<c:out value="${row.mobile}"/>"
							type="number" required />
					</div>
				</div>

				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Email :<span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" name="email" value="<c:out value="${row.email}"/>"
							type="text" required />
					</div>
				</div>

				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Username :<span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" name="username" value="<c:out value="${row.username}"/>"
							type="text" required />
					</div>
				</div>
				
				<div class="form-group ">
					<label for="cname" class="control-label col-lg-2">Password :<span class="required">*</span>
					</label>
					<div class="col-lg-10">
						<input class="form-control" id="cname" name="password" value="<c:out value="${row.password}"/>"
							type="text" required />
					</div>
				</div>


				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<button class="btn btn-primary" type="submit">Submit</button>

					</div>
				</div>
			</form>
			
			</c:forEach>
			
</body>
</html>