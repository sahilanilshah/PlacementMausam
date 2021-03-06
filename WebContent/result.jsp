
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>

<head>

<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Result</title>

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
    font-size:18px;
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


	<script type="text/javascript">
		function clickIE() {
			if (document.all) {
				return false;
			}
		}
		function clickNS(e) {
			if (document.layers || (document.getElementById && !document.all)) {
				if (e.which == 2 || e.which == 3) {
					return false;
				}
			}
		}
		if (document.layers) {
			document.captureEvents(Event.MOUSEDOWN);
			document.onmousedown = clickNS;
		} else {
			document.onmouseup = clickNS;
			document.oncontextmenu = clickIE;
		}

		document.oncontextmenu = new Function("return false")
		// --> 

		function disableselect(e) {
			return false
		}
		function reEnable() {
			return true
		}
		document.onselectstart = new Function("return false")
		if (window.sidebar) {
			document.onmousedown = disableselect
			document.onclick = reEnable
		}
	</script>



	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	
     <nav id="mainNav" class="navbar navbar-default navbar-fixed-top" style="border-color:white;top:-20;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
  <a class="navbar-brand page-scroll" href="" onclick="window.top.close();"><img src="img/LOGO.PNG" width="100" height="50" ></a>
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
			
			

		</div>
	</div>
<b style="font-size: 16px;margin-right:10px;">
<%=session.getAttribute("username")%></b>
					
					
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>		
                    							<!-- /.container-fluid -->
    </nav>           




 

 
<section>

	<br>
	<br>
	
<center>
<h1>
You Finished your exam successfully !!!
			
		</h1>
		</center>
		
	
 
 <center>
 <table>

 <tr><td><h4><b>Score in Verbal Section: </b><%=request.getAttribute("verb_score")%></h4> </td>
 <td style="width:100px"></td>
 <td><h4><b>Score in Logical Section: </b><%=request.getAttribute("logic_score")%></h4></td>
 </tr>


 <tr><td><h4><b>Score in Quantitatve Section: </b>	<%=request.getAttribute("quants_score")%>
</h4> </td>
 <td style="width:100px"></td>
 <td><h4><b>Total Score : </b><%=request.getAttribute("total_score")%>
</h4></td>
 </tr>

	</table>
	</center>
  <br>
   <br>
   <center>
   <form name="form1" action="<%=request.getContextPath()%>/Controller" method="post">
     
<input type="hidden" name="action" value="feedback">

<input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
			  
 <input type="hidden" name="testname" value="<%=session.getAttribute("testpaper")%>">
	 
     <!-- <button onclick="window.top.close();" class="button">DONE</button> -->
	<h4> <b>
Suggestions and Comments(if any):</h4></b>
<textarea rows="5" cols="70" name="comments" required>
</textarea><br>	 <br>
<button class="btn mybtn-primary btn-xl page-scroll"  type="submit">
				  Submit Feedback </button>

 </form>
 <br>
 <button class="btn mybtn-primary btn-xl page-scroll"  onclick="window.top.close();">
				 Back To Home </button>
	 	   </center>       
                      </section>
                  </div>
              </div>
</section>
</body>
<script>
	//knob
	$(function() {
		$(".knob").knob({
			'draw' : function() {
				$(this.i).val(this.cv + '%')
			}
		})
	});

	//carousel
	$(document).ready(function() {
		$("#owl-slider").owlCarousel({
			navigation : true,
			slideSpeed : 300,
			paginationSpeed : 400,
			singleItem : true

		});
	});

	//custom select box

	$(function() {
		$('select.styled').customSelect();
	});

	/* ---------- Map ---------- */
	$(function() {
		$('#map').vectorMap({
			map : 'world_mill_en',
			series : {
				regions : [ {
					values : gdpData,
					scale : [ '#000', '#000' ],
					normalizeFunction : 'polynomial'
				} ]
			},
			backgroundColor : '#eef3f7',
			onLabelShow : function(e, el, code) {
				el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
			}
		});
	});
</script>






</html>





























