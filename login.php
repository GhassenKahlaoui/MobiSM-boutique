<?php 
session_start(); 
include("Model.php");

?>
<h1> Login </h1>

<form method="POST">
<table>
<tr><td><label>Email </label> <input type="text" name="EmailLogin"></td></tr>
<tr><td><label>Mot de passe </label> <input type="text" name="MotdePasseLogin"></td></tr>
<tr><td><input type="submit" name='BTNLogin' value="Login"></td><td><input type="reset" value="Annuler"></td></tr>
</table>
</form>
<?php 
if(isset($_POST['BTNLogin']) && isset($_GET['loginCommander']) && $_GET['loginCommander']==1)
 {
 
if( Client::login($_POST['EmailLogin'],$_POST['MotdePasseLogin']) ==1)
 {

    $_SEESION["user"] = $_POST['EmailLogin'] ; 
header("location:Commander.php?user=".$_SEESION["user"]); 
}
else
echo "Erreur"; 

}

if(isset($_POST['BTNLogin']))
 {
 
if( Client::login($_POST['EmailLogin'],$_POST['MotdePasseLogin']) ==1)
echo "Login avec success <3"; 
else
echo "Erreur"; 

}
?>