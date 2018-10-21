<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="adminresources/images/favicon.ico">

    <title>Apro Admin - Dashboard</title>
    
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="adminresources/css/bootstrap.css">
	
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="adminresources/css/bootstrap-extend.css">
	
	<!-- font awesome -->
	<link rel="stylesheet" href="adminresources/css/font-awesome.css">
	
	<!-- ionicons -->
	<link rel="stylesheet" href="adminresources/css/ionicons.css">
	
	<!-- theme style -->
	<link rel="stylesheet" href="adminresources/css/master_style.css">
	
	<!-- apro_admin skins. choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="adminresources/css/_all-skins.css">
	
	<!-- weather weather -->
	<link rel="stylesheet" href="adminresources/css/weather-icons.css">
	
	<!-- jvectormap -->
	<link rel="stylesheet" href="adminresources/css/jquery-jvectormap.css">
	
	<!-- date picker -->
	<link rel="stylesheet" href="adminresources/css/bootstrap-datepicker.css">
	
	<!-- daterange picker -->
	<link rel="stylesheet" href="adminresources/css/daterangepicker.css">
	
	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet" href="adminresources/css/bootstrap3-wysihtml5.css">
	

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

     
  </head>

<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.jsp" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="adminresources/images/apro.png" alt=""></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Apro</b>Admin</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
       <jsp:include page="header.jsp"></jsp:include>
    </header>
  <!-- Left side column. contains the logo and sidebar -->
  <jsp:include page="menu.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="ion ion-stats-bars"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">90<small>%</small></span>
              <span class="info-box-text">Store Traffic</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="ion ion-thumbsup"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">41,410</span>
              <span class="info-box-text">User Likes</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box">
            <span class="info-box-icon bg-purple"><i class="ion ion-bag"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">760</span>
              <span class="info-box-text">Monthly Sales</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-xl-3 col-md-6 col-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-person-stalker"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">2,000</span>
              <span class="info-box-text">Join Members</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
		
	  <div class="row">
		  <div class="col-xl-8 connectedSortable">
		  <!-- LINE CHART -->
		  <div class="box box-info">
			<div class="box-header with-border">
			  <h3 class="box-title">Products Yearly Sales</h3>

			  <div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
			  </div>
			</div>
			<div class="box-body">
			  <div class="chart">
				<canvas id="lineChart" style="height:327px"></canvas>
			  </div>
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->
		</div>
		<!-- /.col -->        
		<div class="col-xl-4">	
		  <!-- PRODUCT LIST -->
			  <div class="box box-primary">
				<div class="box-header with-border">
				  <h3 class="box-title">Recently Products</h3>

				  <div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
				  </div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
				  <ul class="products-list product-list-in-box">
					<li class="item">
					  <div class="product-img">
						<img src="adminresources/images/default-50x50.gif" alt="Product Image">
					  </div>
					  <div class="product-info">
						<a href="javascript:void(0)" class="product-title">iphone 7plus
						  <span class="label label-warning pull-right">$300</span></a>
						<span class="product-description">
							  12MP Wide-angle and telephoto cameras.
							</span>
					  </div>
					</li>
					<!-- /.item -->
					<li class="item">
					  <div class="product-img">
						<img src="adminresources/images/default-50x50.gif" alt="Product Image">
					  </div>
					  <div class="product-info">
						<a href="javascript:void(0)" class="product-title">Apple Tv
						  <span class="label label-info pull-right">$400</span></a>
						<span class="product-description">
							  Library | For You | Browse | Radio
							</span>
					  </div>
					</li>
					<!-- /.item -->
					<li class="item">
					  <div class="product-img">
						<img src="adminresources/images/default-50x50.gif" alt="Product Image">
					  </div>
					  <div class="product-info">
						<a href="javascript:void(0)" class="product-title">MacBook Air<span
							class="label label-danger pull-right">$450</span></a>
						<span class="product-description">
							  Make big things happen. All day long.
							</span>
					  </div>
					</li>
					<!-- /.item -->
					<li class="item">
					  <div class="product-img">
						<img src="adminresources/images/default-50x50.gif" alt="Product Image">
					  </div>
					  <div class="product-info">
						<a href="javascript:void(0)" class="product-title">iPad Pro
						  <span class="label label-success pull-right">$289</span></a>
						<span class="product-description">
							  Anything you can do, you can do better.
							</span>
					  </div>
					</li>
					<!-- /.item -->
				  </ul>
				</div>
				<!-- /.box-body -->
				<div class="box-footer text-center">
				  <a href="javascript:void(0)" class="uppercase">View All Products</a>
				</div>
				<!-- /.box-footer -->
			  </div>           
		 </div>		
	  </div>	
		<!-- /.row -->
		
      <div class="row">
		  
		 <div class="col-xl-4">
          <!-- DIRECT CHAT DANGER -->
          <div class="box box-primary direct-chat direct-chat-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Direct Chat</h3>

              <div class="box-tools pull-right">
				<span data-toggle="tooltip" title="1 New Messages" class="badge bg-danger">1</span>
				<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
				  <i class="fa fa-comments"></i></button>
				<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
				</button>
			  </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- Conversations are loaded here -->
              <div class="direct-chat-messages inner-content-div" id="direct-chat">
                <!-- Message. Default to the left -->
                <div class="direct-chat-msg">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-left">James Anderson</span>
					<span class="direct-chat-timestamp pull-right">April 14, 2017 18:00 </span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user1-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is simply dummy text industry.
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->

                <!-- Message to the right -->
                <div class="direct-chat-msg right">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-right">Michael Jorden</span>
					<span class="direct-chat-timestamp pull-left">April 14, 2017 18:00</span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user3-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is...
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->
                
                <!-- Message. Default to the left -->
                <div class="direct-chat-msg">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-left">James Anderson</span>
					<span class="direct-chat-timestamp pull-right">April 14, 2017 18:00 </span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user1-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is simply dummy text industry.
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->

                <!-- Message to the right -->
                <div class="direct-chat-msg right">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-right">Michael Jorden</span>
					<span class="direct-chat-timestamp pull-left">April 14, 2017 18:00</span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user3-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is...
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->
                
                <!-- Message. Default to the left -->
                <div class="direct-chat-msg">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-left">James Anderson</span>
					<span class="direct-chat-timestamp pull-right">April 14, 2017 18:00 </span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user1-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is simply dummy text industry.
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->

                <!-- Message to the right -->
                <div class="direct-chat-msg right">
				  <div class="direct-chat-info clearfix">
					<span class="direct-chat-name pull-right">Michael Jorden</span>
					<span class="direct-chat-timestamp pull-left">April 14, 2017 18:00</span>
				  </div>
				  <!-- /.direct-chat-info -->
				  <img class="direct-chat-img" src="adminresources/images/user3-128x128.jpg" alt="message user image">
				  <!-- /.direct-chat-img -->
				  <div class="direct-chat-text">
					Lorem Ipsum is...
				  </div>
				  <!-- /.direct-chat-text -->
				</div>
                <!-- /.direct-chat-msg -->
                
              </div>
              <!--/.direct-chat-messages-->

              <!-- Contacts are loaded here -->
              <div class="direct-chat-contacts">
                <ul class="contacts-list">
                  <li>
					<a href="#">
					  <img class="contacts-list-img" src="adminresources/images/user1-128x128.jpg" alt="User Image">

					  <div class="contacts-list-info">
							<span class="contacts-list-name">
							  Pavan kumar
							  <small class="contacts-list-date pull-right">April 14, 2017</small>
							</span>
						<span class="contacts-list-email">info@.multipurpose.com</span>
					  </div>
					  <!-- /.contacts-list-info -->
					</a>
				  </li>
				  <!-- End Contact Item -->
				  <li>
					<a href="#">
					  <img class="contacts-list-img" src="adminresources/images/user7-128x128.jpg" alt="User Image">

					  <div class="contacts-list-info">
							<span class="contacts-list-name">
							  Sonu Sud
							  <small class="contacts-list-date pull-right">March 14, 2017</small>
							</span>
						<span class="contacts-list-email">sonu@gmail.com</span>
					  </div>
					  <!-- /.contacts-list-info -->
					</a>
				  </li>
                  <!-- End Contact Item -->
                </ul>
                <!-- /.contatcts-list -->
              </div>
              <!-- /.direct-chat-pane -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <form action="#" method="post">
                <div class="input-group">
                  <input type="text" name="message" placeholder="Type Message ..." class="form-control">
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-danger">Send</button>
                      </span>
                </div>
              </form>
            </div>
            <!-- /.box-footer-->
          </div>
          <!--/.direct-chat -->
        </div>
        <!-- /.col -->        
        <div class="col-xl-8 connectedSortable">
          <!-- MAP & BOX PANE -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Our Visitors</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="row">
                <div class="col-lg-9 col-md-8">
                  <div class="pad">
                    <!-- Map will be created here -->
                    <div id="visitfromworld" style="height: 300px;"></div>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-lg-3 col-md-4">
                  <div class="row pad box-pane-right bg-blue m-0">
                    <div class="col-4 col-sm-12 description-block margin-bottom p-0">
                      <div class="sparkbar pad" data-color="#fff">80,60,95,70,75,80,50</div>
                      <h5 class="description-header">7458</h5>
                      <span class="description-text">Visits</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="col-4 col-sm-12 description-block margin-bottom p-0">
                      <div class="sparkbar pad" data-color="#fff">70,40,85,70,61,93,63</div>
                      <h5 class="description-header">56%</h5>
                      <span class="description-text">Referrals</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="col-4 col-sm-12 description-block p-0">
                      <div class="sparkbar pad" data-color="#fff">80,55,91,70,81,43,67</div>
                      <h5 class="description-header">85%</h5>
                      <span class="description-text">Organic</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->          
        </div>		  
      </div>        
      <!-- /.row -->
      
      <div class="row">
      	<div class="col-xl-6 connectedSortable">
      		<!-- quick email widget -->
          <div class="box box-info">
            <div class="box-header">
              <i class="fa fa-envelope"></i>

              <h3 class="box-title">Quick Email</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-danger btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <div class="box-body">
              <form action="#" method="post">
                <div class="form-group">
                  <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" placeholder="Subject">
                </div>
                <div>
                  <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
              </form>
            </div>
            <div class="box-footer clearfix">
              <button type="button" class="pull-right btn btn-blue" id="sendEmail"> Send <i class="fa fa-paper-plane-o"></i></button>
            </div>
          </div>
      	</div>
      	
      	<div class="col-xl-6 connectedSortable">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">User Statistics</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height:227px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
            
            <div class="box-footer">
              <div class="row">
                <div class="col-6 col-sm-3">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                    <h5 class="description-header">$12,000</h5>
                    <span class="description-text">DAILY SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-6 col-sm-3">
                  <div class="description-block border-right">
                    <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 30%</span>
                    <h5 class="description-header">$5,000</h5>
                    <span class="description-text">WEEKLY SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-6 col-sm-3">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 60%</span>
                    <h5 class="description-header">$10,000</h5>
                    <span class="description-text">MONTHLY SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
				<div class="col-6 col-sm-3">
                  <div class="description-block">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 70%</span>
                    <h5 class="description-header">$90,000</h5>
                    <span class="description-text">YEARLY SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
      	
      </div>
      
	</section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <jsp:include page="footer.jsp"></jsp:include>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-light">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="nav-item"><a href="#control-sidebar-home-tab" data-toggle="tab">Home</a></li>
      <li class="nav-item"><a href="#control-sidebar-settings-tab" data-toggle="tab">Settings</a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Admin Birthday</h4>

                <p>Will be July 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Jhone Updated His Profile</h4>

                <p>New Email : jhone_doe@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Disha Joined Mailing List</h4>

                <p>disha@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Code Change</h4>

                <p>Execution time 15 Days</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Web Design
                <span class="label label-danger pull-right">40%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 40%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Data
                <span class="label label-success pull-right">75%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 75%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Order Process
                <span class="label label-warning pull-right">89%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 89%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Development 
                <span class="label label-primary pull-right">72%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 72%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="report_panel" class="chk-col-grey" >
			<label for="report_panel" class="control-sidebar-subheading ">Report panel usage</label>

            <p>
              general settings information
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="allow_mail" class="chk-col-grey" >
			<label for="allow_mail" class="control-sidebar-subheading ">Mail redirect</label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="expose_author" class="chk-col-grey" >
			<label for="expose_author" class="control-sidebar-subheading ">Expose author name</label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="show_me_online" class="chk-col-grey" >
			<label for="show_me_online" class="control-sidebar-subheading ">Show me as online</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="off_notifications" class="chk-col-grey" >
			<label for="off_notifications" class="control-sidebar-subheading ">Turn off notifications</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">              
              <a href="javascript:void(0)" class="text-red margin-r-5"><i class="fa fa-trash-o"></i></a>
              Delete chat history
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
</div>
<!-- ./wrapper -->
  	
	 
	  
	<!-- jQuery 3 -->
	<script src="adminresources/js/jquery.js"></script>
	
	<!-- jQuery UI 1.11.4 -->
	<script src="adminresources/js/jquery-ui.js"></script>
	
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
	  $.widget.bridge('uibutton', $.ui.button);
	</script>
	
	<!-- popper -->
	<script src="adminresources/js/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="adminresources/js/bootstrap.js"></script>	
	
	<!-- ChartJS -->
	<script src="adminresources/js/chart.js"></script>
	
	<!-- Sparkline -->
	<script src="adminresources/js/jquery.sparkline.js"></script>
	
	<!-- jvectormap -->
	<script src="adminresources/js/jquery-jvectormap-1.2.2.min.js"></script>	
	<script src="adminresources/js/jquery-jvectormap-world-mill-en.js"></script>
	
	<!-- jQuery Knob Chart -->
	<script src="adminresources/js/jquery.knob.js"></script>
	
	<!-- daterangepicker -->
	<script src="adminresources/js/moment.min.js"></script>
	<script src="adminresources/js/daterangepicker.js"></script>
	
	<!-- datepicker -->
	<script src="adminresources/js/bootstrap-datepicker.js"></script>
	
	<!-- Bootstrap WYSIHTML5 -->
	<script src="adminresources/js/bootstrap3-wysihtml5.all.js"></script>
	
	<!-- Slimscroll -->
	<script src="adminresources/js/jquery.slimscroll.js"></script>
	
	<!-- FastClick -->
	<script src="adminresources/js/fastclick.js"></script>
	
	<!-- apro_admin App -->
	<script src="adminresources/js/template.js"></script>
	
	<!-- apro_admin dashboard demo (This is only for demo purposes) -->
	<script src="adminresources/js/dashboard.js"></script>
	
	<!-- apro_admin for demo purposes -->
	<script src="adminresources/js/demo.js"></script>
	
	<!-- weather for demo purposes -->
	<script src="adminresources/js/WeatherIcon.js"></script>
	
	<script type="text/javascript">
	
		WeatherIcon.add('icon1'	, WeatherIcon.SLEET , {stroke:false , shadow:false , animated:true } );
		WeatherIcon.add('icon2'	, WeatherIcon.SNOW , {stroke:false , shadow:false , animated:true } );
		WeatherIcon.add('icon3'	, WeatherIcon.LIGHTRAINTHUNDER , {stroke:false , shadow:false , animated:true } );

	</script>

	
</body>
</html>
