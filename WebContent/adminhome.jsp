<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<style>
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
</head>
<body >

	<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/aptitudedb" user="rootadmin" password="sahilshah@9"
		scope="application" />


	<div class="dropdown">
		<button class="dropbtn">USERS</button>
		<div class="dropdown-content">
			<a href="<%=request.getContextPath()%>/Controller?action=add_user">ADD NEW USER</a>
			<a href="<%=request.getContextPath()%>/Controller?action=update_user">UPDATE USER </a>
			
		</div>
	</div>

	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	
	
	<div class="dropdown">
		<a href="<%=request.getContextPath()%>/Controller?action=log-out1">
			<button class="dropbtn">LOG-OUT</button>
		</a>
	</div>

</body>
</html>

