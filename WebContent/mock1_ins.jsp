<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Instructions</title>

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
	
	<link href="css2/styles_for_contact.css" rel="stylesheet">   
	
	<!--CSS for Testimonials-->
	<link href="css2/style_testimonials.css" rel="stylesheet"> 

	
<style>

	section{
  margin: 50px;
}

h1,a,b{
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
}
p{

margin-right:30px;
}

th{
text-align: center;
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
 
}

td{
text-align: center;
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
 
}


.dropbtn {
	
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
	background-color: white;
	min-width: 160px;
	
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: grey;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: white;
}




.button {
    background-color: #B8DB34; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    cursor: pointer;
	border-radius: 8px
}
.button:hover {
    background-color: #4CAF50;
    color: white;
}



section{
  margin: 50px;

}


.mybtn-primary {
    color: #fff;
    background-color: #F05F40;
    border-color: #F05F40;
    -webkit-transition: all .35s;
    -moz-transition: all .35s;
    transition: all .35s;
}


h4.ex1 {
    font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
	margin-left: 4%;
	color:black;
}

hr.e
{
border-color:#F05F40;
	border-width:3px;
	max-width:50px;
color:black;}

</style>

<script>
function myFunction() {
    window.open("mock1_paper_ver.jsp","_self","channelmode=yes","fullscreen=yes");
}
</script>


    </head>
    <body onload='window.history.go(+1);' style="background:white;">
    
    
<script type="text/javascript">
function clickIE() {if (document.all) {return false;}}
function clickNS(e) {if 
(document.layers||(document.getElementById&&!document.all)) {
if (e.which==2||e.which==3) {return false;}}}
if (document.layers) 
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}

document.oncontextmenu=new Function("return false")
// --> 


function disableselect(e){
return false
}
function reEnable(){
return true
}
document.onselectstart=new Function ("return false")
if (window.sidebar){
document.onmousedown=disableselect
document.onclick=reEnable
}
</script>


<%
if(session.getAttribute("username") == null){
	response.sendRedirect("index.jsp");
}
%>

    
			<center><b><h1>Instructions </h1></b></center> 
		<hr class="e"><br>
		<section>		
<h4 class="ex1">1. Do not close the web-browser or refresh while the exam is going on.</h4>
<h4 class="ex1">2.	Within 20 minutes you have to answer the quesions, Otherwise the session will be expired.</h4>
   <h4 class="ex1">3. There are no negative marks for the wrong answers.</h4>
 	<h4 class="ex1">4. Kindly make suitable assumptions if necessary.</h4>
 	
 	</section>
		<br><br><br>
                     
       <center>    
          
          
<!-- <input class="button" type="button" class="btn mybtn-primary btn-xl page-scroll value="Start Verbal Section"  onclick="myFunction11();"></input>          
 -->          
     <button class="btn mybtn-primary btn-xl page-scroll" onclick="myFunction11();">Start Verbal Section           
     </button>        
         
        </center>
          
          
           <script>
function myFunction11() {
	
	window.history.back();

    var myWindow = window.open("mock1_paper_ver.jsp","a", "width=1420,height=800");
}




</script>     
          
     
          
 </body>                
</html>






