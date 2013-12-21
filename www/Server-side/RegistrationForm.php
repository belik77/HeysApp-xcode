

<html xmlns="http://www.w3.org/1999/xhtml">

	<body>

		<script type="text/javascript" src="sha512.js"></script>
		<script type="text/javascript" src="forms.js"></script>
		<?php
		if(isset($_GET['error'])) { 
		   echo 'Error Register user!';
		}
		?>
		<form action="http://localhost/myprojects/server-side/Registration.php" method="post" name="Registration_form">
		   user name: <input type="text" name="username" /><br />
		   Email: <input type="text" name="email" /><br />
		   Password: <input type="password" name="password" id="password"/><br />
		   <input type="button" value="Register" onclick="formhash(this.form, this.form.password);" />
		</form>

	</body>
</html>
