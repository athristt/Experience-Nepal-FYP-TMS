<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
	{	
header('location:index.php');
}
else{
if(isset($_POST['submit6']))
	{
$name=$_POST['name'];
$mobileno=$_POST['mobileno'];
$email=$_SESSION['login'];

$sql="update tblusers set FullName=:name,MobileNumber=:mobileno where EmailId=:email";
$query = $dbh->prepare($sql);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->execute();
$msg="Profile Updated Successfully";
}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Tourism Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/flaticon.css" rel="stylesheet">
<link href="css/css/bootstrap.min.css" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>

  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="banner-2 ">
<?php include('includes/header.php');?>

</div>
<!--- /banner-1 ----><br>
<section class="ftco-section services-section bg-light">
      <div class="container">
        <div class="row d-flex">
		
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
				
              <div class="d-flex justify-content-center"><div class="icon"><span class=""></span></div></div>
              <div class="media-body p-2 mt-2">
			  <a class="link" href="profile.php">
				  <img src="images/profile.png"  style="height:70px;"><br><br>
                <h3 class="heading mb-3" style="">Update Profile</h3>
                </a>
              </div>
            </div>      
          </div>
          <div onClick="location.href='change-password.php'" class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class=""></span></div></div>
              <div class="media-body p-2 mt-2">
				  <img src="images/password.png"  style="height:70px;"><br><br> 
                <h3 class="heading mb-3 style="">Change Password</h3>
					</a>
              </div>
            </div>    
          </div>
          <div onClick="location.href='tour-history.php'" class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class=""></span></div></div>
              <div class="media-body p-2 mt-2">
				  <img src="images/bookings.png"  style="height:70px;"><br><br>
                <h3 class="heading mb-3" style="">My Bookings</h3>
                </a>
              </div>
            </div>      
          </div>
          <div onClick="location.href='issuetickets.php'" class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class=""></span></div></div>
              <div class="media-body p-2 mt-2">
				  <img src="images/tickets.png"  style="height:70px;"><br><br>
                <h3 class="heading mb-3" style="">Issued Tickets</h3>
                </a>
              </div>
            </div>      
          </div>
        </div>
		
      </div>
	  
	</section>
	<center>
<h3> Profile</h3>
	<br>
<center>


	
<!--- privacy ----><br><br>

<div class="privacy" style="margin-top:-200px">
	<div class="container">
	
	<div class="card" style="width: 30rem;">

<div class="modal-content">
	
		<form name="chngpwd" method="post">
		 <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>

<?php 
$useremail=$_SESSION['login'];
$sql = "SELECT * from tblusers where EmailId=:useremail";
$query = $dbh -> prepare($sql);
$query -> bindParam(':useremail',$useremail, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;

if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

	<p style="width: 350px;color:grey">
		<span class="glyphicon glyphicon-user"></span>
	 <input type="text" name="name" value="<?php echo htmlentities($result->FullName);?>" class="form-control" id="name" required="">
	</p> 

<p style="width: 350px;">
<span class="glyphicon glyphicon-earphone"></span>
<input type="text" class="form-control" name="mobileno" maxlength="10" value="<?php echo htmlentities($result->MobileNumber);?>" id="mobileno"  required="">
</p>

<p style="width: 350px;">


	<i class="fa fa-envelope prefix grey-text"></i><input type="email" class="form-control" name="email" value="<?php echo htmlentities($result->EmailId);?>" id="email" readonly>
			</p>
<p style="width: 350px;">
<b>Last Updation Date : </b>
<?php echo htmlentities($result->UpdationDate);?>
</p>

<p style="width: 350px;">	
<b>Reg Date :</b>
<?php echo htmlentities($result->RegDate);?>
			</p>
<?php }} ?>

			<p style="width: 350px;">
<button type="submit" name="submit6" class="btn-primary btn">Update</button>
			</p>
			</form>
<button class="seabtn" onClick="location.href='logout.php'"><a style="color:white" href="logout.php"> Logout </a></button></center><br>
		
	</div>
</div>

<br><br>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>
<?php } ?>