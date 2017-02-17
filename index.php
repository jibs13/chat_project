<?php
$errors = [];
// $page = "login";

$db = mysqli_connect("192.168.1.10","chat","chat","chat");

session_start();

// $access = ["articles", "login", "register", "create_article", "edit_article", "article"];
// if (isset($_GET['page']) && in_array($_GET['page'], $access))
// {
//     $page = $_GET['page'];
// }
require('apps/traitement_users.php');

require('apps/skel.php');

?>