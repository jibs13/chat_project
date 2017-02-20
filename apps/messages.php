<?php 

if (isset($_SESSION['id']))
{
	require("views/messages.phtml");
}
else
{
	// header('Location: index.php?page=login');
	// exit;
}

?>