
<?php 
    
       
    session_start();
        $idUsuario=$_SESSION['idusuario_S'];
        $nombre= $_SESSION['nombreUsuario_S'];
         $idrolUsuario=$_SESSION['idRolUsuario_S'];
         if($idUsuario==''){
             //echo "Usted no ha iniciado sesión correctamente";
            header('Location: login.php');
            exit();  
          
        }
          
          
     ?>

<aside class="left-sidebar sidebar-dark" id="left-sidebar">
          <div id="sidebar" class="sidebar sidebar-with-footer">
            <!-- Aplication Brand -->
            <div class="app-brand">
              <a href="index.php">
                <img src="images/imnaecr-removebg-preview.png"  class="img-fluid" alt="Mono" style="height: 80px; width: 90px;">
                <span class="brand-name">UENDJ</span>
              </a>
            </div>
            <!-- begin sidebar scrollbar -->
            <div class="sidebar-left" data-simplebar style="height: 100%;">
              <!-- sidebar menu -->
              <ul class="nav sidebar-inner" id="sidebar-menu">
                

                
                  <li
                   class="sidenav-item"
                  id="dashboard" >
                    <a class="sidenav-item-link" href="index.php">
                      <i class="mdi mdi-briefcase-account-outline"></i>
                      <span class="nav-text">Dashboard</span>
                    </a>
                  </li>
                

                
<?php
if($idrolUsuario==1){


 ?>
                
                  <li class="sidenav-item"
                 id="dashboard"  >
                    <a class="sidenav-item-link" href="usuario.php">
                      <i class="mdi mdi-account-group"></i>
                      <span class="nav-text">Usuario</span>
                    </a>
                  </li>
                
<?php 
}
?> 
                

                
                  <li class="section-title">
                    Apps
                  </li>
                

                

                
                  <li
                  class="sidenav-item">
                    <a class="sidenav-item-link" href="estudiante.php">
                      <i class="mdi mdi-account-group"></i>
                      <span class="nav-text">Estudiante</span>
                    </a>
                  </li>
                

                

                
                  <li
                  class="sidenav-item" >
                    <a class="sidenav-item-link" href="matricula.php">
                      <i class="mdi mdi-file-document-box"></i>
                      <span class="nav-text">matricula</span>
                    </a>
                  </li>
                

                
<?php 
if($idrolUsuario==1){


?>
                
                  <li
                  class="sidenav-item">
                    <a class="sidenav-item-link" href="periodo.php">
                      <i class="mdi mdi-account-group"></i>
                      <span class="nav-text">periodo</span>
                    </a>
                  </li>
                
<?php 
}
?>
                

                <?php 
if($idrolUsuario==1){


?>
                  <li
                  class="sidenav-item" >
                    <a class="sidenav-item-link" href="curso.php">
                      <i class="mdi mdi-calendar-check"></i>
                      <span class="nav-text">grado</span>
                    </a>
                  </li>
                

                  <?php 
}
?> 

<?php 
if($idrolUsuario==1|| $idrolUsuario==3){


?>
                  <li  class="has-sub sidenav-item" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#email"
                      aria-expanded="false" aria-controls="email">
                      <i class="mdi mdi-email"></i>
                      <span class="nav-text">Pagos</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="email"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li class="sidenav-item" >
                              <a class="sidenav-item-link" href="pagos.php">
                                <span class="nav-text">Pagos</span>
                                
                              </a>
                            </li>
               
                        
                      
                          
                        

                        
                      </div>
                    </ul>
                  </li>
                
       <?php 
}
       ?>
              </ul>

            </div>

         
          </div>
        </aside>
        <script>
  // Obtener la URL actual
  var currentUrl = window.location.href;

  // Obtener todos los elementos de la lista que tienen la clase específica
  var menuItems = document.querySelectorAll('.sidenav-item');

  // Iterar sobre los elementos y verificar la URL del enlace
  menuItems.forEach(function (menuItem) {
    var link = menuItem.querySelector('a');

    // Verificar si la URL del enlace coincide con la URL actual
    if (link.href === currentUrl) {
      // Agregar la clase "active" al elemento <li>
      menuItem.classList.add('active');
    }
  });
</script>