

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
       <head>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quantitative Section</title>

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

p,table {
font-family: 'Open Sans','Helvetica Neue',Arial,sans-serif;
margin-left: 5% !important;
color:black;

}
th,td{
text-align:center;
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
           
      
         
            
            <input type="hidden" name="section" value="quants">
            
             <input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
             
			<input type="hidden" name="testname" value="<%=session.getAttribute("testpaper")%>">
			<input type="hidden" name="no_of_questions" value="20">
			   <input type="hidden" name="redirect_to" value="result.jsp">	            
          
			<center><B><H1>QUANTITATIVE SECTION</H1></B></center> 
			 
	<hr><br>
			
		
<h4 class="questions">1. On selling 20 hats at Rs. 840, there is a loss equal to the cost price of 8 hats. The cost price of a hat is:</h4>
		<p>
			<input type="radio" name="1" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 45<br>
			<input type="radio" name="1" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 60<br>
			<input type="radio" name="1" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 70<br>
			<input type="radio" name="1" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 80<br>
			<input type="radio" name="1" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<br>
			</p>
			
		<hr>	
                       
         
   <h4 class="questions">2. Simple interest on a certain sum of money earned by Raju for 3 years at 5% per annum which is half the compound interest on Rs. 5000 for 2 years at 10% per annum. The sum placed on simple interest is:</h4>
			
		<p>
			<input type="radio" name="2" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 1550<br>
			<input type="radio" name="2" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 3500<br>
			<input type="radio" name="2" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 1725<br>
			<input type="radio" name="2" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 2000<br>
			<input type="radio" name="2" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Rs. 3350.5 <br>
			</p>
			
		<hr>	
        
 <h4 class="questions">3. Suki, a vegetable vendor, sells vegetables of Rs. 435, Rs. 627, Rs. 685, Rs. 230 and Rs. 562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 500?
</h4>
			
		<p>
			<input type="radio" name="3" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Rs. 550<br>
			<input type="radio" name="3" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Rs. 600<br>
			<input type="radio" name="3" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Rs. 445<br>
			<input type="radio" name="3" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Rs. 450<br>
			<input type="radio" name="3" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Rs. 500 <br>
			</p>
			
		<hr>	
         
  <h4 class="questions">4. Out of 8 consonants and 3 vowels, how many words of 5 consonants and 2 vowels can be formed?
</h4>
			
		<p>
			<input type="radio" name="4" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;846720<br>
			<input type="radio" name="4" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;168<br>
			<input type="radio" name="4" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;5040<br>
			<input type="radio" name="4" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;<sup><p3>8</p3></sup>C<sub><p3>5</p3></sub> X <sup><p3>3</p3></sup>C<sub><p3>2</p3></sub><br>
			<input type="radio" name="4" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;8! X 3!<br>
			</p>
			
		<hr>	       
         
<h4 class="questions">5. Balls numbered 1 to 35 are mixed up and then a John picks a ball at random. What is the probability that the ball drawn has a number which is a multiple of 3 or 5?

</h4>
			
		<p>
			<input type="radio" name="5" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;9/35<br>
			<input type="radio" name="5" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;11/35<br>
			<input type="radio" name="5" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;7/35<br>
			<input type="radio" name="5" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;16/35<br>
			<input type="radio" name="5" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;1/2 <br>
			</p>
			
		<hr>	   
  

    <h4 class="questions">6. If n is an odd integer, which of the following must be even?<br>
&nbsp;&nbsp;&nbsp;&nbsp;1. 2n + 1<br>
&nbsp;&nbsp;&nbsp;&nbsp;2. n + n + 2n<br>
&nbsp;&nbsp;&nbsp;&nbsp;3. n + n x n<br>
</h4>
			
		<p>
			<input type="radio" name="6" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Only 3<br>
			<input type="radio" name="6" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Only 1<br>
			<input type="radio" name="6" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;All of these<br>
			<input type="radio" name="6" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;2 and 3<br>
			<input type="radio" name="6" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			</p>
			
		<hr>	      
         
         
    <h4 class="questions">7. Cost of two articles are in the ratio 6 : 4 on the first there is 50% loss and on the second 40% gain, the overall percentage of loss? 
</h4>
			
		<p>
			<input type="radio" name="7" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;14%<br>
			<input type="radio" name="7" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;40%<br>
			<input type="radio" name="7" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;10%<br>
			<input type="radio" name="7" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;12.5%<br>
			<input type="radio" name="7" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these <br>
			</p>
			
		<hr>	        
     
 <h4 class="questions">8. The ratio of radius and height of a right circular cone which Mitul bought recently, is 6 : 8, and the volume is 96 &Pi; cm<sup><p3>3</p3></sup>. The curved surface area of cone will be? 
</h4>
		<p>
			<input type="radio" name="8" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;60 &Pi; sq. cm<br>
			<input type="radio" name="8" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;36 &Pi; sq. cm<br>
			<input type="radio" name="8" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;44 &Pi; sq. cm<br>
			<input type="radio" name="8" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;14 &Pi; sq. cm<br>
			<input type="radio" name="8" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;56 &Pi; sq. cm<br>
			</p>
			
		<hr>	

 <h4 class="questions">9. A boat goes downstream in one seventh the time it takes to go upstream. The ratio of speed of boat in still water to that of stream is?
 </h4>
			
		<p>
			<input type="radio" name="9" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;1 : 7<br>
			<input type="radio" name="9" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;4 : 1<br>
			<input type="radio" name="9" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;2 : 3<br>
			<input type="radio" name="9" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;7 : 1<br>
			<input type="radio" name="9" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<br>
			</p>
			
		<hr>	

   <h4 class="questions">10. Nita in a car notices that she can count 31 telephone poles in one minute. If the distance between each pole is 50 m, then at what speed the car is running? (in km/hr) 
 </h4>
			
		<p>
			<input type="radio" name="10" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;90<br>
			<input type="radio" name="10" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;64<br>
			<input type="radio" name="10" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;72<br>
			<input type="radio" name="10" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;60<br>
			<input type="radio" name="10" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Data Inadequate<br>
			</p>
			
		<hr>	
    
 <h4 class="questions">11. (3x + 2)(2x - 5) = ax<sup>2</sup> + kx + n. What is the value of a - n + k ?
 </h4>
			
		<p>
			<input type="radio" name="11" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;11<br>
			<input type="radio" name="11" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;5<br>
			<input type="radio" name="11" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;8<br>
			<input type="radio" name="11" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;9<br>
			<input type="radio" name="11" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;10<br>
			</p>
			
		<hr>	  


<h4 class="questions">12. If the radius of a circle is increased by 20% then the area is increased by :</h4>
			
		<p>
			<input type="radio" name="12" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;400 %<br>
			<input type="radio" name="12" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;40 %<br>
			<input type="radio" name="12" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;144 %<br>
			<input type="radio" name="12" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;120 %<br>
			<input type="radio" name="12" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;44 %<br>
			</p>
			
		<hr>	 


<h4 class="questions">13. Helpers are needed to prepare for a grand party. Each helper can make either 2 large cakes or 35 small cakes per hour. The kitchen is available for 3 hours and 20 large cakes and 700 small cakes are needed. How many helpers are required?</h4>
			
		<p>
			<input type="radio" name="13" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;30<br>
			<input type="radio" name="13" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;25<br>
			<input type="radio" name="13" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;20<br>
			<input type="radio" name="13" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;15<br>
			<input type="radio" name="13" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;10<br>
			</p>
			
		<hr>	



 <h4 class="questions">14. The price of a XYZ car rises by 30% while the sales of the car came down by 20%. What is the percent change in the total revenue?</h4>
			
		<p>
			<input type="radio" name="14" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;4 %<br>
			<input type="radio" name="14" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;2 %<br>
			<input type="radio" name="14" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;6 %<br>
			<input type="radio" name="14" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Total Revenue remains the same<br>
			<input type="radio" name="14" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			</p>
			
		<hr>		
 	
 <h4 class="questions">15. Two liquids P and Q are in the ratio 5 : 1 in container A and in container B, they are in the ratio 1 : 3. In what ratio should the contents of the two containers be mixed so as to obtain a mixture of P and Q in the ratio 1 : 1?</h4>
			
		<p>
			<input type="radio" name="15" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;2 : 3<br>
			<input type="radio" name="15" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;4 : 3<br>
			<input type="radio" name="15" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;3 : 4<br>
			<input type="radio" name="15" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;3 : 2<br>
			<input type="radio" name="15" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;3 : 5<br>
			</p>
			
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
			
		<p>
			<input type="radio" name="16" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;78<br>
			<input type="radio" name="16" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;69<br>
			<input type="radio" name="16" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;75<br>
			<input type="radio" name="16" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;71<br>
			<input type="radio" name="16" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;65<br>
			</p>
			
		<hr>			
 	
 <h4 class="questions">17. What is the difference in the marks obtained by Jainam in English and Maths and the marks obtained by Yash in the same subjects?
</h4>
			
		<p>
			<input type="radio" name="17" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;24<br>
			<input type="radio" name="17" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;17<br>
			<input type="radio" name="17" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;15<br>
			<input type="radio" name="17" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;28<br>
			<input type="radio" name="17" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these <br>
			</p>
			
		<hr>		

<h4 class="questions">18. The marks obtained by Nilay in Geography are what percent of the marks obtained by Nilay in Hindi?
</h4>
			
		<p>
			<input type="radio" name="18" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;45<br>
			<input type="radio" name="18" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;55<br>
			<input type="radio" name="18" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;50<br>
			<input type="radio" name="18" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;60<br>
			<input type="radio" name="18" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these <br>
			</p>
			
		<hr>		

<h4 class="questions">19. What is the overall percentage obtained by Parth in History and Geography Together?
</h4>
			
		<p>
			<input type="radio" name="19" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;73.40<br>
			<input type="radio" name="19" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;72.80<br>
			<input type="radio" name="19" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;70.50<br>
			<input type="radio" name="19" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;68.80<br>
			<input type="radio" name="19" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these <br>
			</p>
			
		<hr>	 	
	   
  <h4 class="questions">20. What are the average marks obtained by all the students together in Science?
</h4>
			
		<p>
			<input type="radio" name="20" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;77.16<br>
			<input type="radio" name="20" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;120.50<br>
			<input type="radio" name="20" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;118<br>
			<input type="radio" name="20" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;121<br>
			<input type="radio" name="20" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these <br>
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

