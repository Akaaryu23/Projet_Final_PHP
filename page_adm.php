<!DOCTYPE HTML>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Page admin</title>
    <link rel="stylesheet" href="page_adm.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<meta name="description" content="ketwords" />-->
  </head>
  <body>
    <header>
      <nav>
        <ul class="list-item">
          <li><a href="modif_profil_adm.php">Modifier votre profil</a></li>
          <li><a href="ajouter_enseignant.php">Ajouter un enseignant</a></li>
          <li><a href="Ajouter_filière.php">Ajouter une filière</a></li>
          <li><a href="Ajouter_module.php">Ajouter un module</a></li>
          <li><a href="Ajouter_semestre.php">Ajouter un semestre</a></li>
          <li><a href="Ajouter_groupe.php">Ajouter un groupe</a></li>
          <li><a href="ajouter_salle.php">Ajouter une salle</a></li>
          <li><a href="deco.php">Se déconnecter</a></li>
        </ul>
      </nav>
    </header>
    <?php
    session_start();
    echo "Bonjour Mr ".$_SESSION['e_mail'];
    ?>
    <div class="tab1">
        <h3><span id="cl">Liste d'enseignants</span></h3><br>
        <table>
            <tr>
                <th>ID enseignant</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Email</th>
            </tr>
            <?php
            include("connexion.php");
            $sql1="SELECT * FROM `enseignant`";  
            $req1=mysqli_query($link,$sql1);
            while($data1=mysqli_fetch_assoc($req1)){
                echo '<tr>';
                echo '<td>'.$data1['id_enseignant'].'</td>';
                echo '<td>'.$data1['nom'].'</td>';
                echo '<td>'.$data1['prenom'].'</td>';
                echo '<td>'.$data1['email'].'</td>';
                echo '</tr>';
            }         
            ?>
        </table>
    </div><br>
    <div class="tab1">
        <h3><span id="cl">Liste des filières<span></h3><br>
        <table>
            <tr>
                <th>ID Filière</th>
                <th>Libellé filière</th>
            </tr>
            <?php
            include("connexion.php");
            $sql2="SELECT * FROM `filière`";  
            $req2=mysqli_query($link,$sql2);
            while($data2=mysqli_fetch_assoc($req2)){
                echo '<tr>';
                echo '<td>'.$data2['id_fil'].'</td>';
                echo '<td>'.$data2['nomfil'].'</td>';
                echo '</tr>';
            }         
            ?>
        </table>
    </div>
    <div class="tab1"><br>
        <h3><span id="cl">Liste des modules<span></h3><br>
        <table>
            <tr>
                <th>ID Module</th>
                <th>Libellé module</th>
                <th>Semestre</th>
            </tr>
            <?php
            include("connexion.php");
            $sql3="SELECT * FROM `module` ";  
            $req3=mysqli_query($link,$sql3);
            while($data3=mysqli_fetch_assoc($req3)){
                echo '<tr>';
                echo '<td>'.$data3['id_module'].'</td>';
                echo '<td>'.$data3['lib_mod'].'</td>';
                echo '<td>'.$data3['lib_semestre'].'</td>';
                echo '</tr>';
            }         
            ?>
        </table>
    </div>
    <div class="tab1"><br>
        <h3><span id="cl">Liste des salles<span></h3><br>
        <table>
            <tr>
                <th>ID Salle</th>
                <th>Libellé Salle</th>
                <th>Batiment</th>
            </tr>
            <?php
            include("connexion.php");
            $sql4="SELECT * FROM `salle`    ";  
            $req4=mysqli_query($link,$sql4);
            while ($data4 = mysqli_fetch_assoc($req4)) {

                echo '<tr>';
                echo '<td>' . $data4['id_salle'] . '</td>';
                echo '<td>' . $data4['lib_salle'] . '</td>';
                echo '<td>' . $data4['lib_batiment'] . '</td>';
                echo '</tr>';
            }
                   ?>
           
        </table>
    </div>
  </body>
</html>