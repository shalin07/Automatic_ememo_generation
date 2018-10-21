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
    <link rel="icon" href="../../images/favicon.ico">

    <title>Apro Admin - Dashboard  Form Validation </title>
  
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="adminresources/css/bootstrap.min.css">
	
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="adminresources/css/bootstrap-extend.css">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="adminresources/css/font-awesome.min.css">

	<!-- Ionicons -->
	<link rel="stylesheet" href="adminresources/css/ionicons.min.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="adminresources/css/master_style.css">

	<!-- apro_admin Skins. Choose a skin from the css/skins
	   folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="adminresources/css/_all-skins.css">

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
    <a href="index." class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="adminresources/images/apro.png"  alt=""></span>
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
        Form Validation
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Forms</a></li>
        <li class="breadcrumb-item active">Assign Staff</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
     
     <!-- Basic Forms -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="card-title">Assign Staff</h3>
          <h6 class="card-subtitle">Bootstrap Form Validation check the <a href="http://reactiveraven.github.io/jqBootstrapValidation/">official website </a></h6>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col">
            	<form novalidate>
					
					<div class="form-group">
						<h5>Subject <span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="text" class="form-control" required data-validation-required-message="This field is required"> </div>
					</div>
					
					<div class="form-group">
						<h5>Description <span class="text-danger">*</span></h5>
						<div class="controls">
							<textarea name="textarea" id="complainDescription" class="form-control" required placeholder="Complaint Description"></textarea>
						</div>
					</div>
					
					<div class="text-xs-right">
						<button type="submit" class="btn btn-info">Submit</button>
					</div>
				</form>
            	
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <jsp:include page="footer.jsp"></jsp:include>


  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="adminresources/js/jquery.min.js"></script>
	
	<!-- popper -->
	<script src=".adminresources/js/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="adminresources/js/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="adminresources/js/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="adminresources/js/fastclick.js"></script>
	
	<!-- apro_admin App -->
	<script src="adminresources/js/template.js"></script>
	
	<!-- apro_admin for demo purposes -->
	<script src="adminresources/js/demo.js"></script>
	
	<!-- Form validator JavaScript -->
    <script src="adminresources/js/validation.js"></script>
    <script>
    ! function(window, document, $) {
        "use strict";
        $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(), $(".skin-square input").iCheck({
            checkboxClass: "icheckbox_square-green",
            radioClass: "iradio_square-green"
        }), $(".touchspin").TouchSpin(), $(".switchBootstrap").bootstrapSwitch();
    }(window, document, jQuery);
    </script>
	
</body>
</html>
