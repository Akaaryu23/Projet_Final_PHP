<?php
include("connexion.php");
session_start();
$sql50="SELECT * FROM `semestre` WHERE id_module='".$_SESSION['module']."'";
$rs50=mysqli_query($link,$sql50);
$data50=mysqli_fetch_assoc($rs50);
$_SESSION['id_semestre']=$data50['id_semestre'];
$sql40="SELECT * FROM `enseigner` WHERE id_enseignant='".$_SESSION['id_ens']."'";
$rs40=mysqli_query($link,$sql40);
$data40=mysqli_fetch_assoc($rs40);
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

    </style>
    <head></head>
    <header></header>
    <body>
        <form method="post" action="#">
        <div class="info">
            <label>Le Semestre de votre module</label><br>
            <input class="fname" type="text" name="sem_ch" value=<?php echo $data50['lib_semestre']; ?>><br>
            <label>Date</label><br>
            <input class="fname"type="date" name="dt_txt"><br>
            <label>La séance commence à:</label><br>
            <input class="fname" type="time" name="h_db"><br>
            <label>La séance termine à:</label><br>
            <input class="fname" type="time" name="h_fin"><br><br><br>
            <input type="submit" name="ct" value="Continuer">
        </div>
        </form>
        <?php
        include("connexion.php");
        if(isset($_POST['ct'])){
            session_start();
            $_SESSION['date']=$_POST['dt_txt'];
            $_SESSION['h_db']=$_POST['h_db'];
            $_SESSION['h_fin']=$_POST['h_fin'];
            header("Location: Ratt_3.php");
        }
        ?>
    </body>
</html>