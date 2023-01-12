<?php
session_start();
if(session_destroy()){
    echo '<h1 id=box>';
    echo "Vous etes Déconnecté";
    echo '</h1>';
}else{
    echo "Echec de la déconnexion";
}
?>
<!DOCTYPE html>
<html>
    <head>
        <link href="deco.css" rel="stylesheet">
    </head>
    <body>
        <a href="choix_uti (2).php"><h4>Revenir à la page d'acceuil</h4></a>
    </body>
</html>
