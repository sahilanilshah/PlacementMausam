

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
    <title>Verbal Section</title>

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
           
      
     
            <input type="hidden" name="section" value="verbal">
            
           
			
			  <input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
			   <input type="hidden" name="testname" value="<%=session.getAttribute("testpaper")%>">
			   <input type="hidden" name="no_of_questions" value="20">
			   <input type="hidden" name="redirect_to" value="mock1_ins1.jsp">
			   
			<center><b><h1>Verbal Section</h1></b></center> 
			<hr><br> 
		<h4 class="headings"><u>Directions for Questions 1-3: Fill in the blanks with appropriate options.</u></h4>
 		<br>	
			
			
<h4 class="questions">1. We stood at the back ______ the theatre.</h4>
			
		<p>
			<input type="radio" name="1" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;of<br>
			<input type="radio" name="1" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;in<br>
			<input type="radio" name="1" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;at<br>
			<input type="radio" name="1" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;on<br>
			<input type="radio" name="1" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;across<br>
			</p>
			
		<hr>	
                       
                   
 	<h4 class="questions">2. In the vacation, all the kids _____  our neighbourhood play cricket on the street. Some play basketball _______  a court marked by chalk. Others play ping-pong ______a neighbour's garage.</h4 >
			
		<p>
			<input type="radio" name="2" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;at, out, in<br>
			<input type="radio" name="2" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;in, on, in<br>
			<input type="radio" name="2" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;at, on , in<br>
			<input type="radio" name="2" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;in, on, at<br>
			<input type="radio" name="2" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;None of these<br>
			</p>
			
		<hr>	
 		
 		
 	<h4 class="questions">3. _____ having her lunch, she stood ______ the tree and waited _______ him.</h4 >
			
		<p>
			<input type="radio" name="3" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;With, below, for<br>
			<input type="radio" name="3" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Done, under, for<br>
			<input type="radio" name="3" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Inside, further, to<br>
			<input type="radio" name="3" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;About, across, into<br>
			<input type="radio" name="3" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;After, under, for<br>
			</p>
			
		<hr>	
 		
 		<h4 class="headings">Directions for Questions 4-6: Choose the word nearest in meaning to the word in ITALICS from the given options.</h2 >
 		<br>
 				
<h4 class="questions">4. Reading of poetry is not <i>congenial</i> to his taste.</h4 >
			
		<p>
			<input type="radio" name="4" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Helpful<br>
			<input type="radio" name="4" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Preferable<br>
			<input type="radio" name="4" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Beneficial<br>
			<input type="radio" name="4" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;suited<br>
			<input type="radio" name="4" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;similar<br>
			</p>
			
		<hr>	
 		
 		<h4 class="questions">5. Mihir <i>vehemently</i> denied all the charges of corruption that were levelled against him.</h4 >
			
		<p>
			<input type="radio" name="5" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Devoutly<br>
			<input type="radio" name="5" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Hysterically<br>
			<input type="radio" name="5" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Serenely<br>
			<input type="radio" name="5" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;arrogantly<br>
			<input type="radio" name="5" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;forcefully<br>
			</p>
			
		<hr>	
 		
 <h4 class="questions">6. Because of a family <i>feud</i>, he never spoke to his wife's parents.</h4 >
			
		<p>
			<input type="radio" name="6" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Crisis<br>
			<input type="radio" name="6" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Trouble<br>
			<input type="radio" name="6" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Problem<br>
			<input type="radio" name="6" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Quarrel<br>
			<input type="radio" name="6" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Argument<br>
			</p>
			
		<hr>	
 
        <h4 class="headings">Directions for Questions 7-10: Choose the answer option which will correctly fill the blank.</h4 ><br>
        
   <h4 class="questions">7. Albert Einstein was _____ famous scientist. Einstein won _______ Nobel Prize in Physics in 1921. Einstein left his country and lived in _______ States until he died in 1955.</h4 >
			
		<p>
			<input type="radio" name="7" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;a, the, an<br>
			<input type="radio" name="7" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;a, the, the<br>
			<input type="radio" name="7" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;a, an, the<br>
			<input type="radio" name="7" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;an, an, the<br>
			<input type="radio" name="7" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;a, a, the <br>
			</p>
			
		<hr>	

