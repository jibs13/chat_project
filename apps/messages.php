<?php 


// while ($article = mysqli_fetch_assoc($res))
// {
// 	var_dump($article);
$res = mysqli_query($db, "SELECT messages.*, users.login FROM messages, users WHERE users.id=messages.id_author ORDER BY date DESC"); //trié par orderdescendant
	require("views/messages.phtml");

	
// }




?>