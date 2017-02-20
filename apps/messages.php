<?php 

if (isset($_SESSION['id']))
{
	$res = mysqli_query($db, "SELECT messages.*, users.login FROM messages, users WHERE users.id=messages.id_author ORDER BY date DESC"); //trié par orderdescendant
	require("views/messages.phtml");
}
else
{
	header('Location: index.php?page=login');
	exit;
}

?>