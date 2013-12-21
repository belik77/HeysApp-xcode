

<html xmlns="http://www.w3.org/1999/xhtml">

	<body>

		<script type="text/javascript" src="sha512.js"></script>
		<script type="text/javascript" src="forms.js"></script>
		<?php
		if(isset($_GET['error'])) { 
		   echo 'Error contact business!';
		}
		?>
		<form action="http://localhost/elitest_sencha_phonegap - biluim 2/elitest_sencha_phonegap/android/assets/www/Server-side/contactform.php" method="post" name="contactform">
		   fullname: <input type="text" name="fullname" /><br />
		   businessname: <input type="text" name="businessname" /><br />
		   Category: <input type="text" name="Category" /><br />
		   Address: <input type="text" name="Address" /><br />
		   phonenumber: <input type="text" name="phonenumber" /><br />
		   emailfield: <input type="text" name="emailfield" /><br />
		   capacity: <input type="text" name="capacity" /><br />
		   businessowner: <input type="text" name="businessowner" /><br />
		  
		   
		   <input type="submit" value="Rank1">
		</form>

	</body>
</html>