<h4 class="questions">8. That country is ______ open economy and _____ strong proponent of free trade globally.</h4 >
			
		<p>
			<input type="radio" name="8" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;an, a<br>
			<input type="radio" name="8" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;the, the<br>
			<input type="radio" name="8" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;an, the<br>
			<input type="radio" name="8" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;a, the<br>
			<input type="radio" name="8" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;in, the <br>
			</p>
			
		<hr>	
             
				
	<h4 class="questions">9. It is the grasping of power-combined ______ the thirst______ fame, which constitutes ambition.</h4 >
			
		<p>
			<input type="radio" name="9" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;No article required<br>
			<input type="radio" name="9" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;of, the<br>
			<input type="radio" name="9" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;of, with<br>
			<input type="radio" name="9" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;and, the<br>
			<input type="radio" name="9" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;with, for<br>
			</p>
			
		<hr>				
			

 <h4 class="questions">10. The officer received _____ official letter from _____ Ministry of IT in _____ Central Government.</h4 >
			
		<p>
			<input type="radio" name="10" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;A, the, an<br>
			<input type="radio" name="10" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;A, an, the<br>
			<input type="radio" name="10" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;An, the, the<br>
			<input type="radio" name="10" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;An, an, the <br>
			<input type="radio" name="10" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;No articles required<br>
			</p>
			
		<hr>	


<h4 class="headings">Directions for Questions 11-16: Read the passage and answer the questions that follow on the basis of the information provided in the passage.</h4 >
<br>
<textarea rows="12" cols="180" class="noselect" readonly="readonly" unselectable="on">
The pioneers of the teaching of science imagined that its introduction into education would remove the conventionality, artificiality, and backward-look which were characteristic of classical studies, but they were gravely disappointed. So, too, in their time had the humanists thought that the study of the classical authors in the original would banish at once the dull pedantry and superstition of mediaeval scholasticism. The professional schoolmaster was a match for both of them, and has almost managed to make the understanding of chemical reactions as dull and as dogmatic an affair as the reading of Virgil's Aeneid. The chief claim for the use of science in education is that it teaches a child something about the actual universe in which he is living, in making him acquainted with the results of scientific discovery, and at the same time teaches him how to think logically and inductively by studying scientific method. A certain limited success has been reached in the first of these aims, but practically none at all in the second. Those privileged members of the community who have been through a secondary or public school education may be expected to know something about the elementary physics and chemistry of a hundred years ago, but they probably know hardly more than any bright boy can pick up from an interest in wireless or scientific hobbies out of school hours. As to the learning of scientific method, the whole thing is palpably a farce. Actually, for the convenience of teachers and the requirements of the examination system, it is necessary that the pupils not only do not learn scientific method but learn precisely  the reverse, that is, to believe exactly what they are told and to reproduce it when asked, whether it seems nonsense to them or not. The way in which educated people respond to such quackeries as spiritualism or astrology, not to say more dangerous ones such as racial theories or currency myths, shows that fifty years of education in the method of science in Britain or Germany has produced no visible effect whatever. The only way of learning the method of science is the long and bitter way of personal experience, and, until the educational or social systems are altered to make this possible, the best we can expect is the production of a  minority of people who are able to acquire some of the techniques of science and a still smaller minority who are able to use and  develop them.
</textarea><br>

 <h4 class="questions">11. The author implies that the 'professional schoolmaster' has</h4 >
			
		<p>
			<input type="radio" name="11" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;no interest in teaching science<br>
			<input type="radio" name="11" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;thwarted attempts to enliven education<br>
			<input type="radio" name="11" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;aided true learning<br>
			<input type="radio" name="11" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;supported the humanists<br>
			<input type="radio" name="11" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;been a pioneer in both science and humanities.<br>
			</p>
			
		<hr>	
	
				
	<h4 class="questions">12. The author's attitude to secondary and public school education in the sciences is</h4 >
			
		<p>
			<input type="radio" name="12" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;ambivalent<br>
			<input type="radio" name="12" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;neutral<br>
			<input type="radio" name="12" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;supportive<br>
			<input type="radio" name="12" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;satirical<br>
			<input type="radio" name="12" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;contemptuous<br>
			</p>
			
		<hr>	



<h4 class="questions">13. The word 'palpably' most nearly means</h4 >
			
		<p>
			<input type="radio" name="13" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;ridiculously<br>
			<input type="radio" name="13" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;obviously<br>
			<input type="radio" name="13" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;markedly<br>
			<input type="radio" name="13" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;tentatively<br>
			<input type="radio" name="13" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;empirically<br>
			</p>
			
		<hr>	

