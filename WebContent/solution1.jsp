<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Solution</title>

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
	
	

   <!--  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>


    <![endif]-->
	
	<link href="css2/styles_for_contact.css" rel="stylesheet">   
	
	<!-- CSS for Testimonials -->
	<link href="css2/style_testimonials.css" rel="stylesheet">  
	
 <style>
	
p1{
font-size:100%; 
font-weight:bold; 
color:green;
}	

p2{
font-size:80%; 
font-weight:bold; 
color:red;
}	
	
	.mybtn-primary {
    color: #fff;
    background-color: #F05F40;
    border-color: #F05F40;
    -webkit-transition: all .35s;
    -moz-transition: all .35s;
    transition: all .35s;
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

h4.headings {
    font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
	margin-left: 2%;
	color:black;
}
h4.questions,textarea {
    font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
	margin-left: 4%;
	color:black;
}

hr
{
border-color:#F05F40;
	border-width:3px;
	max-width:50px
}

p {
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
margin-left: 5% !important;
color:black;

}


	

</style> 

<script>
// '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();


</script>



</head>

<body style="background:white;"> 

 <script>
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

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top" style="border-color:white;top:-20;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                
                <a class="navbar-brand page-scroll" href="<%=request.getContextPath() %>/Controller?action=home"><img src="img/LOGO.PNG" width="100" height="50" ></a>
            </div>

         
 <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start -->
                                       <!-- user login dropdown start-->
                  
					<div class="dropdown" style="top:0px">
		<button class="dropbtn" style="background-color:white;"><span class="profile-ava">
                                <img alt="" src="img/dp.jpg" width="40" height="40">
                            </span></button>
		<div class="dropdown-content">
			<a href="<%=request.getContextPath() %>/Controller?action=change_pass_request">Change Password</a>
			
			<a href="<%=request.getContextPath() %>/Controller?action=log-out1">LOG OUT</a>
			

		</div>
	</div>
<b style="font-size: 16px;margin-right:30px;">
<%=session.getAttribute("username")%></b>
					
					
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>		
                    							<!-- /.container-fluid -->
    </nav>           


 

<%
if(session.getAttribute("username") == null){
	response.sendRedirect("index.jsp");
}
%>  
<br><br>
<br>
<br>

<center><b><h1>VERBAL SECTION</h1></b></center> 
			<hr><br> 
		<h4 class="headings"><u>Directions for Questions 1-3: Fill in the blanks with appropriate options.</u></h4>
 		<br>	
			 
 
  
  <h4 class="questions">1. We stood at the back ______ the theatre.</h4>
			<br>
			
	 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=1;
</sql:query>		
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" disabled="true" name="1"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if> >&nbsp;&nbsp;A.&nbsp;&nbsp;of<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="1"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;in<c:if test="${row.ans=='B'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="1"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;at<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="1"   value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;on<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="1"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;across<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>
		 </c:forEach>
		
 <h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#1">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="1" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>
					  
		<hr>	


 <h4 class="questions">2. In the vacation, all the kids _____  our neighbourhood play cricket on the street. Some play basketball _______  a court marked by chalk. Others play ping-pong ______a neighbour's garage.</h4>
			<br>
			
	<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=2;
</sql:query>		
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="2"   value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;at, out, in<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="2"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;in, on, in<c:if test="${row.ans=='B'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="2"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;at, on , in<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="2"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;in, on, at<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="2"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>
		
<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#2">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="2" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>
		 
		<hr>	

<h4 class="questions">3. _____ having her lunch, she stood ______ the tree and waited _______ him.</h4>
			<br>
			
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=3;
</sql:query>			
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="3"   value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;With, below, for<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="3"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Done, under, for<c:if test="${row.ans=='B'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="3"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Inside, further, to<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="3"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;About, across, into<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="3"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;After, under, for<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>
  <h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#3">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="3" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>	
		<hr>	
 		
 		<h4 class="questions">Directions for Questions 4-6: Choose the word nearest in meaning to the word in ITALICS from the given options.</h4>
 		<br>
 				
<h4 class="questions">4. Reading of poetry is not <i>congenial</i> to his taste.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=4;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="4"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Helpful<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="4"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Preferable<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="4"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Beneficial<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="4"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;suited<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="4"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;similar<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#4">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="4" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>			 
		<hr>	
 		
 		
<h4 class="questions">5. Mihir <i>vehemently</i> denied all the charges of corruption that were levelled against him.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=5;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="5"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Devoutly<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="5"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Hysterically<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="5"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Serenely<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="5"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;arrogantly<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="5"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;forcefully<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#5">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="5" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>			 
		<hr>	

 <h4 class="questions">6. Because of a family <i>feud</i>, he never spoke to his wife's parents.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=6;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="6"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Crisis<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="6"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Trouble<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="6"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Problem<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="6"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Quarrel<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="6"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Argument<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#6">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="6" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>			 
		<hr>
<h4 class="headings">Directions for Questions 7-10: Choose the answer option which will correctly fill the blank.</h4><br>	
		
<h4 class="questions">7. Albert Einstein was _____ famous scientist. Einstein won _______ Nobel Prize in Physics in 1921. Einstein left his country and lived in _______ States until he died in 1955.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=7;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="7"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;a, the, an<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="7"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;a, the, the<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="7"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;a, an, the<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="7"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;an, an, the<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="7"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;a, a, the<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#7">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="7" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>	
		<hr>	

			
<h4 class="questions">8. That country is ______ open economy and _____ strong proponent of free trade globally.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=8;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="8"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;an, a<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="8"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;the, the<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="8"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;an, the<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="8"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;a, the<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="8"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;in, the<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#8">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="8" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>	

<h4 class="questions">9. It is the grasping of power-combined ______ the thirst______ fame, which constitutes ambition.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=9;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="9"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;No article required<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="9"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;of, the<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="9"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;of, with<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="9"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;and, the<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="9"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;with, for<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#9">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="9" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>	


<h4 class="questions">10. The officer received _____ official letter from _____ Ministry of IT in _____ Central Government.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=10;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="10"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;A, the, an<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="10"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;A, an, the<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="10"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;An, the, the<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="10"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;An, an, the <c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="10"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;No articles required<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#10">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="10" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>	
		
<h4 class="headings">Directions for Questions 11-16: Read the passage and answer the questions that follow on the basis of the information provided in the passage.</h4>
<br>
<textarea rows="12" cols="180" class="noselect" readonly="readonly" unselectable="on">
The pioneers of the teaching of science imagined that its introduction into education would remove the conventionality, artificiality, and backward-look which were characteristic of classical studies, but they were gravely disappointed. So, too, in their time had the humanists thought that the study of the classical authors in the original would banish at once the dull pedantry and superstition of mediaeval scholasticism. The professional schoolmaster was a match for both of them, and has almost managed to make the understanding of chemical reactions as dull and as dogmatic an affair as the reading of Virgil's Aeneid. The chief claim for the use of science in education is that it teaches a child something about the actual universe in which he is living, in making him acquainted with the results of scientific discovery, and at the same time teaches him how to think logically and inductively by studying scientific method. A certain limited success has been reached in the first of these aims, but practically none at all in the second. Those privileged members of the community who have been through a secondary or public school education may be expected to know something about the elementary physics and chemistry of a hundred years ago, but they probably know hardly more than any bright boy can pick up from an interest in wireless or scientific hobbies out of school hours. As to the learning of scientific method, the whole thing is palpably a farce. Actually, for the convenience of teachers and the requirements of the examination system, it is necessary that the pupils not only do not learn scientific method but learn precisely  the reverse, that is, to believe exactly what they are told and to reproduce it when asked, whether it seems nonsense to them or not. The way in which educated people respond to such quackeries as spiritualism or astrology, not to say more dangerous ones such as racial theories or currency myths, shows that fifty years of education in the method of science in Britain or Germany has produced no visible effect whatever. The only way of learning the method of science is the long and bitter way of personal experience, and, until the educational or social systems are altered to make this possible, the best we can expect is the production of a  minority of people who are able to acquire some of the techniques of science and a still smaller minority who are able to use and  develop them.
</textarea><br>					

	 <h4 class="questions">11. The author implies that the 'professional schoolmaster' has</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=11;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="11"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;no interest in teaching science<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="11"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;thwarted attempts to enliven education<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="11"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;aided true learning<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="11"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;supported the humanists<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="11"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;been a pioneer in both science and humanities<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#11">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="11" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>				

<h4 class="questions">12. The author's attitude to secondary and public school education in the sciences is</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=12;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="12"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;ambivalent<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="12"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;neutral<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="12"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;supportive<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="12"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;satirical<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="12"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;contemptuous<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#12">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="12" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>			

	
	<h4 class="questions">13. The word 'palpably' most nearly means</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=13;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="13"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;ridiculously<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="13"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;obviously<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="13"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;markedly<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="13"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;tentatively<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="13"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;empirically<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#13">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="13" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>					 
		<hr>			
	
	
<h4 class="questions">14. The author blames all of the following for the failure to impart scientific method through the education system except</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=14;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="14"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;poor teaching<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="14"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;examination methods<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="14"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;lack of direct experience<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="14"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;the social and education systems<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="14"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;lack of interest on the part of students<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#14">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="14" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>					 
		<hr>
		
								
<h4 class="questions">15. If the author were to study current education in science to see how things have changed since he wrote the piece, he would probably be most interested in the answer to which of the following questions?</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=15;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="15"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Do students know more about the world about them?<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="15"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Do students spend more time in laboratories?<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="15"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Can students apply their knowledge logically?<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="15"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Have textbooks improved?<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="15"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Do they respect their teachers?<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#15">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="15" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>
			
	
<h4 class="headings">Directions for Questions 16-18: Which of phrases given below each sentence should replace the underlined phrase to make the grammatically correct? If the sentence is correct as it is, mark 'E' as the answer.</h4>
<br>	
	
<h4 class="questions">16. They <u>were all shocked at</u> his failure in the tournament.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=16;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="16"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;were shocked at all<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="16"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;had all shocked at<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="16"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;had all shocked by<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="16"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;had been all shocked on<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="16"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;No correction required<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#16">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="16" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>					 
		<hr>
	
<h4 class="questions">17. <u>If they cooperate together by dividing up their work</u>, they shall be over with the work faster.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=17;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="17"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;if they cooperate together by dividing the work<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="17"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;if they cooperate by dividing up the work<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="17"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;if they cooperate by dividing the work<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="17"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;if they cooperate together by division of work<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="17"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;No correction required<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#17">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="17" class="panel-collapse collapse">
                                  <br>
								  Cooperate has an implicit meaning of together. It means 'work together', so together must be eliminated. Similarly, 'dividing' means 'breaking up', so 'up' from dividing needs to be eliminated.

                              
							  </div>
                      </div>
					  
					  </h4>				 
		<hr>			


<h4 class="questions">18. Armed with talents of a high intellect,<u>an actor with extra ordinary gifts and an ingenious criminal</u>, Mr. XYZ played an overbearing role in the sensationalisation of crime during the later years.</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=18;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="18"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;an actor with unbelievable intellect and an ingenious criminal<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="18"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;an ingenious actor and an extra ordinary gifted criminal<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="18"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;a gifted actor and an ingenious criminal<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="18"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;an extra ordinary gifted actor and an ingenious criminal<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="18"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;No correction required<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>


<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#18">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="18" class="panel-collapse collapse">
                                  <br>
								 No answer description available for this question.	
                              
							  </div>
                      </div>
					  
					  </h4>					 
		<hr>			

<h4 class="headings">Directions for Questions 19-20: Choose the option which contains a pair of words related to each other in the same way as the pair given in capital letters.</h4>
<br>
			
	<h4 class="questions">19. OVATION : APPLAUSE ::</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=19;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="19"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Grief : Loss<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="19"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Rout : Defeat<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="19"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Triumph : Failure<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="19"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Pathway : Ruin<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="19"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Physique : Sturdy<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#19">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="19" class="panel-collapse collapse">
                                  <br>
								 Relation: Similar Meaning<br>
	Rout means a terrible defeat.
	
                              
							  </div>
                      </div>
					  
					  </h4>
		<hr>				
			
	
<h4 class="questions">20. PAINT : BRUSH ::</h4>
			<br>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='verbal' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=20;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="20"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Floor : Polish<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="20"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Conflagration : Match<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="20"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Cement : Travel<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="20"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Wallpaper : Ladder<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="20"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Pen : Refil<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#20">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="20" class="panel-collapse collapse">
                                  <br>
								Relation: Action - causing thing<br>
Paint in this question does not refer to the material noun but the process paint, which is done using a brush similarly a conflagration is caused by a match.

                              
							  </div>
                      </div>
					  
					  </h4>		 
		<hr>		

	<br><br>
	
	<center><B><H1>LOGICAL SECTION</H1></B></center>
				<hr><br> 
			
			
<h4 class="headings">Direction for Questions 1-5 : In the following questions, the symbols ?, < , >, = and + are used with the following meaning as illustrated below.<br>
'A ? B' means 'A is neither greater than nor equal to B'<br>
'A < B' means 'A is neither smaller than nor equal to B'<br>
'A > B' means 'A is neither smaller than nor greater than B'<br>
'A=B' means 'A is not smaller than B'<br>
'A+B' means 'A is not greater than B'<br>
Now each of the following questions, assuming the given statements to be true, find which of the three conclusions I, II and III given below them is/are definitely true and give your answer accordingly.
</h4>			<br>

<h4 class="questions">1. Statements: J?K, K+L, M=N, M < K <br>
 &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. K?N &nbsp;&nbsp;II. J>M &nbsp;&nbsp;III. L=J </h4>
			<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=1;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="21"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;None are true<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="21"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only I is true<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="21"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Only II and III are true<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="21"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Only III is true<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="21"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#21">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="21" class="panel-collapse collapse">
                                  <br>
   
    No answer description available for this question.

  </div>
  </div>
</h4>  
		<hr>		
		
		
<h4 class="questions">2. Statements: D?E, F < G, D < F, G < H <br>
&nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. H?E  &nbsp;&nbsp;   II. H < F  &nbsp;&nbsp;   III. H < F </h4>
		<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=2;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="22"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;None of these<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="22"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only I is true<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="22"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Only II is true<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="22"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Only III is true<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="22"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Only II and III are true<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#22">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="22" class="panel-collapse collapse">
                                  <br>
   
    No answer description available for this question.

  </div>
  </div>
</h4>  			 
		<hr>		
		
		
		
	<h4 class="questions">3. Statements: D+B, D < A, A > C, C=E <br>
	  &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. D < E  &nbsp;&nbsp;   II. B < E  &nbsp;&nbsp;   III. E=D </h4>
		<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=3;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="23"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Only I and II are true<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="23"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only I and III are true<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="23"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Only II and III are true<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="23"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;All are true<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="23"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#23">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="23" class="panel-collapse collapse">
                                  <br>
   
    No answer description available for this question.

  </div>
  </div>
</h4>  			 
		<hr>		
			
	
<h4 class="questions">4. Statements: A?B, C+A, C < D, D=E <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. A=E  &nbsp;&nbsp;  II. C > E &nbsp;&nbsp;  III. D?A </h4>
		<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=4;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="24"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Only III is true<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="24"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only II is true<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="24"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Only I is true<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="24"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Only II and III are true<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="24"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;All are true<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#24">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="24" class="panel-collapse collapse">
                                  <br>
   
    No answer description available for this question.

  </div>
  </div>
</h4>  			 
		<hr>		
	
		
<h4 class="questions">5. Statements: X?Y, Y?Z, Z+V <br>
&nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. V?X  &nbsp;&nbsp;  II.Y?V   &nbsp;&nbsp; III.X?V </h4>	
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=5;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="25"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Only I is true<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="25"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only II is true<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="25"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Only III is true<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="25"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Only either II or III is true<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="25"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Only II and III are true<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#25">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="25" class="panel-collapse collapse">
                                  <br>
   
    No answer description available for this question.

  </div>
  </div>
</h4>  
		<hr>				
		
<h4 class="headings">Direction for Questions 6-10: Five Friends Anant, Benny, Candra, Den, Elony play five games Poker, Chess, Carrom, Monopoly, Table Tennis on five days Monday, Tuesday, Wednesday, Thursday, Friday.
<BR>
Following information is available.<br><BR>
Benny plays Poker on Wednesday.<br>
Den is not playing on first day whereas Candra is playing on Friday.<br>
Anant, the Chess player is not playing on any of the first three days.<br>
Carrom is played on Monday.<br>
</h4>		
	
	
	
<h4 class="questions">6. Who plays Carrom?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=6;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="26"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Anant<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="26"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Benny<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="26"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Candra<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="26"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Den<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="26"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Elony<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#26">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="26" class="panel-collapse collapse">
                                  <br>
  
   
  <table>
  <tr>
  <td>Person</td>
    <td>Elony</td>
    <td>Den</td>
    <td>Benny</td>
    <td>Anant</td>
    <td>Candra</td>
  
  </tr>
  
  <tr>
  <td>Day</td>
    <td>Monday</td>
    <td>Tuesday</td>
    <td>Wednesday</td>
    <td>Thursday</td>
    <td>Friday</td>
  
  </tr>
  
  <tr>
  <td>Game</td>
    <td>Carrom</td>
    <td>Monopoly/TT</td>
    <td>Poker</td>
    <td>Chess</td>
    <td>TT/Monopoly</td>
  
  </tr>
  
   </table>
  

   
  </div>
</div> </h4> 
		<hr>	
		
		
		
		
<h4 class="questions">7. On which day chess is played?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=7;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="27"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Monday<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="27"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Tuesday<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="27"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Thursday<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="27"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Friday<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="27"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#27">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="27" class="panel-collapse collapse">
                                  <br>
  
   
  <table>
  <tr>
  <td>Person</td>
    <td>Elony</td>
    <td>Den</td>
    <td>Benny</td>
    <td>Anant</td>
    <td>Candra</td>
  
  </tr>
  
  <tr>
  <td>Day</td>
    <td>Monday</td>
    <td>Tuesday</td>
    <td>Wednesday</td>
    <td>Thursday</td>
    <td>Friday</td>
  
  </tr>
  
  <tr>
  <td>Game</td>
    <td>Carrom</td>
    <td>Monopoly/TT</td>
    <td>Poker</td>
    <td>Chess</td>
    <td>TT/Monopoly</td>
  
  </tr>
  
   </table>
  

   
  </div>
</div> </h4> 	 
		<hr>   
		
  <h4 class="questions">8. Who plays Monopoly?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=8;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="28"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Anant<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="28"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Candra<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="28"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Den<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="28"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Elony<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="28"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#28">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="28" class="panel-collapse collapse">
                                  <br>
  
   
  <table>
  <tr>
  <td>Person</td>
    <td>Elony</td>
    <td>Den</td>
    <td>Benny</td>
    <td>Anant</td>
    <td>Candra</td>
  
  </tr>
  
  <tr>
  <td>Day</td>
    <td>Monday</td>
    <td>Tuesday</td>
    <td>Wednesday</td>
    <td>Thursday</td>
    <td>Friday</td>
  
  </tr>
  
  <tr>
  <td>Game</td>
    <td>Carrom</td>
    <td>Monopoly/TT</td>
    <td>Poker</td>
    <td>Chess</td>
    <td>TT/Monopoly</td>
  
  </tr>
  
   </table>
  

   
  </div>
</div> </h4> 
		<hr>   		
		
<h4 class="questions">9. Benny plays which game?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=9;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="29"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Carrom<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="29"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Monopoly<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="29"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Poker<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="29"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Badminton<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="29"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#29">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="29" class="panel-collapse collapse">
                                  <br>
  
   
  <table>
  <tr>
  <td>Person</td>
    <td>Elony</td>
    <td>Den</td>
    <td>Benny</td>
    <td>Anant</td>
    <td>Candra</td>
  
  </tr>
  
  <tr>
  <td>Day</td>
    <td>Monday</td>
    <td>Tuesday</td>
    <td>Wednesday</td>
    <td>Thursday</td>
    <td>Friday</td>
  
  </tr>
  
  <tr>
  <td>Game</td>
    <td>Carrom</td>
    <td>Monopoly/TT</td>
    <td>Poker</td>
    <td>Chess</td>
    <td>TT/Monopoly</td>
  
  </tr>
  
   </table>
  

   
  </div>
</div> </h4> 			 
		<hr>   			
			
		     
<h4 class="questions">10. If Table tennis is played by Den, which game is played on the last day?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=10;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="30"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Carrom<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="30"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Monopoly<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="30"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Chess<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="30"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Poker<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="30"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#30">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="30" class="panel-collapse collapse">
                                  <br>
  
   
  
   
  <table>
  <tr>
  <td>Person</td>
    <td>Elony</td>
    <td>Den</td>
    <td>Benny</td>
    <td>Anant</td>
    <td>Candra</td>
  
  </tr>
  
  <tr>
  <td>Day</td>
    <td>Monday</td>
    <td>Tuesday</td>
    <td>Wednesday</td>
    <td>Thursday</td>
    <td>Friday</td>
  
  </tr>
  
  <tr>
  <td>Game</td>
    <td>Carrom</td>
    <td>TT</td>
    <td>Poker</td>
    <td>Chess</td>
    <td>Monopoly</td>
  
  </tr>
  
   </table>
  

</div>
  </div>				 
		</h4><hr>   				       		
		

<h4 class="questions">11. Harish said to Manohar 'You are the father of my brothers sons sister'. How is Harish related to Manohar?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=11;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="31"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Brother<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="31"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Uncle<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="31"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Son<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="31"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Father<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="31"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Grand father<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#31">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="31" class="panel-collapse collapse">
                                  <br>
  
   
   
    No answer description available for this question.

  
  </div>
  </div>
</h4>  
		<hr>           
		
		
<h4 class="questions">12. In a certain code language god is great is coded as "danny ki nanny", rose is red is coded as "manny janny ki" and god likes rose is coded as "danny si manny". How is the word Great coded?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=12;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="32"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;ki<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="32"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;nanny<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="32"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;si<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="32"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;janny<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="32"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;danny<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#32">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="32" class="panel-collapse collapse">
                                  <br>
  
   
   
    No answer description available for this question.

  
  </div>
  </div>
</h4>  
		<hr>       		

<h4 class="questions">13. Mehmood is facing South. He moves 6 kms to his left and reaches Sunset point. He then takes a right and moves 8 kms he then takes a left again and moves 6kms and reaches the beach. What is the direct distance between sunset point and the beach?
</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=13;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="33"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;11kms<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="33"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;9kms<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="33"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;14kms<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="33"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;10kms<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="33"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;13kms<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#33">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="33" class="panel-collapse collapse">
                                  <br>
  
   
   
    No answer description available for this question.

  
  </div>
  </div>
</h4>  
		<hr>    


<h4 class="questions">14. Find the next number in the series:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C, F, H, L, N,?
</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=14;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="34"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;R<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="34"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Q<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="34"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;V<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="34"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;S<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="34"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;T<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#34">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="34" class="panel-collapse collapse">
                                  <br>
  
   
   
   Option- The letters in the series +3, +2, +4, +2, +5, ..

  
  </div>
  </div>
</h4>  
   			 
		<hr>    


 <h4 class="questions">15. Find the next number in the series:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100, 101, 99, 102, 98, 103___?
</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=15;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="35"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;109<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="35"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;107<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="35"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;96<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="35"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;110<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="35"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;97<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#35">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="35" class="panel-collapse collapse">
                                  <br>
  
   
   
The numbers in the series are obtained by alternately adding and subtracting consecutive natural numbers. 
   <br>Eg: 101=100+1, 99=101-2 and so on.

  
  </div>
  </div>
</h4>  
  				 
		<hr>  
		

<h4 class="questions">16. If '-' means '/', '+' means '*', '/' means '-', '*' means '+', then which of the following equations is correct ?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=16;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="36"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;6+20-12/7-1=38<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="36"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;6*20-12*7+1=17<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="36"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;6+20-12/7*1=82<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="36"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;6/20*12+7-1=70<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="36"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of the above<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#36">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="36" class="panel-collapse collapse">
                                  <br>
  
   
   
    No answer description available for this question.

  
  </div>
  </div>
</h4>  
   
   				 
		<hr>  
		
			
  <h4 class="questions">17. If you multiply all the numbers present on the keypad dial of your mobile phone, what will be the exact product?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=17;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="37"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;189200<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="37"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;189240<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="37"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;189160<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="37"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;189280<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="37"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of the above<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#37">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="37" class="panel-collapse collapse">
                                  <br>
  
   
   
   Dial of the mobile phone has a 0. Multiplying by it will lead to 0.

  
  </div>
  </div>
</h4>  
   
   

   				 
		<hr>  		

     
<h4 class="questions">18. Vicky ranks seventh from the top and twenty-sixth from the bottom in his Maths Class. How many students are there in the Maths Class?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=18;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="38"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;34<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="38"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;33<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="38"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;32<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="38"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;31<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="38"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;30<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#38">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="38" class="panel-collapse collapse">
                                  <br>
  
   
   
6 students have their ranks higher than Vicky in Maths Class<br>
Then comes Vicky, and then 25 students with their ranks lower than Vicky<br>
So, 6+1+25 = 32 Students
   
  
  </div>
  </div>
</h4>  
   
   


   				 
		<hr>  				

        
 <h4 class="questions">19. At the end of the meeting held in XYZ Hotel, ten employees, all shake hands with each other once. How many handshakes will be there together?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=19;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="39"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;100<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="39"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;55<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="39"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;45<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="39"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;10!<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="39"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#39">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="39" class="panel-collapse collapse">
                                  <br>
  
   
   
   Total number of handshakes in the XYZ Hotel = 9+8+7+6+5+4+3+2+1=45

  
  </div>
  </div>
</h4>  
   
   

  				 
		<hr>  				

  <h4 class="questions">20. If we consider every second Saturday and all Sundays as holidays in a 30-day month beginning on Saturday in a particular year, then how many working days are there in that month?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='logical' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=20;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="40"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;20<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="40"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;23<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="40"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;22<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="40"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;21<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="40"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#40">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="40" class="panel-collapse collapse">
                                  <br>
  
   
   
Since the Month will begin on Saturday, so 2nd, 9th, 16th, 23th, 30th will be Sundays whereas 8th and 22nd will be second Saturday. 
   <br>So we have 7 holidays.
   <br>So Number of working days: 30-7=23. 

   				
  
  </div>
  </div>
</h4>  
   
   
    
		<hr>  		      
   
		
<br><br>
	
	<center><B><H1>QUANTITATIVE SECTION</H1></B></center>
		<HR><BR>
		 
<h4 class="questions">1. On selling 20 hats at Rs. 840, there is a loss equal to the cost price of 8 hats. The cost price of a hat is:</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=1;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="41"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 45<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="41"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 60<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="41"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 70<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="41"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 80<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="41"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#41">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="41" class="panel-collapse collapse">
                                  <br>
  
   
   

   (C.P. of 20 hats) - (S.P. of 20 hats) = (C.P. of 8 hats)<br>
   C.P. of 12 hats = S.P. of 20 hats = Rs. 840.<br>
   C.P. of 1 hat = Rs.(840/12)=Rs.70.
   
  
  </div>
  </div>
</h4>  
   
   				 
		<hr>  		    

  <h4 class="questions">2. Simple interest on a certain sum of money earned by Raju for 3 years at 5% per annum which is half the compound interest on Rs. 5000 for 2 years at 10% per annum. The sum placed on simple interest is:</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=2;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="42"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 1550<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="42"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 3500<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="42"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 1725<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="42"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 2000<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="42"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Rs. 3350.5<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#42">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="42" class="panel-collapse collapse">
                                  <br>
  
   
   

   C.I.	 = Rs.( 5000 x ( 1+(10/100) )<sup><p3>2</p3></sup> - 5000 )<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= Rs.( 5000 x (11/10) x (11/10) -5000 )<br>	
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= Rs. 1050.<br>
   Sum  = Rs.(525 x 100)/(3 x 5) = Rs.3500.		
   
  
  </div>
  </div>
</h4>  
   
  				 
		<hr>  		    


 <h4 class="questions">3. Suki, a vegetable vendor, sells vegetables of Rs. 435, Rs. 627, Rs. 685, Rs. 230 and Rs. 562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 500?
</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=3;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="43"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 550<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="43"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 600<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="43"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 445<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="43"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 450<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="43"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Rs. 500<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#43">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="43" class="panel-collapse collapse">
                                  <br>
  
   
   
 Total sale for 5 months = Rs. (435 + 627 + 646 + 230 + 562) = 2500.<br>
    Required sale = Rs. ( (500 x 6) - 2500 )<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= Rs. (3000 - 2500)<br>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= Rs. 500.
    
  
  </div>
  </div>
</h4>  
   
  
   
   				 
		<hr>  	                   
         
<h4 class="questions">4. Out of 8 consonants and 3 vowels, how many words of 5 consonants and 2 vowels can be formed?
</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=4;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="44"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;846720<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="44"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;168<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="44"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;5040<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="44"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;<sup><p3>8</p3></sup>C<sub><p3>5</p3></sub> X <sup><p3>3</p3></sup>C<sub><p3>2</p3></sub><c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="44"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;8! X 3!<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#44">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="44" class="panel-collapse collapse">
                                  <br>
  
   
   
  Number of ways of selecting (5 consonants out of 8) and (2 vowels out of 3) = ( <sup><p3>8</p3></sup>C<sub><p3>5</p3></sub> X <sup><p3>3</p3></sup>C<sub><p3>2</p3></sub> )<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   = ( (8 x 7 x 6)/(1 x 2 x 3) )  x  ( (3 x 2)/(1 x 2) )<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
= 168<br>
Number of groups, each having 5 consonants and 2 vowels = 168.<br>
	
Each group contains 7 letters.<br>

Number of ways of arranging 7 letters among themselves	= 7!<br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
= 7 x 6 x 5 x 4 x 3 x 2 x 1<br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
= 5040.<br>
 Required number of ways = (168 x 5040) = 846720.
  
  </div>
  </div>
</h4>  
   
 

  				 
		<hr>  	   		

<h4 class="questions">5. Balls numbered 1 to 35 are mixed up and then a John picks a ball at random. What is the probability that the ball drawn has a number which is a multiple of 3 or 5?</h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=5;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="45"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;9/35<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="45"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;11/35<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="45"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;7/35<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="45"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;16/35<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="45"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;1/2<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#45">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="45" class="panel-collapse collapse">
                                  <br>
  
   
   
  
  Here, S = {1, 2, 3, 4, ...., 34, 35}.<br>

Let E = event of getting a multiple of 3 or 5 = {3, 6 , 9, 12, 15, 18, 5, 10, 20, 21, 24, 25, 27, 30, 33, 35}.<br>

 P(E) =	n(E) / n(S) =	16/35.
   
  
  </div>
  </div>
</h4>  
 
   
				 
		<hr>  	   	

         


<h4 class="questions">6. If n is an odd integer, which of the following must be even?<br>
&nbsp;&nbsp;&nbsp;&nbsp;1. 2n + 1<br>
&nbsp;&nbsp;&nbsp;&nbsp;2. n + n + 2n<br>
&nbsp;&nbsp;&nbsp;&nbsp;3. n + n x n<br></h4>
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=6;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="46"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;Only 3<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="46"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;Only 1<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="46"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;All of these<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="46"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;2 and 3<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="46"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#46">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="46" class="panel-collapse collapse">
                                  <br>
  
   
   
   If n is an odd number, option 2 and 3 will lead to the even numbers.

  
  </div>
  </div>
</h4>  
   
   
   				 
		<hr>  	   	         
		

 <h4 class="questions">7. Cost of two articles are in the ratio 6 : 4 on the first there is 50% loss and on the second 40% gain, the overall percentage of loss? </h4>

<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=7;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="47"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;14%<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="47"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;40%<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="47"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;10%<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="47"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;12.5%<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="47"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#47">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="47" class="panel-collapse collapse">
                                  <br>
  
   
   
Let 600 and 400 be the Cost prices.<br> 

50% loss on first article = 300<br>

40% gain on second article = 160<br>

So, net loss 140 on Rs. 1000 So,<br>

140/1000 x 100 = 14%
   
  
  </div>
  </div>
</h4>  
   
   
 
   				 
		<hr> 

			
<h4 class="questions">8. The ratio of radius and height of a right circular cone which Mitul bought recently, is 6 : 8, and the volume is 96 &Pi; cm<sup><p3>3</p3></sup>. The curved surface area of cone will be? 
</h4>
		
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=8;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="48"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;60 &Pi; sq. cm<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="48"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;36 &Pi; sq. cm<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="48"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;44 &Pi; sq. cm<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="48"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;14 &Pi; sq. cm<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="48"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;56 &Pi; sq. cm<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#48">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="48" class="panel-collapse collapse">
                                  <br>
  
   
   
 6 : 8 = 3 : 4<br>
(1/3) x &Pi; x (3k)<sup><p3>2</p3></sup> x (4k) = 96 &Pi;<br>

9k<sup><p3>2</p3></sup> x 4k = 288<br>

K<sup><p3>3</p3></sup> = 8<br>

K = 2 <br>

Radius = 6cm and Height = 8cm length = 10 cm<br>

CSA = &Pi; x 10 x 6 = 60 &Pi;

  
  </div>
  </div>
</h4>  
   
  
   
   
   				 
		<hr> 


 <h4 class="questions">9. A boat goes downstream in one seventh the time it takes to go upstream. The ratio of speed of boat in still water to that of stream is?
 </h4>
		
<sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=9;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="49"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;1 : 7<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="49"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;4 : 1<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="49"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;2 : 3<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="49"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;7 : 1<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="49"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#49">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="49" class="panel-collapse collapse">
                                  <br>
  
   
   
   By options alone we can get the answer. If we take the ratio 4:3, down stream speed will be 4+3=7 and upstream speed is 4-3=1. Ratio will be 7:1

  
  </div>
  </div>
</h4>  
   
   
   				 
		<hr>    
 

 <h4 class="questions">10. Nita in a car notices that she can count 31 telephone poles in one minute. If the distance between each pole is 50 m, then at what speed the car is running? (in km/hr) 
 </h4>
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=10;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="50"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;90<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="50"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;64<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="50"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;72<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="50"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;60<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="50"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#50">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="50" class="panel-collapse collapse">
                                  <br>
  
   
   
He watches 31 telephone poles go by, so ideally he covers 30 times the distance between 2 poles.<br> 

Distance between 2 poles is 50m.<br>
Distance between 30 poles will be 1500m = 1.5 km<br>

He travels 1.5 Km in 1 minute, so will travel 1.5 x 60 km in 60 min = 90.
   
  
  </div>
  </div>
</h4>  
   
   
   
  				 
		<hr>    
 


<h4 class="questions">11. (3x + 2)(2x - 5) = ax<sup>2</sup> + kx + n. What is the value of a - n + k ?
 </h4>
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=11;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="51"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;11<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="51"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;5<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="51"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;8<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="51"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;9<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="51"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;10<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#51">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="51" class="panel-collapse collapse">
                                  <br>
  
   
   
(3x + 2)(2x - 5)<br>
= 6x<sup>2</sup> - 15x + 4x -10<br>
= 6x<sup>2</sup> - 11x - 10<br>

Thus, <br>
a = 6, n = -10, k = -11<br>
a - n + k = 6 + 10 - 11 = 5
  
  </div>
  </div>
</h4>  
   
  
   
   
   				 
		<hr>    

 <h4 class="questions">12. If the radius of a circle is increased by 20% then the area is increased by :</h4>

 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=12;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="52"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;400 %<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="52"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;40 %<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="52"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;144 %<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="52"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;120 %<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="52"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;44 %<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#52">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="52" class="panel-collapse collapse">
                                  <br>
  
   
   
The formula for the radius of the original circle is  = &Pi;r<sup>2</sup> <br> 
  
The formula for the new radius is <br> 
= &Pi;((1.2 * r)<sup>2</sup>)  <br>
= &Pi;(1.44 * r<sup>2</sup>)  <br>
  
Thus, the area of the circle is increased by 44%.
  
  </div>
  </div>
</h4>  
   
   
   
   
   				 
		<hr>    

    
<h4 class="questions">13. Helpers are needed to prepare for a grand party. Each helper can make either 2 large cakes or 35 small cakes per hour. The kitchen is available for 3 hours and 20 large cakes and 700 small cakes are needed. How many helpers are required?</h4>

 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=13;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="53"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;30<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="53"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;25<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="53"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;20<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="53"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;15<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="53"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;10<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>
<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#53">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="53" class="panel-collapse collapse">
                                  <br>
  
   
   
   20 large cakes will require the equivalent of 10 helpers working for one hour. 700 small cakes will require the equivalent of 20 helpers working for one hour. This means if only one hour were available we would need 30 helpers. But since three hours are available we can use 10 helpers.

  
  </div>
  </div>
</h4>  
   
   
   				 
		<hr>    		
			
			
 <h4 class="questions">14. The price of a XYZ car rises by 30% while the sales of the car came down by 20%. What is the percent change in the total revenue?</h4>

 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=14;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="54"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;4 %<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="54"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;2 %<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="54"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;6 %<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="54"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;Total Revenue remains the same<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="54"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#54">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="54" class="panel-collapse collapse">
                                  <br>
  
   
   
 Assume that price is 100 and sales are also 100.<br> 
   Total revenue is 100*100=10000(100%).<br>
    Now price increased by 30%.<br> 
    So new price is 130.<br> 
    Similarly new sales are 80.<br>
     Now revenue is 130*80=10400(104%)<br>
      So total change is 4%
  
  </div>
  </div>
</h4>  
   
  
   
   				 
		<hr>                

 <h4 class="questions">15. Two liquids P and Q are in the ratio 5 : 1 in container A and in container B, they are in the ratio 1 : 3. In what ratio should the contents of the two containers be mixed so as to obtain a mixture of P and Q in the ratio 1 : 1?</h4>

 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=15;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="55"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;2 : 3<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="55"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;4 : 3<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="55"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;3 : 4<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="55"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;3 : 2<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="55"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;3 : 5<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#55">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="55" class="panel-collapse collapse">
                                  <br>
  
   
   
Let the total liquid in container = x<br>
Quantity of P in container A = 5x/6<br>
Quantity of Q in container A = x/6<br>
Quantity of P in container B = x/4<br>
Quantity of Q in container B = 3x/4<br>

New ratio of P and Q = 1:1<br>
Let quantity container A mix = n<br>
Let quantity container B mix = m<br>

Now Quantity of P = 5xn/6 + xm/4 = x(5n/6 + m/4)<br>
Now Quantity of Q = xn/6 + 3xm/4 = x(n/6 + 3m/4)<br>
As new quantity of P and Q are equal,<br>

5n/6 + m/4 = n/6 +3m/4<br>
4n/6 = 2m/4<br>
n/m = 3/4
   
  
  </div>
  </div>
</h4>  
   
   
   
   				 
		<hr>                
		

	<h4 class="headings">Directions for Questions 16-20:Study the following table carefully and answer the questions given below it.</h4>
	<br>
	<h4 class="questions">Percentage of Marks Obtained by Various Students in Various Subjects in an Examination </h4>
	<br>
	<h4 class="questions"><table border="1">
	<tr>
	<th>Student</th>
	<th>English (out of 100)</th>
	<th>Hindi (out of 100)</th>
	<th>Science (out of 150)</th>
	<th>History (out of 60)</th>
	<th>Maths (out of 150)</th>
	<th>Geography (out of 40)</th>
	</tr>
<tr>
<td>Jeet</td>
<td>68</td>
<td>75</td>
<td>82</td>
<td>60</td>
<td>96</td>
<td>55</td>
</tr>

	
<tr>
<td>Jainam</td>
<td>88</td>
<td>73</td>
<td>85</td>
<td>65</td>
<td>88</td>
<td>65</td>
</tr>	

<tr>
<td>Chirag</td>
<td>75</td>
<td>56</td>
<td>72</td>
<td>75</td>
<td>75</td>
<td>80</td>
</tr>
	
<tr>
<td>Parth</td>
<td>70</td>
<td>66</td>
<td>80</td>
<td>80</td>
<td>72</td>
<td>62</td>
</tr>	

<tr>
<td>Nilay</td>
<td>72</td>
<td>60</td>
<td>68</td>
<td>74</td>
<td>68</td>
<td>75</td>
</tr>	

<tr>
<td>Yash</td>
<td>85</td>
<td>70</td>
<td>90</td>
<td>70</td>
<td>74</td>
<td>70</td>
</tr>	
	
</table>
	</h4>
 <br>
 	
 		
	
  <h4 class="questions">16. What is the overall approximate percentage obtained by Chirag in the examination?
</h4>
		
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=16;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="56"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;78<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="56"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;69<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="56"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;75<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="56"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;71<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="56"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;65<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#56">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="56" class="panel-collapse collapse">
                                  <br>
  
   
   
 Total marks obtained by Chirag in the examination= 75% of 100 + 56% of 100 + 72% of 150 + 75% of 60 + 75% of 150 + 80% of 40<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

= 75+56+108+45+112.5+32<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
=428.5<br>
Required percentage = (428.5/600)*100 = 71%
  
  </div>
  </div>
</h4>  
   
  

   
   
   				 
		<hr>    	
	
						
 <h4 class="questions">17. What is the difference in the marks obtained by Jainam in English and Maths and the marks obtained by Yash in the same subjects?
</h4>
		
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=17;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="57"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;24<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="57"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;17<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="57"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;15<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="57"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;28<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="57"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#57">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="57" class="panel-collapse collapse">
                                  <br>
  
   
   

   Difference of marks obtained by Jainam and Yash in English = 3% of 100 = 3<br>
Difference of marks obtained by Jainam and Yash in Maths = 14% of 150 = 21<br>
Total difference = 21+3=24 
   
  
  </div>
  </div>
</h4>  
   
   
   				 
		<hr>    				

<h4 class="questions">18. The marks obtained by Nilay in Geography are what percent of the marks obtained by Nilay in Hindi?
</h4>
		
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=18;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="58"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;45<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="58"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;55<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="58"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;50<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="58"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;60<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="58"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#58">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="58" class="panel-collapse collapse">
                                  <br>
  
   
   
   Required percentage = (75% of 40 / 60% of 100)*100 = 50%

  
  </div>
  </div>
</h4>  
   
   
   				 
		<hr>  		
	
<h4 class="questions">19. What is the overall percentage obtained by Parth in History and Geography Together?
</h4>
		
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=19;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="59"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;73.40<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="59"  value="b" <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;72.80<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="59"  value="c" <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;70.50<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="59"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;68.80<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="59"  value="e" <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#59">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="59" class="panel-collapse collapse">
                                  <br>
  
   
   
Marks obtained by Parth in History= 80% of 60 = 48<br>
Marks obtained by Parth in Geography= 62% of 40=24.8<br>
Required percentage = ( (48.7+24.8)/100 )*100 = 72.80%
  
  </div>
  </div>
</h4>  
   
   
   
   				 
		<hr>  	
			

<h4 class="questions">20. What are the average marks obtained by all the students together in Science?
</h4>
		
 <sql:query dataSource="${ds}" var="result">
SELECT * from mock_solution where username='<c:out value="${username }"></c:out>' AND section='quants' AND testname='<c:out value="${testpaper1 }"></c:out>' AND id=20;
</sql:query>
			<c:forEach var="row" items="${result.rows}">	
		<p>
			<input type="radio" disabled="true" name="60"  value="a" <c:if test="${row.my_ans=='A'}">checked</c:if>>&nbsp;&nbsp;A.&nbsp;&nbsp;77.16<c:if test="${row.ans=='A'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='A' && row.ans!='A'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="60"   value="b" <c:if test="${row.my_ans=='B'}">checked</c:if> <c:if test="${row.my_ans=='B'}">checked</c:if>>&nbsp;&nbsp;B.&nbsp;&nbsp;120.50<c:if test="${row.ans=='B'}"><p1>   &#10004;</p1></c:if><c:if test="${row.my_ans=='B' && row.ans!='B'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="60"   value="c" <c:if test="${row.my_ans=='C'}">checked</c:if> <c:if test="${row.my_ans=='C'}">checked</c:if>>&nbsp;&nbsp;C.&nbsp;&nbsp;118<c:if test="${row.ans=='C'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='C' && row.ans!='C'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="60"  value="d" <c:if test="${row.my_ans=='D'}">checked</c:if>>&nbsp;&nbsp;D.&nbsp;&nbsp;121<c:if test="${row.ans=='D'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='D' && row.ans!='D'}"><p2>  X</p2></c:if><br>
			<input type="radio" disabled="true" name="60"   value="e" <c:if test="${row.my_ans=='E'}">checked</c:if> <c:if test="${row.my_ans=='E'}">checked</c:if>>&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<c:if test="${row.ans=='E'}"><p1>  &#10004;</p1></c:if><c:if test="${row.my_ans=='E' && row.ans!='E'}"><p2>  X</p2></c:if><br>
			</p>
			<h4 class="questions">Your Answer: Option <c:out value="${row.my_ans }"></c:out>
			<c:if test="${row.my_ans==''}">(Not Answered)</c:if><br><br>
			Correct Answer: Option <c:out value="${row.ans }"></c:out>
		
			</h4>		 </c:forEach>

<h4 class="questions">
                      <div  id="accordion">
                    <a class="btn mybtn-primary btn-xl page-scroll" data-toggle="collapse"  href="#60">
                                        <p1 style="color:white"> Solution</p1>
                                      </a>
                       
                              <div id="60" class="panel-collapse collapse">
                                  <br>
  
   
   Average marks obtained by all students in Science =150% of (82+85+72+80+68+90)/6<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   = (3/2) * (477/6)<br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   = 119.25
   
   
 

  
  </div>
  </div>
</h4>  
   
     				 
		<hr>  	
						

  </section>
 

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- gritter -->
   
    <!-- custom gritter script for this page only-->
    <script src="js/gritter.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>



</body>
  






</html>
