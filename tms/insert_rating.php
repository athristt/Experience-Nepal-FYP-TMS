<?php/*
if(isset($_POST['submit_rating']))
{
  $host="localhost";
  $username="root";
  $password="";
  $databasename="sample";

  $connect=mysql_connect($host,$username,$password);
  $db=mysql_select_db($databasename);
  
  $php_rating=$_POST['phprating'];
  $asp_rating=$_POST['asprating'];
  $jsp_rating=$_POST['jsprating'];
  $insert=mysql_query("insert into rating values('','$php_rating','$asp_rating','jsp_rating')");
}*/
?>

<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit_rating']))
{
  if(isset($_POST['submit_rating']))
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
}
?>