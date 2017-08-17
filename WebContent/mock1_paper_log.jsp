

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Logical Section</title>

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
  

<style>
section{
  margin: 50px;
}
h1,a{
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
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

div {
    font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
	margin-left: 5% !important;
}

input {
    font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
	margin-left: 1% !important;
	margin-right:1% !important;
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

     #countdown{
	width: 210px;
	height: 100px;
		background: #222;
	background-image: -webkit-linear-gradient(top, #222, #333, #333, #222); 
	background-image:    -moz-linear-gradient(top, #222, #333, #333, #222);
	background-image:     -ms-linear-gradient(top, #222, #333, #333, #222);
	background-image:      -o-linear-gradient(top, #222, #333, #333, #222);

	text-align: center;
	border: 1px solid #111;
	border-radius: 5px;
	box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.6);
	margin: auto;
	padding: 15px 0;
	position: absolute;
	top:2%;
    right:1%;
}

#countdown #tiles{
	position: relative;
	z-index: 1;
}

#countdown #tiles > span{
	width: 80px;
	height:60px;
	max-width: 92px;
	font: bold 35px 'Droid Sans', Arial, sans-serif;
	text-align: center;
	color: #111;
	 background-image: -webkit-linear-gradient(top, #bbb, #eee); 
	 background-image:    -moz-linear-gradient(top, #bbb, #eee); 
	border-radius: 3px;
	box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.7);
	margin: 0 7px;
	padding: 12px 0;
	display: inline-block;
	position: relative;
}

#countdown #tiles > span:before{
	content:"";
	width: 100%;
	height: 50px;
	display: block;
	padding: 0 3px;
	position: absolute;
	top: 20%; left: -3px;
	z-index: -1;
}

#countdown #tiles > span:after{
	content:"";
	width: 100%;
	border-top: 1px solid #333;
	display: block;
	position: absolute;
	top: 48%; left: 0;
}

#countdown .labels{
	width: 100%;
	height: 5px;
	text-align: center;
	position: right;
	bottom: 10px;
}

#countdown .labels li{
	width: 80px;
	font: bold 15px 'Droid Sans', Arial, sans-serif;
	color: #f47321;
	text-shadow: 1px 1px 0px #000;
	text-align: center;
	text-transform: uppercase;
	display: inline-block;
	padding-right:11px;
}

div1#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:white;
	background:#222;
	
	padding:8px;
}


.mybtn-primary {
    color: #fff;
    background-color: #F05F40;
    border-color: #F05F40;
    -webkit-transition: all .35s;
    -moz-transition: all .35s;
    transition: all .35s;
    font-size:18px;
}

</style>
    </head>
    <body style="background:white;">
       
       <%
if(session.getAttribute("username") == null){
	response.sendRedirect("index.jsp");
}
%>


	
<div style="position:fixed" id="countdown">
<div id='tiles'></div>
<div class="labels">
  
 
  <li>Mins</li>
  <li>Secs</li>
</div>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

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
 

	
var target_date = new Date().getTime() + (1000*1200);  // set the countdown seconds(in ms)
var minutes, seconds; // variables for time units

var countdown = document.getElementById("tiles"); // get tag element
var sessionTimeout = 1200;        // NO of seconds given to complete test
getCountdown();

setInterval(function () { 
window.history.go(+1);

sessionTimeout = sessionTimeout - 1;

if (sessionTimeout >= 0)
              {
              //call the function again after 1 minute delay
              
             window.setTimeout("DisplaySessionTimeout()",1000);
			   getCountdown(); 
              }    
          else
          {
              //show message box
              //document.getElementById("val").innerHTML="TIME OUT";
              alert("Your current Session is over.");
              setTimeout(document.form1.sub.click());
          }



}, 1000);

          

function getCountdown(){

	// find the amount of "seconds" between now and target
	var current_date = new Date().getTime();
	var seconds_left = (target_date - current_date) / 1000;

	 days = pad( parseInt(seconds_left / 86400) );
	seconds_left = seconds_left % 86400;
		 
	hours = pad( parseInt(seconds_left / 3600) );
	seconds_left = seconds_left % 3600; 
		  
	minutes = pad( parseInt(seconds_left / 60) );
	seconds = pad( parseInt( seconds_left % 60 ) );

	// format countdown string + set tag value
	countdown.innerHTML = "<span>" + minutes + "</span><span>" + seconds + "</span>"; 
}

function pad(n) {
	return (n < 10 ? '0' : '') + n;
} 



</script>
    
  
     <form name="form1" action="<%=request.getContextPath()%>/<c:out value="${exam }"></c:out>" method="post">
           
        
         
            <input type="hidden" name="section" value="logical">
            
			
			  <input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
			  
			    <input type="hidden" name="testname" value="<%=session.getAttribute("testpaper")%>">
			       <input type="hidden" name="no_of_questions" value="20">
			   <input type="hidden" name="redirect_to" value="mock1_ins2.jsp">
		
		<center><B><H1>LOGICAL SECTION</H1></B></center>
		<hr><br> 
			
		
