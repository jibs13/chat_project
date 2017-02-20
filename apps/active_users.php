<?php

 $res = mysqli_query($db, "SELECT users.* FROM users WHERE CURRENT_TIMESTAMP = users.status ");
while ($users = mysqli_fetch_assoc($res))
{
	require('views/active_users.phtml');
}

?>