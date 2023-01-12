<?php
    include("connexion.php");
    session_start();
    $new_email=$_POST['mail_n'];
    $new_ps=$_POST['pass_n'];
    $id=$_SESSION['id_admin'];
    $sqlup="UPDATE `admin` SET `id_admin`='$id',`e_mail`='$new_email',`password`='$new_ps',`photo`='' WHERE `id_admin`='".$_SESSION['id_admin']."'";
    $exc=mysqli_query($link,$sqlup);
    if($exc==true){
        echo "Vos données ont été bien modifié";
        header("Location: page_adm.php");
    }else{
        echo "Erreur lors de la modification";
    }
?>