
<?php 
require_once "conf/confconexion.php";
?>
<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en" dir="ltr">
  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Nueva Matricula | UENDJ</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700|Roboto" rel="stylesheet">
  <link href="plugins/material/css/materialdesignicons.min.css" rel="stylesheet" />
  <link href="plugins/simplebar/simplebar.css" rel="stylesheet" />

  <!-- PLUGINS CSS STYLE -->
  <link href="plugins/nprogress/nprogress.css" rel="stylesheet" />
  
  <link href="plugins/toaster/toastr.min.css" rel="stylesheet" />
  <link href="plugins/prism/prism.css" rel="stylesheet" />
  
  <link href="plugins/select2/css/select2.min.css" rel="stylesheet" />
  
 
  
  
  
  
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


  <body class="navbar-fixed sidebar-fixed" id="body">
    <script>
      NProgress.configure({ showSpinner: false });
      NProgress.start();
    </script>

    

    <!-- ====================================
    ——— WRAPPER
    ===================================== -->
    <div class="wrapper">
      
      
        <!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->

        <?php
 include "navar.php";
 ?>
     

      <!-- ====================================
      ——— PAGE WRAPPER
      ===================================== -->
      <div class="page-wrapper">
        
          <!-- Header -->
          <?php
 include "header.php";
 ?>
     

        <!-- ====================================
        ——— CONTENT WRAPPER
        ===================================== -->
        <div class="content-wrapper">
          <div class="content"><!-- For Components documentaion -->
<div class="card card-default">
  <div class="px-6 py-4">
  <h2><i class="mdi mdi-folder-plus-outline"></i> Agregar  matricula</h2>
  <!-- <button type='button' class="btn btn-success btn-pill"  ><i class="mdi mdi-account"></i>  Agregar matricula </button> -->
  </div>
</div>

<!-- Products Inventory -->
<div class="card card">
  <div class="card-header">
  <h4 class="text-center"> Datos Estudiantes</h4>



  </div>
  <div class="card-body">
    <div class="">
    <div id="resultados_matricula"></div>
<form action="" method="post" id="guardar_matricula">
   <div class="row">
<div class="form-group col-6">
    <label for=""> Cedula estudiante</label>
    <select name="id_estudiante" id="id_estudiante"  class="form-control estudinte" required>
    <option value="">busca estudiante</option>
    </select>

</div>
<div class="form-group col-6">
    <label for=""> codigo Matricula</label>
    <input type="text" name="codigo" id="codigo" class="form-control" placeholder="codigo " >
</div>

   </div>

   <div class="row">
<div class="form-group col-6">
    <label for=""> Nombres</label>
   <input type="text" id="nombre" name="nombre" class="form-control" placeholder="nombre" disabled>

</div>
<div class="form-group col-6">
    <label for=""> apellido </label>
    <input type="text" name="apellido" id="apellido" class="form-control" placeholder="apellido " disabled>
</div>

   </div>
   <h4 class="text-center">Datos Academicos</h4>
   <div class="row">
<div class="form-group col-6">
    <label for=""> Perido Electivo</label>
   <select name="periodo" id="" class="form-control" required>
    <option value="">seleciona el periodo</option>
    <?php
   $periodo=mysqli_query($objConexion,"select * from tb_periodoelectivo");
   foreach($periodo as $periodos){
$descrips=$periodos['descripcion'];
$id_perido=$periodos['id_periodo'];
   ?>
     <option value="<?php echo $id_perido ?>"><?php echo $descrips ?></option>
<?php
   }
?> 
   </select>

</div>
<div class="form-group col-6">
    <label for=""> paralelo </label>
    <select name="paralelo" id="" class="form-control" required>

    <option value="">seleciona la paralelo</option>
    <?php
   $paralelo=mysqli_query($objConexion,"select * from tb_paralelo");
   foreach($paralelo as $paralelos){
$descrip=$paralelos['descripcion'];
$id_parael=$paralelos['id_paralelo'];
   ?>
   <option value="<?php echo $id_parael ?>"><?php echo $descrip  ?></option>

<?php }?>
   </select>
</div>

   </div>

   <div class="row">
<div class="form-group col-6">
    <label for=""> jornada</label>
   <select name="jornada" id="" class="form-control" required>
   <option value="">seleciona una jornada</option>
       <?php
   $jornada=mysqli_query($objConexion,"select * from tb_jornadas");
   foreach($jornada as $jornadas){
$nombres=$jornadas['descripcion'];
$id_jorna=$jornadas['id_jornadas'];
   ?>
    <option value="<?php echo $id_jorna ?>"><?php echo $nombres ?></option>
<?php
   }
?>
   </select>

