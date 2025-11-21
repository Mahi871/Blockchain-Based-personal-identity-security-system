<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Blockchain Based Personal Identity Security System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

              <% 
                  String name1=session.getAttribute("name").toString();%>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/cld1.jpg);">
			<h1 id="colorlib-logo" class="mb-4"><a href="index.html">  <h2 style="font-family: cambria; color: white; padding-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=name1%></h2>
	</a></h1>
			 <nav id="colorlib-main-menu" style="text-align: center" role="navigation">
                             <ul style="margin-top: 20px; text-align: left; display: inline-block">		
                                      <li class="colorlib"><span style="color: white" class="fa fa-home mr-3"></span><a href="Owner_Home.jsp">Home</a></li>
			    <li><span style="color: white" class="fa fa-cloud-upload mr-3"></span><a href="uploadrequest.jsp">Upload File</a></li>
                            <li><span style="color: white" class="fa fa-tasks mr-3"></span><a href="Manage.jsp">Manage File</a></li>
                                                                                       
  
                                                            <li><span style="color: white" class="fa fa-eye mr-3"></span><a href="Search.jsp">View File & Make Request</a></li>
				<li><span style="color: white" class="fa fa-download mr-3"></span><a href="Downloadstatus.jsp">Download File</a></li>

					<li> <span style="color: white" class="fa fa-sign-out mr-3"></span><a href="index.html">Logout</a></li>
			</nav>
        
			<div class="colorlib-footer">
				<div class="mb-4">
					
			
            </div>
          </form>
				</div>
				</div>
		</aside> <!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
		<section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
	    	<div class="container px-0">
	    		<div class="row no-gutters">
		        <div class="text p-4">
                            <h3 class="mb-2" style="color:brown;"><a href="single.html"></a> Block Chain Based Personal Identity Security System</h3>
		        						 <center style="margin-top: 100px">                
              <div class="content-wrapper">
    <div class="container-fluid">
<style>
    h2{
        font-size:25px;
        margin:60px;
/*        margin-left: 250px;*/
  
        text-align: center;
    }
    .bg-image{
        margin-left: 180px;
    }
</style>

 
        <h2>View QR Code</h2>
<%
                            String reg=request.getParameter("reg");
                            String name=request.getParameter("name");
                            String image=request.getParameter("image");
                         
                           %>
                            <form  action="QRAction.jsp">
                                        <input type="hidden" id="text" value="<%=reg%>">
                                        <input type="hidden" id="text" value="<%=name%>">
                                        <input type="hidden" id="text" value="<%=image%>">
                                       
                                        
                                      <img id='barcode' 
            src="https://api.qrserver.com/v1/create-qr-code/?data=reg=<%=reg%> name=<%=name%> image=<%=image%>&amp;size=250x250" 
            alt=""  style=" margin-left:50px;"
            title="HELLO" /><br><br>
                                                 
				</form>
                    </div>                       
 <div class="card mt-3">
  
 </div>  
	  
	<div class="row">
     <div class="col-12 col-lg-8 col-xl-8">
	    
	 </div>

     <div class="col-12 col-lg-4 col-xl-4">
       
     </div>
	</div>
	  

		  <div class="overlay toggle-menu"></div>

		
    </div>
	    </section>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>