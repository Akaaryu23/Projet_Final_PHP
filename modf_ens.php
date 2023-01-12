<?php
    include("connexion.php");
    session_start();
    $ids=$_SESSION['id_ens'];
    $nom=$_POST['nomn'];
    $prenom=$_POST['prenomn'];
    $email=$_POST['mailn'];
    $ps=$_POST['passn'];
    $id=$_SESSION['id_ens'];
    $sqlup2="UPDATE `enseignant` SET `id_enseignant`='$ids',`password`='$ps',`nom`='$nom',`prenom`='$prenom',`photo`='',`email`='$email' WHERE `id_enseignant`='".$_SESSION['id_ens']."'";
    $exc2=mysqli_query($link,$sqlup2);
    if($exc2==true){
        echo "Vos données ont été bien modifié";
        header("Location: page_ens.php");
    }else{
        echo "Erreur lors de la modification";
    }
?>