<?php 

if (isset($_SESSION['id']))
{
	require("views/messages.phtml");
}
else
{
	?>
	<div class="alert">Vous ne pouvez pas accéder à cette page, veuillez vous identifier avant</div>
	<?php
	require("apps/login.php");
}

?>