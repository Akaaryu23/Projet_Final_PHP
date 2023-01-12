<?php
include("connexion.php");
session_start();
if(empty($_SESSION['id_admin'])){
    echo "Veuillez se connecter!";
}else{
    $req="SELECT * FROM `admin` WHERE `id_admin`='".$_SESSION['id_admin']."'";
    $resultat=mysqli_query($link,$req);
    $data2=mysqli_fetch_assoc($resultat);
}
?>
<!DOCTYPE HTML>
<html>
<style>
    body {
        background-color: #1c87c9;
    }

    form {
        margin: 0 auto;
        width: 50%;
        padding: 2%;
        background-color: white;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px #9E9E9E;
    }

    label {
        font-size: 16px;
        font-weight: bold;
        margin-top: 2%;
    }

    select {
        width: 100%;
        padding: 12px;
        border-radius: 4px;
        margin-top: 2%;
        margin-bottom: 2%;
        box-sizing: border-box;
        border: 1px solid #9E9E9E;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #1c87c9;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: grey;
    }
</style>
    <head></head>
    <header></header>
    <body>
        <form method="post" action="modf_adm.php">
        <div class="info">
            <label>Email</label><br>
            <input class="fname" type="text" name="mail_n" value=<?php echo $data2['e_mail']; ?>><br>
            <label>Password</label><br>
            <input class="fname" type="password" name="pass_n" value=<?php echo $data2['password']; ?>><br>
            <label>Photo</label><br>
            <input class="fname" type="file" name="fch" value=<?php echo $data2['photo']; ?>><br><br>
            <input type="submit" name="cx" value="Valider">
        </div>
        </form>
    </body>
</html>