<?php
$res = mysqli_query($db, "SELECT messages.*, users.login FROM messages, users WHERE users.id=messages.id_author ORDER BY date DESC");
while ($message = mysqli_fetch_assoc($res))
{
	require('views/message.phtml');
}
?>

