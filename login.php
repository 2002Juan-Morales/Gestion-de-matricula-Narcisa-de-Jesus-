

<?php
if(session_id()==''){
    session_start();
}
//limpiamos el array de la variable de ssesion. 
$_SESSION = array();
// permite destruir la sesión activa
session_destroy();
?>
<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en">
<head>
  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Login | UENDJ</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700|Roboto" rel="stylesheet">
  <link href="plugins/material/css/materialdesignicons.min.css" rel="stylesheet" />
  <link href="plugins/simplebar/simplebar.css" rel="stylesheet" />

  <!-- PLUGINS CSS STYLE -->
  <link href="plugins/nprogress/nprogress.css" rel="stylesheet" />
  
  <!-- MONO CSS -->
  <link id="main-css-href" rel="stylesheet" href="css/style.css" />

  


  <!-- FAVICON -->
  <link href="images/imnaecr-removebg-preview.png" rel="shortcut icon" />

  <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="plugins/nprogress/nprogress.js"></script>
</head>
<style>
  body{
    background-image: url('images/fond.png');
    background-repeat: no-repeat;
 background-attachment: fixed;
background-size: cover;
background-position: center center;
background-color:#b3f5ebf5 ;
  }
</style>
</head>
  <body class="bg-light-gray" id="">
          <div class="container d-flex align-items-center justify-content-center" style="min-height: 100vh">
          <div class="d-flex flex-column justify-content-between">
            <div class="row justify-content-center">
              <div class="col-lg-6 col-md-10">
                <div class="card card-default mb-0">
                  <div class="card-header pb-0">
                    <div class="app-brand w-100 d-flex justify-content-center border-bottom-0">
                    
                        <img src="images/imnaecr-removebg-preview.png" alt="Mono" class="img-fluid" style="height: 150px; width: 200px;">
                       
                      
                    </div>
                  </div>
                  <div class="card-body px-5 pb-5 pt-0">

                    <h4 class="text-dark mb-6 text-center">Inicio de sesion</h4>
                    <div id="mensaje"></div>
                    <form id="envia_login" method="post">
                       
                      <div class="row">
                        <div class="form-group col-md-12 mb-4">
                          <input type="text" class="form-control input-lg" name="usuario" aria-describedby="emailHelp"
                            placeholder="usuario">
                        </div>
                        <div class="form-group col-md-12 ">
                          <input type="password" name="password"  class="form-control input-lg" id="password" placeholder="Password">
                        </div>
                        <div class="col-md-12">

                          <div class="d-flex justify-content-between mb-3">

                            <div class="custom-control custom-checkbox mr-3 mb-3">
                              <input type="checkbox" class="custom-control-input" id="customCheck2">
                              <label class="custom-control-label" for="customCheck2">Remember me</label>
                            </div>

                            <a class="text-color" href="#"> Forgot password? </a>

                          </div>

                          <button type="submit" id="envia_login" class="btn btn-primary btn-pill mb-5"> Iniciar Sesion</button>

                        
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script>
 $(document).ready(function(){
    $('#envia_login').bind("submit", function (){
        $.ajax({
            type: 'Post',
            url: 'ajax/verificalogin.php',
            data: $(this).serialize(),
            success: function (data){
                var responseData = JSON.parse(data);

                if(responseData.tipo == 'success'){
                
                    if(responseData.tipoUsuario == '1' || responseData.tipoUsuario == '2' || responseData.tipoUsuario == '3'){
                        window.location = 'index.php';
                    } 
                } else {
                    $('#mensaje').html(responseData.mensaje);
                }
            }
        }); 
        return false;
    });
});

</script>
</body>
</html>
