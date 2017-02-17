<?php 

if (isset($_SESSION['id']))
{
	if (isset($_SESSION['admin']) && $_SESSION['admin'] == true)
	{
		require('views/headerAdmin.phtml');
	}
	else
	{
		require('views/headerIn.phtml');
	}
}
else
{
	require('views/header.phtml');
}

?>