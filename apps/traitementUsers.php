<?php
// var_dump($_POST);

if(isset($_SESSION['id']))
{

$res = mysqli_query($db, "UPDATE users SET status= CURRENT_TIMESTAMP WHERE users.id=".$_SESSION["id"]);

}


if (isset($_GET['page']) && $_GET['page'] == "logout")
{
	session_destroy();
	header('Location: index.php?page=login');
	exit;
}

if (isset($_POST['action']))
{
	$action = $_POST['action'];
	if ($action == "register")
	{
		if (isset($_POST['login'], $_POST['password1'], $_POST['password2'], $_POST['email'],$_POST['birthdate'],$_POST['avatar']))
		{
			// Etape 3 : Validation des données
			// Etape 2 : Validation des données
			$login = $_POST['login'];
			$password1 = $_POST['password1'];
			$password2 = $_POST['password2'];
			$email = $_POST['email'];
			$birthdate = $_POST['birthdate'];
			$avatar = $_POST['avatar'];

			if (strlen($login) > 31)
			{
				$errors[] = "Login trop long (> 31)";
			}
			else if (strlen($login) < 5)
			{
				$errors[] = "Login trop court (< 5)";
			}
			if (strlen($password1) < 6)
			{
				$errors[] = "Password trop long (< 6)";
			}
			else if ($password1 != $password2)
			{
				$errors[] = "Les mots de passe ne correspondent pas";
			}
			if (filter_var($email, FILTER_VALIDATE_EMAIL) == false)
			{
				$errors[] = "Email invalide";
			}
			if (filter_var($avatar, FILTER_VALIDATE_URL) == false)
			{
				$errors[] = "Avatar invalide";
			}

			
			if (count($errors) == 0)
			{
				$login = mysqli_real_escape_string($db, $login);
				$email = mysqli_real_escape_string($db, $email);
				$birthdate = mysqli_real_escape_string($db, $birthdate);
				$avatar = mysqli_real_escape_string($db, $avatar);
				$hash = password_hash($password1, PASSWORD_BCRYPT, ["cost"=>13]);
				$res = mysqli_query($db, "INSERT INTO users (login, password, email, birthdate, avatar) VALUES('".$login."', '".$hash."', '".$email."', '".$birthdate."', '".$avatar."')");
				if ($res)
				{
					
					header('Location: index.php?page=login');
					exit;
				}
				else
				{
					$errors[] = "Erreur interne";
				}
			}
			
		}
	}

if ($action == "login")
	{
		// Etape 1
		if (isset($_POST['login'], $_POST['password']))
		{
			// Etape 2
			$login = $_POST['login'];
			$password = $_POST['password'];
			// Etape 3
			if (count($errors) == 0)
			{
				$login = mysqli_real_escape_string($db, $login);
				// $hash = password_hash($password1, PASSWORD_BCRYPT, ["cost"=>15]);
				$res = mysqli_query($db, "SELECT * FROM users WHERE login='".$login."'");
				if ($res)
				{
					$user = mysqli_fetch_assoc($res);
					// $user['id'], $user['email'], $user['login'], $user['password'], $user['birthdate']
					if ($user)
					{
						if (password_verify($password, $user['password']))
						{
							$_SESSION['id'] = $user['id'];
							$_SESSION['login'] = $user['login'];
							$_SESSION['admin'] = $user['admin'];
							// ! !
							// Etape 4
							header('Location: index.php?page=messages');
							exit;
						}
						else
						{
							$errors[] = "Mot de passe incorrect";
						}
					}
					else
					{
						$errors[] = "Login inconnu";
					}
				}
				else
				{
					$errors[] = "Erreur interne";
				}
			}
		}
	}
}


?>