</div>
<div class="form-group col-6">
    <label for="">  Curso o grado </label>

    
    <select name="curso" id="" class="form-control" required>
    <option value="">seleciona el curso</option>
    <?php
   
   $curso=mysqli_query($objConexion,"select * from tb_grado");
   foreach($curso as $cursos){
$nombre=$cursos['nombre'];
$id_grabdi=$cursos['id_grado'];
   ?>
    <option value="<?php echo $id_grabdi ?>"><?php echo $nombre ?></option>
<?php 
}
?>
   </select>
</div>

   </div>
<a href="matricula.php" class="btn btn-danger btn-pill"> Volver</a>
   <button type="submit" id="guardar_matricula" class="btn btn-info btn-pill">Guardar matricula</button>
   </form>
   </div>

  </div>
</div>
</div>
          
        </div>
        
          <!-- Footer -->
          <?php
       include "footer.php";
        ?>

      </div>
    </div>
    <div id="show"></div>    
                    <!-- Card Offcanvas -->
                    <div class="card card-offcanvas" id="contact-off" >
                      <div class="card-header">
                        <h2>Contacts</h2>
                        <a href="#" class="btn btn-primary btn-pill px-4">Add New</a>
                      </div>
                      <div class="card-body">

                        <div class="mb-4">
                          <input type="text" class="form-control form-control-lg form-control-secondary rounded-0" placeholder="Search contacts...">
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-01.jpg" alt="User Image">
                              <span class="active bg-primary"></span>
                            </a>
                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Selena Wagner</span>
                              <span class="discribe">Designer</span>
                            </a>
                          </div>
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-02.jpg" alt="User Image">
                              <span class="active bg-primary"></span>
                            </a>
                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Walter Reuter</span>
                              <span>Developer</span>
                            </a>
                          </div>
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-03.jpg" alt="User Image">
                            </a>
                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Larissa Gebhardt</span>
                              <span>Cyber Punk</span>
                            </a>
                          </div>
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-04.jpg" alt="User Image">
                            </a>

                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Albrecht Straub</span>
                              <span>Photographer</span>
                            </a>
                          </div>
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-05.jpg" alt="User Image">
                              <span class="active bg-danger"></span>
                            </a>
                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Leopold Ebert</span>
                              <span>Fashion Designer</span>
                            </a>
                          </div>
                        </div>

                        <div class="media media-sm">
                          <div class="media-sm-wrapper">
                            <a href="user-profile.html">
                              <img src="images/user/user-sm-06.jpg" alt="User Image">
                              <span class="active bg-primary"></span>
                            </a>
                          </div>
                          <div class="media-body">
                            <a href="user-profile.html">
                              <span class="title">Selena Wagner</span>
                              <span>Photographer</span>
                            </a>
                          </div>
                        </div>

                      </div>
                    </div>



    
                    <script src="plugins/jquery/jquery.min.js"></script>
                    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                    <script src="plugins/simplebar/simplebar.min.js"></script>
                    <script src="https://unpkg.com/hotkeys-js/dist/hotkeys.min.js"></script>

                    <script src="js/sweetalert2@11.js"></script>
                    
                    <script src="plugins/prism/prism.js"></script>
                    
                    
                    <script src="plugins/toaster/toastr.min.js"></script>
                  
                    
                    <script src="plugins/select2/js/select2.min.js"></script>
                    
                    <script src="plugins/apexcharts/apexcharts.js"></script>
                    
                    
                    <script src="js/mono.js"></script>
                    <script src="js/chart.js"></script>
                    <script src="js/map.js"></script>
                    <script src="js/custom.js"></script>

                    


                    <!--  -->
<script>
$(document).ready(function() {
    $( ".estudinte" ).select2({        
    ajax: {
        url: "ajax/estudiante_json.php",
        dataType: 'json',
        delay: 250,
        data: function (params) {
            return {
                q: params.term // search term
            };
        },
        processResults: function (data) {
            return {
                results: data
            };
        },
        cache: true
    },
    minimumInputLength: 2
}).on('change', function (e){
		var nombre = $('.estudinte').select2('data')[0].nombre;
		var codigo = $('.estudinte').select2('data')[0].codigo;
		var apellido = $('.estudinte').select2('data')[0].apellido;
		$('#nombre').val(nombre);
		$('#codigo').val(codigo);
		$('#apellido').val(apellido);
      
})
});


$(document).ready(function(){
    // capturar el valor del id que se recibe
  
     $('#guardar_matricula').bind("submit", function (){
        //alert(123);
       $.ajax({
           type: $(this).attr("method"),
           url:'ajax/grabar_matricula.php',
           data:$(this).serialize(),
           success: function (data){
               $("#resultados_matricula").html(data);
          
           }
       }); 
       return false;
    });
}); 
  
</script>

  </body>
</html>