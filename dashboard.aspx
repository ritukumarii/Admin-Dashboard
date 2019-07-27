<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<!DOCTYPE html>


<html>
<head>
<title>Admin Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='http://localhost:32453/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="#" class="logo">
        ADMIN
        </a>

    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
       <%-- <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>--%>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/4.png">
                <span class="username"><asp:Label ID="lbluser" runat="server"></asp:Label></span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="/admin/profile.aspx"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="../logout.aspx"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                <a href="facultyreg.aspx">
                        <i class="fa fa-users"></i>
                        <span>Faculty Enrollment</span>
                    </a>
                    <%--<ul class="sub">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
                        <li><a href="grids.html">Grids</a></li>
                    </ul>--%>
                </li>
                <li>
                    <a href="stockentry.aspx">
                        <i class="fa fa-edit"></i>
                        <span>Stock Entry </span>
                    </a>
                </li>
                 <li>
                    <a href="Student-Registered.aspx">
                        <i class="fa fa-user"></i>
                        <span>Student Registered</span>
                    </a>
                </li>
                <li>
                    <a href="facultymis.aspx">
                        <i class="fa fa-user-plus"></i>
                        <span>Faculty Registered </span>
                    </a>
                </li>
                <li>
                    <a href="stats.aspx">
                        <i class="fa fa-navicon"></i>
                        <span>Statistics </span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="#">
                        <i class="fa fa-braille"></i>
                        <span> View FeedBack </span>
                    </a>
                    <ul class="sub">
                        <li><a href="Feedcurmis.aspx">Curriculum Feedback</a></li>
                        <li><a href="Feedprofmis.aspx">Professor Feedback</a></li>
                    </ul>
                </li>
                 <li class="sub-menu">
                    <a href="#">
                        <i class="fa fa-braille"></i>
                        <span> View Contacts </span>
                    </a>
                    <ul class="sub">
                        <li><a href="complaintmis.aspx">Complaints</a></li>
                        <li><a href="contactmis.aspx">Contact</a></li>
                    </ul>
                </li>
               <li>
                    <a href="feesubmis.aspx">
                        <i class="fa fa-book"></i>
                        <span>FeeSubmission Details</span>
                    </a>
                </li>
                <li>
                    <a href="requirementmis.aspx">
                        <i class="fa fa-tasks"></i>
                        <span>Requirements</span>
                    </a>
                </li>
                <li>
                    <a href="stockmis.aspx">
                        <i class="fa fa-suitcase"></i>
                        <span>Stocks </span>
                    </a>
                </li>
                   <%-- <ul class="sub">
                        <li><a href="form_component.html">Form Elements</a></li>
                        <li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="dropzone.html">Dropzone</a></li>
                    </ul>--%>
                <%--</li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-envelope"></i>
                        <span>Mail </span>
                    </a>
                    <ul class="sub">
                        <li><a href="mail.html">Inbox</a></li>
                        <li><a href="mail_compose.html">Compose Mail</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Charts</span>
                    </a>
                    <ul class="sub">
                        <li><a href="chartjs.html">Chart js</a></li>
                        <li><a href="flot_chart.html">Flot Charts</a></li>
                    </ul>--%>
<%--                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Maps</span>
                    </a>
                    <ul class="sub">
                        <li><a href="google_map.html">Google Map</a></li>
                        <li><a href="vector_map.html">Vector Map</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-glass"></i>
                        <span>Extra</span>
                    </a>
                    <ul class="sub">
                        <li><a href="gallery.html">Gallery</a></li>--%>
						<%--<li><a href="404.html">404 Error</a></li>
                        <li><a href="registration.html">Registration</a></li>
                    </ul>
                </li>
                <li>
                    <a href="login.html">
                        <i class="fa fa-user"></i>
                        <span>Login Page</span>
                    </a>
                </li>
            </ul>           --%> </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
    
