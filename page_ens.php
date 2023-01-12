<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="page_adm.css">
    <title>Page admin</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<meta name="description" content="ketwords" />-->
  </head>
  <body>
    <header>
      <nav>
        <ul class="list-item">
          <li><a href="modif_profil_ens.php">Modifier votre profil</a></li>
          <li><a href="AjoutRatt.php">Ajouter un rattrapage</a></li>
          <li><a href="deco.php">Se déconnecter</a></li>
        </ul>
      </nav>
    </header>
    <?php
    session_start();
    echo '<h3 id="bnj">';
    echo "Bonjour Mr ".$_SESSION['nom']." ".$_SESSION['prenom'];
    echo '</h3>';
    ?>
    </div>
  </body>
</html>