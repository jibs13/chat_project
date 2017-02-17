<?php

$res = mysqli_query($db, "SELECT users.* FROM users WHERE users.id=".$_SESSION['id']);
$user = mysqli_fetch_assoc($res);

require("views/users.phtml");


?>