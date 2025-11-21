<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Blockchain Based Personal Identity Security System</title>
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

               <%  String name1=session.getAttribute("name").toString();%>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/cld1.jpg);">
			<h1 id="colorlib-logo" class="mb-4"><a href="index.html">  <h2 style="font-family: cambria; color: white; padding-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=name1%></h2>
</a></h1>
			 <nav id="colorlib-main-menu" style="text-align: center" role="navigation">
                            <ul style="margin-top: 20px; text-align: left; display: inline-block">		
                             <li class="colorlib"><span style="color: white" class="fa fa-home mr-3"></span><a href="Owner_Home.jsp">Home</a></li>
                                 <li><span style="color: white" class="fa fa-user   "></span><a href="Profile.jsp">   View Profile</a></li>
			    <li><span style="color: white" class="fa fa-cloud-upload mr-3"></span><a href="uploadrequest.jsp">Upload File</a></li>
                            <li><span style="color: white" class="fa fa-tasks mr-3"></span><a href="Manage.jsp">Manage File & Scan QR Code</a></li>
                                                                                       
        
                                                            <li><span style="color: white" class="fa fa-eye mr-3"></span><a href="Search.jsp">View File & Make Request</a></li>
				<li><span style="color: white" class="fa fa-download mr-3"></span><a href="Downloadstatus.jsp">Download File</a></li>

					<li> <span style="color: white" class="fa fa-sign-out mr-3"></span><a href="index.html">Logout</a></li>
				</ul>
			</nav>


			<div class="colorlib-footer">
				<div class="mb-4">
					
					
             
            </div>
         
				</div>
				</div>
		</aside> <!-- END COLORLIB-ASIDE -->
	div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
  
                <style>
                    tr,td{
                                        font-family: monospace;
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left: 620px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid #0056b3;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        color: brown;
                                        border-color: black;
                                        margin-bottom: 200px;
                                        
                    }
                    th{
                                        color: crimson;
                                        
                    }
                    table{
                                        height: auto;
                                        width: 300px;
                        }
                        	
                        h4{
                            margin-left: 690px;
                            color: blue;
                        } 	
                        	
                </style>

<div id="colorlib-main">
		<section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
	    	<div class="container px-0">
	    		<div class="row no-gutters">
		                     <div class="text p-4">
                                         <h3 class="mb-2" style="color:brown; margin-left: 120px;" ><a href="single.html"></a><b> Block Chain Based Personal Identity Security System</b></h3>
                            
                                     </div>
                        </div>
                </div>
	    	</div>
	    </section>
<br>
<br>
<br>
<br>
<h4>Profile</h4>
 <%                    
      String name=session.getAttribute("name").toString();
    
      
      
      Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/policy","root","root");
                        PreparedStatement query=con.prepareStatement("select * from oreg Where  name='"+name+"'");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                         <table>
                            <tr>
                         
                           <tr><th>ID</th><td><%=rs.getString("id")%></td></tr>
                            <tr><th>User Name</th><td><%=rs.getString("name")%></td></tr>
                            <tr><th>Password</th><td><%=rs.getString("password")%></td></tr> 
                              <tr><th>E-Mail ID</th><td><%=rs.getString("mail_id")%></td></tr> 
                            <tr><th>DOB</th><td><%=rs.getString("dob")%></td></tr>
                            <tr><th>Mobile</th><td><%=rs.getString("cont")%></td></tr>
                          
                       <tr><th>Address</th><td><%=rs.getString("address")%></td></tr>
                            
                     <%}%></table> </form>  
                    <br><br><br><br></div></div></div>
                   
 

                        </div>
                </div>
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