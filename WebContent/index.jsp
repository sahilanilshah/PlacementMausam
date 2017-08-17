<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">


	<title>Your First Mile towards your Dream Job! </title>
	
	<!--CSS for Login/Signup Form
	<link href="css2/styles_for_login_signup.css" rel="stylesheet">   -->
	
	<!--CSS for Styling Contact-->
	<link href="css2/styles_for_contact.css" rel="stylesheet">   
	
	<!--CSS for Testimonials-->
	<link href="css2/style_testimonials.css" rel="stylesheet"> 
    

	<!--Bootstrap Core CSS  -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">  

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css2/creative.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
   <!--
   <link href="css/bootstrap-theme.css" rel="stylesheet">  -->
    <!--external css-->
  <!--   font icon 
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />   -->
    
    
    <!-- Custom styles 
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" /> -->

<style>
p3
{
color:black;
}

f1
{
font-family:'Open Sans','Helvetica Neue',Arial,sans-serif;
}

p4
{
color:#F05F40;
}

</style>	
	
	
</head>

<body id="page-top" style="overflow-x:hidden">


<c:if test="${msg!=null}">
<script type="text/javascript">
window.onload = function(){//window.addEventListener('load',function(){...}); (for Netscape) and window.attachEvent('onload',function(){...}); (for IE and Opera) also work
    alert('Invalid Login Credentials');
}
</script>
</c:if>

<c:if test="${msg1!=null}">

 <script type="text/javascript">
window.onload = function(){//window.addEventListener('load',function(){...}); (for Netscape) and window.attachEvent('onload',function(){...}); (for IE and Opera) also work
    alert('Thank You for registering with us\n\nWe will contact you as soon as possible');
}
</script>
 
</c:if>



    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid" style="background-color:white;">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><i><p3>Placement</p3></i><p4><i>Mausam</i></p4></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about" ><p3>About</p3></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services"><p3>Services</p3></a>
                    </li>
                  <li>
                        <a class="page-scroll" href="#contact"><p3>Contact</p3></a>
                    </li>
					<li>
						<a href="#myModal-2" data-toggle="modal" class="page-scroll">
                                  <p3>Register</p3>
                              </a>                    
					</li>
					<li>
                        <a href="#myModal-1" data-toggle="modal" class="page-scroll">
                                  <p3>Login</p3>
                              </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

	<!--Modal for Login-->

                              
                              
                              

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">x</button>
                                              <h4 class="modal-title"><b><f1>Login Form</f1></b></h4>
                                          </div>
                                          <div class="modal-body">

                                              <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/Controller" method="post">
                                                  <div class="form-group">
												  <input type="hidden" name="action" value="doLogin" />
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>Username</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="text" class="form-control" id="inputEmail4" placeholder="Enter Username" name="username" required>
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="inputPassword1" class="col-lg-2 control-label"><f1>Password</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="password" class="form-control" id="inputPassword4" placeholder="Enter Password" name="password" required>
                                                      </div>
                                                  </div>

                                                  <div class="form-group">
                                                      <div class="col-lg-offset-2 col-lg-10">
                                                          <button type="submit" class="btn btn-info" style="background-color:#ee4b28;">Login</button>
                                                      </div>
                                                  </div>
                                              </form>

                                          </div>

                                      </div>
                                  </div>
                              </div>
                                                       
	
    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading">Your One Stop Destination for practicing online mock tests for various aptitude exams</h1>
                <hr>
                <p>Experience the test before the actual test! Just register and start going, no strings attached!</p>
                <a href="#about" class="btn btn-primary btn-xl page-scroll">Find Out More</a>            </div>
        </div>
    </header>

	
