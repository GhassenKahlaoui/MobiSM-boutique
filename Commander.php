<meta charset="utf-8">
<h1> commander </h1>
<hr>
<form method="POST">
<fieldset>
<legend>Information sur le Service</legend>
<table>
<tr>
<td><label> Reférence Service </label> <input type="text" value='SER14' placeholder="code Service" name="Refservice"></td>
</tr>

<tr>
<td><label> Description> </label> <textarea rows="20" cols="40px" name="DescriptionService"></textarea></td>
</tr>

<tr>
<td><input type="submit" value="commander" name="BtnCommander"><input type="reset" value="Annuler" name="Btn"> </td>
</tr>
</table>
</fieldset>
<?php 
session_start() ; 
include "Model.php";
$user = $_GET["user"];
if(isset($_POST["BtnCommander"]) && empty($user)) {
echo "<script>alert('SVP Login !!')</script>";
header("location:login.php?loginCommander=1");
} else
 {
    $Commande = new Commande("1",date("Y/m/d"),$user,$_POST["Refservice"],$_POST["DescriptionService"]) ;


 }
 
    
?>