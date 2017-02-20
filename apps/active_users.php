<?php
$res = mysqli_query($db, "SELECT users.* FROM  users "); //trié par orderdescendant
while ($users = mysqli_fetch_assoc($res))
{
	require('views/active_users.phtml');
}

?>