<?php
$errors = [];

$page = "messages";

$db = mysqli_connect("192.168.1.10","chat","chat","chat");

session_start();

 $access = ["messages", "login", "register", "users"];
 if (isset($_GET['page']) && in_array($_GET['page'], $access))
 {
     $page = $_GET['page'];
 }
require('apps/traitementUsers.php');

require('apps/skel.php');

?>