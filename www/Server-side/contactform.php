<?php
include 'db_connect.php';
include 'functions.php';
$field_fullname = $_POST['fullname'];
$field_businessname = $_POST['businessname'];
$field_Category = $_POST['Category'];
$field_Address = $_POST['Address'];
$field_phonenumber = $_POST['phonenumber'];
$field_emailfield = $_POST['emailfield'];
$field_capacity = $_POST['capacity'];
$field_businessowner = $_POST['businessowner'];

$mail_to = 'belik77@walla.co.il,heys.application@gmail.com';
$subject = 'Contact from heys app by: '.$field_fullname;

$body_message = 'From: '.$field_fullname."\n";
$body_message .= 'Business: '.$field_businessname."\n";
$body_message .= 'Category: '.$field_Category."\n";
$body_message .= 'Email: '.$field_emailfield."\n";
$body_message .= 'Phone: '.$field_phonenumber."\n";
$body_message .= 'Address: '.$field_Address."\n";
$body_message .= 'capacity: '.$field_capacity."\n";
$body_message .= 'business owner: '.$field_businessowner;

$headers = 'From: '.$field_emailfield."\r\n";
$headers .= 'Reply-To: '.$field_emailfield."\r\n";

$json;
try{
	$mail_status = mail($mail_to, $subject, $body_message, $headers);
	
	if ($mail_status) { 
		$json = '{"success":true}';
	}
	else { 
		$json = '{"success":false}';
	}
}
//catch exception
catch(Exception $e)
{
  $json = '{"success":false}';
}

echo $json;
?>