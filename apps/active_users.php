<?php

 $res = mysqli_query($db, "SELECT users.* FROM users WHERE status+10>CURRENT_TIMESTAMP  ");
while ($users = mysqli_fetch_assoc($res))
{
	require('views/active_users.phtml');
}

?>