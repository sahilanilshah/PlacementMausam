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

    <title>Aptitude</title>

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


 
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/aptitudedb" user="rootadmin" password="sahilshah@9"
		scope="application" />
 <%
if(session.getAttribute("username") == null){
	response.sendRedirect("index.jsp");
}
%> 

<section>
  <!--for demo wrap-->
 <center>
 <br>
  <h1>Placement Mock Tests</h1>
  <hr style="border-color:#F05F40;
	border-width:3px;
	max-width:50px"></hr>
  
  </center>
  
  <sql:query dataSource="${ds}" var="result">
SELECT * from mocks where username='<c:out value="${username }"></c:out>' ;
</sql:query> 
  
  <input type="hidden" id="refreshed" value="no"/>
  
  
<script>

onload = function () {
    var e = document.getElementById("refreshed");
    if (e.value == "no") e.value = "yes";
    else { e.value = "no"; location.reload(); }
}


</script>
   <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                         
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                  <th style="color:#F05F40;">Sr. No</th>
			<th style="color:#F05F40;">Test Name</th>
			<th style="color:#F05F40;">Duration</th>
			<th style="color:#F05F40;">Marking Scheme</th>
			<th style="color:#F05F40;">Sections</th>
			
			<th style="color:#F05F40;">Action</th>
		  <th style="color:#F05F40;">Ranking</th>
                              </tr>
                              <c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.srno}" /></td>
				<td><c:out value="${row.testname}" /></td>
				<td><c:out value="${row.duration}" /></td>
				<td><c:out value="${row.marking_scheme}" /></td>
				<td><c:out value="${row.sections}" /></td>
				
				<c:choose>

<c:when test='${row.status == "COMING SOON" }'>
	<td><a  class="btn mybtn-primary btn-xl page-scroll" href="">COMING SOON</a></td>
				
		</c:when>
<c:otherwise>		
				
				<td><a  class="btn mybtn-primary btn-xl page-scroll" href="<%=request.getContextPath() %>/Controller?action=test&id=<c:out value="${row.srno}"/>&status=<c:out value="${row.status}"/>&username=<c:out value="${username }"/>"><c:out value="${row.status}" /></a></td>
		</c:otherwise>
</c:choose>	
	
	<c:choose>

<c:when test='${row.status == "COMING SOON" }'>
<td><a  class="btn mybtn-primary btn-xl page-scroll" ></a></td>

</c:when>

<c:when test='${row.status == "TAKE TEST" }'>
<td><a  class="btn mybtn-primary btn-xl page-scroll" onClick="alert('Please Attempt Test First !')">CHECK RANK</a></td>
</c:when>


<c:otherwise>
<td><a class="btn mybtn-primary btn-xl page-scroll" href="<%=request.getContextPath() %>/Controller?action=rank&id=<c:out value="${row.srno}"/>&status=<c:out value="${row.status}"/>&username=<c:out value="${username }"/>">Check Rank</a></td>

</c:otherwise>
</c:choose>
			
			
			</tr>
		</c:forEach>
                                   
                           </tbody>
                        </table>
                      </section>
                  </div>
              </div>
        
  
 <!-- <div class="tbl-content">  -->
  
	
  <!-- </div> -->
</section>



</body>
 <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
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

      $(function(){
          $('select.styled').customSelect();
      });
	  
	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});



  </script>






</html>
