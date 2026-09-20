
<?php
session_start();
error_reporting(0);
include('includes/config.php');
$con=mysqli_connect("localhost","root","","tms");
   $pid=intval($_GET['pkgid']);
    $select_rating=mysqli_query($con,"select Rating from userrating where PackageId=$pid");
    $total=mysqli_num_rows($select_rating);
    while($row=mysqli_fetch_array($select_rating))
    {
	  $phpar[]=$Rating;
    }
    $total_php_rating=(array_sum($phpar)/$total);
  
?>
  
<html>

<body>
<p>hello</p>

<p id="total_votes" style="color:black">Total Votes:<?php echo $total;?></p>
<p>PHP (<?php echo $total_php_rating;?>)</p>

</body>
</html>