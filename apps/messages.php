<?php 

if (isset($_SESSION['id']))
{
	require("views/messages.phtml");
}
else
{
	echo("Vous ne pouvez pas accéder à cette page, veuillez vous identifier avant:");
	require("apps/login.php");
}

?>