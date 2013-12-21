<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 
 $bregister = $_POST['bregister'];
 //$username1 = $_POST['username1'];
 //$hashpassword = $_POST['hashpassword'];
if(($bregister==1 && isset($_POST['email'], $_POST['hashpassword'])) ||
		($_POST['bregister']==0 && isset($_POST['email1'], $_POST['hashpassword']))) {   
   $shouldTryLogin=1;
   $email = (($bregister==0) ? $_POST['email1'] : $_POST['email']);
   $bfacebook = $_POST['bfacebook'];
   if($bfacebook==1)//for FB we always send the email in that field.
   {
		$email = $_POST['email'];
   }
		
   $password = $_POST['hashpassword']; // The hashed password.
   
   //if the user does not exists and it is a facebook user, we automatically register him(we assume he succesfully logged in to facebook already)
   if ($stmt = $mysqli->prepare("SELECT id, username, password, salt FROM members WHERE email = ? LIMIT 1")) { 
      $stmt->bind_param('s', $email); // Bind "$email" to parameter.
      $stmt->execute(); // Execute the prepared query.
      $stmt->store_result();
      $stmt->bind_result($user_id, $username, $db_password, $salt); // get variables from result.
      $stmt->fetch();
	   //echo $password.'///';
      //$password = hash('sha512', $password.$salt); // hash the password with the unique salt.
	  
	  
	 
      if($stmt->num_rows == 0 && ($bfacebook==1 || $bregister ==1)) { // If the user does not exists and it is facebook user or registeration of new user
		$username = $_POST['username'];
		if($bfacebook==1)//for FB we always send the email in that field.
	    {
			$username = $email;
	    }
		//echo $bfacebook.'  '.$email;
		//echo 'stmt->num_rows='.$stmt->num_rows;
		if(Registration($username, $email, $password, $bfacebook, $mysqli)==false )
		{
			$string = '{"success":false , "bfacebook":'.$bfacebook.'}';
			$json = $string;
			echo indent($json);
			$shouldTryLogin=0;//failed - no need to login
		}
	  }
   }
   
   if($shouldTryLogin==1) 
   {
	   if(login($email, $password, $mysqli) == true) {
		  // Login success
		   $string = '{"success":true , "userid": '.$_SESSION['user_id'].'}';
		  $json = $string;
		  echo indent($json);
		  //echo json_encode('success:true'); 
	   } else {
		  // Login failed
		  //header('Location: ./login.php?error=1');
		  $string = '{"success":false}';
		  $json = $string;
		  echo indent($json);
		  //echo json_encode('success:false'); 
	   }
   }
} else { 
   // The correct POST variables were not sent to this page.
   //$string = '{"success":false , "userid": '.$_SESSION['user_id'].', "username1": '.$_POST['username1'].', "hashpassword": '.$_POST['hashpassword']}';
   //$string = '{"success":false , "userid": '.$_SESSION['user_id'].',"$bregister": '.$bregister.',"$username1": '.$username1.',"$hashpassword": '.$hashpassword.'}';
   $string = '{"success":false , "userid": '.$_SESSION['user_id'].'}';
   $json = $string;
   echo indent($json);
   //echo json_encode('success:false');
}

?>