<script>
// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
</script>
	

	
	
    <section class="no-padding" id="about">
	
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                
				
                   
               
                
				
            </div>
        </div>
    <aside class="bg-dark">
        <div class="container text-center" >
            <div class="call-to-action">
				<h2 class="section-heading"> About Us </h2>
				<hr class="primary">
                <p id="about1"><i>Placement<p4>Mausam</p4></i> is a web portal where engineering students of all branches can find placement mock tests with solutions. <i>Placement<p4>Mausam</p4></i> is designed with aim of putting an end to all the trouble engineering students encounter while appearing for campus placements. Our Mock tests are designed keeping in mind examination patterns of top notch IT companies. All in all, <i>Placement<p4>Mausam</p4></i> paves a way for every student to envision their dream of getting a Dream Job.</p>
               

            </div>
        </div>
    </aside>
	
	</section>

    
	
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">At Your Service</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-diamond text-primary sr-icons"></i>
                        <h3>Know the paper pattern</h3>
                        <p class="text-muted">Be pro-active by knowing the paper style and avoiding surprises.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                        <h3>Be better than your competition</h3>
                        <p class="text-muted">You don't need to be the best. Just be better than everyone in the room!</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                        <h3>Become Self Confident</h3>
                        <p class="text-muted">It's all about motivation. If you think you can, you can!</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-heart text-primary sr-icons"></i>
                        <h3>Grab your Dream Job!</h3>
                        <p class="text-muted">Practice! Practice! Practice! </p>
                    </div>
                </div>
            </div>
        </div>
    </section>	
	
	

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-2" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">x</button>
                                              <h4 class="modal-title"><b><f1>Register</f1></b></h4>
                                          </div>
                                          <div class="modal-body">

                                              <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/Controller" method="post">
                                                 <input type="hidden" name="action" value="register" />

												 <div class="form-group">
												  
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>First Name</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="text" class="form-control" id="inputEmail4" placeholder="Enter First Name" name="firstname" required>
                                                      </div>
                                                  </div>
                                                  <div class="form-group">
												  
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>Last Name</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="text" class="form-control" id="inputEmail4" placeholder="Enter Last Name" name="lastname" required>
                                                      </div>
                                                  </div>
												 
												 <div class="form-group">
												  
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>Email</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="email" class="form-control"  placeholder="Enter Email" name="email" required>
                                                      </div>
                                                  </div>
												  
												  
												  
												  <div class="form-group">
												  
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>College</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="text" class="form-control" id="inputEmail4" placeholder="Enter College Name" name="college" required>
                                                      </div>
                                                  </div>
												  
												  <div class="form-group">
												  
                                                      <label for="inputEmail1" class="col-lg-2 control-label"><f1>Mobile No.</f1></label>
                                                      <div class="col-lg-10">
                                                          <input type="number" class="form-control" id="inputEmail4"     placeholder="Enter Mobile Number" name="mob" required>
                                                      </div>
                                                  </div>
												  
												  

                                                  <div class="form-group">
                                                      <div class="col-lg-offset-2 col-lg-10">
                                                          <button type="submit" class="btn btn-info" style="background-color:#ee4b28;"><f1>Register</f1></button>
                                                      </div>
                                                  </div>
                                              </form>

                                          </div>

                                      </div>
                                  </div>
                              </div>
                                                       

	
    
	<section id="contact">
        <aside class="bg-dark">
              
		<div class="container" >
            <div class="row">
			    <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading" style="font-family:'Open Sans','Helvetica Neue',Arial,sans-serif;font-size:24px">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p style="font-family:'Open Sans','Helvetica Neue',Arial,sans-serif;font-size:24px">Ready to kick-start your placement preparation with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p style="font-family:'Open Sans','Helvetica Neue',Arial,sans-serif;font-size:20px">+91-7977448908</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p style="font-family:'Open Sans','Helvetica Neue',Arial,sans-serif;font-size:20px"><a href="mailto:aapkiapti@gmail.com" style="color:white;">placementmausam@gmail.com</a></p>
                </div>
				
            </div>
        </div>
		</aside>
				
    </section>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

	
	
</body>

</html>




