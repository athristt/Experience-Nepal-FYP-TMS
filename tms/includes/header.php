
<!--- /top-header ---->
<!--- header ---->
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  <-- background-color: #333; -->
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  margin-top:15px;
}

.topnav a:hover {
  background-color: #0000;
  color: rgb(219, 60, 60);
}

.topnav a.active {
  background-color: white;
  color: rgb(219, 60, 60);
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
</head>
<body><!--
<div class="topnav" id="myTopnav">
<div class="header" style="">
	<div class="container">
	<div class="navigation">
			
			<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
		
		
				<!-- Brand and toggle get grouped for better mobile display -->
				<!--<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<!--<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
					
						<ul class="nav navbar-nav" style="float:right; margin-top:15px">
						<li><a class="logo" href="index.php" style="font-size:30px"><span>Experience Nepal</span></a></li>
							<li><a href="index.php">Home</a></li>
							<li><a href="page.php?type=aboutus">About</a></li>
								<li><a href="package-list.php">Tour Packages</a></li>
								<li><a href="page.php?type=terms">Terms of Use</a></li>
								<li><a href="page.php?type=contact">Contact Us</a></li>
								<a href="javascript:void(0);" class="icon" onclick="myFunction()">
								<i class="fa fa-bars"></i>
								</a>-->
				<div class ="topnav" id="myTopnav">
				
						<a class="logo" href="index.php" style="font-size:30px; margin-top:0px"><span>Experience Nepal</span></a>
						<a href="index.php">Home</a>
						<a href="page.php?type=aboutus">About</a>
						<a href="package-list.php">Tour Packages</a>
						<a href="page.php?type=terms">Terms of Use</a>
						<a href="page.php?type=contact">Contact Us</a>
						<a href="javascript:void(0);" class="icon" onclick="myFunction()">
						<i class="fa fa-bars"></i>
						</a>
								<?php if($_SESSION['login'])
{?>
						<a href="#" data-toggle="modal" data-target="#myModal3"> Help/Support </a>
						<a href="profile.php"> My Profile </a>
								<?php } else { ?>
						<a href="enquiry.php"> Enquiry </a> 
						<a href="#" data-toggle="modal" data-target="#myModal"  >Sign Up</a></button>
						<a class="link" href="#" data-toggle="modal" data-target="#myModal4"  >Sign In</a></button>

						<?php } ?>
								<div class="clearfix"></div>

						</ul>
					
				
			
				</div>

		
<script type="text/JavaScript">
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
<!--- /header ---->
<!--
<!--- footer-btm ---->
