<?php
// var_dump($_POST);

if(isset($_POST["content"], $_SESSION['id']))
{
	$content=$_POST["content"];
	if (strlen($content) > 4095)
	{
		$errors[] = "Contenu trop long (> 4095)";
	}
	else if (strlen($content) < 2)
	{
		$errors[] = "Contenu trop court (< 2)";
	}
	if (count($errors) == 0)
	{
		$content = mysqli_real_escape_string($db, $content); //pour la secruité
		$res=mysqli_query($db, "INSERT INTO messages (content, id_author) VALUES('".$content."', '".$_SESSION['id']."')");
		if ($res)
		{
			header("Location: index.php?page=messages");
			exit;//toujours exit si header
		}
		else
		{
			$errors[] = "Erreur interne";
			// $errors[] = mysqli_error($db);
		}
	}
}
?>