<h4 class="questions">14. The author blames all of the following for the failure to impart scientific method through the education system except</h4 >
			
		<p>
			<input type="radio" name="14" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;poor teaching<br>
			<input type="radio" name="14" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;examination methods<br>
			<input type="radio" name="14" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;lack of direct experience<br>
			<input type="radio" name="14" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;the social and education systems<br>
			<input type="radio" name="14" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;lack of interest on the part of students<br>
			</p>
			
		<hr>	
				
<h4 class="questions">15. If the author were to study current education in science to see how things have changed since he wrote the piece, he would probably be most interested in the answer to which of the following questions?</h4 >
			
		<p>
			<input type="radio" name="15" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Do students know more about the world about them?<br>
			<input type="radio" name="15" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Do students spend more time in laboratories?<br>
			<input type="radio" name="15" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Can students apply their knowledge logically?<br>
			<input type="radio" name="15" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Have textbooks improved?<br>
			<input type="radio" name="15" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Do they respect their teachers?<br>
			</p>
			
		<hr>			
	
<h4 class="headings">Directions for Questions 16-18: Which of phrases given below each sentence should replace the underlined phrase to make the grammatically correct? If the sentence is correct as it is, mark 'E' as the answer.</h4 >
<br>			
		

<h4 class="questions">16. They <u>were all shocked at</u> his failure in the tournament.</h4 >
			
		<p>
			<input type="radio" name="16" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;were shocked at all<br>
			<input type="radio" name="16" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;had all shocked at<br>
			<input type="radio" name="16" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;had all shocked by<br>
			<input type="radio" name="16" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;had been all shocked on<br>
			<input type="radio" name="16" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;No correction required<br>
			</p>
			
		<hr>

<h4 class="questions">17. <u>If they cooperate together by dividing up their work</u>, they shall be over with the work faster.</h4 >
			
		<p>
			<input type="radio" name="17" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;if they cooperate together by dividing the work<br>
			<input type="radio" name="17" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;if they cooperate by dividing up the work<br>
			<input type="radio" name="17" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;if they cooperate by dividing the work<br>
			<input type="radio" name="17" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;if they cooperate together by division of work<br>
			<input type="radio" name="17" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;No correction required<br>
			</p>
			
		<hr>	

	
<h4 class="questions">18. Armed with talents of a high intellect,<u>an actor with extra ordinary gifts and an ingenious criminal</u>, Mr. XYZ played an overbearing role in the sensationalisation of crime during the later years.</h4 >
			
		<p>
			<input type="radio" name="18" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;an actor with unbelievable intellect and an ingenious criminal<br>
			<input type="radio" name="18" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;an ingenious actor and an extra ordinary gifted criminal<br>
			<input type="radio" name="18" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;a gifted actor and an ingenious criminal<br>
			<input type="radio" name="18" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;an extra ordinary gifted actor and an ingenious criminal<br>
			<input type="radio" name="18" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;No Correction required<br>
			</p>
			
		<hr>	

<h4 class="headings">Directions for Questions 19-20: Choose the option which contains a pair of words related to each other in the same way as the pair given in capital letters.</h4 >
<br>

<h4 class="questions">19. OVATION : APPLAUSE ::</h4 >
			
		<p>
			<input type="radio" name="19" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Grief : Loss<br>
			<input type="radio" name="19" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Rout : Defeat<br>
			<input type="radio" name="19" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Triumph : Failure<br>
			<input type="radio" name="19" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Pathway : Ruin<br>
			<input type="radio" name="19" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Physique : Sturdy<br>
			</p>
			
		<hr>	

<h4 class="questions">20. PAINT : BRUSH ::</h4 >
			
		<p>
			<input type="radio" name="20" value="A">&nbsp;&nbsp;A.&nbsp;&nbsp;Floor : Polish<br>
			<input type="radio" name="20" value="B">&nbsp;&nbsp;B.&nbsp;&nbsp;Conflagration : Match<br>
			<input type="radio" name="20" value="C">&nbsp;&nbsp;C.&nbsp;&nbsp;Cement : Travel<br>
			<input type="radio" name="20" value="D">&nbsp;&nbsp;D.&nbsp;&nbsp;Wallpaper : Ladder<br>
			<input type="radio" name="20" value="E">&nbsp;&nbsp;E.&nbsp;&nbsp;Pen : Refil<br>
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




