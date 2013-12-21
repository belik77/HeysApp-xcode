

<html xmlns="http://www.w3.org/1999/xhtml">

	<body>

		<script type="text/javascript" src="sha512.js"></script>
		<script type="text/javascript" src="forms.js"></script>
		<?php
		if(isset($_GET['error'])) { 
		   echo 'Error Rank business!';
		}
		?>
		<form action="http://localhost/myprojects/MyBiluim/server-side/BusinessesRank.php" method="post" name="BusinessesRank_form">
		   business id: <input type="number" name="id" /><br />
		   userid: <input type="number" name="userid" /><br />
		   capacity: <input type="number" name="capacity"/><br />
		   MoreBoys: <input type="checkbox" name="MoreBoys"/><br />
		   MoreGirls: <input type="checkbox" name="MoreGirls"/><br />
		   CostMoney: <input type="checkbox" name="CostMoney"/><br />
		   NoCostMoney: <input type="checkbox" name="NoCostMoney"/><br />
		   LineLenght: <input type="number" name="LineLenght"/><br />
		   
		   <input type="submit" value="Rank1">
		</form>

	</body>
</html>
