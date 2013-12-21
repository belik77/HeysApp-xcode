<?php
header('Content-Type: text/html; charset=windows-1255');
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

$string = '{"success":false}';
$json = $string;
if(login_check($mysqli) == true)
{
	$string = '{"success":true}';
	$json = $string;
	echo indent($json);
	//echo $_SESSION['user_id'];
} else {
   echo indent($json);
   //echo $_SESSION['user_id'];
}
?>