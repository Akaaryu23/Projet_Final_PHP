<head>
  <style>

body {
      background-image: url('ensakk.jpeg');
      background-size: cover;
      background-repeat: no-repeat;
    }

   
    .form-container {
      width: 50%;
      margin: 0 auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.5); 
      border-radius: 10px;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      position: absolute;
      top: 55%;
      left: 50%;
      transform: translate(-50%,-50%);
    }

    input[name="ens"]::before {
      content: "\f19d";
      font-family: FontAwesome;
      margin-right: 10px;
      color: #1d3557; 
    }
    input[name="adm"]::before {
      content: "\f007";
      font-family: FontAwesome;
      margin-right: 10px;
      color: #1d3557; 
    }
  
    .form-container input[type="submit"] {
      display: block;
      width: 80%;
      margin-bottom: 10px;
      margin-left: 70px;
      height: 50px; 
      padding: 10px 20px;
      background-color: #fff; 
      color: #1d3557; 
      border-radius: 10px;
      border: none;
      cursor: pointer;
      transition: all 0.2s ease-in-out;
      font-size:large;
    }
   
    .form-container input[type="submit"]:hover {
      background-color: #e7e7e7; 
      
    }

  
    .form-container input[name="ens"]::before {
      content: "\f19d";
      font-family: FontAwesome;
      margin-right: 10px;
      color: #1d3557; 
    }
    .form-container input[name="adm"]::before {
      content: "\f007";
      font-family: FontAwesome;
      margin-right: 10px;
      color: #1d3557; 
    }
    input:hover {
    background-color: #0890f1;
    transform: scale(1.1);
  }
 
   
  
    input[type="submit"]:hover {
      background-color: #e7e7e7; 
    }
   
    h1 {
  margin-bottom: 20px;
  color: #1d3557; 
}

body {
  font-family: Arial, sans-serif;
  font-size: 16px;
  line-height: 1.5;
  color: #fff; 
}
  </style>
</head>
<body>
    <div class="form-container">
        <h1>Sélectionner l'utilisateur:</h1>
        <form method="post" action="#">
            <input type="submit" name="ens" value="Enseignant">
            <input type="submit" name="adm" value="Admin">
        </form>
    </div>
    <?php
    include("connexion.php");
    if(isset($_POST['ens'])){
        header("Location: log_ens.php");
    }
    else{
    if(isset($_POST['adm'])){
        header("Location: log_adm.php");
    }
    }
    ?>
</body>