 
<!DOCTYPE HTML>
<!DOCTYPE html>
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

    </style>

    <body>
        <form method="post" action="#">
        <div class="info">
            <label>Filière</label><br>
            <select class="fname"  name="txt_fil" size="1">
                    <?php
                    include("connexion.php");
                    $requette="SELECT * FROM `filière`";
                    $resultat=mysqli_query($link,$requette);
                    while($liste_filiere=mysqli_fetch_assoc($resultat)){
                        echo '<option value='.$liste_filiere["id_fil"].'>';
                        echo $liste_filiere['nomfil'];
                        echo '</option>';
                    }
                    ?>
            </select  ><br>
            <label>Module</label><br>
            <select class="fname" name="txt_mod" size="1">
                    <?php
                    include("connexion.php");
                    $requette2="SELECT * FROM `module`";
                    $resultat2=mysqli_query($link,$requette2);
                    while($liste_module=mysqli_fetch_assoc($resultat2)){
                        echo '<option value='.$liste_module["id_module"].'>';
                        echo $liste_module['lib_mod'];
                        echo '</option>';
                    }
                    ?>
            </select><br><br>
            <input type="submit" name="cont" value="Continuer">
                </div>
        </form>
        <?php
        if(isset($_POST['cont'])){
            session_start();
            $_SESSION['filiere']=$_POST['txt_fil'];
            $_SESSION['module']=$_POST['txt_mod'];
            $reqp="INSERT INTO `enseigner`(`id_enseigner`, `id_filiere`, `id_enseignant`, `id_module`) VALUES ('[value-1]','".$_SESSION['filiere']."','".$_SESSION['id_ens']."','".$_SESSION['module']."')";
            $resu=mysqli_query($link,$reqp);
            header("Location: Ratt_2.php");
        }
        ?>
    </body>
</html>