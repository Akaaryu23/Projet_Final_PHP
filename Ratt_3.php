<?php

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
        <form method="post" action="#">
        <div class="info">
                <label>Les salles disponibles:</label><br>
                <select class="fname" name="txt_salled" size="1">
                    <?php
                    include("connexion.php");
                    $s60="SELECT * FROM `salle_disponible`";
                    $rs60=mysqli_query($link,$s60);
                    while($data80=mysqli_fetch_assoc($rs60)){
                        echo '<option value='.$data80["id_salle_dispo"].'>';
                        echo $data80['lib_salle_dispo'];
                        echo '</option>';
                    }
                    ?>
                </select><br><br><br><br>
            <input type="submit" name="cf" value="Confirmer">
        </div>
        </form>
        <?php
        include("connexion.php");
        if(isset($_POST['cf'])){
            session_start();
            $_SESSION['salledispo']=$_POST['txt_salled'];
            $idens=$_SESSION['id_ens'];
            $ids=$data50['id_semestre'];
            $salled=$_POST['txt_salled'];
            $req="INSERT INTO `faire_séance`(`id_seance`, `id_enseigner`, `id_batiment`, `id_semestre`, `date`, `heure_deb`, `heure_fin`, `id_salle`) VALUES ('[value-1]','$idens','1','$ids','".$_SESSION['date']."','".$_SESSION['h_db']."','".$_SESSION['h_fin']."','$salled')";
            $resuaa=mysqli_query($link,$req);
            header("Location: page_ens.php");
        }
        ?>
    </body>
</html>

























               
                