<section id="main-content">
	<section class="wrapper">
		<!-- //market-->
		<div class="market-updates">
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Students Registered in college</h4>
					<h3>
                        <asp:Label ID="nuser" runat="server" Text="Label"></asp:Label></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-users" ></i>
					</div>
					<div class="col-md-8 market-update-left">
					<h4>Faculty registered in college</h4>
                      <h3><asp:Label ID="nfacul" runat="server" Text="Label"></asp:Label></h3>						
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-usd"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<h4>Students Appeared in exam</h4>
						<h3><asp:Label ID="result" runat="server" Text="Label"></asp:Label></h3>	
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-4">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<h4>No of stock items in college</h4>
						<h3><asp:Label ID="stock" runat="server" Text="Label"></asp:Label></h3>	
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>	
		<!-- //market-->
		<%--<div class="row">
			<div class="panel-body">
				<div class="col-md-12 w3ls-graph">
					<!--agileinfo-grap-->
						<div class="agileinfo-grap">
							<div class="agileits-box">
								<header class="agileits-box-header clearfix">
									<h3>Visitor Statistics</h3>
										<div class="toolbar">
											
											
										</div>
								</header>
								<div class="agileits-box-body clearfix">
									<div id="hero-area"></div>
								</div>
							</div>
						</div>
	<!--//agileinfo-grap-->

				</div>
			</div>
		</div>--%>
		<div class="agil-info-calendar">
		<!-- calendar -->
		<div class="col-md-6 agile-calendar">
			<div class="calendar-widget">
                <div class="panel-heading ui-sortable-handle">
					<span class="panel-icon">
                      <i class="fa fa-calendar-o"></i>
                    </span>
                    <span class="panel-title"> Calendar Widget</span>
                </div>
				<!-- grids -->
					<div class="agile-calendar-grid">
						<div class="page">
							
							<div class="w3l-calendar-left">
								<div class="calendar-heading">
									
								</div>
								<div class="monthly" id="mycalendar"></div>
							</div>
							
							<div class="clearfix"> </div>
						</div>
					</div>
			</div>
		</div>
		<!-- //calendar -->
		<div class="col-md-6 stats-info widget">
						<div class="stats-info-agileits">
							<div class="stats-title">
								<h4 class="title">Browser Stats</h4>
							</div>
							<div class="stats-body">
								<ul class="list-unstyled">
									<li>GoogleChrome <span class="pull-right">85%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar green" style="width:85%;"></div> 
										</div>
									</li>
									<li>Firefox <span class="pull-right">35%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar yellow" style="width:35%;"></div>
										</div>
									</li>
									<li>Internet Explorer <span class="pull-right">78%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar red" style="width:78%;"></div>
										</div>
									</li>
									<li>Safari <span class="pull-right">50%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar blue" style="width:50%;"></div>
										</div>
									</li>
									<li>Opera <span class="pull-right">80%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar light-blue" style="width:80%;"></div>
										</div>
									</li>
									<li class="last">Others <span class="pull-right">60%</span>  
										<div class="progress progress-striped active progress-right">
											<div class="bar orange" style="width:60%;"></div>
										</div>
									</li> 
								</ul>
							</div>
						</div>
					</div>
			<div class="clearfix"> </div>
		</div>
</section>
    </section>
 <!-- footer -->
		  <div class="footer" style="position:fixed;bottom:0px;width:100%;z-index:-1;">
			<div class="wthree-copyright">
			  <p> All rights reserved | Design by St. Xaviers College</p>
			</div>
		  </div>
  <!-- / footer -->

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
    $(document).ready(function () {
        //BOX BUTTON SHOW AND CLOSE
        jQuery('.small-graph-box').hover(function () {
            jQuery(this).find('.box-button').fadeIn('fast');
        }, function () {
            jQuery(this).find('.box-button').fadeOut('fast');
        });
        jQuery('.small-graph-box .box-close').click(function () {
            jQuery(this).closest('.small-graph-box').fadeOut(200);
            return false;
        });

        //CHARTS
        function gd(year, day, month) {
            return new Date(year, month - 1, day).getTime();
        }

        graphArea2 = Morris.Area({
            element: 'hero-area',
            padding: 10,
            behaveLikeLine: true,
            gridEnabled: false,
            gridLineColor: '#dddddd',
            axes: true,
            resize: true,
            smooth: true,
            pointSize: 0,
            lineWidth: 0,
            fillOpacity: 0.85,
            data: [
				{ period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649 },
				{ period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051 },
				{ period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910 },
				{ period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695 },
				{ period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300 },
				{ period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891 },
				{ period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598 },
				{ period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185 },
				{ period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038 },

            ],
            lineColors: ['#eb6f6f', '#926383', '#eb6f6f'],
            xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
            pointSize: 2,
            hideHover: 'auto',
            resize: true
        });


    });
	</script>
<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	<script type="text/javascript">
	    $(window).load(function () {

	        $('#mycalendar').monthly({
	            mode: 'event',

	        });

	        $('#mycalendar2').monthly({
	            mode: 'picker',
	            target: '#mytarget',
	            setWidth: '250px',
	            startHidden: true,
	            showTrigger: '#mytarget',
	            stylePast: true,
	            disablePast: true
	        });

	        switch (window.location.protocol) {
	            case 'http:':
	            case 'https:':
	                // running on a server, should be good.
	                break;
	            case 'file:':
	                alert('Just a heads-up, events will not work when run locally.');
	        }

	    });
	</script>
	<!-- //calendar -->
</body>
</html>