<h4 class="headings">Direction for Questions 1-5 : In the following questions, the symbols ?, < , >, = and + are used with the following meaning as illustrated below.<br>
'A ? B' means 'A is neither greater than nor equal to B'<br>
'A < B' means 'A is neither smaller than nor equal to B'<br>
'A > B' means 'A is neither smaller than nor greater than B'<br>
'A=B' means 'A is not smaller than B'<br>
'A+B' means 'A is not greater than B'<br>
Now each of the following questions, assuming the given statements to be true, find which of the three conclusions I, II and III given below them is/are definitely true and give your answer accordingly.
</h4>
			<br>
			
			<h4 class="questions">1. Statements: J?K, K+L, M=N, M < K <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. K?N &nbsp;&nbsp;II. J>M &nbsp;&nbsp;III. L=J </h4>
		<p>
			<input type="radio" name="1" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;None are true<br>
			<input type="radio" name="1" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only I is true<br>
			<input type="radio" name="1" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Only II and III are true<br>
			<input type="radio" name="1" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Only III is true<br>
			<input type="radio" name="1" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			
			</p>
			
		<hr>	
		
		<h4 class="questions">2. Statements: D?E, F < G, D < F, G < H <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. H?E  &nbsp;&nbsp;   II. H < F  &nbsp;&nbsp;   III. H < F </h4>
		<p>
			<input type="radio" name="2" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;None of these<br>
			<input type="radio" name="2" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only I is true<br>
			<input type="radio" name="2" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Only II is true<br>
			<input type="radio" name="2" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Only III is true<br>
			<input type="radio" name="2" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Only II and III are true<br>
			
			</p>
			
		<hr>	
		
         <h4 class="questions">3. Statements: D+B, D < A, A > C, C=E <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. D < E  &nbsp;&nbsp;   II. B < E  &nbsp;&nbsp;   III. E=D </h4>
		<p>
			<input type="radio" name="3" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Only I and II are true<br>
			<input type="radio" name="3" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only I and III are true<br>
			<input type="radio" name="3" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Only II and III are true<br>
			<input type="radio" name="3" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;All are true<br>
			<input type="radio" name="3" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			
			</p>
			
		<hr>	              
                   
                
          <h4 class="questions">4. Statements: A?B, C+A, C < D, D=E <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. A=E  &nbsp;&nbsp;  II. C > E &nbsp;&nbsp;  III. D?A </h4>
		<p>
			<input type="radio" name="4" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Only III is true<br>
			<input type="radio" name="4" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only II is true<br>
			<input type="radio" name="4" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Only I is true<br>
			<input type="radio" name="4" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Only II and III are true<br>
			<input type="radio" name="4" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;All are true<br>
			
			</p>
			
		<hr>	       


    <h4 class="questions">5. Statements: X?Y, Y?Z, Z+V <br>
                   &nbsp;&nbsp;&nbsp;&nbsp;Conclusions: I. V?X  &nbsp;&nbsp;  II.Y?V   &nbsp;&nbsp; III.X?V </h4>
		<p>
			<input type="radio" name="5" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Only I is true<br>
			<input type="radio" name="5" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only II is true<br>
			<input type="radio" name="5" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Only III is true<br>
			<input type="radio" name="5" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Only either II or III is true<br>
			<input type="radio" name="5" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Only II and III are true<br>
			
			</p>
			
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
		<p>
			<input type="radio" name="6" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Anant<br>
			<input type="radio" name="6" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Benny<br>
			<input type="radio" name="6" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Candra<br>
			<input type="radio" name="6" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Den<br>
			<input type="radio" name="6" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Elony<br>
			
			</p>
			
		<hr>	  
   
                
       <h4 class="questions">7. On which day chess is played?</h4>
		<p>
			<input type="radio" name="7" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Monday<br>
			<input type="radio" name="7" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Tuesday<br>
			<input type="radio" name="7" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Thursday<br>
			<input type="radio" name="7" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Friday<br>
			<input type="radio" name="7" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<br>
			
			</p>
			
		<hr>	          
    
                
      <h4 class="questions">8. Who plays Monopoly?</h4>
		<p>
			<input type="radio" name="8" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Anant<br>
			<input type="radio" name="8" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Candra<br>
			<input type="radio" name="8" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Den<br>
			<input type="radio" name="8" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Elony<br>
			<input type="radio" name="8" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<br>
			
			</p>
			
		<hr>	          
               
                
	<h4 class="questions">9. Benny plays which game?</h4>
		<p>
			<input type="radio" name="9" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Carrom<br>
			<input type="radio" name="9" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Monopoly<br>
			<input type="radio" name="9" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Poker<br>
			<input type="radio" name="9" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Badminton<br>
			<input type="radio" name="9" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<br>
			
			</p>
			
		<hr>	 

                
       <h4 class="questions">10. If Table tennis is played by Den, which game is played on the last day?</h4>
		<p>
			<input type="radio" name="10" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Carrom<br>
			<input type="radio" name="10" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Monopoly<br>
			<input type="radio" name="10" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Chess<br>
			<input type="radio" name="10" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Poker<br>
			<input type="radio" name="10" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Cannot be determined<br>
			
			</p>
			
		<hr>	          
                
     <h4 class="questions">11. Harish said to Manohar 'You are the father of my brothers sons sister'. How is Harish related to Manohar?</h4>
		<p>
			<input type="radio" name="11" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Brother<br>
			<input type="radio" name="11" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Uncle<br>
			<input type="radio" name="11" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Son<br>
			<input type="radio" name="11" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Father<br>
			<input type="radio" name="11" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Grand father<br>
			
			</p>
			
		<hr>	    


