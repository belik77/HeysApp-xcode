

<html xmlns="http://www.w3.org/1999/xhtml">

	<body>

		<script type="text/javascript" src="sha512.js"></script>
		<script type="text/javascript" src="forms.js"></script>
		<?php
		if(isset($_GET['error'])) { 
		   echo 'Error Logging In!';
		}
		?>
		<form action="http://www.heys.biz/client-side/Server-side/process_login.php" method="post" name="login_form">
		   Email: <input type="text" name="email1" /><br />
		   Email reg: <input type="text" name="email" /><br />
		   user reg: <input type="text" name="username" /><br />
		   facebook: <input type="text" name="bfacebook" /><br />
		   register: <input type="text" name="bregister" /><br />
		   Password: <input type="password" name="password1" id="password1"/><br />
		   Password reg: <input type="password" name="password" id="password"/><br />
		   <input type="button" value="Login" onclick="formhash(this.form, this.form.password);" />
		</form>

	</body>
</html>
