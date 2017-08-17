<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html >
<head>
  <meta charset="UTF-8">
  <title>Login form </title>
  
  <link rel="stylesheet" href="css1/style.css">
<style>

 body {
    background: url("uploads/abc.jpg");
    background-size: 100% 100%;
    background-repeat: no-repeat;
   
}

</style>

<script src="Scripts/jquery-1.7.1.js"></script>

<script type="text/javascript">

function preventBack(){
	window.history.forward();
}

setTimeout("preventBack", 0);

window.onunload = funtion() { null };
 


</script>
</head>

  <body>
  <br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br>
<div class="container">
	<section id="content">
		<form action="<%=request.getContextPath()%>/Controller" method="post">
			<h1>Login Form</h1>
			<input type="hidden" name="action" value="doLogin" />
			<div>
			    <font color="red"><c:out value="${msg }"></c:out></font>
				<input type="text" placeholder="Username" id="username" name="username" />
			</div>
			<div>
				<input type="password" placeholder="Password"  id="password" name="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				
				
			</div>
		</form><!-- form -->
		
	</section><!-- content -->
</div><!-- container -->
</body>
  
   


</html>