<h4 class="questions">12. In a certain code language god is great is coded as "danny ki nanny", rose is red is coded as "manny janny ki" and god likes rose is coded as "danny si manny". How is the word Great coded?</h4>
		<p>
			<input type="radio" name="12" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;ki<br>
			<input type="radio" name="12" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;nanny<br>
			<input type="radio" name="12" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;si<br>
			<input type="radio" name="12" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;janny<br>
			<input type="radio" name="12" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;danny<br>
			
			</p>
			
		<hr>	   
                
    
                
    <h4 class="questions">13. Mehmood is facing South. He moves 6 kms to his left and reaches Sunset point. He then takes a right and moves 8 kms he then takes a left again and moves 6kms and reaches the beach. What is the direct distance between sunset point and the beach?
</h4>
		<p>
			<input type="radio" name="13" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;11kms<br>
			<input type="radio" name="13" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;9kms<br>
			<input type="radio" name="13" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;14kms<br>
			<input type="radio" name="13" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;10kms<br>
			<input type="radio" name="13" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;13kms<br>
			
			</p>
			
		<hr>	                   
                       
                       
                   
    <h4 class="questions">14. Find the next number in the series:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C, F, H, L, N,?
</h4>
		<p>
			<input type="radio" name="14" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;R<br>
			<input type="radio" name="14" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Q<br>
			<input type="radio" name="14" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;V<br>
			<input type="radio" name="14" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;S<br>
			<input type="radio" name="14" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;T<br>
			
			</p>
			
		<hr>	                  
                       
    <h4 class="questions">15. Find the next number in the series:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100, 101, 99, 102, 98, 103___?

</h4>
		<p>
			<input type="radio" name="15" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;109<br>
			<input type="radio" name="15" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;107<br>
			<input type="radio" name="15" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;96<br>
			<input type="radio" name="15" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;110<br>
			<input type="radio" name="15" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;97<br>
			
			</p>
			
		<hr>	                            
                       
                       
     <h4 class="questions">16. If '-' means '/', '+' means '*', '/' means '-', '*' means '+', then which of the following equations is correct ?</h4>
		<p>
			<input type="radio" name="16" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;6+20-12/7-1=38<br>
			<input type="radio" name="16" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;6*20-12*7+1=17<br>
			<input type="radio" name="16" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;6+20-12/7*1=82<br>
			<input type="radio" name="16" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;6/20*12+7-1=70<br>
			<input type="radio" name="16" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of the above<br>
			
			</p>
			
		<hr>	                      

      
  <h4 class="questions">17. If you multiply all the numbers present on the keypad dial of your mobile phone, what will be the exact product?</h4>
		<p>
			<input type="radio" name="17" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;189200<br>
			<input type="radio" name="17" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;189240<br>
			<input type="radio" name="17" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;189160<br>
			<input type="radio" name="17" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;189280<br>
			<input type="radio" name="17" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of the above<br>
			
			</p>
			
		<hr>	                      
         
	         
   
  <h4 class="questions">18. Vicky ranks seventh from the top and twenty-sixth from the bottom in his Maths Class. How many students are there in the Maths Class?</h4>
		<p>
			<input type="radio" name="18" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;34<br>
			<input type="radio" name="18" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;33<br>
			<input type="radio" name="18" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;32<br>
			<input type="radio" name="18" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;31<br>
			<input type="radio" name="18" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;30<br>
			
			</p>
			
		<hr>	   
                       

 
  <h4 class="questions">19. At the end of the meeting held in XYZ Hotel, ten employees, all shake hands with each other once. How many handshakes will be there together?</h4>
		<p>
			<input type="radio" name="19" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;100<br>
			<input type="radio" name="19" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;55<br>
			<input type="radio" name="19" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;45<br>
			<input type="radio" name="19" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;10!<br>
			<input type="radio" name="19" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			
			</p>
			
		<hr>	  
		
		 
  <h4 class="questions">20. If we consider every second Saturday and all Sundays as holidays in a 30-day month beginning on Saturday in a particular year, then how many working days are there in that month?</h4>
		<p>
			<input type="radio" name="20" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;20<br>
			<input type="radio" name="20" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;23<br>
			<input type="radio" name="20" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;22<br>
			<input type="radio" name="20" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;21<br>
			<input type="radio" name="20" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			
			</p>
			
		<hr>	  

         
                        
						<br><br><br><br><br><br><br>
                  <div1 id="fixedfooter">
			<center>
				  
				   <button class="btn mybtn-primary btn-xl page-scroll" type="submit" name="sub">
				  Submit </button>
				  </center>
				 </div1>         
          
        </form>
          
 </body>                
</html>




