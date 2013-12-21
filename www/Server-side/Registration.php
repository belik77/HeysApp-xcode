

<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

if(isset($_POST['email'], $_POST['p'], $_POST['username'])) { 
	//Hash Script: 
	// The hashed password from the form
	$password = $_POST['p']; 
	$username = $_POST['username']; 
	$email = $_POST['email']; 
	// Create a random salt
	$random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
	// Create salted password (Careful not to over season)
	$password = hash('sha512', $password.$random_salt);
	

	// Add your insert to database script here. 
	// Make sure you use prepared statements!
	if ($insert_stmt = $mysqli->prepare("INSERT INTO members (username, email, password, salt) VALUES (?, ?, ?, ?)")) {    
	   $insert_stmt->bind_param('ssss', $username, $email, $password, $random_salt); 
	   // Execute the prepared query.
	   $insert_stmt->execute();
	   
	   echo 'Success: You have been Registered!';
	}
	else
	{
		//header('Location: ./RegistrationForm.php?error=1');
		echo 'Failure: You have not been Registered!';
	}
}
else { 
   // The correct POST variables were not sent to this page.
   echo 'Invalid Registration Request';
}

?>