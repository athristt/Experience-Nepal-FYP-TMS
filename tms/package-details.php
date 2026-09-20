<?php
session_start();
error_reporting(0);
include('includes/config.php');


if(isset($_POST['submit2']))
{
$pid=intval($_GET['pkgid']);
$useremail=$_SESSION['login'];
$fromdate=$_POST['fromdate'];
$todate=$_POST['todate'];
$comment=$_POST['comment'];
$status=0;
$sql="INSERT INTO tblbooking(PackageId,UserEmail,FromDate,ToDate,Comment,status) VALUES(:pid,:useremail,:fromdate,:todate,:comment,:status)";
$query = $dbh->prepare($sql);
$query->bindParam(':pid',$pid,PDO::PARAM_STR);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
$query->bindParam(':fromdate',$fromdate,PDO::PARAM_STR);
$query->bindParam(':todate',$todate,PDO::PARAM_STR);
$query->bindParam(':comment',$comment,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Booked Successfully";
}
else 
{
$error="Something went wrong. Please try again";
}

}
/*if(isset($_POST['submit10']))
{
	$pid=intval($_GET['pkgid']);
	$useremail=$_SESSION['login'];
	$ratingss=$_POST['rating'];
	$sql="INSERT INTO tblbooking(PackageId,UserEmail,rating)VALUES(:pid,:useremail,:ratingss)";
	$query = $dbh->prepare($sql);
$query->bindParam(':pid',$pid,PDO::PARAM_STR);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);

$query->bindParam(':ratingss',$ratingss,PDO::PARAM_STR);
	$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Rated Successfully";
}
else 
{
$error="Something went wrong. Please try again";
}
}*/
if(isset($_POST['submit10']))
{
	$pid=intval($_GET['pkgid']);
	$useremail=$_SESSION['login'];
	$ratingss=$_POST['phprating'];
	$sql="INSERT INTO userrating(PackageId,UserEmail,Rating)VALUES(:pid,:useremail,:ratingss)";
	$query = $dbh->prepare($sql);
$query->bindParam(':pid',$pid,PDO::PARAM_STR);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);

$query->bindParam(':ratingss',$ratingss,PDO::PARAM_STR);
	$query->execute();
$lastInsertId = $dbh->lastInsertId();


if($lastInsertId)
{
$msg="Rated Successfully";
}
else 
{
$error="Something went wrong. Please try again";
}
}
?>
<!DOCTYPE HTML>
<html>
<head>
<title>TMS | Package Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
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
<link rel="stylesheet" href="css/jquery-ui.css" />



<link rel="stylesheet" type="text/css" href="css/rating_style.css">
  <script type="text/javascript">
  
   function change(id)
   {
      var cname=document.getElementById(id).className;
      var ab=document.getElementById(id+"_hidden").value;
      document.getElementById("phprating").value=ab;

      for(var i=ab;i>=1;i--)
      {
         document.getElementById("php"+i).src="images/star2.png";
      }
      var id=parseInt(ab)+1;
      for(var j=id;j<=5;j++)
      {
         document.getElementById("php"+j).src="images/star1.png";
      }
   }

</script>



	<script>
		 new WOW().init();
	</script>
<script src="js/jquery-ui.js"></script>
					<script>
						$(function() {
						$( "#datepicker,#datepicker1" ).datepicker();
						});
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
<div class="banner-3">
<?php include('includes/header.php');?>

	
</div>
<!--- /banner ---->
<!--- selectroom ---->
<div class="selectroom">


	<div class="container">	
		  <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
<?php 
$pid=intval($_GET['pkgid']);
$sql = "SELECT * from tbltourpackages where PackageId=:pid";
$query = $dbh->prepare($sql);
$query -> bindParam(':pid', $pid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

<form name="book" method="post">
		<div class="selectroom_top">
			<div class="col-md-4 selectroom_left wow fadeInLeft animated" data-wow-delay=".5s">
				<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
			</div>
			<div class="col-md-8 selectroom_right wow fadeInRight animated" data-wow-delay=".5s">
				<h2><?php echo htmlentities($result->PackageName);?></h2>
				<p class="dow">#PKG-<?php echo htmlentities($result->PackageId);?></p>
				<p><b>Package Type :</b> <?php echo htmlentities($result->PackageType);?></p>
				<p><b>Package Location :</b> <?php echo htmlentities($result->PackageLocation);?></p>
					<p><b>Features</b> <?php echo htmlentities($result->PackageFetures);?></p>
					<div class="ban-bottom">
				<div class="bnr-right">
				<label class="inputLabel">From</label>
				<input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy"  name="fromdate" required="">
			</div>
			<div class="bnr-right">
				<label class="inputLabel">To</label>
				<input class="date" id="datepicker1" type="text" placeholder="dd-mm-yyyy" name="todate" required="">
			</div>
			</div>
						<div class="clearfix"></div>
				<div class="grand">
					<p>Grand Total</p>
					<h3 style="color:#2e6da4">NRS<?php echo htmlentities($result->PackagePrice);?></h3>
				</div>
			</div>

		<h3>Package Details</h3>
				<p style="padding-top: 1%"><?php echo htmlentities($result->PackageDetails);?> </p>	
				<div class="clearfix"></div>

				<h3 style="margin-top:10px"> Comment </h3>
						<input class="special" type="text" name="comment" required="">

					<?php if($_SESSION['login'])
					{?>
					<button type="submit" name="submit2" class="btn-primary btn" style="margin-left:45%; margin-top:20px">Book</button>
						</li>
						<?php } else {?>
							<a href="#" data-toggle="modal" data-target="#myModal4" class="btn-primary btn" >Book</a></li>
							<?php } ?>
		</div>	
		</div>
		</form>
<?php }} ?>
	</div>
</div>



<div style="margin-left:40%; margin-top:-50px">
<form method="post">

  <div class="div">
  
	  <input type="hidden" id="php1_hidden" value="1">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php1" class="php">
	  <input type="hidden" id="php2_hidden" value="2">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php2" class="php">
	  <input type="hidden" id="php3_hidden" value="3">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php3" class="php">
	  <input type="hidden" id="php4_hidden" value="4">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php4" class="php">
	  <input type="hidden" id="php5_hidden" value="5">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php5" class="php">
	 
  
  </div>
  <input type="hidden" name="phprating" id="phprating" value="0">
  <?php if($_SESSION['login'])
				{?>
				<button type="submit" name="submit10" class="btn-primary btn" style="margin-left:14%">Rate</button>
				<?php } else {?>
					<li class="sigi" align="center" style="margin-top: 1%">
							<a href="#" data-toggle="modal" data-target="#myModal4" class="btn-primary btn" >Rate</a></li>
							<?php } ?>
  <?php
session_start();
error_reporting(0);
include('includes/config.php');
$con=mysqli_connect("localhost","root","","tms");
   $pid=intval($_GET['pkgid']);
    $select_rating=mysqli_query($con,"select Rating from userrating where PackageId=$pid");
    $total=mysqli_num_rows($select_rating);

	$myavg=mysqli_query($con,"select AVG(Rating) as average from userrating where PackageId=$pid");
	$row = mysqli_fetch_assoc($myavg); 
	$average = $row['average'];
  
	
?>
<p id="total_votes" style="color:black; margin-top:5px; margin-left:8%">Total Ratings:<?php echo $total;?></p>
<p style="margin-left:7%; margin-bottom:10px">Average Rating: <?php echo round($average);?> star </p>
</form>
				
				</div>




<!--- /selectroom ---->
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