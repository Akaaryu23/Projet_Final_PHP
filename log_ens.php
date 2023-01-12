<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="log.css">
    </head>
    <div id="tit2">
      <h2>Bonjour</h2>
    </div>
    <body>
    <div class="wrapper fadeInDown">
    <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
    

    <!-- Login Form -->
    <form method="post" action="#">
      <input type="text" id="login" class="fadeIn second" name="mail_txt" placeholder="Email">
      <input type="text" id="password" class="fadeIn third" name="pass_txt" placeholder="password">
      <input type="submit" class="fadeIn fourth" name="cnx" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
    </body>
    <?php
    include("connexion.php");
    $email=$_POST['mail_txt'];
    $pass=$_POST['pass_txt'];
    if(isset($_POST['cnx'])){
        if(empty($email) or empty($pass)){
            echo "Saisissez votre Email et votre Password !!"."<br>";
        }else{
            $sql="SELECT * FROM `enseignant` WHERE password='".$pass."'";
            $result=mysqli_query($link,$sql);
            $donnee=mysqli_fetch_assoc($result);
            if($donnee!=False){
                session_start();
                $_SESSION['id_ens']=$donnee['id_enseignant'];
                $_SESSION['email']=$donnee['email'];
                $_SESSION['password']=$donnee['password'];
                $_SESSION['nom']=$donnee['nom'];
                $_SESSION['prenom']=$donnee['prenom'];
                header("Location: page_ens.php");
            }
                echo "Verifiez bien votre email et password !!"."<br>";
            }
         }else{
            echo "Error !!";
         }
    ?>
</html>