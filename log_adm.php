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
      <input type="text" id="login" class="fadeIn second" name="mail_t" placeholder="Email">
      <input type="text" id="password" class="fadeIn third" name="pass_t" placeholder="password">
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
    $email=$_POST['mail_t'];
    $pass=$_POST['pass_t'];
    if(isset($_POST['cnx'])){
        if(empty($email) or empty($pass)){
            echo "Saisissez votre Email et votre Password !!"."<br>";
        }else{
            $sql="SELECT * FROM `admin` WHERE password='".$pass."'";
            $result=mysqli_query($link,$sql);
            $donnee=mysqli_fetch_assoc($result);
            if($donnee!=False){
                session_start();
                $_SESSION['id_admin']=$donnee['id_admin'];
                $_SESSION['e_mail']=$donnee['e_mail'];
                $_SESSION['password']=$donnee['password'];
                header("Location: page_adm.php");
            }
                echo "Verifiez bien votre email et password !!"."<br>";
            }
         }else{
            echo "Error !!";
         }
    ?>
</html>